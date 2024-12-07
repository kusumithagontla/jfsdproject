
<!DOCTYPE html> 
<html lang="en"> 
<head> 
  <meta charset="UTF-8"> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
  <title>Donate for a Special Day</title> 
  <style> 
    body { 
      font-family: Arial, sans-serif; 
      background-image: url('images/DON10.png'); /* Background image for the page */
      margin: 0; 
      padding: 20px; 
    } 
 
    .container { 
      display: flex; 
      gap: 20px; 
    } 
 
    .causes-details, .donation-form { 
      background: #fff; 
      padding: 20px; 
      border-radius: 8px; 
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); 
      width: 50%; 
    } 
 
    h2 { 
      font-size: 24px; 
      margin-bottom: 15px; 
    } 
 
    .cause { 
      display: flex; 
      align-items: center; 
      gap: 10px; 
    } 
 
    .cause-image { 
      width: 60px; 
      height: 60px; 
      border-radius: 50%; 
    } 
 
    label { 
      display: block; 
      margin-top: 15px; 
      font-weight: bold; 
    } 
 
    input[type="text"], input[type="email"], input[type="number"], input[type="date"] { 
      width: 100%; 
      padding: 10px; 
      margin-top: 5px; 
      border: 1px solid #ccc; 
      border-radius: 4px; 
      font-size: 14px; 
    } 
 
    .phone-input { 
      display: flex; 
      align-items: center; 
    } 
 
    .phone-input span { 
      background: #f1f1f1; 
      padding: 10px; 
      border: 1px solid #ccc; 
      border-right: none; 
      border-radius: 4px 0 0 4px; 
    } 
 
    .phone-input input { 
      border-radius: 0 4px 4px 0; 
    } 
 
    button { 
      margin-top: 20px; 
      background-color: #007bff; 
      color: #fff; 
      border: none; 
      padding: 10px 20px; 
      font-size: 16px; 
      border-radius: 4px; 
      cursor: pointer; 
    } 
 
    button:hover { 
      background-color: #0056b3; 
    } 
 
    .photo-option { 
      margin-top: 20px; 
    } 
 
    .photo-option label { 
      font-weight: normal; 
    } 
  </style> 
</head> 
<body> 
  <div class="container"> 
    <div class="causes-details"> 
      <h2>Causes Details</h2> 
      <div class="cause"> 
        <img src="images/p8.jpg" alt="Feed a Homeless Person" class="cause-image"> 
        <h3>Donate to Animal Welfare<</h3> 
        <p>200</p> 
      </div> 
      <p> 
        Approximately 150 million people face the harsh reality of going to bed hungry each night,  
        resulting in over 9 million deaths annually due to hunger and starvation. Homeless individuals,  
        with their uncertain access to meals, are especially vulnerable. Your small, meaningful contribution  
        from your income can help fight hunger and provide vital sustenance to those in need, particularly the homeless.  
        With your support, we can make a significant impact by ensuring that no one has to endure the pangs of hunger.  
        In gratitude for your compassion, we’ll share a photo of the homeless person whose life you’ve touched. Together, we can make a difference! 
      </p> 
    </div> 
 
    <div class="donation-form"> 
      <h2>Donate for a Special Day</h2> 
      <form action="/submit-donation" method="POST"> 
        <label for="donor-name">Donor Name*</label> 
        <input type="text" id="donor-name" name="donorName" placeholder="Name" required> 
 
        <label for="email">Email Address*</label> 
        <input type="email" id="email" name="email" placeholder="Email" required> 
 
        <label for="phone">Phone*</label> 
        <div class="phone-input"> 
          <span>+91</span> 
          <input type="text" id="phone" name="phone" placeholder="WhatsApp Number" required> 
        </div> 
 
        <label for="instagram">Instagram ID (optional)</label> 
        <input type="text" id="instagram" name="instagram" placeholder="Instagram ID"> 
 
        <label for="service-date">Service Date</label> 
        <input type="date" id="service-date" name="serviceDate" required> 
 
        <label for="parcel-name">Name of Parcel</label> 
        <input type="text" id="parcel-name" name="parcelName" placeholder="Name on parcel"> 
 
        <label for="food-count">Food

</label> 
        <input type="number" id="food-count" name="foodCount" value="20" required> 
 
        <label for="total-amount">Total Amount</label> 
        <input type="number" id="total-amount" name="totalAmount" value="500" required> 
 
        <div class="photo-option"> 
          <input type="radio" id="add-photo" name="photoOption"> 
          <label for="add-photo">Add a Photo to the Parcel</label> 
        </div> 
 
        <button type="button" onclick="location.href='paymentgateway.jsp'">Donate Now</button>
      </form> 
    </div> 
  </div>
  <script>
    function updateTotalAmount() {
      var foodCount = document.getElementById('food-count').value;
      var totalAmount = foodCount * 300;
      document.getElementById('total-amount').value = totalAmount;
    }
  </script> 
</body> 
</html>