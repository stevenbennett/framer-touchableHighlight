exports.apply = (target) ->
	target.onTouchStart ->
		highlight(target)

	highlight = () ->

		darken = new Animation
			layer: target
			time: .05
			properties:
				opacity: .85
		darken.start()
		lighten = new Animation
			layer: target
			time: .05
			properties:
				opacity: 1
		target.on Events.TouchEnd, ->
			lighten.start()
		target.on Events.TouchMove, ->
			lighten.start()