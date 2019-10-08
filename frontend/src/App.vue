<template>
  <div class="wrapper">
    <sidebar></sidebar>
    <chat-main></chat-main>
    <modal-window></modal-window>
  </div>
</template>

<script>
import Sidebar from './components/Sidebar.vue'
import ChatMain from './components/ChatMain.vue'
import ModalWindow from './components/ModalWindow.vue'

export default {
  components:{
    Sidebar,
    ChatMain,
    ModalWindow
  }
};
</script>
<style lang="scss">
  .wrapper{
    width: 100vw;
    height: 100vh;
  }
</style>
