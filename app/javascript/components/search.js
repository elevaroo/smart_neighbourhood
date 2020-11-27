
import Typed from 'typed.js';

let input = document.getElementById("banner-typed-text")

const loadDynamicBannerText = () => {

  let banner = new Typed('#banner-typed-text', {
      strings: ["Bike", "Hammer", "Console", "Chair", "Mower", "Watch", "Scale", "Karsher"],
      typeSpeed: 100,
      loop: true
    });

  input.addEventListener('click', () => {
    banner.destroy()
  })
}

export { loadDynamicBannerText };
