/**
 * jquery.template
 * Template repository
 *
 * Copyright (c) 2012 Jensen Tonne
 * www.jstonne.com
 *
 * Dual licensed under the MIT and GPL licenses:
 * http://www.opensource.org/licenses/mit-license.php
 * http://www.gnu.org/licenses/gpl.html
 *
 */

$.template = (function() {

	var defaultTemplate = {
		content: "",
		type: "ejs"
	};

	var self = function(name, content) {

		if (name===undefined) {
			return self.templates;
		}

		if (content) {

			var template;

			if ($.isPlainObject(content)) {

				template = content;

			} else {

				template = $.extend({}, defaultTemplate, {name: name, content: content});
			}

			self.templates[name] = template;
		}

		return self.templates[name].content;
	};

	$.extend(self, {

		templates: {},

		remove: function(name) {

			delete self.templates[name];
		}

	});

	return self;

 })();
