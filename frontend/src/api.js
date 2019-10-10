import axios from 'axios';
import {topUrl,groupUrl} from './constant.js';

//// ローカル環境URLと実際のパスを連結し、ローカル環境下で対応できる様にした
const localGroupUrl = (topUrl + groupUrl);

export function groupList(){
    return axios.get(localGroupUrl)
}

export function groupCreate(hoge){
    return axios
            .post(localGroupUrl, hoge)
            .then(response =>{
              location.href = topUrl;
            })
            .catch(error => {
              if(error.response.data && error.response.data.errors){
                this.errors = error.response.data.errors;
              }
            });
}
