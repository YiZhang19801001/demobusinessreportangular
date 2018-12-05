import { ValueService } from './../_services/value.service';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-time-label',
  templateUrl: './time-label.component.html',
  styleUrls: ['./time-label.component.css']
})
export class TimeLabelComponent implements OnInit {
  constructor(public _apiService: ValueService) {}

  ngOnInit() {}
}
