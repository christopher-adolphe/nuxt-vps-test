<script setup lang="ts">
const config = useRuntimeConfig();

const { data } = await useFetch(`${config.public.baseJobApi}/filters`);
</script>

<template>
  <div>
    <h1>Nuxt VPS Test</h1>

    <br />

    <pre>Filters: {{ data }}</pre>
  </div>
</template>

