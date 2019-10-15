import axios from 'axios';
import {topUrl,groupUrl} from './constant.js';

//// ローカル環境URLと実際のパスを連結し、ローカル環境下で対応できる様にした
const localGroupUrl = (topUrl + groupUrl);

export function groupList(){
    return axios.get(localGroupUrl)
}

export function groupFind(id){
    return  axios.get(localGroupUrl + `${id}`)
}

export function groupCreate(group){
    return axios
      .post(localGroupUrl, group)
      .then(response =>{
        location.href = topUrl;
      })
}

export function groupUpdate(group){
    return axios
      .patch(localGroupUrl + `${group.id}`, group)
      .then(response =>{
        location.href = topUrl;
      })
}

export function ErrorMessage(error,group){
  if(error.response.data && error.response.data.errors){
    group.errors = error.response.data.errors;
  }
}
