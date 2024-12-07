<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin Dashboard</title>
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
      background-position: center;
      padding: 60px 20px;
      color: white;
      text-align: center;
    }

    header h1 {
      font-size: 36px;
      margin: 0;
    }

    /* Navigation buttons at the top */
    .nav-buttons {
      display: flex;
      justify-content: center;
      margin-top: 20px;
    }

    .nav-buttons a {
      text-decoration: none;
      background-color: #007bff;
      color: white;
      padding: 10px 20px;
      margin: 0 10px;
      border-radius: 4px;
      font-size: 18px;
      text-align: center;
    }

    .nav-buttons a:hover {
      background-color: #0056b3;
    }

    .admin-container {
      display: flex;
      flex-wrap: wrap;
      padding: 20px;
    }

    .admin-panel {
      width: 100%;
      background-color: #fff;
      border-radius: 8px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
      margin-bottom: 20px;
    }

    .admin-panel h2 {
      background-color: #007bff;
      color: white;
      padding: 15px;
      border-radius: 8px 8px 0 0;
      margin: 0;
    }

    .form-container {
      padding: 20px;
    }

    input[type="text"], input[type="email"], input[type="number"], select {
      width: 100%;
      padding: 10px;
      margin: 10px 0;
      border: 1px solid #ccc;
      border-radius: 4px;
    }

    button {
      background-color: #007bff;
      color: white;
      padding: 10px 20px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }

    button:hover {
      background-color: #0056b3;
    }

    .card {
      width: 48%;
      margin: 10px;
      background-color: #fff;
      border-radius: 8px;
      padding: 15px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    .card h3 {
      margin-top: 0;
    }

    .dashboard {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
    }

    /* Background for the main content */
    .content-background {
      background-image: url('images/DON11.jpg');
      background-size: cover;
      background-position: center;
      padding: 20px;
      width: 100%;
      border-radius: 8px;
    }

    .chart-container {
      width: 100%;
      max-width: 600px;
      margin: 0 auto;
    }

    /* Home button styling */
    .home-button {
      display: block;
      width: 200px;
      margin: 40px auto;
      padding: 15px;
      background-color: #28a745;
      color: white;
      text-align: center;
      font-size: 18px;
      border-radius: 5px;
      text-decoration: none;
    }

    .home-button:hover {
      background-color: #218838;
    }
  </style>
</head>
<body>
  <!-- Header Section -->
  <header>
    <h1>Admin Dashboard</h1>
    <p>Manage Users and Causes, Track Donation Stats</p>
  </header>

  <!-- Navigation Buttons -->
  <div class="nav-buttons">
    <a href="adminuserdata.jsp">USER DATA</a>
    <a href="adminchardata.jsp">CAUSE DATA</a>
  </div>

  <!-- Admin Panel Section -->
  <div class="admin-container">
    <!-- Admin Panel for Adding/Editing Users -->
    <div class="admin-panel">
      <h2>Manage Users</h2>
      <div class="form-container">
        <form>
          <label for="username">User Name</label>
          <input type="text" id="username" placeholder="Enter user name">
          
          <label for="email">Email</label>
          <input type="email" id="email" placeholder="Enter email">

          <label for="role">Role</label>
          <select id="role">
            <option value="admin">Admin</option>
            <option value="donor">Donor</option>
            <option value="volunteer">Volunteer</option>
          </select>

          <button type="submit">Add User</button>
        </form>
      </div>
    </div>

    <!-- Admin Panel for Adding/Editing Causes -->
    <div class="admin-panel">
      <h2>Manage Causes</h2>
      <div class="form-container">
        <form>
          <label for="cause-name">Cause Name</label>
          <input type="text" id="cause-name" placeholder="Enter cause name">
          
          <label for="cause-description">Description</label>
          <input type="text" id="cause-description" placeholder="Enter description">
          
          <label for="amount">Amount to Donate</label>
          <input type="number" id="amount" placeholder="Enter donation amount">
          
          <button type="submit">Add Cause</button>
        </form>
      </div>
    </div>
  </div>

  <!-- Dashboard Section with Data Visualization -->
  <div class="admin-panel content-background">
    <h2>Donation Dashboard</h2>
    <div class="dashboard">
      <div class="card">
        <h3>Total Donations</h3>
        <p>500,000</p>
      </div>
      <div class="card">
        <h3>Total Users</h3>
        <p>250</p>
      </div>
    </div>

    <!-- Chart.js for Data Visualization -->
    <div class="chart-container">
      <canvas id="donationChart"></canvas>
    </div>
    <div class="chart-container">
      <canvas id="donationPieChart"></canvas>
    </div>
  </div>

  <!-- Home Button -->
  <a href="home.jsp" class="home-button">Go to Home</a>

  <!-- Data Visualization Script -->
  <script>
    const ctx = document.getElementById('donationChart').getContext('2d');
    const donationChart = new Chart(ctx, {
      type: 'bar',
      data: {
        labels: ['Cause 1', 'Cause 2', 'Cause 3', 'Cause 4'],
        datasets: [{
          label: 'Donations Raised (in ₹)',
          data: [150000, 120000, 100000, 130000],
          backgroundColor: 'rgba(54, 162, 235, 0.2)',
          borderColor: 'rgba(54, 162, 235, 1)',
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

    const pieCtx = document.getElementById('donationPieChart').getContext('2d');
    const donationPieChart = new Chart(pieCtx, {
      type: 'pie',
      data: {
        labels: ['Cause 1', 'Cause 2', 'Cause 3', 'Cause 4'],
        datasets: [{
          label: 'Donations Breakdown',
          data: [150000, 120000, 100000, 130000],
          backgroundColor: ['rgba(54, 162, 235, 0.6)', 'rgba(255, 99, 132, 0.6)', 'rgba(255, 159, 64, 0.6)', 'rgba(75, 192, 192, 0.6)'],
          borderColor: ['rgba(54, 162, 235, 1)', 'rgba(255, 99, 132, 1)', 'rgba(255, 159, 64, 1)', 'rgba(75, 192, 192, 1)'],
          borderWidth: 1
        }]
      },
      options: {
        responsive: true,
        plugins: {
          legend: {
            position: 'top',
          },
          tooltip: {
            callbacks: {
            	
            }
