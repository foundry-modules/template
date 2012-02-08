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

	var self = function(name, content) {

		if (name===undefined) {
			return self.templates;
		}

		if (content) {
			self.templates[name] = content;
		}

		return self.templates[name];
	};

	$.extend(self, {

		templates: {},

		remove: function(name) {

			delete self.templates[name];
		}

	});

	return self;

 })();
