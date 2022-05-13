<div id="slides" class="carousel slide carousel-cus" data-ride="carousel">
    <ul class="carousel-indicators">
        <li data-target="#slides" data-slide-to="0" class="active"></li>
        <li data-target="#slides" data-slide-to="1"></li>
        <li data-target="#slides" data-slide-to="2"></li>
    </ul>
    <div class="carousel-inner">
        <div class="carousel-item active">
        <img src="<?php echo base_url()."/assets/img/cloth1.jpg" ;?>" alt="FriesBrgrImg">
            <div class="carousel-caption text-left">
                <h1 class="display-2">Looking for a new look?!</h1>
                <h3>Good, we are here to serve you</h3>
                <a href="<?php echo base_url().'restaurant/index'?>" class="btn btn-outline-light btn-lg">Order Now</a>
                <a href="<?php echo base_url().'restaurant/index'?>" class="btn btn-primary btn-lg">View Menu</a>
            </div>
        </div>
        <div class="carousel-item">
        <img src="<?php echo base_url()."/assets/img/cloth61.jfif" ;?>" alt="Spaghetti">
            <div class="carousel-caption text-right">
                <h1 class="display-2">Looking for new look?!</h1>
                <h3>Good, we are here to serve you</h3>
                <a href="<?php echo base_url().'restaurant/index'?>" class="btn btn-outline-light btn-lg">Order Now</a>
                <a href="<?php echo base_url().'restaurant/index'?>" class="btn btn-primary btn-lg">View Menu</a>
            </div>
        </div>
        <div class="carousel-item">
        <img src="<?php echo base_url()."/assets/img/cloth52.jfif" ;?>" alt="corn">
            <div class="carousel-caption text-right">
                <h1 class="display-2">Looking for a new look?!</h1>
                <h3>Good, we are here to serve you</h3>
                <a href="<?php echo base_url().'restaurant/index'?>" class="btn btn-outline-light btn-lg">Order Now</a>
                <a href="<?php echo base_url().'restaurant/index'?>" class="btn btn-primary btn-lg">View Menu</a>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid padding">
    <div class="row text-center welcome">
        <div class="col-12">
            <h1 class="display-4">Easy 3 Steps To Follow</h1>
        </div>
        <hr>
        <div class="col-12">
            <p class="lead">Uzuntu online stores are the new way to shop,
                Get the latest design on your doorstep today
            </p>
        </div>
    </div>
</div>
<div class="container-fluid padding">
    <div class="row text-center padding">
        <div class="col-xs-12 col-sm-6 col-md-4">
            <i class="fas fa-universal-access"></i>
            <h3>Choose A Shop</h3>
            <p>First thing you can do is choose from our various partners easily!</p>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-4">
            <i class="fas fa-thumbs-up"></i>
            <h3>Choose A Category</h3>
            <p>We've got you covered with various dressing styles to suit your needs !</p>
        </div>
        <div class="col-sm-12 col-md-4">
        <i class="fas fa-taxi"></i>
            <h3>Pick Up or Delivery</h3>
            <p>After all, the  gets delivered or you can pick it up as per your choices!</p>
        </div>
    </div>
    <hr class="my-4">
</div>
<section class="About us">
    <h2 style="text-align:center">About us </h2>
    
<p>Uzuntu Fashion provides the most authentic fashion outfits est 2018.
  providing flashy,new,trendy and most popular fashion ideas currently in the Country
  Shine with uzuntu lets wear Uzuntu.
</p>
<p>Uzuntu has various stores across the country with diffrent varieties of clothes to suit your needs.</p>
<p>#lets wear uzuntu</p>
<p>Clothes are only uzuntu</p>



<!-- Container for the image gallery -->
<div class="container">
  <div class="row">
    <div class="col-sm">
    <img class="img1" src="<?php echo base_url()."/assets/img/face1.jpg" ;?>" style="width:200px">

     <br> John Kennie</br>
     <br>   Store Manager     </br>
     <br><i class="fas fa-phone-square"></i>  +254 45678976</br>

    </div>
    <div class="col-sm">
    <img  class="img1" src="<?php echo base_url()."/assets/img/face2.jpg" ;?> "style="width:200px">
    <br>  Maria Muko </br>
    <br>   Store Designer   </br>
    <br><i class="fas fa-phone-square"></i>  +254 00560876</br>
    </div>
    <div class="col-sm">
    <img class="img1" src="<?php echo base_url()."/assets/img/face3.jpg" ;?>"style="width:200px">
    <br>  Trevor Noah </br>
    <br>   Sales Manager   </br>
    <br><i class="fas fa-phone-square"></i>  +254 9888876</br>    </div>
  </div>
</div>
    
  
<div class="container-fluid padding">
    <div class="row text-center padding">
        <div class="col-12">
            <h2>Connect With Us</h2>
        </div>
        <div class="col-12 social padding">
            <a href=""><i class="fab fa-facebook"></i></a>
            <a href=""><i class="fab fa-twitter"></i></a>
            <a href=""><i class="fab fa-google-plus-g"></i></a>
            <a href=""><i class="fab fa-instagram"></i></a>
            <a href=""><i class="fab fa-youtube"></i></a>
        </div>
    </div>
</div>
<hr class="my-4">
<section id="contact-us" class="container shadow my-4 p-4">
    <!--Section heading-->
    <?php if($this->session->flashdata('msg') != ""):?>
    <div class="alert alert-success">
        <?php echo $this->session->flashdata('msg');?>
    </div>
    <?php endif ?>
    <h2 class="text-center my-2 font-weight-bold">Contact Us</h2>
    <p class="text-center">Always Here For You</p>
    <!--Section description-->
    <p class="text-center mx-auto mb-5"></p>
    <form name="contact-form" action="<?php echo base_url().'home/sendMail'; ?>" id="myForm" method="POST">
        <div class="row">
            <div class="col-md-6">
                <div class="mb-2">
                    <label class="mb-0" for="name" class="">Fullname*</label>
                    <input type="text" id="name" name="name" class="form-control" required <?php set_value("name");?>>
                    <span></span>
                </div>
            </div>
            <div class="col-md-6">
                <div>
                    <label class="mb-0" for="email" class="">Email*</label>
                    <input type="text" id="email" name="email" class="form-control" required <?php set_value("email");?>>
                    <span></span>
                </div>
            </div>

        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="mb-2">
                    <label class="mb-0" for="subject" class="">Subject</label>
                    <input type="text" id="subject" name="subject" class="form-control" <?php set_value("subject");?>>
                    <span></span>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="mb-2">
                    <label class="mb-0" for="message">Your Message*</label>
                    <textarea type="text" id="message" name="message" rows="2"
                        class="form-control" required><?php set_value("message");?></textarea>
                    <span></span>
                </div>
            </div>
        </div>
        <div class="status text-danger font-weight-bold my-2"></div>
        <button class="btn btn-info" type="submit">Submit</button>
    </form>

</section>
<script>
const form = document.getElementById('myForm');
const userName = document.getElementById('name');
const email = document.getElementById('email');
const subject = document.getElementById('subject');
const message = document.getElementById('message');

form.addEventListener('submit', (event) => {
    event.preventDefault();
    validate();
})

const isEmail = (emailVal) => {
    var re =
        /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    if (!re.test(emailVal)) {
        return "fail";
    }
}

const sendData = (sRate, count) => {
    if (sRate === count) {
        event.currentTarget.submit();
    }
}

const successMsg = () => {
    let formCon = document.getElementsByClassName('form-control');
    var count = formCon.length - 1;
    for (var i = 0; i < formCon.length; i++) {
        if (formCon[i].className === "form-control success") {
            var sRate = 0 + i;
            sendData(sRate, count);
        } else {
            return false;
        }
    }
}

const validate = () => {
    const userNameVal = userName.value.trim();
    const emailVal = email.value.trim();
    const subjectVal = subject.value.trim();
    const messageVal = message.value.trim();

    //username validation
    if (userNameVal === "") {
        setErrorMsg(userName, 'name cannot be blank');
    } else if (!isNaN(userNameVal)) {
        setErrorMsg(userName, 'only characters are allowed');
    } else {
        setSuccessMsg(userName);
    }

    //email validation
    if (emailVal === "") {
        setErrorMsg(email, 'email cannot be blank');
    } else if (isEmail(emailVal) === "fail") {
        setErrorMsg(email, 'enter valid email only');
    } else {
        setSuccessMsg(email);
    }

    //subject can not
    if (subjectVal === "") {
        setErrorMsg(subject, 'subject cannot be blank');
    } else {
        setSuccessMsg(subject);
    }

    //message validation
    if (messageVal === "") {
        setErrorMsg(message, 'message cannot be blank');
    } else {
        setSuccessMsg(message);
    }

    successMsg();
}

function setErrorMsg(ele, msg) {

    const formCon = ele.parentElement;
    const formInput = formCon.querySelector('.form-control');
    const span = formCon.querySelector('span');
    span.innerText = msg;
    formInput.className = "form-control is-invalid";
    span.className = "invalid-feedback font-weight-bold"
}

function setSuccessMsg(ele) {
    const formCon = ele.parentElement;
    const formInput = formCon.querySelector('.form-control');
    formInput.className = "form-control success";
}

</script>