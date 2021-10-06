
const HeroCard = ({ hero, image }) => {
    const { alias, name, creator, universe } = hero
    const { img_url } = image

    // console.log(img_url)

    return(
        <div>
            <li className="card">
                <div>
                <img src={img_url} className="profilePic"/>
                </div>
                <h2>
                    {alias}
                </h2>
                <h3>
                    {name}
                </h3>
                <h4>
                    Creator: {creator} - Universe: {universe}
                </h4>
            </li>
        </div>
    )
} 

export default HeroCard;