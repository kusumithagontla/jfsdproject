<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin Cause Data</title>
  <link href="https://cdn.jsdelivr.net/npm/chart.js" rel="stylesheet">
  <style>
    /* General Styles */
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
      background-size: cover;
      text-align: center;
      padding: 60px 20px;
      color: white;
    }

    header h1 {
      font-size: 40px;
      margin: 0;
      text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.6);
    }

    .container {
      max-width: 1200px;
      margin: 20px auto;
      padding: 20px;
      background: rgba(0, 0, 0, 0.5); /* Semi-transparent background */
      border-radius: 10px;
    }

    h2 {
      text-align: center;
      font-size: 28px;
      color: #007bff;
      margin-bottom: 20px;
    }

    input[type="text"], input[type="number"], input[type="file"] {
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

    /* Updated Table Styles for Dark Rows */
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

    tr {
      background-color: rgba(0, 0, 0, 0.8); /* Dark background for all rows */
      color: white; /* Light text for visibility */
    }

    tr:hover {
      background-color: rgba(0, 0, 0, 0.9); /* Slightly darker on hover */
    }

    .table-container {
      overflow-x: auto;
    }

    .cause-image {
      width: 50px;
      height: 50px;
      border-radius: 50%;
      object-fit: cover;
    }
  </style>
</head>
<body>
  <!-- Header Section -->
  <header>
    <h1>Admin Cause Data</h1>
    <p>Enter Cause Information to Add to the Table</p>
  </header>

  <!-- Container for Content -->
  <div class="container">
    <!-- Form for Adding New Cause Data -->
    <h2>Add New Cause</h2>
    <div class="form-container">
      <form id="causeForm">
        <input type="text" id="causeName" placeholder="Cause Name" required>
        <input type="number" id="causePrice" placeholder="Price" required>
        <input type="text" id="causeDescription" placeholder="Description" required>
        <input type="file" id="causeImage" required>
        <button type="submit">Add Cause</button>
      </form>
    </div>

    <!-- Table for Displaying Cause Data -->
    <div class="table-container">
      <table id="causeTable">
        <thead>
          <tr>
            <th>S. No</th>
            <th>Cause Name</th>
            <th>Price</th>
            <th>Description</th>
            <th>Picture</th>
          </tr>
        </thead>
        <tbody>
          <!-- Pre-filled rows added manually -->
          <tr>
            <td>1</td>
            <td>Fundraise for Cancer Treatment</td>
            <td>50000</td>
            <td>Help cancer patients by raising funds for their treatment and medications.</td>
            <td><img src="images/p2.jpg" alt="Cause Image" class="cause-image"></td>
          </tr>
          <tr>
            <td>2</td>
            <td>Provide Free Education for a Year</td>
            <td>15000</td>
            <td>Support a child's education by covering their school fees and supplies for a year.</td>
            <td><img src="images/p5.jpg" alt="Cause Image" class="cause-image"></td>
          </tr>
          <tr>
            <td>3</td>
            <td>Provide a Meal</td>
            <td>150</td>
            <td>Provide a meal to the homeless</td>
            <td><img src="images/p1.jpg" alt="Cause Image" class="cause-image"></td>
          </tr>
          <tr>
            <td>4</td>
            <td>Donate a Birthday Gift for Kaira</td>
            <td>500</td>
            <td>Give a birthday gift that includes clothes, books, and toys to make Kaira's day special.</td>
            <td><img src="images/p6.jpg" alt="Cause Image" class="cause-image"></td>
          </tr>
          <!-- Dynamically added rows will go below -->
        </tbody>
      </table>
    </div>
  </div>

  <!-- JavaScript to handle form submission and table updates -->
  <script>
    let causeCount = 4; // Start with pre-filled row count

    document.getElementById('causeForm').addEventListener('submit', function(event) {
      event.preventDefault();

      const causeName = document.getElementById('causeName').value;
      const causePrice = document.getElementById('causePrice').value;
      const causeDescription = document.getElementById('causeDescription').value;
      const causeImage = document.getElementById('causeImage').files[0];

      // Increment cause count for S. No
      causeCount++;

      // Create a new row for the table
      const row = document.createElement('tr');
      const reader = new FileReader();

      reader.onload = function(e) {
        const causeImageUrl = e.target.result;

        row.innerHTML = `
          <td>${causeCount}</td>
          <td>${causeName}</td>
          <td>₹${causePrice}</td>
          <td>${causeDescription}</td>
          <td><img src="${causeImageUrl}" alt="Cause Image" class="cause-image"></td>
        `;

        // Append the row to the table body
        document.querySelector('#causeTable tbody').appendChild(row);
      };

      // Read the image file
      if (causeImage) {
        reader.readAsDataURL(causeImage);
      }

      // Reset the form
      document.getElementById('causeForm').reset();
    });
  </script>
</body>
</html>
