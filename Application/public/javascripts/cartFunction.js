document.querySelectorAll(".add-to-cart").forEach(function(button) {
  button.addEventListener("click", function() {
    // Az adott könyv ISBN száma
    var isbn = button.dataset.isbn;

    // A könyv hozzáadása a kosárhoz
    addToCart(isbn);
  });
});

function addToCart(isbn) {
  console.log(isbn)
  // AJAX kérés elküldése
  var xhr = new XMLHttpRequest();
  xhr.open("POST", "/add_into_cart", true);
  xhr.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
  xhr.onload = function() {
    if (xhr.readyState === xhr.DONE) {
      if (xhr.status === 200) {
        // A könyv sikeresen hozzá lett adva a kosárhoz
        console.log(xhr.responseText);
      } else {
        // Hiba történt
        console.error(xhr.responseText);
      }
    }
  };
  xhr.send(JSON.stringify({ isbn: isbn }));
}

/*
function addToCart(bookId) {
  fetch(`/kosar/add/${bookId}`)  
    .then(response => {
      if (!response.ok) {
        throw new Error("Failed to add book to cart 1");
      }
      return response.json();
    })
    .then(data => {
      if (data.title) {
        alert(`Book added to cart: ${data.title}`);
      } else {
        throw new Error("Failed to add book to cart 2");
      }
    })
    .catch(error => {
      console.error(error);
      alert("Failed to add book to cart");
    });  
  }
*/

  /*
    <script>
    const addToCartButtons = document.querySelectorAll(".addToCartButton");
    addToCartButtons.forEach(function(button) {
      button.addEventListener("click", function() {
        const isbn = button.getAttribute("data-isbn"); // Get the ISBN number
        
        const xhr = new XMLHttpRequest();
        xhr.open("POST", "/kosar/add/" + isbn); // Replace "/add-to-cart" with the URL of your server endpoint
        xhr.setRequestHeader("Content-Type", "application/json");
        xhr.send(JSON.stringify({ isbn: isbn }));
      });
    });
  </script>
  
  */