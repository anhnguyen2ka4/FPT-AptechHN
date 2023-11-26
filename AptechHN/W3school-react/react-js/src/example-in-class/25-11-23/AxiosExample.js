import React, { useState, useEffect } from "react";
import axios from "axios";

function AxiosExample() {
    const [data, setData] = useState([]);

    useEffect(() => {
        axios.get('https://jsonplaceholder.typicode.com/users')
            .then(response => { setData(response.data); })
            .catch(error => { console.error(error); });
    }, []);
    return (
        <ul>
            {data.map(data => (<li key={data.id}>{data.name}</li>))}
        </ul>
    );
}

export default AxiosExample;