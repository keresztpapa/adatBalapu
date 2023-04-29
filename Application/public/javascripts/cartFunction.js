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


function finalize(){
  const table = document.querySelector('table');
  const rows = table.querySelectorAll('tr');
  const data = [];

  rows.forEach(function(row) {
    const cells = row.querySelectorAll('td');
    if (cells.length > 0) {
      const rowData = [];
      cells.forEach(function(cell) {
        rowData.push(cell.textContent);
      });
      data.push(rowData);
    }
  });
  console.log(data);
}