import { NavLink } from "react-router-dom";

const NavBar = () => {

    return(
        <div className="header">
            <nav>
                <NavLink className="button" exact to="/">
                    Profile
                </NavLink>
                <NavLink className="button" exact to="/Heroes">
                    Heroes
                </NavLink>
                <NavLink className="button" exact to="/Logout">
                    Logout
                </NavLink>
            </nav>
        </div>
    )
}

export default NavBar;