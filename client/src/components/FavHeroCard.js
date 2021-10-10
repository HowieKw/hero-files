import { Link } from "react-router-dom";

const FavHeroCard = ({ hero, fav, removeFavHero }) => {
    const { alias, name, creator, universe, like_count, img_url, id } = hero
    

    let path = `/Heroes/${id}`
    // console.log(fav.id)

    return(
        <div className="heroes-card">

            <div className="hero-info">
                    <div className="hero-description">
                        <h2>
                            {alias}
                        </h2>
                        <h3>
                            {name}
                        </h3>
                    </div>
            </div>

                <Link className="hero-wrapper" to={path}>
                    <img src={img_url} alt={alias} className="profilePic"/>
                </Link>

                <div className="hero-info">
                    <div className="hero-description">
                        <h4>
                            Creator: {creator} - Universe: {universe}
                        </h4>
                        <hr></hr>

                        <div>            
                            <button className="card-button">💖 Likes: {like_count}</button>
                            <button onClick={(e) => removeFavHero(fav.id, e)} className="card-button">🖤 Unfavorite</button>
                        </div>

                    </div>
                </div>
        </div>
    )
} 

export default FavHeroCard;