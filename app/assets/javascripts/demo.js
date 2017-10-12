Vue.use(Vuetify)
Vue.use(EdwardsVoice);

new Vue({
  el: '#basic-app',
  template: '#basic-template',
  methods: {
    emitNext: function() {
      this.$refs.steplist.stepForward();
    }
  }
})
