<template>
  <div class="chat">
    <div class="chat__head">
      <div class="chat__head--left">
        <div class="chat-group-name">
          チャットグループ名
        </div>
        <a class="short-font">
          編集
        </a>
      </div>
      <div class="chat__head--right">
        <a class="short-font">
          チャットグループを削除する
        </a>
      </div>
    </div>
    <div class="chat__main">
      <div class="message">
        メッセージ
      </div>
      <div class="message">
        メッセージ
      </div>
      <div class="message">
        メッセージ
      </div>
    </div>
    <div class="chat__footer">
      <form class="form">
        <input type="text" class="chat__footer__input">
        <input type="submit" class="chat__footer__submit" value="送信">
      </form>
    </div>
  </div>
</template>
<style lang="scss">
  .chat{
    float: right;
    height: 100vh;
    width: calc(100vw - 330px);
    font-size: 29px;
    .short-font{
      font-size: 18px;
      color: gray;
    }
    &__head{
      height: 110px;
      line-height: 110px;
      display: flex;
      border-bottom: 1px solid #000;
      margin: 0 25px;
      &--left{
        padding-left: 30px;
        .chat-group-name{
          display: inline-block;
          margin-right: 10px;
        }
      }
      &--right{
        margin: 0 0 0 auto;
      }
    }
    &__main{
      height: calc(100vh - 100px - 110px);
      margin-left: 55px;
    }
    .message{
      padding-top: 35px;
    }
    &__footer{
      height: 100px;
      padding: 25px 40px 25px 27px;
      width: 100%;
      box-sizing: border-box;
      &__input{
        border: 1px solid gray;
        border-radius: 7%;
        width: calc(100% - 150px);
        height: 50px;
        margin-right: 25px;
      }
      &__submit{
        height: 50px;
        color: #fff;
        border: none;
        background-color: gray;
        padding: 0 30px;
        border-radius: 7%;
        font-size: 25px;
      }
    }
  }
</style>
