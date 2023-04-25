$(document).ready(function() {
  // Set the initial slide to display
  var currentSlide = 0;
  // Select all the slides
  var slides = $('.slide');
  // Show the first slide
  slides.eq(currentSlide).addClass('active');
  // Bind the click event to the "Next" button
  $('#next').on('click', function() {
    // Hide the current slide
    slides.eq(currentSlide).removeClass('active');
    // Increment the current slide index
    currentSlide++;
    // Wrap around to the first slide if necessary
    if (currentSlide >= slides.length) {
      currentSlide = 0;
    }
    // Show the new slide
    slides.eq(currentSlide).addClass('active');
  });
  // Bind the click event to the "Prev" button
  $('#prev').on('click', function() {
    // Hide the current slide
    slides.eq(currentSlide).removeClass('active');
    // Decrement the current slide index
    currentSlide--;
    // Wrap around to the last slide if necessary
    if (currentSlide < 0) {
      currentSlide = slides.length - 1;
    }
    // Show the new slide
    slides.eq(currentSlide).addClass('active');
  });
});
