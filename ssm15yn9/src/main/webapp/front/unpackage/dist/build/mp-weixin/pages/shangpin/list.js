(global["webpackJsonp"]=global["webpackJsonp"]||[]).push([["pages/shangpin/list"],{"12c7":function(t,n,e){"use strict";(function(t){Object.defineProperty(n,"__esModule",{value:!0}),n.default=void 0;var r=a(e("a34a"));function a(t){return t&&t.__esModule?t:{default:t}}function i(t,n,e,r,a,i,o){try{var s=t[i](o),c=s.value}catch(l){return void e(l)}s.done?n(c):Promise.resolve(c).then(r,a)}function o(t){return function(){var n=this,e=arguments;return new Promise((function(r,a){var o=t.apply(n,e);function s(t){i(o,r,a,s,c,"next",t)}function c(t){i(o,r,a,s,c,"throw",t)}s(void 0)}))}}var s={data:function(){return{btnColor:["#409eff","#67c23a","#909399","#e6a23c","#f56c6c","#356c6c","#351c6c","#f093a9","#a7c23a","#104eff","#10441f","#a21233","#503319"],queryList:[{queryName:"商品名称"}],sactiveItem:{padding:"0 28rpx",boxShadow:"0 0 12rpx rgba(0,0,0,.3)",margin:"0 12rpx",borderColor:"rgba(0,0,0,1)",backgroundColor:"#333",color:"#fff",borderRadius:"8rpx",borderWidth:"0",width:"auto",lineHeight:"68rpx",fontSize:"28rpx",borderStyle:"solid"},sitem:{padding:"0 20rpx",boxShadow:"0 0 12rpx rgba(0,0,0,.3)",margin:"0 12rpx",borderColor:"rgba(0,0,0,1)",backgroundColor:"#fff",color:"#333",borderRadius:"8rpx",borderWidth:"0",width:"auto",lineHeight:"68rpx",fontSize:"28rpx",borderStyle:"solid"},queryIndex:0,list:[],mescroll:null,downOption:{auto:!1},upOption:{noMoreSize:5,textNoMore:"~ 没有更多了 ~"},hasNext:!0,searchForm:{},categoryList:[],categoryName:"全部",CustomBar:"0"}},onShow:function(){var t=this;return o(r.default.mark((function n(){var e;return r.default.wrap((function(n){while(1)switch(n.prev=n.next){case 0:return t.btnColor=t.btnColor.sort((function(){return.5-Math.random()})),n.next=3,t.$api.list("shangpinleixing",{page:1,limit:100});case 3:e=n.sent,e.data.list.splice(0,0,{id:0,leixing:"全部"}),t.categoryList=e.data.list,t.hasNext=!0,t.mescroll&&t.mescroll.resetUpScroll();case 8:case"end":return n.stop()}}),n)})))()},onLoad:function(){this.hasNext=!0,this.mescroll&&this.mescroll.resetUpScroll()},methods:{queryChange:function(t){this.queryIndex=t.detail.value,this.searchForm.shangpinmingcheng=""},categoryClick:function(t){this.categoryName=t,this.mescroll.resetUpScroll()},mescrollInit:function(t){this.mescroll=t},downCallback:function(t){this.hasNext=!0,t.resetUpScroll()},upCallback:function(t){var n=this;return o(r.default.mark((function e(){var a,i;return r.default.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return a={page:t.num,limit:t.size},"全部"!=n.categoryName&&(a.shangpinleixing="%"+n.categoryName+"%"),e.next=4,n.$api.list("shangpin",a);case 4:i=e.sent,1==t.num&&(n.list=[]),n.list=n.list.concat(i.data.list),0==i.data.list.length&&(n.hasNext=!1),t.endSuccess(t.size,n.hasNext);case 9:case"end":return e.stop()}}),e)})))()},onDetailTap:function(t){this.$utils.jump("./detail?id=".concat(t.id))},onUpdateTap:function(t){this.$utils.jump("./add-or-update?id=".concat(t))},onAddTap:function(){this.$utils.jump("./add-or-update")},onDeleteTap:function(n){var e=this;t.showModal({title:"提示",content:"是否确认删除",success:function(){var t=o(r.default.mark((function t(a){return r.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:if(!a.confirm){t.next=5;break}return t.next=3,e.$api.del("shangpin",JSON.stringify([n]));case 3:e.hasNext=!0,e.mescroll.resetUpScroll();case 5:case"end":return t.stop()}}),t)})));function a(n){return t.apply(this,arguments)}return a}()})},search:function(){var t=this;return o(r.default.mark((function n(){var e,a;return r.default.wrap((function(n){while(1)switch(n.prev=n.next){case 0:return t.mescroll.num=1,e={page:t.mescroll.num,limit:t.mescroll.size},t.searchForm.shangpinmingcheng&&(e["shangpinmingcheng"]="%"+t.searchForm.shangpinmingcheng+"%"),n.next=5,t.$api.list("shangpin",e);case 5:a=n.sent,1==t.mescroll.num&&(t.list=[]),t.list=t.list.concat(a.data.list),0==a.data.list.length&&(t.hasNext=!1),t.mescroll.endSuccess(t.mescroll.size,t.hasNext);case 10:case"end":return n.stop()}}),n)})))()}}};n.default=s}).call(this,e("543d")["default"])},"4bab":function(t,n,e){"use strict";e.d(n,"b",(function(){return a})),e.d(n,"c",(function(){return i})),e.d(n,"a",(function(){return r}));var r={mescrollUni:function(){return Promise.all([e.e("common/vendor"),e.e("components/mescroll-uni/mescroll-uni")]).then(e.bind(null,"fb80"))}},a=function(){var t=this,n=t.$createElement,e=(t._self._c,t.isAuth("shangpin","修改")),r=t.isAuth("shangpin","删除"),a=t.__map(t.list,(function(n,e){var r=t.__get_orig(n),a=n.tupian?n.tupian.split(","):null;return{$orig:r,g0:a}})),i=t.isAuth("shangpin","新增");t.$mp.data=Object.assign({},{$root:{m0:e,m1:r,l0:a,m2:i}})},i=[]},"617b":function(t,n,e){"use strict";e.r(n);var r=e("12c7"),a=e.n(r);for(var i in r)"default"!==i&&function(t){e.d(n,t,(function(){return r[t]}))}(i);n["default"]=a.a},7924:function(t,n,e){},b61b:function(t,n,e){"use strict";(function(t){e("21be");r(e("66fd"));var n=r(e("f959"));function r(t){return t&&t.__esModule?t:{default:t}}t(n.default)}).call(this,e("543d")["createPage"])},c581:function(t,n,e){"use strict";var r=e("7924"),a=e.n(r);a.a},f959:function(t,n,e){"use strict";e.r(n);var r=e("4bab"),a=e("617b");for(var i in a)"default"!==i&&function(t){e.d(n,t,(function(){return a[t]}))}(i);e("c581");var o,s=e("f0c5"),c=Object(s["a"])(a["default"],r["b"],r["c"],!1,null,null,null,!1,r["a"],o);n["default"]=c.exports}},[["b61b","common/runtime","common/vendor"]]]);