import { Component, OnDestroy, OnInit, ViewChild } from 'angular2/core';
import { ROUTER_DIRECTIVES } from 'angular2/router';
import { Observable, Subscription } from 'rxjs/Rx';

import { FilterTextComponent, FilterService, InitCapsPipe } from '../blocks/blocks';
import { Vehicle, VehicleService } from './vehicle.service';

@Component({
  selector: 'story-vehicles',
  templateUrl: './app/vehicles/vehicle-list.component.html',
  directives: [FilterTextComponent, ROUTER_DIRECTIVES],
  styleUrls: ['./app/vehicles/vehicle-list.component.css'],
  pipes: [InitCapsPipe],
  providers: [FilterService]
})
// OnDestroy, and OnInit are interfaces
export class VehicleListComponent implements OnDestroy, OnInit {

  //this is a field
  private _dbResetSubscription: Subscription;

  //this is a field
  vehicles: Vehicle[];
  // this a is a field even though it doesn't have a
  // semicolon, this.vehicles refers to the field above.
  filteredVehicles = this.vehicles;
  @ViewChild(FilterTextComponent) filterComponent: FilterTextComponent;

  constructor(
    private _filterService: FilterService,
    private _vehicleService: VehicleService) { }

  //this is a method
  filterChanged(searchText: string) {
    this.filteredVehicles = this._filterService.filter(searchText, ['id', 'name', 'type'], this.vehicles);
  }

  //this is a method
  getVehicles() {
    this.vehicles = [];
    this._vehicleService.getVehicles()
      .subscribe(vehicles => {
        this.vehicles = this.filteredVehicles = vehicles;
        this.filterComponent.clear();
      });
  }

  //this is a method
  ngOnDestroy() {
    this._dbResetSubscription.unsubscribe();
  }

  //this is a method
  ngOnInit() {
    componentHandler.upgradeDom();
    this.getVehicles();
    this._dbResetSubscription = this._vehicleService.onDbReset
      .subscribe(() => this.getVehicles());
  }
}
