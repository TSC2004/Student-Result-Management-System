from flask import Flask, render_template, request
from db_config import get_db_connection  # ✅ Add this line

app = Flask(__name__)


# DB Connection


@app.route("/")
def home():
    return render_template("home.html")

@app.route("/add_student", methods=["GET", "POST"])
def add_student():
    if request.method == "POST":
        name = request.form["name"]
        roll = request.form["roll"]
        cls = request.form["class"]
        sec = request.form["section"]
        dob = request.form["dob"]

        db = get_db_connection()
        cursor = db.cursor()
        cursor.execute("INSERT INTO students (name, roll_no, class, section, dob) VALUES (%s, %s, %s, %s, %s)",
                       (name, roll, cls, sec, dob))
        db.commit()
        cursor.close()
        return "Student Added"
    return render_template("student_form.html")
@app.route("/add_marks", methods=["GET", "POST"])
def add_marks():
    db = get_db_connection()
    cursor = db.cursor(dictionary=True)

    if request.method == "POST":
        student_id = request.form["student_id"]
        subject_id = request.form["subject_id"]
        marks = request.form["marks"]

        cursor.execute("INSERT INTO marks (student_id, subject_id, marks_obtained) VALUES (%s, %s, %s)",
                       (student_id, subject_id, marks))
        db.commit()
        cursor.close()
        return "Marks Added Successfully! <br><a href='/'>Back to Home</a>"

    # Load students and subjects to show in dropdowns
    cursor.execute("SELECT student_id, name FROM students")
    students = cursor.fetchall()

    cursor.execute("SELECT subject_id, subject_name FROM subjects")
    subjects = cursor.fetchall()

    cursor.close()
    return render_template("add_marks.html", students=students, subjects=subjects)

@app.route("/results")
def results():
    db = get_db_connection()
    cursor = db.cursor(dictionary=True)
    cursor.execute("SELECT * FROM result_summary")
    result = cursor.fetchall()
    return render_template("result.html", data=result)

if __name__ == "__main__":
    app.run(debug=True)
