<template>
  <div class="gallery">
    <div class="heading">
      <span>Yash's Gallery</span>
      <h3>Best quality with reasonable price</h3>
    </div>

    <div class="gallery-item">
      <div class="row">
        <div class="column">
          <img src="../assets/images/yash1.jpg" alt="img" style="width: 100%" />
        </div>
        <div class="column">
          <img src="../assets/images/yash2.jpg" alt="img" style="width: 100%" />
        </div>
        <div class="column">
          <img src="../assets/images/yash1.jpg" alt="img" style="width: 100%" />
        </div>
        <div class="column">
          <img src="../assets/images/yash1.jpg" alt="img" style="width: 100%" />
        </div>
        <div class="column">
          <img src="../assets/images/yash2.jpg" alt="img" style="width: 100%" />
        </div>
        <div class="column">
          <img src="../assets/images/yash1.jpg" alt="img" style="width: 100%" />
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "Gallery",

  methods: {
    scrollToTop() {
      window.scrollTo(0, 0);
    },
  },
};
</script>

<style scoped>
.gallery {
  padding: 2rem 9%;
  background-color: #fffdf2;
}

.gallery .gallery-item {
  width: 100%;
  margin-bottom: 20px;
  position: relative;
  display: flex;
}
.row {
  display: grid; /* Enables CSS Grid layout */
  grid-template-columns: repeat(3, 1fr); /* 3 images per row */
  gap: 10px; /* Adds space between images */
}

.column img {
  width: 100%; /* Ensures the image fills its column width */
  height: 100%; /* Maintains the image's aspect ratio */
  object-fit: cover; /* Optionally adjusts the image fit */
  display: block; /* Removes extra space below the image */
}
@media (max-width: 600px) {
  .row {
    grid-template-columns: repeat(
      2,
      1fr
    ); /* 2 images per row for smaller screens */
  }
}

@media (max-width: 400px) {
  .row {
    grid-template-columns: 1fr; /* 1 image per row for very small screens */
  }
}
</style>
