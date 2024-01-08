from flask import Flask,render_template,request, redirect
from flask_sqlalchemy import SQLAlchemy
import random

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


@app.route("/")
def start():
    return render_template("start.html")


# l=[]
# random_sample=random.sample(range(1, 51), 50)
# for i in range(30):
#     l.append(random_sample[i])
# print(l)
marks=0
@app.route("/exam/<string:sno>",methods = ['POST', 'GET'])
def exam(sno):
    global marks
    if (sno == "51"):
        return render_template("result.html",marks=marks)

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
            x="/exam/"+sno
            return redirect(x)
    except:
        sno = int(sno) + 1
        sno = str(sno)
        x = "/exam/" + sno
        return redirect(x)

    aptitude=Aptitude.query.filter_by(sno=sno).first()
    return render_template("index.html",aptitude=aptitude)

@app.route("/result",methods = ['POST', 'GET'])
def result():
    return render_template("result.html",marks=marks)

app.run(debug=True)


