import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Win"],
    typeSpeed: 150,
    loop: true
  });w
}

export { loadDynamicBannerText };
