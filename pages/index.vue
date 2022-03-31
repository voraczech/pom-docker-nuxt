<template>
  <div class="bg-gray-100 h-screen flex items-center justify-center">
    <div class="rounded-xl overflow-hidden shadow-xl">
      <img
        :src="img.message"
        alt=""
        v-if="img.status === 'success'"
        height="360"
      />
    </div>
  </div>
</template>

<script>
export default {
  name: "IndexPage",

  data() {
    return {
      img: "",
    };
  },

  async fetch() {
    this.img = await this.$axios.$get(
      "https://dog.ceo/api/breeds/image/random"
    );
  },
};
</script>
