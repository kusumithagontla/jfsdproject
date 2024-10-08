import React from "react";
import Footer from "./Footer";
import { MDBRow, MDBCol } from "mdb-react-ui-kit";

const Contact = () => {
  return (
    <>
      {/* Header Section */}
      <section
        style={{
          fontFamily: "'Poppins', sans-serif",
          background: "linear-gradient(to right, #6e7dff, #8794ff)",
          color: "#fff",
          padding: "60px 0",
          textAlign: "center",
        }}
      >
        <div className="container">
          <h2
            style={{
              fontWeight: "700",
              fontSize: "45px",
              textShadow: "2px 2px 4px rgba(0, 0, 0, 0.2)",
            }}
          >
            Contact Us
          </h2>
          <p
            style={{
              fontSize: "20px",
              marginTop: "10px",
              fontWeight: "300",
            }}
          >
            Make your first step towards something good
          </p>
        </div>
      </section>

      {/* Main Content with grey background */}
      <section
        style={{
          fontFamily: "'Poppins', sans-serif",
          backgroundColor: "#f0f0f0",
          padding: "40px 0",
        }}
      >
        <div className="container">
          <div className="row">
            <div className="col-lg-12 text-center">
              <h2
                style={{
                  fontSize: "30px",
                  color: "#4e73df",
                  fontWeight: "600",
                  marginBottom: "20px",
                }}
              >
                How to find us
              </h2>
              <h5 style={{ color: "#7d7d7d" }}>Address and Direction</h5>
            </div>
          </div>

          <div className="row mt-4">
            {/* Left Section with Image */}
            <div className="col-lg-6 d-flex justify-content-center">
              <img
                src={require("../../images/contact.jpg")}
                alt="Contact"
                style={{
                  marginTop: "20px",
                  borderRadius: "20px",
                  boxShadow: "0 10px 30px rgba(0, 0, 0, 0.1)",
                  transition: "transform 0.3s ease",
                }}
                width="650"
                height="550"
                onMouseEnter={(e) =>
                  (e.currentTarget.style.transform = "scale(1.05)")
                }
                onMouseLeave={(e) =>
                  (e.currentTarget.style.transform = "scale(1)")
                }
              />
            </div>

            {/* Right Section with Contact Details */}
            <div className="col-lg-6" style={{ padding: "50px" }}>
              <div className="row mb-4">
                <div className="col-lg-12">
                  <b style={{ fontSize: "25px", color: "#4e73df" }}>
                    Our Address
                  </b>
                  <p style={{ fontSize: "20px", color: "#333", marginTop: "10px" }}>
                    INDIAN ENCLAVE, Ayyappa Nagar, Vijayawada, Andhra Pradesh,
                    India
                  </p>
                </div>
              </div>
              <div className="row mb-4">
                <div className="col-lg-12">
                  <b style={{ fontSize: "25px", color: "#4e73df" }}>Phone</b>
                  <p style={{ fontSize: "20px", color: "#333", marginTop: "10px" }}>
                    +91 7799223399
                  </p>
                </div>
              </div>
              <div className="row mb-4">
                <div className="col-lg-12">
                  <b style={{ fontSize: "25px", color: "#4e73df" }}>
                    Open Hours
                  </b>
                  <p style={{ fontSize: "20px", color: "#333", marginTop: "10px" }}>
                    Mon-Sat 8:00am-4:30pm
                  </p>
                </div>
              </div>

              <div className="d-grid gap-2">
                <button
                  type="button"
                  className="btn btn-primary"
                  data-bs-toggle="modal"
                  data-bs-target="#staticBackdrop"
                  style={{
                    fontSize: "20px",
                    backgroundColor: "#4e73df",
                    border: "none",
                    borderRadius: "30px",
                    padding: "10px 20px",
                    transition: "background 0.3s ease",
                  }}
                  onMouseEnter={(e) =>
                    (e.currentTarget.style.backgroundColor = "#3751b0")
                  }
                  onMouseLeave={(e) =>
                    (e.currentTarget.style.backgroundColor = "#4e73df")
                  }
                >
                  Contact Us
                </button>
              </div>

              {/* Modal Section */}
              <div
                className="modal fade"
                id="staticBackdrop"
                data-bs-backdrop="static"
                data-bs-keyboard="false"
                tabIndex="-1"
                aria-labelledby="staticBackdropLabel"
                aria-hidden="true"
              >
                <div className="modal-dialog modal-dialog-centered">
                  <div className="modal-content">
                    <div className="modal-body">
                      <form>
                        <div className="mb-3 mt-4">
                          <label className="form-label">Name</label>
                          <input
                            type="text"
                            className="form-control"
                            name="patName"
                            style={{
                              width: "100%",
                              padding: "10px",
                              fontSize: "16px",
                              border: "1px solid #ddd",
                              borderRadius: "4px",
                            }}
                          />
                        </div>
                        <div className="mb-3 mt-4">
                          <label className="form-label">Email</label>
                          <input
                            type="email"
                            className="form-control"
                            name="email"
                            style={{
                              width: "100%",
                              padding: "10px",
                              fontSize: "16px",
                              border: "1px solid #ddd",
                              borderRadius: "4px",
                            }}
                          />
                        </div>
                        <div className="mb-3 mt-4">
                          <label className="form-label">Message</label>
                          <input
                            type="text"
                            className="form-control"
                            name="message"
                            style={{
                              width: "100%",
                              padding: "10px",
                              fontSize: "16px",
                              border: "1px solid #ddd",
                              borderRadius: "4px",
                            }}
                          />
                        </div>
                      </form>
                    </div>
                    <div className="modal-footer">
                      <button
                        type="button"
                        className="btn btn-secondary"
                        data-bs-dismiss="modal"
                      >
                        Close
                      </button>
                      <button type="button" className="btn btn-primary">
                        Send
                      </button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      {/* Map Section */}
      <section style={{ padding: "60px 0", backgroundColor: "#f8f9fa" }}>
        <div className="container-fluid">
          <div className="row">
            <div className="col-lg-12 d-flex justify-content-center">
              <iframe
                src="https://maps.google.com/maps?q=Vijayawada,%20Andhra%20Pradesh,%20India&output=embed"
                style={{
                  border: "none",
                  borderRadius: "20px",
                  boxShadow: "0 10px 30px rgba(0, 0, 0, 0.1)",
                  transition: "transform 0.3s ease",
                }}
                height="500"
                width="1000"
                loading="lazy"
                title="Google Map"
                onMouseEnter={(e) =>
                  (e.currentTarget.style.transform = "scale(1.02)")
                }
                onMouseLeave={(e) =>
                  (e.currentTarget.style.transform = "scale(1)")
                }
              ></iframe>
            </div>
          </div>
        </div>
      </section>

      {/* Footer */}
      <Footer />
    </>
  );
};

export default Contact;
