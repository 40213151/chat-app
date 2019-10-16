import axios from 'axios';
import {topUrl,groupUrl} from './constant.js';

//// ローカル環境URLと実際のパスを連結し、ローカル環境下で対応できる様にした
const localGroupUrl = (topUrl + groupUrl);

export const groupList = () => {
    return axios.get(localGroupUrl)
}

export const groupFind = id => {
    return  axios.get(localGroupUrl + `${id}`)
}

export const groupCreate = group => {
    return axios
      .post(localGroupUrl, group)
      .then(response =>{
        location.href = topUrl;
      })
}

export const groupUpdate = group => {
    return axios
      .patch(localGroupUrl + `${group.id}`, group)
}

export const ErrorMessage = (error,group) => {
  if(error.response.data && error.response.data.errors){
    group.errors = error.response.data.errors;
  }
}
