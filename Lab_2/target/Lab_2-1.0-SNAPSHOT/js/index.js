let loadBtn = document.getElementById('getData')
loadBtn.addEventListener('click', loadData, false);

async function loadData(){
    let xhr = new XMLHttpRequest();
    xhr.open('GET', 'jsonServlet', true);
    xhr.responseType = 'text';
    xhr.send();

    xhr.onreadystatechange = function() {
        if (xhr.readyState !== 4) return;

        if (xhr.status !== 200) {
            // обработать ошибку
            alert( xhr.status + ': ' + xhr.statusText );
        } else {
            try {
                console.log(xhr.responseText);
                let records = JSON.parse(xhr.responseText);
                showData(records);
                console.log(records);
            } catch (e) {
                alert("Некорректный ответ " + e.message);
            }

        }
    }
}

function showData(records) {
    let dataDiv = document.getElementById('data-div');
    if(!dataDiv) {
        dataDiv = document.createElement('div');
        dataDiv.id = "data-div";
        document.getElementById("wrap").appendChild(dataDiv);
    }
    dataDiv.innerHTML = '';
    records.forEach(function(record){
        for(let line in record){
            dataDiv.innerHTML += '<div style="font-size:26px;color:white;font-weight:600;display: inline-block;">' +
                line + ': ' + '<span style="font-size:24px; color: #34D399; ' +
                'font-weight:500;">' + record[line] + '</span>' +'</div>' + '<br>';
        }
        dataDiv.innerHTML += '<hr class="line">';
    });
}

let form = document.querySelector('form');
form.onsubmit = function(event) {

    let xhr = new XMLHttpRequest();

    event.preventDefault();

    let data = new FormData(form);
    let toServer = JSON.stringify(Object.fromEntries(data.entries()));
    xhr.open('POST', 'jsonServlet', true);
    xhr.setRequestHeader("Content-Type", "application/jx-www-form-urlencoded; charset=utf8");
    xhr.send(toServer);

    xhr.onreadystatechange = function () {
        if (xhr.readyState === XMLHttpRequest.DONE) {
            form.reset(); //reset form after AJAX success or do something else
        }
    }
}