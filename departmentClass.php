<?php

class Department{

    private $dept_code;
    private $dept_name;

    function __construct($dept_code, $dept_name){
        $this->dept_code =  $dept_code;
        $this->dept_name = $dept_name;
    }

    public function setDeptCode($dept_code){
        $this->dept_code = $dept_code;
    }
    public function getDeptCode(){
        return $dept_code;
    }

    public function setDeptCode($dept_name){
        $this->dept_name = $dept_name;
    }

    public function getDeptName(){
        return $dept_name;
    }

    public function addCourse(){
        //todo addCourse logic..
    }

    public function addStudent(){
        //add student logic..
    }

    public function addProfessor(){
        //add professor logic
    }

}


?>