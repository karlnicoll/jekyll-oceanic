# Configuration Guide

The Oceanic theme offers various different settings that can be customized by
you to tweak the theme just the way you like.

Note that this document doesn't cover skinning. This is covered
[here](SKINNING.md).

## Basic Configuration Settings

At all times, you can refer to the [`_config.yml`](_config.yml) file for a
complete listing of the settings exposed by the template.

Out of the box. The template provides a series of "reasonable defaults". Some
of these settings do not need adjusting, but some you probably want to change
before you deploy your site.

The list of supported configuration values is listed below:

### Author Setting

The `author` setting defines the name of the person/entity that the site refers
to. This can, for example, be the name of the person writing a blog, or the
name of the company for a company site. It is configured like this:

    author:
      name: John Doe

The author setting is used by the template as the site title.

### Tagline Setting

The tagline is the value given to the site's sub-title:

    Tagline: >
      A man of many talents, with relationships, experiences, and human
      emotions

### Oceanic Setting

The oceanic setting is where the template-specific configuration values are
stored:

    oceanic:
      skin: default
      code-skin: default
      ...

The specific sub-settings are discussed in the following sections:

### Skin and Code Skin Settings

These settings define the skins used by the template. The theme provides two
files out of the box:

* `_sass/skins/default.scss`
* `_sass/code-skins/default.scss`

These skins can be used as a template for your own color scheme if you prefer.

If you choose to create your own skins, you can specify the appropriate skin
file name like this.

    oceanic:
      skin: myskin           # Assumes the file is stored in _sass/skins/myskin.scss
      code-skin: mycodeskin  # Assumes the file is stored in _sass/code-skins/mycodeskin.scss

### Avatar Settings

The theme allows for you to specify an image to include in the circle in the
header. By default, the avatar is loaded from assets/img/avatar.jpg. If you
wish to specify your own image, you can do so as follows:

    oceanic:
      avatar:
        url: "/assets/img/custom-avatar.png"
        width: "100px"
        height: "100px"

You can also specify an image from a remote url, such as a gravatar:

    oceanic:
      avatar:
        url: "https://secure.gravatar.com/avatar/c1e5bf4421007b7cfe4dba5ecb24f777?s=100"
        width: "100px"
        height: "100px"

Note that the theme cannot calculate the height/width of the avatar image, so
you must specify it manually. It will default to 100x100 pixels by default, so
if your image is larger/smaller you MUST specify the dimensions like above,
otherwise your avatar image will look wrong.

### Social Media Settings

Social media links can be specified in the "social" settings section. Like
this:

    oceanic:
      social:
        facebook: https://www.facebook.com/jekyll.user
        github: https://www.github.com/jekyll.user
        linkedin: https://www.linkedin.com/in/jekylluser
        stackoverflow: https://stackoverflow.com/users/00000/stack-user
        steam: https://steamcommunity.com/id/jekylluser/
        twitter: https://www.twitter.com/jekylluser

For each one that is defined, a corresponding icon will appear in the site
header, which is a link to the provided destination.

NOTE: This is the full list of supported social media services at the minute.
If you have a request, please raise an issue or submit a pull request.

### Homepage Blog Entries Settings

The oceanic supports a full landing page by default, rather than simply
providing the full list of blog entries. If you wish to display *some* blog
entries, you can specify the following setting to show the *n* most recent
blog entries.

    # Display 5 most recent blog entries on the landing page.
    oceanic:
      homepage_blog_entries: 5

If you would prefer to have a paginated list of blog entries on your landing
page, you can provide a custom `index.html` with the following front matter:

    ---
    layout: bloglist
    title: Hello, Visitor!
    pagination:
      enabled: true
    ---

    <p>
      This is a sample website for the Jekyll "Oceanic" theme. There isn't
      much content in here, but there's plenty of Lorem ipsum padding.
    </p>

    <p>Thanks for visiting!</p>

In the snippet above, the `layout` attribute has been set to "bloglist", and
pagination options have been specified.

### Pagination Settings

The Oceanic template uses `jekyll-paginate-v2` plugin for pagination. The
instructions for these settings can be found
[HERE](https://github.com/sverrirs/jekyll-paginate-v2/blob/master/README-GENERATOR.md#site-configuration).

### Category/Tag Lists

The Oceanic template supports category/tag pages for listing blog posts with
defined categories and/or tags. This is supported via two plugins:

* `jekyll-paginate-v2`
* `jekyll-archives`

Note that `jekyll-archives` is optional, and only required if you with to use
non-paginated category/tag pages. If you instead would prefer the more advanced
features offered by the `autopages` module in `jekyll-paginate-v2`, you can
just use that instead.

DO NOT ENABLE BOTH SETTINGS.

The settings of interest are listed in the `autopages` and `jekyll-archives`
sections of `_config.yml` if you wish to take a look.

## Navigation Menu

The Oceanic template generates it's navigation menu by scanning for the `nav`
setting in pages. For example:

    ---
    layout: page
    title: About
    permalink: /about/
    nav:
      enabled: true
    ---

The front matter for this page will cause an "About" entry to appear in the
navigation menu.

## Page Groups

The navigation in the Oceanic template is single-level, and thus does not
support complex tree structures for sites. If you do have nested pages in your
navigation, you can specify a `pagegroup` setting in each page to allow pages
to highlight certain navigation menu entries. For example, blog entries will
always highlight the "Blog" entry in the navigation menu, if one is specified.

For example, if you wish for a project page to highlight the "Projects" entry
in a navigation menu:

    ====================================================================
    projects.md
    ====================================================================
    ---
    layout: page
    title: Projects
    permalink: /projects/
    pagegroup: projects
    nav:
      enabled: true
    ---

    ====================================================================
    hello-world.md
    ====================================================================
    ---
    layout: page
    title: My Hello World Project
    permalink: /projects/hello-world/
    pagegroup: projects
    nav:
      enabled: false
    ---

    In the example above, when the user navigates to
    https://foo.com/projects/hello-world/, the "Projects" entry in the
    navigation menu will be highlighted since `hello-world.md` shares a
    `pagegroup` value with `projects.md`.

Blog entries reserve the "__blog" page group. If you create your own page for
the blog. You can specify the following front matter...

    ---
    layout: bloglist
    title: My Blog
    pagegroup: __blog
    nav:
      enabled: true
    ---

... and blog posts will automatically highlight the "My Blog" entry in the
navigation list. Refer to [blog/index.html](blog/index.html) for an example.

## Layouts

The template provides several layouts that you can use for your pages:

### `layout: default`

The most generic layout. Simply provides a HTML bootstrap for your page. All
content must be provided.

### `layout: page`

Same as `layout: default`, but generates the page header from the `title`
front matter value.

### `layout: post`

Reserved for blog posts. Probably not worth using for pages.

### `layout: home`

Reserved for the landing page if the user wishes to view recent blog posts.

### `layout: categories`

Basic layout that provides a list of blog post categories at the bottom of the
page.

### `layout: bloglist`

Provides a paginated list of blog entries at the bottom of the page. Can be used
as a replacement for `layout: home` if you wish to show all blog posts on the
landing page.

### `layout: archive` and `layout: autopage`

These layouts are reserved for use with `jekyll-archives` and
`jekyll-paginate-v2` autopages plugins. Use them by configuring the appropriate
settings for these plugins in `_config.yml`.
