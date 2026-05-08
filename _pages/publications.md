---
layout: page
permalink: /publications/
title: publications
description: publications by category.
nav: true
nav_order: 2
---

{% include bib_search.liquid %}

<div class="publications">

<!-- ## pre-print -->

{% bibliography --file preprint %}

<!-- ## major conferences -->

{% bibliography --file references %}

<!-- ## domestic conferences -->

{% bibliography --file domestic %}

</div>
