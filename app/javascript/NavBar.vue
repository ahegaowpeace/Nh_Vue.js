<template>
	<div class="container">
		<a href="#">menu</a>
		<ul class="col-sm-4">
			<li>hoge</li>
			<li>moge</li>
		</ul>
	<b-button v-b-tooltip.hover title="Tooltip content">Hover Me</b-button>
	</div>
</template>

<script>
</script>

<style scoped>
.menu {
	width: 100%;
	max-width: 960px;
	margin: 0 auto;
	padding: 0;
}

.menu li {
	display: block;
	float: left;
	width: 20%;
	padding: 0;
}
</style scoped>
