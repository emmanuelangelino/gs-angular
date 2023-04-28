import { Component, OnInit } from '@angular/core';
import { ApiService } from '../services/api.service';
import { AuthService } from '../services/auth.service';
import { ProductService } from '../services/product.service';

@Component({
  selector: 'app-order-history',
  templateUrl: './order-history.component.html',
  styleUrls: ['./order-history.component.scss'],
})
export class OrderHistoryComponent implements OnInit {
  listOfData: any[] = [
    {
      key: '1',
      name: 'João José',
      age: 32,
      address: 'Sâo Paulo 55 Av. Paulista',
    },
    {
      key: '2',
      name: 'Maria Lima',
      age: 42,
      address: 'Salvador 11 Pelourinho',
    },
    {
      key: '3',
      name: 'Pedro Santos',
      age: 32,
      address: 'Rio de Janeiro 99 Copacabana',
    },
  ];
  user: any;
  orders: any[] = [];
  error = '';
  constructor(
    private _api: ApiService,
    private _auth: AuthService,
    private _product: ProductService
  ) {
    this.user = this._auth.getUser();
  }

  ngOnInit(): void {
    this._api.getTypeRequest(`orders/?userId=${this.user.user_id}`).subscribe(
      (res: any) => {
        console.log(res);
        res.data.forEach((item) => {
          this._product
            .getSingleProduct(item.product_id)
            .subscribe((product) => {
              console.log(product);
              this.orders.push({ ...product, ...item });
            });
        });
        // let uniqueProductsArray = Array.from(
        //   new Set(res.data.map((p) => p.product_id))
        // );
      },
      (err) => {
        this.error = err.error.message;
      }
    );
  }
}
