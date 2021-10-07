import PowerstatBar from "./PowerstatBar"

const HeroInfo = ({ details, appearance, background, powerstat }) => {
    const { alias, name, creator, universe, powers, like_count } = details
    const { gender, species, eye_color, hair_color, height, weight, ani } = appearance
    const { aliases, place_of_birth, affiliations, former, relatives, history  } = background
    const { energy_projection, strength, intelligence, speed, durability, combat } = powerstat

    const powerstats = [
        { bgcolor: "#9927F2", completed: energy_projection, title: "Energy Projection" }, 
        { bgcolor: "#DB3C2F", completed: strength, title: "Strength" },
        { bgcolor: "#188FED", completed: intelligence, title: "Intelligence" },
        { bgcolor: "#B1E825", completed: speed, title: "Speed" },
        { bgcolor: "#F2AD27", completed: durability, title: "Durability" },
        { bgcolor: "#F2C60C", completed: combat, title: "Combat" },
      ];
    // console.log(power)

    return(
        <div className="hero-details">
            <h1 className="alias">{alias}</h1>
            
            <figure>
                <video src={ani} autoPlay loop muted className="vid"/>
            </figure>

            <section className="identity">
                
            </section>

            <section className="sections">
                <section id="pa-section">
                    <h3>Identity: {name}</h3>
                
                    <h4>Creator: {creator} - Universe: {universe}</h4>
                    <h5>Place of Birth: {place_of_birth}</h5>
                    
                    <div className="appearance">
                        <h4>Powers & Abilities</h4>
                        <h5>{powers}</h5>
                        <h4>Appearance</h4>
                        <h5>Species: {species}</h5>
                        <h5>Gender: {gender}</h5>
                        <h5>Hair color: {hair_color}</h5>
                        <h5>Eye color: {eye_color}</h5>
                        <h5>Height: {height}</h5>
                        <h5>Weight: {weight}</h5>
                    </div>
                </section>

                <section id="ps-section">
                    <h3 id="powerstat">Powerstats</h3>
                    {powerstats.map((item, idx) => (
                        <PowerstatBar key={idx} powerstat={item.completed} bgcolor={item.bgcolor} title={item.title}/>
                    ))}
                </section>
            </section>

            <div className="connections">
                <h4>Connections</h4>
                <h5>Aliases: {aliases}</h5>
                <h5>Affiliations: {affiliations}</h5>
                <h5>Former: {former}</h5>
                <h5>Relatives: {relatives}</h5>
            </div>


        </div>
    )
}

export default HeroInfo;