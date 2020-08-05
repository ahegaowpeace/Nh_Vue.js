<template>
	<div>
		<table>
			<tbody>
				<tr>
					<th>タイトル:</th>
					<th>ページ数</th>
				</tr>
				<tr v-for="book in books">
					<td>{{ book.title }}</td>
					<td>{{ book.pagenum }}</td>
				</tr>
			</tbody>
		</table>
		{{count[0].pagenum}}
		<getpagenum
  		@pare-pagenum="getPageNum"
  	>
		</getpagenum>
	</div>
</template>

<script>
import Vue from 'vue'
import axios from 'axios'
Vue.$http = axios;

import getpagenum from 'PageNation.vue'
export default {
	components: {
		getpagenum
	},
	data: function () {
		return {
			books: [],
	    count: [
				{pagenum: 1}
			]
	  }
	},
	// 初期データ取得
	mounted () {
		axios
			.get('/api/v1/books.json', {
				params: {
					page: this.count[0].pagenum
				}
			})
			.then(response => (this.books = response.data.books))
	},
	// ページ毎にデータとページ番号を取得
	methods: {
	  getPageNum(pageNum) {
	    this.count[0].pagenum = pageNum;
			axios.get('/api/v1/books.json', {params: {page: this.count[0].pagenum}}).then(response => (this.books = response.data.books));
	  }
	}
}
</script>

<style scoped>
</style>
