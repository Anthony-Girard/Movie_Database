from flask import Flask, render_template, json, request
from flaskext.mysql import MySQL
import datetime

app = Flask(__name__)
mysql = MySQL()
 
# MySQL configurations
app.config['MYSQL_DATABASE_USER'] = 'root'
app.config['MYSQL_DATABASE_PASSWORD'] = '2419djcjjg'
app.config['MYSQL_DATABASE_DB'] = 'movieDB'
app.config['MYSQL_DATABASE_HOST'] = 'localhost'
mysql.init_app(app)

conn = mysql.connect()
cursor = conn.cursor()

@app.route("/")
def main():
    return render_template('movies.html')

@app.route("/movies")
def movies():
    return render_template('movies.html')

@app.route("/people")
def people():
    return render_template('people.html')

@app.route("/reviews")
def reviews():
    return render_template('reviews.html')

@app.route('/searchByTitle', methods=['POST'])
def searchByTitle():
    title = request.form['movieTitle']

    query = ('SELECT * FROM Movie WHERE Movie.Title = %s')
    data = (title)
    cursor.execute(query, data)
    movie = cursor.fetchall()

    return json.dumps({"movie":movie})

@app.route('/searchByYear', methods=['POST'])
def searchByYear():
    try:
        year = int(request.form['year'])
        yearStart = datetime.datetime(year, 1, 1)
        yearEnd = datetime.datetime(year, 12, 31)
        query = ('SELECT * FROM Movie WHERE Movie.ReleaseDate BETWEEN %s and %s')
        data = (yearStart, yearEnd)
        cursor.execute(query, data)
    except ValueError:
        cursor.execute('SELECT * FROM Movie WHERE Movie.Title = ""')

    movie = cursor.fetchall()

    return json.dumps({"movie":movie})

@app.route('/searchDuration', methods=['POST'])
def searchDuration():
    try:
        minDuration = int(request.form['minDuration'])
        maxDuration = int(request.form['maxDuration'])
        query = ('SELECT * FROM Movie WHERE Movie.Duration BETWEEN %s AND %s')
        data = (minDuration, maxDuration)
    except ValueError:
        try:
            minDuration = int(request.form['minDuration'])
            query = ('SELECT * FROM Movie WHERE Movie.Duration >= %s')
            data = (minDuration)
        except ValueError:
            try:
                maxDuration = int(request.form['maxDuration'])
                query = ('SELECT * FROM Movie WHERE Movie.Duration <= %s')
                data = (maxDuration)
            except:
                query = ('SELECT * FROM Movie WHERE Movie.Duration = %s')
                data = (0)

    cursor.execute(query, data)
    movie = cursor.fetchall()

    return json.dumps({"movie":movie})

@app.route('/searchMultiple', methods=['POST'])
def searchMultiple():
    title = request.form['movieTitle']
    try:
        year = int(request.form['year'])
        yearStart = datetime.datetime(year, 1, 1)
        yearEnd = datetime.datetime(year, 12, 31)
    except ValueError:
        year = ''
    try:
        minDuration = request.form['minDuration']
    except ValueError:
        minDuration = ''
    try:
        maxDuration = request.form['maxDuration']
    except ValueError:
        maxDuration = ''

    queryStr = 'SELECT * FROM Movie WHERE '
    queryCount = 0
    titleToggle = False

    if title != '':
        queryStr += 'Movie.Title = %s'
        data = (title)
        queryCount += 1
        titleToggle = True

    if year != '':
        if queryCount > 0:
            queryStr += ' AND '
            data = (title, yearStart, yearEnd)
        else:
            data = (yearStart, yearEnd)
        queryStr += 'Movie.ReleaseDate BETWEEN %s and %s'
        queryCount += 1

    if minDuration != '' and maxDuration != '':
        if queryCount > 0:
            queryStr += ' AND '
            if queryCount == 2:
                data = (title, yearStart, yearEnd, minDuration, maxDuration)
            elif titleToggle:
                data = (title, minDuration, maxDuration)
            else:
                data = (yearStart, yearEnd, minDuration, maxDuration)
        else:
            data = (minDuration, maxDuration)
        queryStr += 'Movie.Duration >= %s AND Movie.Duration <= %s'
        queryCount += 1
    elif minDuration == '' and maxDuration != '':
        if queryCount > 0:
            queryStr += ' AND '
            if queryCount == 2:
                data = (title, yearStart, yearEnd, maxDuration)
            elif titleToggle:
                data = (title, maxDuration)
            else:
                data = (yearStart, yearEnd, maxDuration)
        else:
            data = (maxDuration)
        queryStr += 'Movie.Duration <= %s'
        queryCount += 1
    elif minDuration != '' and maxDuration == '':
        if queryCount > 0:
            queryStr += ' AND '
            if queryCount == 2:
                data = (title, yearStart, yearEnd, minDuration)
            elif titleToggle:
                data = (title, minDuration)
            else:
                data = (yearStart, yearEnd, minDuration)
        else:
            data = (minDuration)
        queryStr += 'Movie.Duration >= %s'
        queryCount += 1

    if queryCount == 0:
        queryStr = 'SELECT * FROM Movie WHERE Movie.Title = %s'
        data = ('')

    query = (queryStr)
    cursor.execute(query, data)
    movie = cursor.fetchall()

    return json.dumps({"movie":movie})

@app.route('/searchByActor', methods=['POST'])
def searchByActor():
    actorName = request.form['actorName']

    query = ('SELECT Person.PersonId FROM Person WHERE Person.PersonName = %s')
    data = (actorName)
    cursor.execute(query, data)
    personID = cursor.fetchall()

    if not personID:
        cursor.execute('SELECT * FROM Movie WHERE Movie.Title = ""')
        movie = cursor.fetchall()
        return json.dumps({"movie":movie})

    query = ('SELECT MoviePerson.MPId FROM MoviePerson WHERE MoviePerson.MPId = %s')
    data = (personID)
    cursor.execute(query, data)
    MPID = cursor.fetchall()

    query = ('SELECT Actor.ActorID FROM Actor WHERE Actor.ActorID = %s')
    data = (MPID)
    cursor.execute(query, data)
    actorID = cursor.fetchall()

    query = ('SELECT Has_Person.Movie FROM Has_Person WHERE Has_Person.MoviePerson = %s')
    data = (actorID)
    cursor.execute(query, data)
    movieID = cursor.fetchone()
    movieIdArr = []

    while movieID is not None:
        movieIdArr.append(movieID)
        movieID = cursor.fetchone()

    movie = ()
    for movieId in movieIdArr:
        query = ('SELECT * FROM Movie WHERE Movie.MovieId = %s')
        data = (movieId)
        cursor.execute(query, data)
        movie = movie + cursor.fetchall()

    return json.dumps({"movie":movie})

@app.route('/searchByDirector', methods=['POST'])
def searchByDirector():
    directorName = request.form['directorName']

    query = ('SELECT Person.PersonId FROM Person WHERE Person.PersonName = %s')
    data = (directorName)
    cursor.execute(query, data)
    personID = cursor.fetchall()

    if not personID:
        cursor.execute('SELECT * FROM Movie WHERE Movie.Title = ""')
        movie = cursor.fetchall()
        return json.dumps({"movie":movie})

    query = ('SELECT Directs.MovieId FROM Directs WHERE Directs.DirectorId = %s')
    data = (personID)
    cursor.execute(query, data)
    movieID = cursor.fetchone()
    movieIdArr = []

    while movieID is not None:
        movieIdArr.append(movieID)
        movieID = cursor.fetchone()

    movie = ()
    for movieId in movieIdArr:
        query = ('SELECT * FROM Movie WHERE Movie.MovieId = %s')
        data = (movieId)
        cursor.execute(query, data)
        movie = movie + cursor.fetchall()

    return json.dumps({"movie":movie})

@app.route('/searchPeopleByMovie', methods=['POST'])
def searchPeopleByMovie():
    movieTitle = request.form['title']

    query = ('SELECT Movie.MovieId FROM Movie WHERE Movie.Title = %s')
    data = (movieTitle)
    cursor.execute(query, data)
    movieID = cursor.fetchall()

    if not movieID:
        cursor.execute('SELECT * FROM Person WHERE Person.PersonName = ""')
        people = cursor.fetchall()
        return json.dumps({"people":people})

    query = ('SELECT Has_Person.MoviePerson FROM Has_Person WHERE Has_Person.Movie = %s')
    data = (movieID)
    cursor.execute(query, data)
    MPID = cursor.fetchone()
    MPIDArr = []

    while MPID is not None:
        MPIDArr.append(MPID)
        MPID = cursor.fetchone()

    people = ()
    for MPId in MPIDArr:
        query = ('SELECT * FROM Person WHERE Person.PersonId = %s')
        data = (MPId)
        cursor.execute(query, data)
        people = people + cursor.fetchall()

    return json.dumps({"people":people})

@app.route('/searchMovieReview', methods=['POST'])
def searchMovieReview():
    movieTitle = request.form['movieTitle']

    query = ('SELECT Movie.MovieId FROM Movie WHERE Movie.Title = %s')
    data = (movieTitle)
    cursor.execute(query, data)
    movieID = cursor.fetchall()

    if not movieID:
        cursor.execute('SELECT * FROM Reviews WHERE Reviews.ReviewID = ""')
        reviews = cursor.fetchall()
        return json.dumps({"reviews":reviews})

    query = ('SELECT * FROM Reviews WHERE Reviews.MovieId = %s')
    data = (movieID)
    cursor.execute(query, data)
    reviews = cursor.fetchall()

    query = ('SELECT AVG(Reviews.Rating) FROM Reviews WHERE Reviews.MovieId = %s')
    data = (movieID)
    cursor.execute(query, data)
    rating = str(cursor.fetchall())
    rating = rating.split("'")
    rating = rating[1]

    return json.dumps({"reviews":reviews, "rating":rating})

@app.route('/searchRating', methods=['POST'])
def searchRating():
    minRating = int(request.form['minRating'])
    maxRating = int(request.form['maxRating'])

    query = ('SELECT Movie.MovieId FROM Movie')
    cursor.execute(query)
    movieID = cursor.fetchone()
    movieIdArr = []

    while movieID is not None:
        movieIdArr.append(movieID)
        movieID = cursor.fetchone()

    moviesInRange = []
    for movieId in movieIdArr:
        query = ('SELECT AVG(Reviews.Rating) FROM Reviews WHERE Reviews.MovieId = %s')
        data = (movieId)
        cursor.execute(query, data)
        movieRating = int(str(cursor.fetchall()).split("'")[1][0])
        if movieRating >= minRating and movieRating <= maxRating:
            moviesInRange.append(movieId)

    movie = ()
    for movieId in moviesInRange:
        query = ('SELECT * FROM Movie WHERE Movie.MovieId = %s')
        data = (movieId)
        cursor.execute(query, data)
        movie = movie + cursor.fetchall()
    
    return json.dumps({"movie":movie})

if __name__ == "__main__":
    app.run(debug=True)