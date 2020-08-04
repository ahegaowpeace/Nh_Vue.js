<template>
	<div class="root-container">
		<navbar></navbar>
		<h1>TopPage:</h1>
		<pagenation></pagenation>
	</div>
</template>

<script>
import Vue from 'vue'
import axios from 'axios'

import navbar from './NavBar.vue'
import pagenation from './PageNation.vue'

export default {
	components: {
		navbar,
		pagenation
	}
}
</script>

<style scoped>
</style scoped>
