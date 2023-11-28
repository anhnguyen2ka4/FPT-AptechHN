const emailRegEx = new RegExp(
    //dua vao day 1 RegEx
    /^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/g
);
export default function validateEmail(email) {
    return emailRegEx.test(email);
}