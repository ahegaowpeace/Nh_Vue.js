<template>
	<div class="root-container">
		<navbar></navbar>
		<h1>TopPage</h1>
		<indexcontents></indexcontents>
	</div>
</template>

<script>
import Vue from 'vue'

import navbar from './NavBar.vue'
import indexcontents from './IndexContents.vue'

export default {
	components: {
		navbar,
		indexcontents
	}
}
</script>

<style scoped>
</style scoped>
