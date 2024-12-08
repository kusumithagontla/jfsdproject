<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container">
    <a class="navbar-brand me-auto" href="index.jsp">DHATRI FOUNDATION</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item mx-2">
          <a class="nav-link" href="home.jsp">Home</a>
        </li>
        <li class="nav-item mx-2">
          <a class="nav-link" href="about.jsp">About</a>
        </li>
        <li class="nav-item mx-2">
          <a class="nav-link" href="index.jsp">Donate Now</a>
        </li>
        <li class="nav-item mx-2">
          <a class="nav-link" href="contact.jsp">Contact Us
            <span class="badge badge-danger">
              ${cart_list != null ? cart_list.size() : 0}
            </span>
          </a>
        </li>

        <!-- Dropdown Menu -->
        <li class="nav-item dropdown mx-2">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            User Roles
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="index.jsp">DONOR</a>
            <a class="dropdown-item" href="Admin.jsp">ADMIN</a>
            <a class="dropdown-item" href="reciptent.jsp">RECIPIENT</a>
            <a class="dropdown-item" href="logistics.jsp">LOGISTICS COORDINATOR</a>
          </div>
        </li>

        <li class="nav-item mx-2">
          <a class="nav-link" href="login.jsp">Sign out</a>
        </li>

       
          <li class="nav-item mx-2">
            <a class="nav-link" href="log-out">Logout</a>
          </li>
        
      </ul>
    </div>
  </div>
</nav>
