import React, { useState, useEffect } from 'react';
import { useParams } from "react-router-dom";
import HeroInfo from './HeroInfo';

const HeroDetails = ({ addFavHero }) => {
    const [details, setDetails] = useState(null);
    // const [comment, setComment] = useState([]);
    const [isLoaded, setIsLoaded] = useState(false);
    // const [commentView, setCommentView] = useState(false);

    const id = useParams().id;

    useEffect(() => {
        fetch(`/superheros/${id}`)
        .then(resp => resp.json())
        .then(superheroes => {
            setDetails(superheroes);
            // setComment(superheroes.comments);
            setIsLoaded(true);
        });
    }, [id]);

    // console.log(details)

    if (!isLoaded) return <h2>Accessing File...</h2>;

    return(
        <section>
            <HeroInfo 
            key={details.id}
            details={details}
            appearance={details.appearance} 
            background={details.background}
            powerstat={details.powerstat}
            addFavHero={addFavHero}
            />
        </section>
    )
}

export default HeroDetails;