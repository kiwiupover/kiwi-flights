App.FzLabelComponent = Ember.Component.extend(
  tagName: 'span'
  classNameBindings: ['contentClass']
  classTypePrefix: 'label'

  contentClass: ( ->
    labelClass = @get 'content'
    labelClass = 'default' if not labelClass?
    label = labelClass.replace(' ', '-').toLowerCase()
    pref = @get 'classTypePrefix'
    "#{pref}-#{label}"
  ).property('content').cacheable()
)