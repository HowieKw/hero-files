
const HeroCard = ({ hero, image }) => {
    const { alias, name, creator, universe, like_count } = hero
    const { img_url } = image

    // console.log(img_url)

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

                <figure className="hero-wrapper">
                    <img src={img_url} className="profilePic"/>
                </figure>

                <div className="hero-info">
                    <div className="hero-description">
                        {/* <h2>
                            {alias}
                        </h2>
                        <h3>
                            {name}
                        </h3> */}
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