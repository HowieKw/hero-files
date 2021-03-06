import React, { useState, useEffect } from 'react'
import HeroCard from './HeroCard';

const HeroRender = ({ addFavHero }) => {
    const [ heroes, setHeroes ] = useState([])

    // console.log(heroes)

    useEffect(() => {
        fetch("/superheros")
        .then(resp => resp.json())
        .then(heroes => setHeroes(heroes))
    }, []);

    const displayHeroes =
    heroes.map(hero =>
        <HeroCard
        key={hero.id}
        hero={hero}
        addFavHero={addFavHero}
        />
    )

    return(
        <section className="heroes">
            {displayHeroes}
        </section>
    )
}

export default HeroRender;