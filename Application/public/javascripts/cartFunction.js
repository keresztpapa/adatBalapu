function addToCart(isbn) {
  console.log(isbn)

  fetch(`/konyvek/add_into_cart`, {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json'
    },
    body: JSON.stringify({isbn: isbn})
  }).then(response => {
    if (!response.ok) {
      throw new Error("Failed to add book to cart 1");
    }
    return response.json();
  })
  .then(data => {
    if (data.message) {
      alert(data.message);
    } else {
      throw new Error("Failed to add book to cart 2");
  }})
  .catch(error => {
    console.error(error);
    alert("Failed to add book to cart");
  });  
}

function deleteFromCart(id) {
  console.log(id);

  fetch(`/kosar/delete_from_cart`, {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json'
    },
    body: JSON.stringify({id:id})
  }).then(response => {
    if (!response.ok) {
      throw new Error("Failed to delete book from cart 1");
    }
    return response.json();
  })
  .then(data => {
    if (data.message) {
      alert(data.message);
    } else {
      throw new Error("Failed to delete book from cart 2");
  }})
  .catch(error => {
    console.error(error);
    alert("Failed to delete book from cart");
  });  
}


function finalize() {
  var popup = window.open("", "popup", "width=400,height=450");
  popup.document.write("<html><head><title>Payment Details</title>");
  popup.document.write("<style>");
  popup.document.write("form {text-align: center;}");
  popup.document.write(`label {
                          display: inline-block; 
                          width: 120px; 
                          text-align: right; 
                          margin-right: 10px;
                        }
                        .popup-input {
                          margin-bottom: 10px;
                        }
                        .popup-form {
                          padding: 10px;
                        }
                        `);
  popup.document.write("input[type='text'] {width: 200px;}");
  popup.document.write("input[type='submit'] {margin-top: 10px;}");
  popup.document.write("</style></head><body>");
  popup.document.write("<form class='popup-form' onsubmit='submitForm()'>");
  
  popup.document.write("<label for='cardNumber'>Kártyaszám:</label>");
  popup.document.write("<input class='popup-input' type='text' id='cardNumber' name='cardNumber'><br>");
  popup.document.write("<label for='expiration'>Lejárati idő:</label>");
  popup.document.write("<input class='popup-input' type='text' id='expiration' name='expiration'><br>");
  popup.document.write("<label for='cvv'>CVV kód:</label>");
  popup.document.write("<input class='popup-input' type='text' id='cvv' name='cvv'><br>");
  
  popup.document.write("<label for='address'>Cím:</label>");
  popup.document.write("<select class='popup-input' id='address' name='address'>");
  popup.document.write("<option value='123 Main St'>123 Main St</option>");
  popup.document.write("<option value='456 Oak Ave'>456 Oak Ave</option>");
  popup.document.write("<option value='789 Maple Dr'>789 Maple Dr</option>");
  popup.document.write("</select><br>");
  
  popup.document.write("<input type='submit' value='Fizetés'>");
  popup.document.write("</form>");
  popup.document.write(`<script> 
                        function submitForm() {
                          window.opener.alert("A fizetés sikeres volt!"); 
                          window.close(); 
                        } 
                        </script>`);
  popup.document.write("</body></html>");
  popup.document.close();
  popup.focus();
}

function submitForm() {
  window.opener.alert("A fizetés sikeres volt!"); 
  window.close(); 
}
