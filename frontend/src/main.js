import Vue from 'vue';
import App from './App.vue';
import ActionCable from 'actioncable';
export const bus = new Vue({});
// App.vueをエントリとしてレンダリング
const cable = ActionCable.createConsumer('ws:localhost:3000/cable');
Vue.prototype.$cable = cable;

new Vue({
  el: '#app',
  render: h => h(App)
})
