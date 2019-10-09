<template>
  <div class="sidebar">
    <div class="sidebar__head">
      <a class="sidebar__head__plus" href="#open01">
        <i class="fas fa-plus plus"></i>
      </a>
    </div>
    <div class="sidebar__list">
      <div  v-for="e in groups" :key="e.id" class="sidebar__list__group">
        <div class="sidebar__list__group--name">
          {{ e.name }}
        </div>
      </div>
    </div>
  </div>
</template>
<script>
import axios from 'axios';

export default{
  data:function(){
    return{
      groups: []
    }
  },
  mounted(){
    axios
      .get('http://localhost:3000/api/groups')
      .then(response => (this.groups = response.data ))
  }
};
</script>
<style lang="scss">
  .sidebar{
    float: left;
    height: 100vh;
    width: 330px;
    background-color: gray;
    font-size: 20px;
    &__head{
      height: 110px;
      line-height: 110px;
      padding-left: 30px;
      &__plus{
        border: 1px solid #fff;
        padding: 10px;
        border-radius: 50%;
        color: #fff;
      }
    }
    &__list{
      height: calc(100vh - 110px;);
      color: #fff;
      padding-left: 30px;
      &__group{
        margin-bottom: 28px;
        display: flex;
        &--number{
          margin-left: 23px;
          background-color: #FF3F60;
          padding: 1px 15px;
          border-radius: 35%;
        }
      }
    }
  }
</style>
