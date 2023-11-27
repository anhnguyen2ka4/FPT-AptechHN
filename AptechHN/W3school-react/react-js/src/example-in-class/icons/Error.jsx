import { IconContext } from "react-icons"; 
import { FaExclamationTriangle } from "react-icons/fa";
export default function ErrorIcon() {
    return (
        <IconContext.Provider value={{ color: "red", size: "1.7rem" }}>
            <FaExclamationTriangle />
        </IconContext.Provider>
    );
}