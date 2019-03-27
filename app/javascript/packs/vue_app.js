/* eslint no-console: 0 */
// Run this example by adding <%= javascript_pack_tag 'hello_vue' %> (and
// <%= stylesheet_pack_tag 'hello_vue' %> if you have styles in your component)
// to the head of your layout file,
// like app/views/layouts/application.html.erb.
// All it does is render <div>Hello Vue</div> at the bottom of the page.

import Vue from "vue";
import Vuex from "vuex";
import VueRouter from "vue-router";

import App from "../app.vue";
import Home from "../home.vue";
import Product from "../product-page.vue";
import Products from "../products-page.vue";

Vue.use(VueRouter);
Vue.use(Vuex);

Vue.component(Product);

const router = new VueRouter({
	routes: [
		{
			path: "/",
			component: Home
		},
		{
			path: "/products",
			name: "product",
			component: Products
		},
		{
			path: "/product/:id",
			props: true,
			name: "product",
			component: Product
		}
	]
});
const vuex = new Vuex.Store({
	state: {
		products: []
	},
	getters: {
		getProduct(state, id) {
			let product = state.products.find(p => p.id == id);

			if (!product) {
				// Search the api for product and add to store.
			}

			return product;
		}
	}
});

document.addEventListener("DOMContentLoaded", () => {
	const el = document.getElementById("app");
	const app = new Vue({
		el,
		router,
		vuex,
		render: h => h(App)
	});

	console.log(app);
});
