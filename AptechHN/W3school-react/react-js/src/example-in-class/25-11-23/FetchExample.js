//Cho cac thao tac: GET, PUT, POST, DELETE
import React, { useState, useEffect } from "react";

function FetchExample() {
    const [data, setData] = useState(null);
    useEffect(() => {
        fetch('https://jsonplaceholder.typicode.com/users')
        .then(response => response.json())
        .then(json => setData(json))
        .catch(error => console.error(error));
    }, null);
    return (
        <div>
            {data ? <pre>{JSON.stringify(data, null, 2)}</pre> : 'Data loading...'}
        </div>
    );
}

export default FetchExample;