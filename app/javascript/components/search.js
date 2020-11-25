
import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Bike", "hammer", "console", "chair", "mower", "watch", "scale", "karsher"],
    typeSpeed: 30,
    loop: true
  });
}

export { loadDynamicBannerText };
