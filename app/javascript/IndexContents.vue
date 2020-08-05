<template>
	<div>
		{{count[0].pagenum}}
		<getpagenum
  		@pare-pagenum="getPageNum"
  	>
		</getpagenum>
	</div>
</template>

<script>
import getpagenum from 'PageNation.vue'
export default {
	components: {
		getpagenum
	},
	data: function () {
		return {
	    count: [
				{pagenum: 1}
			]
	  }
	},
	methods: {
	  getPageNum(pageNum) {
	    this.count[0].pagenum = pageNum;
	  }
	}
}
</script>

<style scoped>
</style>
