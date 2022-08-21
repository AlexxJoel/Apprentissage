const app = document.getElementById('typewriter');
const typewriter = new Typewriter(aoo, {
    loop: true,
    delay:75
});
typewriter
.typeString('La capital del Sol')
.pauseFor  (200)
.start();