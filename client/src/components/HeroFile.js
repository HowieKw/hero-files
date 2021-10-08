import React, { useState, useEffect } from 'react'
import { Route, Switch, useHistory } from 'react-router-dom';
import HeroRender from './HeroRender';
import NavBar from './Navbar';
import HeroDetails from './HeroDetails';
import HeroCard from './HeroCard';

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

    const displayFavHeroes =
    favHeroes.map(favHero =>
        <HeroCard
        key={favHero.id}
        hero={favHero.superhero}
        />
    )
    
    console.log(favHeroes)

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

            <section>
                {displayFavHeroes}
            </section>

            <nav>
                <Switch>
                    <Route path="/Heroes/:id" component={() => <HeroDetails addFavHero={addFavHero}/>} />
                    <Route path="/Heroes" component={() => <HeroRender addFavHero={addFavHero}/>} />
                </Switch>
            </nav>
        </div>
    )
}

export default HeroFile;