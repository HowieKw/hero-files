import { Link } from "react-router-dom";

const HeroCard = ({ hero, image }) => {
    const { alias, name, creator, universe, like_count, id } = hero
    const { img_url } = image

    let path = `/Heroes/${id}`

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
                    <img src={img_url} className="profilePic"/>
                </Link>

                <div className="hero-info">
                    <div className="hero-description">
                        <h4>
                            Creator: {creator} - Universe: {universe}
                        </h4>
                        <hr></hr>
                        <button className="like-button">💖 Likes: {like_count}</button>
                    </div>
                </div>
        </div>
    )
} 

export default HeroCard;