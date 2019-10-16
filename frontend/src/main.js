import Vue from 'vue';
import App from './App.vue';
export const bus = new Vue({});
// App.vueをエントリとしてレンダリング
new Vue({
  el: '#app',
  render: h => h(App)
})
