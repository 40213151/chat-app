<template>
  <div class="wrapper">
    <sidebar></sidebar>
    <chat-main></chat-main>
  </div>
</template>

<script>
import Sidebar from './components/Sidebar.vue'
import ChatMain from './components/ChatMain.vue'

  export default {
    components:{
      Sidebar,
      ChatMain
    }
  };
</script>
<style lang="scss">
  .wrapper{
    display: flex;
    width: 100vw;
    height: 100vh;
  }
</style>
