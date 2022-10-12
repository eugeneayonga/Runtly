import React from "react";
import { NavLink } from "react-router-dom";
import { useNavigate } from "react-router-dom";
import Box from "@mui/material/Box";
import Button from "@mui/material/Button";

function NavBar({ logout }) {
  const navigate = useNavigate();
  function handleLogout() {
    fetch("/logout", {
      method: "DELETE",
    }).then(() => {
      logout();
      navigate("/");
    });
  }
  return (
    <>
      <div className="navbar">
        <Box>
          <NavLink className="navlink" to="/Home">
            Home
          </NavLink>
          <NavLink className="navlink" to="/AddRun">
            Add A Run
          </NavLink>
          <NavLink className="navlink" to="/FindData">
            Find Data
          </NavLink>
          <br />
          <Button onClick={handleLogout}>Logout</Button>
        </Box>
      </div>
    </>
  );
}


export default NavBar;