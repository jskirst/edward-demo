window.edward_api_url = 'https://edward-api.herokuapp.com/api/workflows/abc/steps';

Vue.use(Vuetify)
Vue.use(EdwardsVoice);

new Vue({
  el: '#basic-app',
  template: '#basic-template',
  methods: {
    emitNext() {
      this.$refs.steplist.stepForward();
    }
  }
})
