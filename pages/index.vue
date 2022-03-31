<template>
  <div class="bg-gray-100 h-screen flex items-center justify-center">
    <div class="rounded-xl overflow-hidden shadow-xl bg-white px-8 py-6">
      <h1 class="text-xl font-semibold text-gray-900">{{ res.activity }}!</h1>
    </div>
  </div>
</template>

<script>
export default {
  name: "IndexPage",

  data() {
    return {
      res: "",
    };
  },

  async fetch() {
    this.res = await this.$axios.$get("https://www.boredapi.com/api/activity");
  },
};
</script>
