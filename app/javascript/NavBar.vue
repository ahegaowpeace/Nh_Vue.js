<template>
	<div>
	  <b-navbar toggleable="lg" type="dark" variant="info">
	    <b-navbar-brand href="#">Nh</b-navbar-brand>
	
	    <b-navbar-toggle target="nav-collapse"></b-navbar-toggle>
	
	    <b-collapse id="nav-collapse" is-nav>
	      <b-navbar-nav>
	        <b-nav-item href="#">Category</b-nav-item>
	        <b-nav-item href="#">Tag</b-nav-item>
	        <b-nav-item href="#">Artist</b-nav-item>
	      </b-navbar-nav>
	
	      <!-- Right aligned nav items -->
	      <b-navbar-nav class="ml-auto">
	        <b-nav-item-dropdown text="その他" right>
	          <b-dropdown-item href="#">サイト説明</b-dropdown-item>
	          <b-dropdown-item href="#">掲示板</b-dropdown-item>
	        </b-nav-item-dropdown>
	      </b-navbar-nav>
	    </b-collapse>
	  </b-navbar>
	</div>
</template>

<script>
</script>

<style scoped>
</style scoped>
