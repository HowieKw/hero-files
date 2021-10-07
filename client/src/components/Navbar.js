import { NavLink } from "react-router-dom";

const NavBar = () => {

    return(
        <div className="header">
            <nav>
                <NavLink>
                    Profile
                </NavLink>
                <NavLink>
                    Heroes
                </NavLink>
                <NavLink>
                    Logout
                </NavLink>
            </nav>
        </div>
    )
}

export default NavBar;