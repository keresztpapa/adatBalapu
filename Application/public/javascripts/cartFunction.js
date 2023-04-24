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
