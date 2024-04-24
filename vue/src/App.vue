<template>
  <div id="app">
    <img alt="Vue logo" src="./assets/logo.png">
    <HelloWorld msg="Welcome to Your Vue.js App"/>
    
    {{ res }}
  </div>
</template>

<script>
import { defineComponent, ref } from '@vue/composition-api';
import HelloWorld from './components/HelloWorld.vue'

export default defineComponent({
  name: 'App',
  components: {
    HelloWorld
  },
  
  setup() {
    /**
     * APIの呼び出し
     * 
     * routes.rb
     * get "/" => "example#get" を呼び出す
     */
    const res = ref('');
    fetch('http://0.0.0.0:3000').then(async (response) => {
      const data = await response.json();
      res.value = data.message;
    });

    return {
      res
    }
  },
})
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
