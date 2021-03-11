
const initIconColor = () => {
    console.log("working")
    const heartIconChefIndex = document.querySelectorAll(".fa-heart")
    const likeIconPostIndex = document.querySelectorAll(".fa-thumbs-up")
    const bookmarkIconMenuShow = document.querySelectorAll(".fa-bookmark")

    heartIconChefIndex.forEach((icon) => {
        icon.addEventListener('click', (e) => {
            console.log("clicked")
            e.target.style.color = "#ffb704"
        })
    });

    likeIconPostIndex.forEach((likeIcon) => {
        likeIcon.addEventListener('click', (e) => {
            console.log("clicked")
            e.target.parentElement.parentElement.parentElement.classList.toggle("text-info")
        })
    });

    bookmarkIconMenuShow.forEach((bookmarkIcon) => {
        bookmarkIcon.addEventListener('click', (e) => {
            console.log("clicked")
            e.target.parentElement.parentElement.classList.toggle("text-info")
        })
    });
}

export { initIconColor }