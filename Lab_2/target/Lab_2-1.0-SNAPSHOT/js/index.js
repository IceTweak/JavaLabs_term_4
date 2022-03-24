
let form = document.querySelector('form');
form.onsubmit = function(event) {

    let xhr = new XMLHttpRequest();

    event.preventDefault();

    let data = new FormData(form);
    let toServer = JSON.stringify(Object.fromEntries(data.entries()));
    xhr.open('POST', 'jsonServlet', true);
    xhr.setRequestHeader("Content-Type", "application/jx-www-form-urlencoded");
    xhr.send(toServer);

    xhr.onreadystatechange = function () {
        if (xhr.readyState === XMLHttpRequest.DONE) {
            form.reset(); //reset form after AJAX success or do something else
        }
    }
    //Fail the onsubmit to avoid page refresh.
    //return false;
}