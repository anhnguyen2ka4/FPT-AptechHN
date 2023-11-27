import React, { useState } from "react";
//Dung de READ
function XmlHttpExample() {

    const [data, setData] = useState(null);
    function handleClick() {
        const xhr = new XMLHttpRequest();
        xhr.open('GET', 'https://jsonplaceholder.typicode.com/users');
        xhr.onload = function () {
            if (xhr.status === 200) {
                setData(JSON.parse(xhr.responseText));
            }
        };
        xhr.send();
    }
    return (
        <div>
            <button onClick={handleClick}>GET API Data</button>
            {data ? <div>{JSON.stringify(data)}</div> : <div>Data loading...</div>}
        </div>
    );
}
export default XmlHttpExample;