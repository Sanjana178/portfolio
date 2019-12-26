import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["DO YOU WANT ONLINE COACHING?", "I'M WITH YOU ALL THE WAY!", "YES PLEASE GIVE ME A CALL!"],
    typeSpeed: 50,
    loop: true,
    fadeOut: true,
  });
}

export { loadDynamicBannerText };
