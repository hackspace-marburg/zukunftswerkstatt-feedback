import markdown
import bleach
import bottle
from bottle import route, static_file, template, post, run, install, request
from bottle_sqlite import SQLitePlugin

bottle.BaseRequest.MEMFILE_MAX = 1024 * 1024 * 1024
install(SQLitePlugin(dbfile='feedback.db'))

@route('/static/<filename>')
def static(filename):
    return static_file(filename, root='static/')

@route('/create_table')
def create_table(db):
    db.execute('CREATE TABLE feedback(problems_heading TEXT, problems TEXT, selfreflection_heading TEXT, selfreflection TEXT)')

    return 'okay'

@route('/')
def form():
    return template('index', sent=False)

@post('/')
def report(db):
    db.execute(
        'INSERT INTO feedback VALUES(?, ?, ?, ?)',
        (
            request.forms.problems_heading,
            request.forms.problems,
            request.forms.selfreflection_heading,
            request.forms.selfreflection
        )
    )

    return template('index', sent=True)

@route('/show_feedback')
def show_feedback(db):
    feedbacks = db.execute('SELECT problems_heading, problems, selfreflection_heading, selfreflection, ' \
                           'LENGTH(problems_heading), LENGTH(problems), LENGTH(selfreflection_heading), LENGTH(selfreflection) '
                           'FROM feedback ' \
                           'WHERE LENGTH(problems_heading) + LENGTH(problems) + LENGTH(selfreflection_heading) + LENGTH(selfreflection) != 0').fetchall()

    return template('show_feedback', feedbacks=feedbacks)

run(host='::1', port=8080, reloader=True)
