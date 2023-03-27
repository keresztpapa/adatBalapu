const books = document.querySelectorAll(".book");

books.forEach((book) => {
  const coverContainer = document.createElement("div");
  coverContainer.classList.add("cover-container");

  const canvas = document.createElement("canvas");
  canvas.width = 100;
  canvas.height = 160;
  const ctx = canvas.getContext("2d");

  const randomColor = () => {
    const r = Math.floor(Math.random() * 255);
    const g = Math.floor(Math.random() * 255);
    const b = Math.floor(Math.random() * 255);
    return `rgb(${r}, ${g}, ${b})`;
  };

  const randomShape = (x, y, size) => {
    const shapes = ["circle", "square", "triangle"];
    const shape = shapes[Math.floor(Math.random() * shapes.length)];
    ctx.beginPath();
    if (shape === "circle") {
      ctx.arc(x, y, size / 2, 0, 2 * Math.PI);
    } else if (shape === "square") {
      ctx.rect(x - size / 2, y - size / 2, size, size);
    } else if (shape === "triangle") {
      ctx.moveTo(x, y - size / 2);
      ctx.lineTo(x - size / 2, y + size / 2);
      ctx.lineTo(x + size / 2, y + size / 2);
      ctx.closePath();
    }
    ctx.fillStyle = randomColor();
    ctx.fill();
  };

  for (let i = 0; i < 10; i++) {
    const x = Math.floor(Math.random() * canvas.width);
    const y = Math.floor(Math.random() * canvas.height);
    const size = Math.floor(Math.random() * 50) + 10;
    randomShape(x, y, size);
  }

  const img = new Image();
  img.src = canvas.toDataURL();
  coverContainer.appendChild(img);

  book.appendChild(coverContainer);
});
