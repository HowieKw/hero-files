

const PowerstatBar = ({ bgcolor, title, powerstat }) => {

    const percentage = powerstat* 10

    console.log(percentage)

    const containerStyles = {
        height: 20,
        width: '90%',
        backgroundColor: "#e0e0de",
        borderRadius: 50,
        margin: 1
      }
    
      const fillerStyles = {
        height: '100%',
        width: `${percentage}%`,
        backgroundColor: bgcolor,
        borderRadius: 'inherit',
        textAlign: 'right'
      }
    
      const labelStyles = {
        padding: 5,
        color: 'white',
        fontWeight: 'bold'
      }

      const stats = {
        
      }

    return(
        <div>
            <h4 className="category">{title}</h4>
        <div style={stats} className="stats">
            <div style={containerStyles} className="containerStyles">
                <div style={fillerStyles} className="fillerStyles">
                    <span style={labelStyles} className="labelStyles">{`${powerstat}`}</span>
                </div>
            </div>
        </div>
        </div>
    )
}

export default PowerstatBar;