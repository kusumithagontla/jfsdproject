<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Recipient Dashboard</title>
  <link href="https://cdn.jsdelivr.net/npm/chart.js" rel="stylesheet">
  <style>
    /* General Styles */
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background: url('images/DON11.png') no-repeat center center/cover;
    }

    header {
      background: url('images/DON7.png') no-repeat center center/cover;
      background-size: cover;
      padding: 60px 20px;
      color: white;
      text-align: center;
    }

    header h1 {
      font-size: 36px;
      margin: 0;
    }

    .recipient-container {
      display: flex;
      flex-wrap: wrap;
      padding: 20px;
    }

    .recipient-panel {
      width: 100%;
      background-color: #fff;
      border-radius: 8px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
      margin-bottom: 20px;
    }

    .recipient-panel h2 {
      background-color: #FFA500; /* Orange header */
      color: white;
      padding: 15px;
      border-radius: 8px 8px 0 0;
      margin: 0;
    }

    .form-container {
      padding: 20px;
    }

    input[type="text"], input[type="email"], input[type="number"], input[type="date"], select {
      width: 100%;
      padding: 10px;
      margin: 10px 0;
      border: 1px solid #ccc;
      border-radius: 4px;
    }

    button {
      background-color: #FFA500; /* Orange button */
      color: white;
      padding: 10px 20px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }

    button:hover {
      background-color: #FF8C00; /* Darker Orange on hover */
    }

    .status-card {
      width: 48%;
      margin: 10px;
      background-color: #fff;
      border-radius: 8px;
      padding: 15px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    .status-card h3 {
      margin-top: 0;
    }

    .dashboard {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
    }
  </style>
</head>
<body>
  <!-- Header Section -->
  <header>
    <h1>Recipient Dashboard</h1>
    <p>Request Items, Track Delivery, and Provide Feedback</p>
  </header>

  <!-- Recipient Panel Section -->
  <div class="recipient-container">
    <!-- Request Items Form -->
    <div class="recipient-panel">
      <h2>Request Necessary Items</h2>
      <div class="form-container">
        <form>
          <label for="item-name">Item Name</label>
          <input type="text" id="item-name" placeholder="Enter item name">

          <label for="quantity">Quantity</label>
          <input type="number" id="quantity" placeholder="Enter quantity" required>

          <label for="urgent">Urgent Need?</label>
          <select id="urgent">
            <option value="no">No</option>
            <option value="yes">Yes</option>
          </select>

          <button type="submit">Request Item</button>
        </form>
      </div>
    </div>

    <!-- Delivery Tracking Form -->
    <div class="recipient-panel">
      <h2>Track Your Delivery</h2>
      <div class="form-container">
        <form>
          <label for="delivery-id">Delivery ID</label>
          <input type="text" id="delivery-id" placeholder="Enter delivery ID" required>

          <button type="submit">Track Delivery</button>
        </form>
      </div>
    </div>
  </div>

  <!-- Feedback Form Section -->
  <div class="recipient-panel">
    <h2>Provide Feedback on Donations</h2>
    <div class="form-container">
      <form>
        <label for="donation-quality">Quality of Donation</label>
        <select id="donation-quality">
          <option value="excellent">Excellent</option>
          <option value="good">Good</option>
          <option value="average">Average</option>
          <option value="poor">Poor</option>
        </select>

        <label for="donation-comments">Additional Comments</label>
        <textarea id="donation-comments" rows="4" placeholder="Provide feedback here"></textarea>

        <button type="submit">Submit Feedback</button>
      </form>
    </div>
  </div>

  <!-- Delivery Status Section -->
  <div class="recipient-panel">
    <h2>Delivery Status</h2>
    <div class="dashboard">
      <div class="status-card">
        <h3>Upcoming Deliveries</h3>
        <p>3 items scheduled for delivery in the next week</p>
      </div>
      <div class="status-card">
        <h3>Delivered Items</h3>
        <p>5 items successfully delivered this month</p>
      </div>
    </div>
  </div>
</body>
</html>
