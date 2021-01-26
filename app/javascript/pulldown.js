function pulldown() {
  const userPulldown = document.getElementById('user-pulldown');
  const pulldownChild = document.getElementById('pulldown-child');
  userPulldown.addEventListener('click', () => {
    if (pulldownChild.getAttribute("style") == ("display: block;")) {
      pulldownChild.removeAttribute("style", "display: block;")
    } else {
      pulldownChild.setAttribute("style", "display: block;")
    }
  });
};

window.addEventListener("load", pulldown);