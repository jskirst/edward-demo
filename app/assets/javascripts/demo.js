Vue.use(Vuetify)
Vue.use(EdwardsVoice);

Vue.config.errorHandler = function (err, vm, info) {
  console.log(err);
}

new Vue({
  el: '#basic-app',
  template: '#basic-template',
  methods: {
    emitNext: function() {
      this.$refs.steplist.stepForward();
    }
  }
})
