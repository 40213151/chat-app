import axios from 'axios';
import {groupUrl, topUrl} from './constant.js';

export function groupList(){
    return axios.get(groupUrl)
}

export function groupCreate(hoge){
    return axios
            .post(groupUrl, hoge)
            .then(response =>{
              location.href = topUrl;
            })
            .catch(error => {
              if(error.response.data && error.response.data.errors){
                this.errors = error.response.data.errors;
              }
            });
}
