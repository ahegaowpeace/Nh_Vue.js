<template>
	<paginate
    v-model="page"
    :page-count="pagecount"
    :page-range="10"
    :margin-pages="2"
    :click-handler="clickCallback"
    :prev-text="'前'"
    :next-text="'次'"

    :container-class="'pagination'"
		:containerClass="'pagination'"
		:page-class="'page-item'"
		:page-link-class="'page-link'"
		:prev-class="'page-item'"
		:prev-link-class="'page-link'"
 		:next-class="'page-item'"
	  :next-link-class="'page-link'">
  </paginate>
</template>

<script>
import Vue from 'vue';
import Paginate from 'vuejs-paginate';
Vue.component('paginate', Paginate);

export default {
	data() {
    return {
      page: 1,
			pagecount: 25
    }
  },
	methods: {
		clickCallback (pageNum) {
			this.$emit('pare-pagenum', pageNum);
		}
	}
}
</script>
