/* eslint no-console: 0 */
// Run this example by adding <%= javascript_pack_tag 'hello_vue' %> (and
// <%= stylesheet_pack_tag 'hello_vue' %> if you have styles in your component)
// to the head of your layout file,
// like app/views/layouts/application.html.erb.
// All it does is render <div>Hello Vue</div> at the bottom of the page.

import Buefy from "buefy";
import Vue from "vue";
import Vuex from "vuex";
import VueRouter from "vue-router";

import "buefy/dist/buefy.css";
import App from "../app.vue";
import Home from "../home.vue";
import Product from "../product.vue";
import Products from "../products.vue";

Vue.use(Buefy);
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

document.addEventListener("DOMContentLoaded", () => {
	const el = document.getElementById("app");
	const app = new Vue({
		router,
		el,
		render: h => h(App)
	});

	console.log(app);
});
