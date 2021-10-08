// import React, { useState, useEffect } from 'react'
import FavHeroCard from './FavHeroCard';

const FavoriteHeroes = ({ favHeroes, setFavHeroes }) => {


    const removeFavHero = (favId, e) => {
    e.preventDefault();
    return fetch(`/favorite_heros/${favId}`, {
        method: "DELETE",
        credentials: 'include'
    })
        .then(res => {
        if (res.ok) {
            const updatedFavHeroes = favHeroes.filter(hero => hero.id !== favId)
            setFavHeroes(updatedFavHeroes)
        }
        })
    }

    const displayFavHeroes =
        favHeroes.map(favHero =>
        <FavHeroCard
        key={favHero.id}
        hero={favHero.superhero}
        fav={favHero}
        removeFavHero={removeFavHero}
        />
    )

    return (
        <section className="heroes">
            {displayFavHeroes}
        </section>
    )
}

export default FavoriteHeroes;