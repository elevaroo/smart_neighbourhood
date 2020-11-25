
import Typed from 'typed.js';

let input = document.getElementById("search_query")

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Bike", "Hammer", "Console", "Chair", "Mower", "Watch", "Scale", "Karsher"],
    typeSpeed: 100,
    loop: true
  });
}

export { loadDynamicBannerText };
