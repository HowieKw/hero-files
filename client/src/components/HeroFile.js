import React, { useState, useEffect } from 'react'
import { Route, Switch } from 'react-router-dom';
import HeroRender from './HeroRender';
// import NavBar from './Navbar';

const HeroFile = () => {
    

    return(
        <div>
            {/* <NavBar /> */}
            <Switch>
                <Route path="/Heroes" component={() => <HeroRender />} />
            </Switch>
        </div>
    )
}

export default HeroFile;