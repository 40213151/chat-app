<template>
  <div class="modal-window">
    <div id="modal">
      <div id="open01">
      <a href="#" class="close_overlay">×</a>
      <div class="modal_window">
        <h2>グループ新規作成</h2>
        <form @submit.prevent="createGroup">
          <div v-if="errors.length != 0">
            <ul v-for="e in errors" :key="e">
              <li><font color="red">{{ e }}</font></li>
            </ul>
          </div>
          <input v-model="group.name" type="text" placeholder="グループ名" class="chat__footer__input">
          <input type="submit" value="作成" class="chat__footer__submit group_submit">
        </form>
        <a href="#">【×】CLOSE</a>
      </div><!--/.modal_window-->
      </div><!--/#open01-->
    </div>
  </div>
</template>
<script>
import {groupCreate} from '../Api.js';
import {ErrorMessage} from '../Api.js';

export default {
  data() {
    return{
      group: {
        name:''
      },
      errors: ''
    }
  },
  methods: {
    createGroup(){
      groupCreate(this.group)
      .catch(error => {
        ErrorMessage(error,this);
      });
    }
  }
};
</script>
<style lang="scss">
#contents {
    margin: 0 auto;
    padding: 10px 0 50px 0;
    width: 100%;
}

p {
    padding: 10px 0;
}

#open01,
#open02 {
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    display: none;
    position: absolute;
}

.close_overlay {
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    display: block;
    text-indent: -9999px;
    position: absolute;
    background: #000;
    opacity: 0.5;
    z-index: 5;
}

.modal_window {
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    margin: auto;
    width: 800px;
    height: 300px;
    text-align: center;
    background: #fff;
    position: absolute;
    z-index: 10;
}

.modal_window h2 {
    margin-bottom: 20px;
    width: 800px;
    height: 60px;
    line-height: 30px;
    color: #fff;
    font-size: 20px;
    font-weight: bold;
    text-align: left;
    text-indent: 15px;
    background: gray;
}

.modal_window p {
    padding: 0 15px 15px 15px;
    font-size: 12px;
    line-height: 160%;
    text-align: left;
}


/* CSS3 ModalWindow SET
-------------------------- */
@-webkit-keyframes modalFadeIn {
    0% {opacity:0;display:block;}
    100% {opacity:1;}
}

div#modal div:target {
    -webkit-animation-name: modalFadeIn;
    -webkit-animation-duration: 1s;
    -webkit-animation-iteration-count: 1;
    opacity: 1;
    display:block;
}
</style>
