<template>
	<div id="app">
		<header>
			<p class="title is-1">
				Kyle's Dogs
			</p>
		</header><!-- header -->

		<div class="container">
			<router-view />
		</div><!-- container -->
	</div>
</template>

<script>
export default {
	data: function () {
		return {

		};
	},
	created() {

	}
};
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
