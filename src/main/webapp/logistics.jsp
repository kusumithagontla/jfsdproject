<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Logistics Coordinator Dashboard</title>
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

    .logistics-container {
      display: flex;
      flex-wrap: wrap;
      padding: 20px;
    }

    .logistics-panel {
      width: 100%;
      background-color: #fff;
      border-radius: 8px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
      margin-bottom: 20px;
    }

    .logistics-panel h2 {
      background-color: #FFA500; /* Orange header */
      color: white;
      padding: 15px;
      border-radius: 8px 8px 0 0;
      margin: 0;
    }

    .form-container {
      padding: 20px;
    }

    input[type="text"], input[type="number"], input[type="date"], select {
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
    <h1>Logistics Coordinator Dashboard</h1>
    <p>Manage Transportation, Inventory, and Ensure Timely Delivery</p>
  </header>

  <!-- Logistics Panel Section -->
  <div class="logistics-container">
    <!-- Transportation Form -->
    <div class="logistics-panel">
      <h2>Organize Transportation</h2>
      <div class="form-container">
        <form>
          <label for="transportation-type">Transportation Type</label>
          <select id="transportation-type">
            <option value="truck">Truck</option>
            <option value="van">Van</option>
            <option value="bike">Bike</option>
            <option value="boat">Boat</option>
          </select>

          <label for="estimated-date">Estimated Delivery Date</label>
          <input type="date" id="estimated-date" required>

          <label for="delivery-address">Delivery Address</label>
          <input type="text" id="delivery-address" placeholder="Enter delivery address" required>

          <button type="submit">Schedule Transportation</button>
        </form>
      </div>
    </div>

    <!-- Inventory Management Form -->
    <div class="logistics-panel">
      <h2>Manage Inventory</h2>
      <div class="form-container">
        <form>
          <label for="inventory-item">Item Name</label>
          <input type="text" id="inventory-item" placeholder="Enter item name" required>

          <label for="inventory-quantity">Quantity</label>
          <input type="number" id="inventory-quantity" placeholder="Enter quantity" required>

          <label for="inventory-status">Item Status</label>
          <select id="inventory-status">
            <option value="available">Available</option>
            <option value="out-of-stock">Out of Stock</option>
            <option value="in-transit">In Transit</option>
          </select>

          <button type="submit">Update Inventory</button>
        </form>
      </div>
    </div>
  </div>

  <!-- Delivery Status Section -->
  <div class="logistics-panel">
    <h2>Delivery Status</h2>
    <div class="dashboard">
      <div class="status-card">
        <h3>Pending Deliveries</h3>
        <p>5 items scheduled for delivery today</p>
      </div>
      <div class="status-card">
        <h3>Completed Deliveries</h3>
        <p>8 items successfully delivered this month</p>
      </div>
    </div>
  </div>

  <!-- Delivery Tracking Section -->
  <div class="logistics-panel">
    <h2>Track Delivery</h2>
    <div class="form-container">
      <form>
        <label for="delivery-id">Delivery ID</label>
        <input type="text" id="delivery-id" placeholder="Enter delivery ID" required>

        <button type="submit">Track Delivery</button>
      </form>
    </div>
  </div>

  <!-- Data Visualization Section -->
  <div class="logistics-panel">
    <h2>Delivery Insights</h2>
    <div class="dashboard">
      <!-- Chart.js for Data Visualization -->
      <div class="chart-container">
        <canvas id="deliveryChart"></canvas>
      </div>
    </div>
  </div>

  <!-- Data Visualization Script -->
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <script>
    const ctx = document.getElementById('deliveryChart').getContext('2d');
    const deliveryChart = new Chart(ctx, {
      type: 'bar',
      data: {
        labels: ['Pending', 'In Transit', 'Completed'],
        datasets: [{
          label: 'Delivery Status',
          data: [5, 3, 8],
          backgroundColor: ['#FF5733', '#FFC300', '#28A745'],
          borderColor: ['#FF5733', '#FFC300', '#28A745'],
          borderWidth: 1
        }]
      },
      options: {
        scales: {
          y: {
            beginAtZero: true
          }
        }
      }
    });
  </script>
</body>
</html>
