import React from "react";
function Restaurants() {

    const fruits = ["Apple", "Mango", "Banana", "GFG"];
    const styles = {
        backgroundColor: "white",
        width: "50px",
        marginBottom: "10px",
        padding: "10px",
        color: "green",
        boxShadow: "rgb(0,0,0,0.44) 0px 5px 5px",
    };

    return (
        <>
            {
                fruits.map((fruit) => (
                    <div key={fruit} style={styles}>
                        {fruit}
                    </div>
                ))
            }
        </>
    );
}

export default Restaurants;