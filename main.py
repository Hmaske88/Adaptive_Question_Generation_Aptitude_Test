from flask import Flask,render_template,request, redirect
from flask_sqlalchemy import SQLAlchemy
import random
from datetime import datetime

app = Flask(__name__)

app.config["SQLALCHEMY_DATABASE_URI"] = "mysql://root:@localhost/csv_db 10"
db=SQLAlchemy(app)

class Aptitude(db.Model):
    sno = db.Column(db.Integer, primary_key=True)
    question = db.Column(db.String(100), nullable=False)
    a = db.Column(db.String(20), nullable=False)
    b = db.Column(db.String(20), nullable=False)
    c = db.Column(db.String(20), nullable=False)
    d = db.Column(db.String(20), nullable=False)
    answer = db.Column(db.String(20), nullable=False)

class Technical(db.Model):
    sno = db.Column(db.Integer, primary_key=True)
    question = db.Column(db.String(100), nullable=False)
    a = db.Column(db.String(20), nullable=False)
    b = db.Column(db.String(20), nullable=False)
    c = db.Column(db.String(20), nullable=False)
    d = db.Column(db.String(20), nullable=False)
    answer = db.Column(db.String(20), nullable=False)

class Submissions_apti(db.Model):
    sno = db.Column(db.Integer, primary_key=True)
    date = db.Column(db.String(12))
    score = db.Column(db.Integer, nullable=False)

class Submissions_tech(db.Model):
    sno = db.Column(db.Integer, primary_key=True)
    date = db.Column(db.String(12))
    score = db.Column(db.Integer, nullable=False)


@app.route("/")
def start():
    return render_template("start.html")


def randomN():
    random_sample=random.sample(range(2, 13), 11)
    return random_sample


flag=0
marks=0
NumOfQuestions=0
# qNo=1
@app.route("/exam1/<string:sno>",methods = ['POST', 'GET'])
def exam1(sno):
    global marks, NumOfQuestions, flag
    flag=1
    NumOfQuestions=50
    if (sno == "51"):
        percent = (marks / NumOfQuestions) * 100
        return render_template("result.html",marks=marks, percent=percent)

    try:
        if request.method=="POST":
            option=request.form['options']

            aptitude = Aptitude.query.filter_by(sno=sno).first()
            if (option == aptitude.answer):
                marks += 1

            sno = int(sno) + 1
            sno=str(sno)
            # num=l[sno]
            # num=str(num)
            # print(num)
            x="/exam1/"+sno
            return redirect(x)
    except:
        sno = int(sno) + 1
        sno = str(sno)
        x = "/exam1/" + sno
        return redirect(x)

    aptitude=Aptitude.query.filter_by(sno=sno).first()
    return render_template("index.html",que=aptitude)

@app.route("/exam2/<string:sno>",methods = ['POST', 'GET'])
def exam2(sno):
    global marks, NumOfQuestions, flag
    flag=2
    NumOfQuestions=20
    if (sno == "21"):
        percent = (marks / NumOfQuestions) * 100
        return render_template("result.html",marks=marks, percent=percent)

    try:
        if request.method=="POST":
            option=request.form['options']

            technical = Technical.query.filter_by(sno=sno).first()
            if (option == technical.answer):
                marks += 1

            sno = int(sno) + 1
            sno=str(sno)
            x="/exam2/"+sno
            return redirect(x)
    except:
        sno = int(sno) + 1
        sno = str(sno)
        x = "/exam2/" + sno
        return redirect(x)

    technical=Technical.query.filter_by(sno=sno).first()
    return render_template("index.html",que=technical)



@app.route("/result",methods = ['POST', 'GET'])
def result():
    percent=(marks/NumOfQuestions)*100

    if(flag==1):
        entry = Submissions_apti(date=datetime.now(), score=percent)
    elif(flag==2):
        entry = Submissions_tech(date=datetime.now(), score=percent)

    db.session.add(entry)
    db.session.commit()
    return render_template("result.html",marks=marks,percent=percent)


@app.route("/analyse",methods = ['POST', 'GET'])
def analysis():
    if flag==1:
        questions=Aptitude.query.filter_by().all()

        # For fetching all values from specific column
        all_dates = [entry[0] for entry in db.session.query(Submissions_apti.date).all()]
        all_marks = [entry[0] for entry in db.session.query(Submissions_apti.score).all()]
        # for getting the correct format for the datetime
        all_dates = [date.strftime('%Y-%m-%d %H:%M:%S') for date in all_dates]

    elif flag==2:
        questions=Technical.query.filter_by().all()

        # For fetching all values from specific column
        all_dates = [entry[0] for entry in db.session.query(Submissions_tech.date).all()]
        all_marks = [entry[0] for entry in db.session.query(Submissions_tech.score).all()]
        # for getting the correct format for the datetime
        all_dates = [date.strftime('%Y-%m-%d %H:%M:%S') for date in all_dates]


    return render_template("analysis.html", questions=questions, all_dates=all_dates, all_marks=all_marks)


app.run(debug=True)


