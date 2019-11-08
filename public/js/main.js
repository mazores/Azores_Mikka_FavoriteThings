// this is a partially revealing module pattern - just a variation on what we've already done
// this is the client side
const myVM = (() => {
    // get the user buttons and fire off an async DB query with Fetch

    let userButtons = document.querySelectorAll('.u-link'),
        lightBox = document.querySelector('.lightbox'),
        lightBoxImage = document.querySelector('.happy-item-image');

    // create the social media list
    function renderSocialMedia(media) {
        return `<ul class="u-social">
                    ${media.map(item => `<li>${item}</li>`).join("")}
                </ul>`
    }

    function parseUserData(happyItem) {
        let targetDiv = lightBox.querySelector('.lb-content'),
            targetDivImg = lightBox.querySelector('.happy-item-image'),
            targetImg = lightBoxImage.querySelector('img');

        let bioContent = `
            <h2>${happyItem.Title}</h2>
            <p>${happyItem.Description}</p>
            <br><h2>The Favorites</h2>
            <!-- loop through social media stuff here -->
            ${renderSocialMedia(happyItem.favorite)}
        `;

        let bioImage = `
            <img src="images/${happyItem.DescPhoto}" alt="Happy List Photo" class="lb-photo"></img>
        `;

        targetDiv.innerHTML = bioContent;
        targetDivImg.innerHTML = bioImage;
        //targetImg.src = happyItem.currentSrc;

        lightBox.classList.add('show-lb');
    }

    function getUserData(event) {
        event.preventDefault();
        //debugger;
        // 1, 2, or 3 depending on which anchor tag you click:
        let url = `/users/${this.getAttribute('href')}`,
            currentImg = this.firstElementChild.getAttribute('src');

        // this goes and fetches the database content (or an API endpoint)
        // that's why it's called a fetch
        fetch(url) //called a promise
            .then(res => res.json())
            .then(data => {
                console.log(data);

                data.currentSrc = currentImg;
                parseUserData(data);
            })
            .catch((err) => {
                console.log(err);
            });
    }

    userButtons.forEach(button => button.addEventListener("click", getUserData));

    // close lightbox
    lightBox.querySelector('.close').addEventListener("click", function() {
        lightBox.classList.remove('show-lb');
    });

})();