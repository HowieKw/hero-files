import React, { useState, useEffect } from 'react'
import { Route, Switch, useHistory } from 'react-router-dom';
import HeroRender from './HeroRender';
import NavBar from './Navbar';
import HeroDetails from './HeroDetails';

const HeroFile = ({ currentUser, setCurrentUser }) => {
    const history = useHistory()
  
    const handleLogout = () => {
        fetch(`/logout`, {
        method: 'DELETE',
        credentials: 'include'
        })
        .then(res => {
            if (res.ok) {
            setCurrentUser(null)
            history.push('/')
            }
        })
    }
    
    const styles = {
        color: "#48ff00",
        fontSize: "20px",
    }

    return(
        <div>
            <header className="header">
                <span style={styles}>Access Granted: {currentUser.username} <button onClick={handleLogout} className="butt">Logout</button></span>
                <NavBar />
            </header>

            <nav>
                <Switch>
                    <Route path="/Heroes/:id" component={() => <HeroDetails />} />
                    <Route path="/Heroes" component={() => <HeroRender />} />
                </Switch>
            </nav>
        </div>
    )
}

export default HeroFile;