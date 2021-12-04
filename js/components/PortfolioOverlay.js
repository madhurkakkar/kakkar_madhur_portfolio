const PortfolioSlider = Vue.component('portfolio-slider', {
    props: ['images'],
    template: `
    <div class="portfolio-slider">
        
        <img :src="currentImage"/>
        <div class="slider-buttons">
        <button @click="previous"><i class="fas fa-arrow-alt-circle-left"></i></button>
        <button @click="next"><i class="fas fa-arrow-alt-circle-right"></i></button>
        </div>
        
    </div>
    `,
    data: () => ({
        currentIndex: 0
    }),
    computed: {
        currentImage: function() {
            return `./images/sliderImages/${this.images[this.currentIndex]}`
        }
    },
    methods: {
        next: function() {
            if (this.currentIndex < this.images.length - 1) {
                this.currentIndex++;
            } else {
                this.currentIndex = 0
            }
        },
        previous: function() {
            if (this.currentIndex > 0) {
                this.currentIndex--;
            } else {
                this.currentIndex = this.images.length - 1
            }
        }
    }

});

const PortfolioOverlay = Vue.component('portfolio-overlay', {
    props: ['project', 'open'],

    components: {
        "portfolio-slider": PortfolioSlider
    },
    updated: function() {
        console.log(this.project);
        window.currentProject = this.project
    },

    //<the list of images goes here>
    template: `
        <div class="overlay-wrap" :class="[open ? 'active': '']">
        <div class="portfolio-overlay">
        <button style="
        z-index: 99999;
    " @click="$emit('overlay-closed')" class="close">x</button>
        <div class="video"><video controls 
        v-if="project.feature_type === 'video'">
            
            <source :src="getFeaturePath(project.feature_image)"  type="video/mp4">
        
            Sorry, your browser doesn't support embedded videos.
        </video></div>
        <div class="overlay-text">
        <h1>{{ project.name }}</h1>
        <p>{{project.description}}</p>
        </div>
        
        </div>
        </div>
    `,
    created: function() {
        console.log(this.project);
    },
    methods: {
        getFeaturePath: function(feature) {

            return `./images/featureImagesVideo/${feature}`;
        },
        getImagePath: function(image) {

            return `./images/teaserImages/${image}`;
        }

    }
});

export default PortfolioOverlay;