function addToCart(isbn) {
  console.log(isbn)
  
  fetch(`/add_into_cart`, {
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