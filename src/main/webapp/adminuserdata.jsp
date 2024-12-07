<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>User Data</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background: url('images/DON10.jpg') no-repeat center center/cover;
      background-size: cover;
      color: #fff;
    }

    header {
      background: url('images/DON7.png') no-repeat center center/cover;
      text-align: center;
      padding: 60px 20px;
      color: white;
    }

    header h1 {
      font-size: 40px;
      margin: 0;
    }

    .container {
      max-width: 1200px;
      margin: 20px auto;
      padding: 20px;
      background: rgba(0, 0, 0, 0.6);
      border-radius: 10px;
    }

    h2 {
      text-align: center;
      font-size: 28px;
      margin-bottom: 20px;
    }

    input[type="text"], input[type="email"], input[type="tel"] {
      width: 80%;
      padding: 10px;
      margin: 10px 0;
      border-radius: 5px;
      border: 1px solid #ccc;
      font-size: 16px;
    }

    button {
      background-color: #007bff;
      color: white;
      padding: 10px 20px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      font-size: 16px;
    }

    button:hover {
      background-color: #0056b3;
    }

    table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 20px;
    }

    table, th, td {
      border: 1px solid #ccc;
    }

    th, td {
      padding: 12px;
      text-align: left;
    }

    th {
      background-color: #007bff;
      color: white;
    }

    /* Make all rows dark-colored */
    tr {
      background-color: #333;
      color: white;
    }

    tr:nth-child(even) {
      background-color: #444; /* Darken even rows */
    }

    tr:hover {
      background-color: #555; /* Lighter dark color for hover effect */
    }

    .table-container {
      overflow-x: auto;
    }
  </style>
</head>
<body>
  <!-- Header Section -->
  <header>
    <h1>USER DATA</h1>
    <p>Enter User Information to Add to the Table</p>
  </header>

  <!-- Container for Content -->
  <div class="container">
    <!-- Form for Adding New User Data -->
    <h2>Add New User</h2>
    <div class="form-container">
      <form id="userForm">
        <input type="text" id="fullName" placeholder="Full Name" required>
        <input type="email" id="email" placeholder="Email" required>
        <input type="tel" id="contactNumber" placeholder="Contact Number" required>
        <button type="submit">Add User</button>
      </form>
    </div>

    <!-- Table for Displaying User Data -->
    <div class="table-container">
      <table id="userTable">
        <thead>
          <tr>
            <th>S. No</th>
            <th>Full Name</th>
            <th>Email</th>
            <th>Contact Number</th>
          </tr>
        </thead>
        <tbody>
          <!-- Pre-filled rows added manually -->
          <tr>
            <td>1</td>
            <td>John Doe</td>
            <td>john.doe@example.com</td>
            <td>1234567890</td>
          </tr>
          <tr>
            <td>2</td>
            <td>Jane Smith</td>
            <td>jane.smith@example.com</td>
            <td>9876543210</td>
          </tr>
          <tr>
            <td>3</td>
            <td>Kusumitha Gontla</td>
            <td>kusimithagontla@gmail.com</td>
            <td>9876543210</td>
          </tr>
          <!-- Dynamically added rows will go below -->
        </tbody>
      </table>
    </div>
  </div>

  <!-- JavaScript to handle form submission and table updates -->
  <script>
    let userCount = 3; // Start with pre-filled row count

    document.getElementById('userForm').addEventListener('submit', function(event) {
      event.preventDefault();

      const fullName = document.getElementById('fullName').value;
      const email = document.getElementById('email').value;
      const contactNumber = document.getElementById('contactNumber').value;

      // Increment user count for S. No
      userCount++;

      // Create a new row for the table
      const row = document.createElement('tr');
      row.innerHTML = `
        <td>${userCount}</td>
        <td>${fullName}</td>
        <td>${email}</td>
        <td>${contactNumber}</td>
      `;

      // Append the row to the table body
      document.querySelector('#userTable tbody').appendChild(row);

      // Reset the form
      document.getElementById('userForm').reset();
    });
  </script>
</body>
</html>
