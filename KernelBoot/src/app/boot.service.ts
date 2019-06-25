import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { HttpClientModule } from "@angular/common/http";

@Injectable({
  providedIn: 'root'
})
export class BootService {

  private baseURL: string = "https://api.dialogflow.com/v1/query?v=20150910";
  private token: string = 'Seu Token'

  constructor(private http: HttpClient) { }

  public getResponse(query: string) {
    let data = {
      query: query,
      lang: 'pt-BR',
      sessionId: '12345'
    }
    return this.http
      .post(`${this.baseURL}`, data, { headers: this.getHeaders() })


  }

  public getHeaders() {
    let headers = new HttpHeaders();
    headers = headers.set('Authorization', `Bearer ${this.token}`);
    return headers;
  }
}
