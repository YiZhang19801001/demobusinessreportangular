import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { map } from 'rxjs/operators';

@Injectable({
  providedIn: 'root'
})
export class AuthenticationService {
  apiUrl = 'http://101.187.98.39:5000/';
  // apiUrl = 'http://192.168.1.88:5000/';

  constructor(private http: HttpClient) {}

  login(username: string, password: string) {
    return this.http.post(this.apiUrl + 'users/login', {
      username: username,
      password: password
    });
  }

  logout() {
    // remove user from local storage to log user out
    localStorage.removeItem('current_token');
  }
}
