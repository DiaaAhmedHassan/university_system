<?php
class student{
    private $id;
    private $name;
    private $password;
    private $ssn;
    private $contact;
    private $birthdate;
    private $gender;
    private $CGPA;
    private $image;
    private $department;

    private $courses = array();

    function __construct($id, $name, $password, $ssn, $contact, $birthdate, $Gender, $CGPA, $department) {
        $this->id = $id;
        $this->name = $name;
        $this->password = $password;
        $this->ssn = $ssn;
        $this->contact = $contact;
        $this->birthdate = $birthdate;
        $this->gender = $gender;
        $this->CGPA = $CGPA;
        $this->department = $department;
    }

    function setId($id){
        $this->id = $id;
    }

    function getId(){
        return $this->id;
    }

    function setName($name){
        $this->name = $name;
    }

    function getName(){
        return $this->name;
    }

    function setPassword($password){
        $this->password = $password;
    }

    function getPassword(){
        return $this->password;
    }

    function setSsn($ssn){
        $this->ssn = $ssn;
    }

    function getSsn(){
        return $this->ssn;
    }

    function setContact($contact){
        $this->contact = $contact;
    }

    function getContact(){
        return $this->contact;
    }

    function setBirthdate($birthdate){
        $this->birthdate = $birthdate;
    }

    function getBirthdate(){
        return $this->birthdate;
    }

    function setGender($gender){
        $this->gender = $gender;
    }

    function getGender(){
        return $this->gender;
    }

    function setId($CGPA){
        $this->CGPA = $CGPA;
    }

    function getCGPA(){
        return $this->CGPA;
    }

    function setImage($image){
        $this->image = $image;
    }

    function getDepartment(){
        return $this->department;
    }

    function addCourse($id, $cours_code) {
        //add courseId to courses list
        //insert  into enrolmen table with student_id,and course_id
    }
}

?>