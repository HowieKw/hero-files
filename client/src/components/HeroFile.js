import React, { useState, useEffect } from 'react'
import { Route, Switch, useHistory } from 'react-router-dom';
import HeroRender from './HeroRender';
import NavBar from './Navbar';
import HeroDetails from './HeroDetails';
import FavoriteHeroes from './FavoriteHeroes';
import Home from './Home';
import { __RouterContext } from 'react-router';


const HeroFile = ({ currentUser, setCurrentUser }) => {
    const [ favHeroes, setFavHeroes ] = useState([])
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

    useEffect(() => {
      fetch("/favorite_heros")
      .then(resp => resp.json())
      .then(heroes => setFavHeroes(heroes))
    }, []);

    const addFavHero = (heroId) => {
      return fetch("/favorite_heros", {
        method: "POST",
        headers: {
          "Content-Type": "application/json"
        },
        credentials: 'include',
        body: JSON.stringify(heroId)
      })
        .then(res => {
          if (res.ok) {
            return res.json(), alert("Favorited")
          } else {
            return alert("Denied, this hero already favorited.")//res.json().then(errors => Promise.reject(errors))
          }
        })
        .then(hero => {
          setFavHeroes(favHeroes.concat(hero))
        })
    }

    return(
        <div>
            <header className="header">
                <NavBar currentUser={currentUser} handleLogout={handleLogout}/>
            </header>
            <nav>
                <Switch>
                    <Route path="/Heroes/:id" component={() => <HeroDetails addFavHero={addFavHero}/>} />
                    <Route path="/Heroes" component={() => <HeroRender addFavHero={addFavHero}/>} />
                    <Route path="/Favorite_Heroes" component={() => <FavoriteHeroes favHeroes={favHeroes} setFavHeroes={setFavHeroes}/>} />
                    <Route path="/" component={Home}/>
                </Switch>
            </nav>
        </div>
    )
}

export default HeroFile;