import Vue from "vue";
import App from "./App.vue";
import VueRouter from "vue-router";
import VueCompositionAPI from "@vue/composition-api";

Vue.use(VueCompositionAPI);
Vue.use(VueRouter);
Vue.config.productionTip = false;

new Vue({
  render: (h) => h(App),
}).$mount("#app");
