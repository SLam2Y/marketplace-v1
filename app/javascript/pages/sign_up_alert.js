document.addEventListener("DOMContentLoaded", function () {
        const form       = document.getElementById("new_user");
        const emailField = document.getElementById("user_email");
        const emailRegex = /^(admin@gmail\.com|[a-z]+\.[a-z]+@[a-z]+\.[a-z]{2,})$/;

        const errorField = document.getElementById("js_alert");

        form.addEventListener("submit", (e) => {
          if (!emailRegex.test(emailField.value.trim())) {
            e.preventDefault();
            alert("Please enter a valid email address");
            errorField.textContent = "email is invalid"

            emailField.focus();
          }
        });
      });

