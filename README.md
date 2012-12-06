# Kilter [![Build Status](https://secure.travis-ci.org/afeld/kilter.png?branch=master)](https://travis-ci.org/afeld/kilter)

CSS filters that work across browsers.  Requires Ruby 1.9.2 or 1.9.3.

## Usage

Add to your `Gemfile`:

```ruby
gem 'kilter', '~> 0.1.0'
```

In your `.scss` file (or the equivalent in `.sass`):

```scss
@import "kilter"; // all filters
// OR
@import "kilter/grayscale"; // only a specific filter

img.grayscale {
  @include grayscale(75%);
  // OR
  @include filter(grayscale(75%));
}
```

## Contributing

```
bundle install
haml-server
open http://localhost:4567/test/index.html
```

## Resources

* [W3C Filter Spec](https://dvcs.w3.org/hg/FXTF/raw-file/tip/filters/index.html)
* [CSS Plus: Gaussian Blur and CSS3/SVG](http://css-plus.com/2012/03/gaussian-blur/)
* [HTML5 Rocks: Understanding CSS Filter Effects](http://www.html5rocks.com/en/tutorials/filters/understanding-css/)
* [Compass: Filter](http://compass-style.org/reference/compass/css3/filter/)
* [Compass: Cross-Browser Support Configuration](http://compass-style.org/reference/compass/support/)
* [MDN: Applying SVG effects to HTML content](https://developer.mozilla.org/en-US/docs/Applying_SVG_effects_to_HTML_content)
* [Polyfilter](https://github.com/Schepp/CSS-Filters-Polyfill)
