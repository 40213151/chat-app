<template>
  <div class="sidebar">
    <div class="sidebar__head">
      <a class="sidebar__head__plus" href="#open01">
        <i class="fas fa-plus plus"></i>
      </a>
    </div>
    <div class="sidebar__list">
      <div  v-for="e in groups" :key="e.id" class="sidebar__list__group">
        <a class="sidebar__list__group--name" v-on:click="setGroupinfo(e.id)">
          {{ e.name }}
        </a>
      </div>
    </div>
  </div>
</template>
<script>
import {groupList} from '../api.js';
import {groupFind} from '../api.js';
import {bus} from '../main.js';

export default{
  data(){
    return{
      groups: []
    }
  },
  methods: {
    async fetchGroups () {
      const response = await groupList();
      this.groups = response.data
    },
    async setGroupinfo(id){
      const sideGroup = await groupFind(id);
      bus.$emit('bus-event', sideGroup);
    }
  },
  mounted(){
      this.fetchGroups()
      bus.$on('sendSidebar', this.fetchGroups);
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
