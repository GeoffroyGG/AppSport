const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-lewagon');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-lewagon-white','nav-link-white');
      } else {
        navbar.classList.remove('navbar-lewagon-white','nav-link-white');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };