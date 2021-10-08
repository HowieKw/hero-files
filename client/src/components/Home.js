import React, { useState } from 'react'

const Home = ({ currentUser, setCurrentUser }) => {
    const [usernameBeingEdited, setUsernameBeingEdited] = useState( "" )
    
    const typingUsernameBeingEdited =(sythEvent)=>{
        setUsernameBeingEdited(sythEvent.target.value)
      }

    const handleEditUserAccount =(sythEvent)=> { 
        sythEvent.preventDefault()
        // console.log(sythEvent)
        // console.log("In handleUserLogin")
        // console.log("❗️❗️ REMEMBER THE BYEBUG ❗️❗️")


        fetch(`/users/${currentUser.id}`, {

            method: "PATCH",
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ username: usernameBeingEdited })

        })
        .then(r => r.json())
        .then(editedUser =>{  console.log("WOW✨  >>  ", editedUser)  //

            setCurrentUser(editedUser)
            // Saying Now NO-ONE is Logged In
        })      
    }

    return (

        <div>
            <video className="welcome-vid" autoPlay loop muted src="https://res.cloudinary.com/djzhu5kfj/video/upload/v1633680683/Flatiron%20-%20Phase%204%20Project/Video/Welcome_wiigg8.mp4"/>
            <section>
                <form className="authForm" onSubmit={handleEditUserAccount}>
                    <label>Username: </label>
                    <input className="inputArea" type="text" value={usernameBeingEdited} onChange={typingUsernameBeingEdited}/>
                    <input className="butt" type="submit" value="Change Username" />
                </form>
            </section>
        </div>
    )
}

export default Home;