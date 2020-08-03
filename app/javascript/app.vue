<template>
  <div id="app">
		<router-view></router-view>
  </div>
</template>

<script>
import Vue from 'vue'
import VueRouter from 'vue-router'

import NavBar from 'NavBar.vue'
import TopPage from 'TopPage.vue'

const router = new VueRouter({
	routes: [
		{ path: '/',
			name: 'TopPage',
			component: TopPage }
	]
})

Vue.use(VueRouter)

export default {
	router
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
