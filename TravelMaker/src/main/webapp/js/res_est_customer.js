// const revealButtons = document.querySelectorAll(".reveal")
// const revealButtonsArray = Array.from(revealButtons)
// const revealButtonSibling = revealButtonsArray[0].previousElementSibling

// revealButtonsArray.forEach( () => {
//   revealButtonsArray[0].addEventListener("click", () => {
//     if(revealButtonSibling.classList.contains("clamp-two")) {
//       revealButtonSibling.classList.remove("clamp-two");
//       revealButtonsArray.textContent = "Show less"
//     } else {
//       revealButtonSibling.classList.add("clamp-two");
//       revealButtonsArray.textContent = "Show more"
//     }
//   })
// })

new ShowMore('.text');