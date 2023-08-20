/* Register form */
fName = document.getElementById('MainContent_firstName');
fNameError = document.getElementById('firstNameError');
lName = document.getElementById('MainContent_lastName');
lNameError = document.getElementById('lastNameError');
phone = document.getElementById('MainContent_phone');
phoneError = document.getElementById('phoneError');
email = document.getElementById('MainContent_email');
emailError = document.getElementById('emailError');
password = document.getElementById('MainContent_password');
passwordError = document.getElementById('passwordError');
confirmPassword = document.getElementById('MainContent_confirmPassword');
confirmPasswordError = document.getElementById('confirmPasswordError');

/* login form */
emailLogin = document.getElementById('MainContent_email');
emailLoginError = document.getElementById('emailLoginError');
passwordLogin = document.getElementById('MainContent_password');
passwordLoginError = document.getElementById('PasswordLoginError');

/* contact us form */
subject = document.getElementById('maincontent_subject');
subjectError = document.getElementById('subjectError');
emailMessage = document.getElementById('maincontent_email');
emailMessageError = document.getElementById('emailMessageError');
message = document.getElementById('maincontent_message');
messageError = document.getElementById('messageError');



/*register Function*/

function registerCheck() {
    isValid = true;
    event.preventDefault();
    if (fName.value.length == 0 || fName.value.length == null || fName.value.length == "") {
        fNameError.innerText = "First Name is Required";
        isValid = false;
    } else if (!(/^[A-Za-z]+$/).test(fName.value)) {
       fNameError.innerText = "Name Mustn't contain digits";
        isValid = false;
    }else if (fName.value.length < 3 || fName.value.length > 15  ) {

        fNameError.innerText = "This is invalid Name";
        isValid = false;
    } 
    else {
        //fNameError.innerText = "This is Valid Name";

    }



    if (lName.value.length == 0 || lName.value.length == null || lName.value.length == "") {
        lNameError.innerText = "Last Name is Required";
        isValid = false;

    } else if (!(/^[A-Za-z]+$/).test(lName.value)) {
        lNameError.innerText = "Name Mustn't contain digits";
        isValid = false;

    } else if (lName.value.length < 3 || lName.value.length > 15 ) {

        lNameError.innerText = "This is Invalid Name";
        isValid = false;

    } else {
      //  lNameError.innerText = "This is Valid Name";

    }

    if (phone.value.length == 0 || phone.value.length == null || phone.value.length == "") {
        phoneError.innerText = "Phone is Required";
        isValid = false;

    } else if (/^[0-9]{3}[0-9]{3}[0-9]{5}$/im.test(phone.value)) {

      //  phoneError.innerText = "valid Number"

    } else {

        phoneError.innerText = "invalid Number"
        isValid = false;

    }


    if (email.value.length == 0 || email.value.length == null || email.value.length == "") {
        emailError.innerText = "Email is Required";
        isValid = false;


    } else if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email.value)) {
      //  emailError.innerText = "This is valid Email";
    } else {
        emailError.innerText = "This is inValid Email";
        isValid = false;

    }

    if (password.value.length == 0 || password.value.length == null || password.value.length == "") {
        passwordError.innerText = "Password is Required";
        isValid = false;


    } else if (password.value.length < 6 || password.value.length > 20) {

        passwordError.innerText = "Password is Invalid";
        isValid = false;

    } else {

     //   passwordError.innerText = "Password is valid";


    }


    if (confirmPassword.value.length == 0 || confirmPassword.value.length == null || confirmPassword.value.length == "") {
        confirmPasswordError.innerText = "Confirm Password is Required";
    } else if (confirmPassword.value == password.value) {
        confirmPasswordError.innerText = "Password is Identical";


    } else {
        confirmPasswordError.innerText = "Password is different";
        isValid = false;
    }
    if (isValid) {
        document.forms[0].submit();
    }
    else { return isValid; }
  
}



/* Login Function*/

function loginCheck() {
    isValid = true;
    event.preventDefault();

    if (emailLogin.value.length == 0 || emailLogin.value.length == null || emailLogin.value.length == "") {
        emailLoginError.innerText = "Email is Required";
        isValid = false;

    } else if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(emailLogin.value)) {
       // emailLoginError.innerText = "This is Valid Email";
    } else {
        emailLoginError.innerText = "This is Invalid Email";
        isValid = false;
    }

    if (passwordLogin.value.length == 0 || passwordLogin.value.length == null || passwordLogin.value.length == "") {
        passwordLoginError.innerText = "Password is Required";
        isValid = false;

    } else if (passwordLogin.value.length < 6 || passwordLogin.value.length > 20) {

        passwordLoginError.innerText = "Password is Invalid";
        isValid = false;
    } else {

   //     passwordLoginError.innerText = "Password is valid";


    }

    if (isValid) {
        document.forms[0].submit();
    }
    else { return isValid; }

}

/* conatct us Function*/

function messageCheck() {   
    isValid = true;
    event.preventDefault();
    if (subject.value.length == 0 || subject.value.length == null || subject.value.length == "") {

        subjectError.innerText = "Subject is Required";
        isValid = false;
    } else if (subject.value.length >= 30) {

        subjectError.innerText = "Subject is Too long ";
        isValid = false;

    } else {
     //   subjectError.innerText = "Subject is Valid";
    }


    if (emailMessage.value.length == 0 || emailMessage.value.length == null || emailMessage.value.length == "") {
        emailMessageError.innerText = "Email is Required";
        isValid = false;



    } else if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(emailMessage.value)) {
       // emailMessageError.innerText = "This is Valid Email";
    } else {
        emailMessageError.innerText = "This is Invalid Email";
        isValid = false;


    }



    if (message.value.length == 0 || message.value.length == null || message.value.length == "") {

        messageError.innerText = "Message is Required";
        isValid = false;


    } else if (message.value.length >= 2 && message.value.length <= 150) {


      //  messageError.innerText = "Message is Valid";


    } else {

        messageError.innerText = "Message is InValid";
        isValid = false;


    }


    if (isValid) {
        document.forms[0].submit();
    }
    else { return isValid; }



}






//adminPage

//Home content fo admin
title = document.getElementById('adminContent_title');
titleError = document.getElementById('titleError');
description = document.getElementById('adminContent_description');
descriptionError = document.getElementById('descriptionError');


function AdminContentCheck() {
   

    isValid = true;
    event.preventDefault();
    if (title.value.length == 0 || title.value.length == null || title.value.length == "") {
        titleError.innerText = "Title is Required";
        isValid = false;

    } else if (title.value.length < 3 || title.value.length > 25) {

        titleError.innerText = "This is invalid Title";
        isValid = false;
    }
    else {

        //titleError.innerText = "This is Valid Title";

    }


    if (description.value.length == 0 || description.value.length == null || description.value.length == "") {
        descriptionError.innerText = "Description is Required";
        isValid = false;

    } else if (title.value.length < 3 || title.value.length > 100) {

        titleError.innerText = "This is invalid Description";
        isValid = false;
    }
    else {

        //descriptionError.innerText = "This is Valid Description";

    }

    

    if (isValid) {
        document.forms[0].submit();
    }
    else {
        return isValid;
    }
}


// content Us  info about school admin
address = document.getElementById('adminContent_address');
addressError = document.getElementById('addressError');
emailInfo = document.getElementById('adminContent_emailInfo');
emailInfoError = document.getElementById('emailInfoError');
phoneInfo = document.getElementById('adminContent_phoneInfo');
phoneInfoError = document.getElementById('phoneInfoError');


function AdminSchoolInfoCheck() {


    isValid = true;
    event.preventDefault();
    if (address.value.length == 0 || address.value.length == null || address.value.length == "") {
        addressError.innerText = "Address is Required";
        isValid = false;

    } else if (address.value.length < 10|| address.value.length > 100) {

        addressError.innerText = "This is invalid Address";
        isValid = false;
    }
    else {

        //addressError.innerText = "This is Valid Address";

    }


    if (emailInfo.value.length == 0 || emailInfo.value.length == null || emailInfo.value.length == "")
    {
        emailInfoError.innerText = "Email is Required";
        isValid = false;

    } else if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(emailInfo.value)) {

         //emailInfoError.innerText = "This is Valid Email";
    }
    else {
        emailInfoError.innerText = "This is invalid Email";
        isValid = false;
       

    }
    if (phoneInfo.value.length == 0 || phoneInfo.value.length == null || phoneInfo.value.length == "") {
        phoneInfoError.innerText = "Phone is Required";
        isValid = false;

    } else if (/^[0-9]{8}$/im.test(phoneInfo.value)) {

        //  phoneInfoError.innerText = "valid Phone"

    } else {

        phoneInfoError.innerText = "invalid Phone"
        isValid = false;

    }


    if (isValid) {
        document.forms[0].submit();
    }
    else {
        return isValid;
    }
}




// add teacher admin

teachername = document.getElementById('adminContent_teachername');
teachernameError = document.getElementById('teachernameError');
courseName = document.getElementById('adminContent_courseName');
courseNameError = document.getElementById('courseNameError');
imageUpload = document.getElementById('adminContent_imageUpload');
imageUploadError = document.getElementById('imageUploadError');


function AddTeacherCheck() {

    isValid = true;
    event.preventDefault();
    if (teachername.value.length == 0 || teachername.value.length == null || teachername.value.length == "") {
        teachernameError.innerText = "Teacher Name is Required";
        isValid = false;
    } else if (!(/^[A-Za-z ]*$/).test(teachername.value)) {
        teachernameError.innerText = "Name Mustn't contain digits";
        isValid = false;
    } else if (teachername.value.length < 3 || teachername.value.length > 15) {

        teachernameError.innerText = "This is invalid Name";
        isValid = false;
    }
    else {
        //teachernameError.innerText = "This is Valid Name";

    }

    if (courseName.value.length == 0 || courseName.value.length == null || courseName.value.length == "") {
        courseNameError.innerText = "Course Name is Required";
        isValid = false;

    } else if (courseName.value.length < 3 || courseName.value.length > 100) {

        courseNameError.innerText = "This is invalid Name";
        isValid = false;
    }
    else {

        //courseNameError.innerText = "This is Valid Name";

    }

    if (imageUpload.value.length == 0 || imageUpload.value.length == null || imageUpload.value.length == "") {
        imageUploadError.innerText = " Image is Required";
        isValid = false;

    } else {

        //imageUploadError.innerText = "This is Valid Image";

    }

    if (isValid) {
        document.forms[0].submit();
    }
    else {
        return isValid;
    }
}



// add course admin
CourseImage = document.getElementById('adminContent_CourseImage');
CourseImageError = document.getElementById('CourseImageError');
course = document.getElementById('adminContent_course');
courseError = document.getElementById('courseError');
CourseDescription = document.getElementById('adminContent_CourseDescription');
CourseDescriptionError = document.getElementById('CourseDescriptionError');
courseDate = document.getElementById('adminContent_courseDate');
courseDateError = document.getElementById('courseDateError');
startTime = document.getElementById('adminContent_startTime');
startTimeError = document.getElementById('startTimeError');
endTime = document.getElementById('adminContent_endTime');
endTimeError = document.getElementById('endTimeError');
courseTeacher = document.getElementById('adminContent_courseTeacher');
courseTeacherError = document.getElementById('courseTeacherError');
function AddCourseCheck()
{

    isValid = true;
    event.preventDefault();
    if (course.value.length == 0 || course.value.length == null || course.value.length == "") {
        courseError.innerText = "Course Name is Required";
        isValid = false;
    } else if (!(/^[A-Za-z ]*$/).test(course.value)) {
        courseError.innerText = "Name Mustn't contain digits";
        isValid = false;
    } else if (course.value.length < 3 || course.value.length > 15) {

        courseError.innerText = "This is invalid Name";
        isValid = false;
    }
    else {
        //courseError.innerText = "This is Valid Name";

    }

    if (CourseDescription.value.length == 0 || CourseDescription.value.length == null || CourseDescription.value.length == "") {
        CourseDescriptionError.innerText = "Course Description is Required";
        isValid = false;

    } else if (CourseDescription.value.length < 15 || CourseDescription.value.length > 100) {

        CourseDescriptionError.innerText = "This is invalid Course Description";
        isValid = false;
    }
    else {

        //CourseDescriptionError.innerText = "This is Valid Name";

    }

    if (CourseImage.value.length == 0 || CourseImage.value.length == null || CourseImage.value.length == "") {
       CourseImageError.innerText = " Image is Required";
        isValid = false;

    } else {

        //CourseImageError.innerText = "This is Valid Image";

    }
    if (courseTeacher.value.length == 0 || courseTeacher.value.length == null || courseTeacher.value.length == "") {
        courseTeacherError.innerText = "Teacher Name is Required";
        isValid = false;
    } else if (!(/^[A-Za-z ]*$/).test(courseTeacher.value)) {
        courseTeacherError.innerText = "Name Mustn't contain digits";
        isValid = false;
    } else if (courseTeacher.value.length < 3 || courseTeacher.value.length > 15) {

        courseTeacherError.innerText = "This is invalid Name";
        isValid = false;
    }
    else {
        //courseTeacherError.innerText = "This is Valid Name";

    }

    if (courseDate.value.length == 0 || courseDate.value.length == null || courseDate.value.length == "") {
        courseDateError.innerText = "Course Date is Required";
        isValid = false;

    }
    else if (!(/^(((0[1-9]|[12][0-9]|30)[-/]?(0[13-9]|1[012])|31[-/]?(0[13578]|1[02])|(0[1-9]|1[0-9]|2[0-8])[-/]?02)[-/]?[0-9]{4}|29[-/]?02[-/]?([0-9]{2}(([2468][048]|[02468][48])|[13579][26])|([13579][26]|[02468][048]|0[0-9]|1[0-6])00))$/).test(courseDate.value)) {
        courseDateError.innerText = "This Is invalid Date";
        isValid = false;

    } else {
   //courseDateError.innerText = "This is Valid Date";

    }

    if (startTime.value.length == 0 || startTime.value.length == null || startTime.value.length == "") {
        startTimeError.innerText = "Start Time is Required";
        isValid = false;
    } else if (!(/[0 - 9]*$/).test(startTime.value)) {
        startTimeError.innerText = "Time Mustn't contain Characters";
        isValid = false;
    }
    else {
        //startTimeError.innerText = "This is Valid Time";

    }
    if (endTime.value.length == 0 || endTime.value.length == null || endTime.value.length == "") {
        endTimeError.innerText = "End Time is Required";
        isValid = false;
    } else if (!(/[0 - 9]*$/).test(endTime.value)) {
        endTimeError.innerText = "Time Mustn't contain Characters";
        isValid = false;
    }
    else {
        //endTimeError.innerText = "This is Valid Time";

    }

    if (isValid) {
        document.forms[0].submit();
    }
    else
    {
        return isValid;
    }


}

//detailImage = document.getElementById('adminContent_detailImage');
//detailImageError = document.getElementById('detailImageError');
//DetailDescription = document.getElementById('adminContent_DetailDescription');
//DetailDescriptionError = document.getElementById('DetailDescriptionError');


//NameCourse = document.getElementById('adminContent_NameCourse');
//NameCourseError = document.getElementById('NameCourseError');

//function AddcourseDetailsCheck() {

//    isValid = true;
//    event.preventDefault();
//    if (detailImage.value.length == 0 || detailImage.value.length == null || detailImage.value.length == "") {
//        detailImageError.innerText = "Image is Required";
//        isValid = false;
//    }
//    else {
//        //detailImageError.innerText = "This is Valid Image";

//    }

//    if (DetailDescription.value.length == 0 || DetailDescription.value.length == null || DetailDescription.value.length == "") {
//        DetailDescriptionError.innerText = "Course Description is Required";
//        isValid = false;

//    } else if (DetailDescription.value.length < 15 || DetailDescription.value.length > 100) {

//        DetailDescriptionError.innerText = "This is invalid Course Description";
//        isValid = false;
//    }
//    else {

//        //DetailDescriptionError.innerText = "This is Valid Name";

//    }
//    if (courseTeacher.value.length == 0 || courseTeacher.value.length == null || courseTeacher.value.length == "") {
//        courseTeacherError.innerText = "Teacher Name is Required";
//        isValid = false;
//    } else if (!(/^[A-Za-z ]*$/).test(courseTeacher.value)) {
//        courseTeacherError.innerText = "Name Mustn't contain digits";
//        isValid = false;
//    } else if (courseTeacher.value.length < 3 || courseTeacher.value.length > 15) {

//        courseTeacherError.innerText = "This is invalid Name";
//        isValid = false;
//    }
//    else {
//        //courseTeacherError.innerText = "This is Valid Name";

//    }

//    //if (courseDate.SelectedDate != null) {
        
//    //} 
//    //else {
//    //    courseDateError.innerText = "Course Date is Required";
//    //    isValid = false;

//    //}

//    if (startTime.value.length == 0 || startTime.value.length == null || startTime.value.length == "") {
//        startTimeError.innerText = "Start Time is Required";
//        isValid = false;
//    } else if (!(/[0 - 9]*$/).test(startTime.value)) {
//        startTimeError.innerText = "Time Mustn't contain Characters";
//        isValid = false;
//    } 
//    else {
//        //startTimeError.innerText = "This is Valid Time";

//    }
//    if (endTime.value.length == 0 || endTime.value.length == null || endTime.value.length == "") {
//        endTimeError.innerText = "End Time is Required";
//        isValid = false;
//    } else if (!(/[0 - 9]*$/).test(endTime.value)) {
//        endTimeError.innerText = "Time Mustn't contain Characters";
//        isValid = false;
//    }
//    else {
//        //endTimeError.innerText = "This is Valid Time";

//    }
//    if (NameCourse.value.length == 0 || NameCourse.value.length == null || NameCourse.value.length == "") {
//        NameCourseError.innerText = "Course Name is Required";
//        isValid = false;
//    } else if (!(/^[A-Za-z ]*$/).test(NameCourse.value)) {
//        NameCourseError.innerText = "Name Mustn't contain digits";
//        isValid = false;
//    } else if (NameCourse.value.length < 3 || NameCourse.value.length > 15) {

//        NameCourseError.innerText = "This is invalid Name";
//        isValid = false;
//    }
//    else {
//        //NameCourseError.innerText = "This is Valid Name";

//    }

//    if (isValid) {
//        document.forms[0].submit();
//    }
//    else {
//        return isValid;
//    }



//}