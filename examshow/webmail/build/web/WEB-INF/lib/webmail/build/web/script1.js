//
//	jQuery Validate example script
//
//	Prepared by David Cochran
//
//	Free for your use -- No warranties, no guarantees!
//

$(document).ready(function(){
	$('#contact-form').validate({
	    rules: {

             sname: {
                 minlength: 6,
                required: true

                },

	      username: {
                nospace:true,
	        minlength: 2,
	        required: true
	      },

            passwd:{
                required:true,
                minlength: 6
                },

             conpasswd:{
                     required:true,
                    equalTo: "#passwd"
                    },

              sem:
                {
                    minlength: 1,
                    required: true,
                    number:true
                },

            email: {
                    required: true,
                    email: true
                  },

            number: {

                number:true,
                required: true
            }
              },//rules close here
	  
highlight: function(element) {
        $(element).closest('.control-group').removeClass('success').addClass('error');
},
success: function(element) {
        element
        .text('OK!').addClass('valid')
        .closest('.control-group').removeClass('error').addClass('success');
}
           });//validate function close
           
	

       	$('#contact-form1').validate({
	    rules: {
	
		fname: {
		 minlength: 6,
	        required: true

		},
 

             username: {
                    nospace:true,
                    minlength: 6,
                    required: true
                  },
             pass:{
                    required:true,
                    minlength: 6
                    },
            conpasswd:{
                    required:true,
                    equalTo: "#pass"
                    },
            email: {
                    required: true,
                    email: true
                  },
            number: {

                number:true,
	        required: true
            }
	      },

	highlight: function(element) {
				$(element).closest('.control-group').removeClass('success').addClass('error');
			},
	success: function(element) {
				element
				.text('OK!').addClass('valid')
				.closest('.control-group').removeClass('error').addClass('success');
			}
            });


       	$('#contact-form2').validate({
	    rules: {

		fname: {
		 minlength: 6,
	        required: true

		},

            email: {
                    required: true,
                    email: true
                  },
            number: {

                number:true,
	        required: true
            },
          comment: {
                required: true,
                minlength:10
            }
	      },

	highlight: function(element) {
				$(element).closest('.control-group').removeClass('success').addClass('error');
			},
	success: function(element) {
				element
				.text('OK!').addClass('valid')
				.closest('.control-group').removeClass('error').addClass('success');
			}
            });

$('#contact-form4').validate({
	    rules: {

            apasswd:{
                    required:true,
                    minlength: 6
                    },
            conpasswd:{
                    required:true,
                    equalTo: "#apasswd"
                    }
            },

	highlight: function(element) {
				$(element).closest('.control-group').removeClass('success').addClass('error');
			},
	success: function(element) {
				element
				.text('OK!').addClass('valid')
				.closest('.control-group').removeClass('error').addClass('success');
			}
            });
}); // end document.ready
