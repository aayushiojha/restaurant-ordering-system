<template>
  <div>
    <div class="home-main">
      <div class="content">
        <span>welcome foodies</span>
        <h3>YASH RESTAURANT</h3>
        <p>
          We guarantee to use fresh food with the best quality. Customers will
          enjoy our freshly cut veggies, sophisticated flavors and lush green
          garden.
        </p>
        <router-link @click="scrollToTop()" to="/menu" class="btn"
          >order now</router-link
        >
      </div>
      <div class="image"></div>
    </div>

    <div class="home-category">
      <router-link @click="scrollToTop()" to="/menu" class="box">
        <img src="../assets/images/noodles.png" alt="" />
        <h3>Chinese</h3>
      </router-link>

      <router-link @click="scrollToTop()" to="/menu" class="box">
        <img src="../assets/images/rice.jpg" alt="" />
        <h3>Indian</h3>
      </router-link>

      <router-link @click="scrollToTop()" to="/menu" class="box">
        <img src="../assets/images/panneer_pakoda.jpg" alt="" />
        <h3>Pakodas</h3>
      </router-link>

      <router-link @click="scrollToTop()" to="/menu" class="box">
        <img src="../assets/images/salad-img.png" alt="" />
        <h3>sides</h3>
      </router-link>

      <router-link @click="scrollToTop()" to="/menu" class="box">
        <img src="../assets/images/dessert-img.png" alt="" />
        <h3>dessert</h3>
      </router-link>

      <router-link @click="scrollToTop()" to="/menu" class="box">
        <img src="../assets/images/coca-img.png" alt="" />
        <h3>drink</h3>
      </router-link>
    </div>

    <div class="home-banner">
      <div class="grid-banner row">
        <div class="grid col-md-4">
          <img src="../assets/images/dis1.jpg" alt="" />
          <div class="content">
            <span>special offer</span>
            <h3>upto 50% off</h3>
            <router-link @click="scrollToTop()" to="/menu" class="btn"
              >order now</router-link
            >
          </div>
        </div>

        <div class="grid col-md-4">
          <img src="../assets/images/dis2.jpg" alt="" />
          <div class="content center">
            <span>special offer</span>
            <h3>upto 25% extra</h3>
            <router-link @click="scrollToTop()" to="/menu" class="btn"
              >order now</router-link
            >
          </div>
        </div>

        <div class="grid col-md-4">
          <img src="../assets/images/dis-3.jpg" alt="" />
          <div class="content">
            <span>limited offer</span>
            <h3>100% cashback</h3>
            <router-link @click="scrollToTop()" to="/menu" class="btn"
              >order now</router-link
            >
          </div>
        </div>
      </div>
    </div>

    <div class="home-about">
      <div class="image">
        <img src="../assets/images/about-img.jpg" alt="" />
      </div>
      <div class="content">
        <span>why choose us?</span>
        <h3 class="title">what's make our food delicious!</h3>
        <p>
          Food to customers is always guaranteed of the best quality. Our dishes
          are made by chef Quang (a 5 Michelin stars chef), promising to bring
          explosive, delicate, impressive flavors. Our delivery service is very
          professional, customers can enjoy the same quality at the restaurant
        </p>
        <router-link @click="scrollToTop()" to="/about" class="btn"
          >read more</router-link
        >

        <div class="icons-container">
          <div class="icons">
            <img src="../assets/images/serv-1.png" alt="" />
            <h3>fast delivery</h3>
          </div>
          <div class="icons">
            <img src="../assets/images/serv-2.png" alt="" />
            <h3>fresh food</h3>
          </div>
          <div class="icons">
            <img src="../assets/images/serv-3.png" alt="" />
            <h3>best quality</h3>
          </div>
          <div class="icons">
            <img src="../assets/images/serv-4.png" alt="" />
            <h3>24/7 support</h3>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "Home",

  methods: {
    scrollToTop() {
      window.scrollTo(0, 0);
    },
  },
};
</script>

<style scoped>
.home-main,
.home-about,
.home-banner,
.home-category {
  padding: 2rem 3%;
  background: #fffdf2;
}

.home-main {
  position: relative;
  width: 100%;
  height: 100vh; /* Full height of the viewport */
  padding: 0%;
}

.home-main .content {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%; /* Take full height */
  display: flex;
  flex-direction: column;
  justify-content: center; /* Center text vertically */
  align-items: center; /* Center text horizontally */
  text-align: center;
  color: white; /* Ensure the text is visible on the image */
  z-index: 10; /* Make sure text is on top of the image */
  padding: 0px;
  box-sizing: border-box;
}

.home-main .content span {
  font-size: 5rem;
  color: #ffa500;
}

.home-main .content h3 {
  font-family: "sans-serif";
  font-size: 10rem;
  color: #fffdf2;
  padding-top: 1rem;
}

.home-main .content p {
  font-size: 2rem;
  color: #ffffff;
  line-height: 2;
  padding: 1rem 9%;
  text-align: center;
}

.home-main .image {
  width: 100%;
  height: 100vh; /* Full viewport height */
  display: flex;
  justify-content: center;
  align-items: center;
  overflow: hidden; /* Ensures no scrollbars if the image overflows */

  background-image: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)),
    url("../assets/images/rest-img.jpg");
  background-size: cover;
  background-position: center; /* Centers the image */
  background-repeat: no-repeat;
}

/* Add zoom and shadow effect on hover */
.image img:hover {
  transform: scale(1.05); /* Zoom effect */
  box-shadow: 0 0 25px 10px rgba(98, 85, 3, 0.799); /* Stronger golden shadow */
}
/* home category */
.home-category {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(10rem, 1fr));
  gap: 1.5rem;
  padding-top: 10rem;
  padding-bottom: 5rem;
}

.home-category .box {
  padding: 2rem;
  text-align: center;
  border-radius: 0.5rem;
  background: #f7f7f7;
}

.home-category .box:hover {
  background: #27ae60;
}

.home-category .box:hover h3 {
  color: #fff;
}

.home-category .box img {
  height: 7rem;
}

.home-category .box h3 {
  font-size: 1.8rem;
  color: #130f40;
}

/* home banner */

.home-banner .row-banner {
  background: url(../assets/images/row-banner.png) no-repeat;
  height: 45rem;
  background-size: cover;
  background-position: center;
  position: relative;
}

.home-banner .row-banner .content {
  position: absolute;
  top: 50%;
  left: 7%;
  transform: translateY(-50%);
}

.home-banner .row-banner .content span {
  font-family: "Satisfy", cursive;
  font-size: 4rem;
  color: #27ae60;
  color: #130f40;
}

.home-banner .row-banner .content h3 {
  font-size: 6rem;
  color: red;
  text-transform: uppercase;
}

.home-banner .row-banner .content p {
  font-size: 2rem;
  padding-bottom: 1rem;
}

.home-banner .grid-banner .grid {
  border-radius: 1rem;
  overflow: hidden;
  height: 45rem;
}

.home-banner .grid-banner .grid:hover img {
  transform: scale(1.2);
}

.home-banner .grid-banner .grid img {
  height: 100%;
  width: 100%;
  object-fit: cover;
}

.home-banner .grid-banner .grid .content {
  position: absolute;
  top: 2rem;
  padding: 0 2rem;
}

.home-banner .grid-banner .grid .content.center {
  text-align: center;
  width: 100%;
}

.home-banner .grid-banner .grid .content.center span {
  color: #666;
}

.home-banner .grid-banner .grid .content.center h3 {
  color: #130f40;
}

.home-banner .grid-banner .grid .content span {
  font-size: 2.5rem;
  color: #fff;
}

.home-banner .grid-banner .grid .content h3 {
  font-size: 3rem;
  color: #fff;
  padding-top: 0.5rem;
}

.home-about {
  display: flex;
  flex-wrap: wrap;
  align-items: center;
  gap: 2rem;
  background: #fffdf2;
}

.home-about .image {
  flex: 1 1 40rem;
  padding: 52px;
}

.home-about .image img {
  width: 100%;
}

.home-about .content {
  flex: 1 1 40rem;
}

.home-about .content span {
  font-family: "Satisfy", cursive;
  font-size: 3rem;
  color: #27ae60;
}

.home-about .content .title {
  font-size: 3rem;
  padding-top: 0.5rem;
  color: #130f40;
}

.home-about .content p {
  padding: 1rem 0;
  line-height: 2;
  font-size: 1.4rem;
  color: #666;
}

.home-about .content .icons-container {
  margin-top: 2rem;
  display: flex;
  flex-wrap: wrap;
  gap: 1.5rem;
}

.home-about .content .icons-container .icons {
  flex: 1 1 20rem;
  border-radius: 0.5rem;
  background: #fff;
  box-shadow: 0 1rem 1rem rgba(0, 0, 0, 0.05);
  display: flex;
  align-items: center;
  gap: 2rem;
  padding: 2rem;
}

.home-about .content .icons-container .icons h3 {
  font-size: 1.7rem;
  color: #130f40;
}

@media (max-width: 768px) {
  #menu-btn {
    display: inline-block;
  }

  .home-main .home-parallax-img {
    top: 0;
    right: 0;
    width: 100%;
  }

  .home-banner .grid-banner .content h3 {
    font-size: 15px !important;
  }

  .home-banner .grid-banner .content.center {
    padding-left: 0px !important;
  }
}

@media (max-width: 576px) {
  .home-main .content h3 {
    font-size: 3rem;
  }

  .home-main .content p {
    font-size: 1.5rem;
  }
}
</style>
