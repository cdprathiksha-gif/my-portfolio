document.addEventListener('DOMContentLoaded', () => {
  console.log("Portfolio Loaded");
  // Form validation
  const form = document.getElementById('contactForm');
  form.addEventListener('submit', e => {
    const phone = document.getElementById('phone').value;
    if(!/^[0-9]{10}$/.test(phone)){
      alert('Enter valid 10-digit phone number');
      e.preventDefault();
    }
  });
});
