const countries = [{
    name: 'India',
    val: 'ind',
    code: '+91'
}, {
    name: 'Canada',
    val: 'can',
    code: '+01'
}, {
    name: 'Sri Lanka',
    val: 'sl',
    code: '+94'
}];

let paginatorCount = 1;
let paginating = false;
let mockupVisible = true;
$(function() {
    /********** Overlay Functions **********/
    $('.toggleMockup').click(function(event) {
        if (mockupVisible) {
            mockupVisible = false;
            $(this).removeClass('active');
            $('.landing-mockup, .container2').addClass('hidden');
        } else {
            mockupVisible = true;
            $(this).addClass('active');
            $('.landing-mockup, .container2').removeClass('hidden');
        }
    });

    $('.prevdef').click(function(event) {
        event.preventDefault();
    });

    var range = $('#range');
    var output = $('#output');

    $(range).on('mousemove change', function() {
        $(output).text(range.val());
        let opacity = range.val() / 100;
        $('.landing-mockup').css('filter', 'opacity(' + opacity + ')');
    });
    /********* -Overlay Functions- *********/

    function nameValid() {
        console.log('Reached Valid');
        $('#txt_name').css('border-width', '2px');
        $('#txt_name').css('border-color', '#9ab45b');
    }

    function nameInvalid() {
        console.log('Reached Invalid');
        $('#txt_name').css('border-width', '2px');
        $('#txt_name').css('border-color', 'red');
    }

    function emailValid() {

        $('#txt_email').css('border-width', '2px');
        $('#txt_email').css('border-color', '#9ab45b');
    }

    function emailInvalid() {
        $('#txt_email').css('border-width', '2px');
        $('#txt_email').css('border-color', 'red');
    }

    function MaritalValid() {

        $('#ddlMaritalSts').css('border-width', '2px');
        $('#ddlMaritalSts').css('border-color', '#9ab45b');
    }

    function MaritalInvalid() {
        $('#ddlMaritalSts').css('border-width', '2px');
        $('#ddlMaritalSts').css('border-color', 'red');
    }

    function contactValid() {

        $('#txt_mobile').css('border-width', '2px');
        $('#txt_mobile').css('border-color', '#9ab45b');
    }

    function contactInvalid() {
        $('#txt_mobile').css('border-width', '2px');
        $('#txt_mobile').css('border-color', 'red');
    }

    function locationValid() {

        $('#txtLocation').css('border-width', '2px');
        $('#txtLocation').css('border-color', '#9ab45b');
    }

    function locationInvalid() {
        $('#txtLocation').css('border-width', '2px');
        $('#txtLocation').css('border-color', 'red');
    }

    function casteValid() {

        $('#ddlcast').css('border-width', '2px');
        $('#ddlcast').css('border-color', '#9ab45b');
    }

    function casteInvalid() {
        $('#ddlcast').css('border-width', '2px');
        $('#ddlcast').css('border-color', 'red');
    }
    // Add options to mobile number country select
    //for(let i=0; i<countries.length; i++) {
    //    $('#ddlCountryCode')
    //            .append($('<option>', { value : countries[i].val })
    //            .text(countries[i].name));
    //}

    // Add change listener to update country code
    $('#ddlCountryCode').on('change', (e) => {
        var ddlCountryCode = document.getElementById('ddlCountryCode');
        var mValue = ddlCountryCode.options[ddlCountryCode.selectedIndex].value;
        $('#country-code').html(mValue);

    });

    // Name input
    $('#txt_name').on('blur', function() {
        if (this.value == '') {
            nameInvalid();
        }
    });

    $('#txt_name').on('keydown', function(e) {
        var charCode = this.value;
        console.log(charCode.length);
        if (e.keyCode == 13 || e.keyCode == 9) {
            e.preventDefault();
            if (this.value == '' || charCode.length > 50) {
                console.log("empty");
                nameInvalid();
                $('#txt_email').focus();
            } else {
                console.log("String enter");

                console.log(charCode);
                if (charCode.search(/^([a-zA-Z]+\s)*[a-zA-Z]+$/) === -1) {
                    console.log("InvalidValid");
                    //document.getElementByClass("test-wrapper").setAttribute('style','bordercolor:green;')
                    //test-wrapper.style.bordercolor="green";
                    nameInvalid();
                    $('#txt_email').focus();

                } else {
                    console.log("Valid");
                    nameValid();
                    $('#txt_email').focus();
                }


                //nameInvalid();
            }
        } else {
            nameValid();
        }
    });


    // Email input
    $('#txt_email').on('blur', function() {
        if (this.value == '') {
            emailInvalid();
            $('#ddlMaritalSts').focus();
        }
    });

    $('#txt_email').on('keydown', function(e) {
        console.log(e);
        if (e.keyCode == 13 || e.keyCode == 9) {
            e.preventDefault();
            if (this.value == '') {
                console.log("empty");
                emailInvalid();
                $('#ddlMaritalSts').focus();
            } else {
                console.log("String enter");
                var charCode = this.value;
                console.log(charCode);
                if (charCode.search(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/) === -1) {
                    console.log("InvalidValid");
                    //document.getElementByClass("test-wrapper").setAttribute('style','bordercolor:green;')
                    //test-wrapper.style.bordercolor="green";
                    emailInvalid();
                    $('#ddlMaritalSts').focus();
                } else {
                    console.log("Valid");
                    emailValid();
                    $('#ddlMaritalSts').focus();
                }
                //nameInvalid();
            }
        } else {
            emailValid();
        }
    });

    //Marital Status
    $('#ddlMaritalSts').on('blur', function() {
        if (this.value == '0') {
            MaritalInvalid();
            $('#ddlCountryCode').focus();
        }
    });

    $('#ddlMaritalSts').on('change', function(e) {
        var charCode = this.value;
        console.log(e);
        if (e.keyCode == 13 || e.keyCode == 9) {
            e.preventDefault();
            if (document.querySelector("#ddlMaritalSts").value == '0') {
                console.log("empty");
                MaritalInvalid();
                $('#ddlCountryCode').focus();
            } else {
                MaritalValid();
                $('#ddlCountryCode').focus();
            }
        } else {
            MaritalValid();
            $('#ddlCountryCode').focus();
        }
    });


    $('#txt_mobile').on('blur', function() {
        if (this.value == '') {
            contactInvalid();
        }
    });

    $('#txt_mobile').on('keydown', function(e) {
        var charCode = this.value;
        console.log(e);
        if ((e.keyCode == 13 || e.keyCode == 9)) {
            e.preventDefault();
            if (this.value == '' || charCode.length > 10) {
                console.log("empty");
                contactInvalid();
                $('#txtLocation').focus();
            } else {
                console.log("String enter");

                console.log(charCode);
                if (charCode.search(/^\d{10}$/) === -1) {
                    console.log("InvalidValid");
                    //document.getElementByClass("test-wrapper").setAttribute('style','bordercolor:green;')
                    //test-wrapper.style.bordercolor="green";
                    contactInvalid();
                    $('#txtLocation').focus();
                } else {
                    console.log("Valid");
                    contactValid();
                    $('#txtLocation').focus();
                }
                //nameInvalid();
            }
        } else {
            contactValid();
        }

    });

    $('#txtLocation').on('blur', function() {
        if (this.value == '') {
            locationInvalid();
            $('#ddlcast').focus();
        }
    });

    $('#txtLocation').on('keydown', function(e) {
        var charCode = this.value;
        console.log(charCode.length);
        if (e.keyCode == 13 || e.keyCode == 9) {
            e.preventDefault();
            if (this.value == '') {
                console.log("empty");
                locationInvalid();
                $('#ddlcast').focus();
            } else {
                console.log("Valid");
                locationValid();
                $('#ddlcast').focus();
            }
        } else {
            locationValid();
        }
    });

    $('#ddlcast').on('blur', function() {
        if (this.value == '0') {
            casteInvalid();
            $('#btnSubmit').focus();
        }
    });

    $('#ddlcast').on('change', function(e) {
        var charCode = this.value;
        console.log(e);
        if (e.keyCode == 13 || e.keyCode == 9) {
            e.preventDefault();
            if (document.querySelector("#ddlcast").value == '0') {
                console.log("empty");
                casteInvalid();
                $('#btnSubmit').focus();
            } else {
                casteValid();
                $('#btnSubmit').focus();
            }
        } else {
            casteValid();
            $('#btnSubmit').focus();
        }
    });

    // Generate paginators
    generatePaginators();

    // Set listener for page resize
    let resize;
    let oldSize = 0;
    $(window).resize(function() {
        if (resize) {
            clearTimeout(resize);
            resize = null;
        }
        resize = setTimeout(function() {
            if ($(window).width() != oldSize) {
                oldSize = $(window).width();
                generatePaginators();
            }
        }, 500);
    });

    // Set listener for page change
    $('.testimonialPaginator').on('click', '.pageButton', function(e) {
        if (paginating) {
            return;
        } else {
            paginating = true;
            let pageButtons = $('.pageButton');
            for (let i = 0; i < pageButtons.length; i++) {
                if (this === pageButtons[i]) {
                    scrollTestimonial(_ => {
                        paginating = false;
                        pageButtons.removeClass('active');
                        $(this).addClass('active');
                    }, i);
                }
            }
        }
    });
});

function radioValidation() {

    var gender = document.getElementsByName('inlineRadioOptions');
    var genValue = false;

    for (var i = 0; i < gender.length; i++) {
        if (gender[i].checked == true) {
            genValue = true;
        }
    }
    if (!genValue) {
        //alert("Please Choose the gender");
        document.getElementById('error').innerHTML = "Please Select Gender";
        return false;
    }


}

function generatePaginators() {
    let profile = $('.profile');
    if ($(window).width() < 992) {
        paginatorCount = profile.length;
    } else {
        paginatorCount = profile.length / 3;
    }

    $(".testimonialPaginator").empty();

    if (paginatorCount === 1) {
        return;
    }

    for (let i = 0; i < paginatorCount; i++) {
        if (i === 0) {
            $('.testimonialPaginator').append('<div class="pageButton active"></div>');
        } else {
            $('.testimonialPaginator').append('<div class="pageButton"></div>');
        }
    }

    scrollTestimonial(_ => {}, 0);
}

function scrollTestimonial(callback, index) {
    let testimonialRow = $('.testimonialRow');

    //Get testimonial width
    let testimonialWidth = testimonialRow.width();

    // Get testimonial current position
    let scrollStart = testimonialRow.scrollLeft();

    // Generate target position based on index
    let scrollEnd = testimonialWidth * index;

    // Scroll to target position
    animateScroll(_ => {
        callback('success');
    }, testimonialRow, scrollStart, scrollEnd, 500);
    //    testimonialRow.scrollLeft(scrollEnd);

}

function animateScroll(callback, element, from, to, duration) {
    // The scroll should be 60FPS to look smooth to human eye, so, we split 1 second into 60 intervals
    // 1000 / 60 = 16
    // So, our set timeout will be for 16ms
    // Now, we need to set the distance scrollbar should move in 16ms
    // Which would be (distance / duration) * 16
    let scrollDelta = Math.abs((from - to) / duration) * 16.666666667;
    let direction;
    if (from < to) {
        direction = 'right';
    } else {
        direction = 'left';
    }

    animHelper(_ => {
        callback('success');
    }, element, direction, from, to, scrollDelta, 16)
}

function animHelper(callback, element, direction, from, to, delta, duration) {
    if (direction === 'right') {
        if (from < to) {
            from += delta;
            element.scrollLeft(from);
            setTimeout(_ => {
                animHelper(callback, element, direction, from, to, delta, duration);
            }, duration);
        } else {
            callback('success');
        }
    } else if (direction === 'left') {
        if (to < from) {
            from -= delta;
            element.scrollLeft(from);
            setTimeout(_ => {
                animHelper(callback, element, direction, from, to, delta, duration);
            }, duration);
        } else {
            callback('success');
        }
    }
}

/*$(function() {
    // contact input
    $('#txt_mobile').on('blur', function(){
        if(this.value == '' ) {
            contactInvalid();
        }
    });

    $('#txt_mobile').on('keydown', function(e){
        var charCode=this.value;
        console.log(e);
        if (e.keyCode == 13 ) {
            e.preventDefault();
            if(this.value == ''  || charCode.length > 10) {
                console.log("empty");
                contactInvalid();
                $('#location-select').focus();
            }
            else
            {
                console.log("String enter");

                console.log(charCode);
                if (charCode.search(/^\d{10}$/) === -1)
                {
                    console.log("InvalidValid");
                    //document.getElementByClass("test-wrapper").setAttribute('style','bordercolor:green;')
                    //test-wrapper.style.bordercolor="green";
                    contactInvalid();
                    $('#location-select').focus();
                }
                else
                {
                    console.log("Valid");
                    contactValid();
                    $('#location-select').focus();
                }


                //nameInvalid();
            }
        }
        else {
            contactValid();
        }
    });
});

function contactValid() {

    $('#txt_mobile').css('border-width', '2px');
    $('#txt_mobile').css('border-color', '#9ab45b');
}

function contactInvalid() {
    $('#txt_mobile').css('border-width', '2px');
    $('#txt_mobile').css('border-color', 'red');
}*/