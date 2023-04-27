function toggleFavorite(isbn) {
  console.log(isbn)

  fetch(`/konyvek/toggle_favorite`, {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json'
    },
    body: JSON.stringify({isbn: isbn})
  })
  .then(response => {
    if (!response.ok) {
      throw new Error("Failed to toggle favorite 1");
    }
    return response.json();
  })
  .then(data => {
    if (data.message) {
      alert(data.message);
    } else {
      throw new Error("Failed to toggle favorite 2");
  }})
  .catch(error => {
    console.error(error);
    alert("Failed to toggle favorite");
  });  
}
