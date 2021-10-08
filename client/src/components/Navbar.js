import { NavLink } from "react-router-dom";

const NavBar = ({ currentUser, handleLogout }) => {


    return(
        <div>
            <nav>
            <h1 className="appTitle">HERO FILES</h1>
                <span className="username">Access Granted: {currentUser.username}</span>
                <button onClick={handleLogout} className="fakeNavButt">Logout</button>
                <NavLink className="navButt" exact to="/Heroes">
                    Heroes
                </NavLink>
                <NavLink className="navButt" exact to="/">
                    Profile
                </NavLink>
            </nav>
        </div>
    )
}

export default NavBar;