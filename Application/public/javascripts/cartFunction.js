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

function deleteFromCart(email, cim) {
  console.log(email);
  console.log(cim);

  fetch(`/konyvek/delete_from_cart`, {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json'
    },
    body: JSON.stringify({email: email, cim:cim})
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
