X-GM-THRID: 6402671850043736064
X-Received: by 10.129.82.133 with SMTP id g127mr9823098ywb.161.1490743034203;
        Tue, 28 Mar 2017 16:17:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.51.156 with SMTP id u28ls436468otc.49.gmail; Tue, 28 Mar
 2017 16:17:13 -0700 (PDT)
X-Received: by 10.31.238.204 with SMTP id m195mr7735473vkh.43.1490743033717;
        Tue, 28 Mar 2017 16:17:13 -0700 (PDT)
Return-Path: <corbet@lwn.net>
Received: from ms.lwn.net (ms.lwn.net. [2600:3c01::f03c:91ff:fe2c:2b9f])
        by gmr-mx.google.com with ESMTPS id i189si431538pfg.3.2017.03.28.16.17.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Mar 2017 16:17:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of corbet@lwn.net designates 2600:3c01::f03c:91ff:fe2c:2b9f as permitted sender) client-ip=2600:3c01::f03c:91ff:fe2c:2b9f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of corbet@lwn.net designates 2600:3c01::f03c:91ff:fe2c:2b9f as permitted sender) smtp.mailfrom=corbet@lwn.net
Received: from lwn.net (localhost [127.0.0.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ms.lwn.net (Postfix) with ESMTPSA id BF97B2DF;
	Tue, 28 Mar 2017 23:17:12 +0000 (UTC)
Date: Tue, 28 Mar 2017 17:17:11 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: sayli karnik <karniksayli1995@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Documentation: Add flexible-arrays.rst to the
 documentation tree
Message-ID: <20170328171711.608b6dec@lwn.net>
In-Reply-To: <20170328215458.GA9976@sayli-HP-15-Notebook-PC>
References: <20170328215458.GA9976@sayli-HP-15-Notebook-PC>
Organization: LWN.net
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 8bit

On Wed, 29 Mar 2017 03:26:26 +0530
sayli karnik <karniksayli1995@gmail.com> wrote:

> Add flexible-arrays.rst to Documentation/core-api. Add kernel-doc
> comments to allow referencing.

The kerneldoc comments are new.  I approve, but have a few comments...

> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> ---
>  Documentation/core-api/flexible-arrays.rst | 134 +++++++++++++++++++++++++++++
>  Documentation/core-api/index.rst           |   1 +
>  include/linux/flex_array.h                 |  66 ++++++++++++++
>  3 files changed, 201 insertions(+)
>  create mode 100644 Documentation/core-api/flexible-arrays.rst
> 
> diff --git a/Documentation/core-api/flexible-arrays.rst b/Documentation/core-api/flexible-arrays.rst
> new file mode 100644
> index 0000000..ddce04f
> --- /dev/null
> +++ b/Documentation/core-api/flexible-arrays.rst
> @@ -0,0 +1,134 @@
> +.. Flexible Array documentation master file, created by
> +   sphinx-quickstart on Sat Mar 18 02:03:03 2017.
> +   You can adapt this file completely to your liking, but it should at least
> +   contain the root `toctree` directive.

This stuff here isn't needed, I'd take it out.

> +===================================
> +Using flexible arrays in the kernel
> +===================================
> +
> +Last updated for 2.6.32
> +Jonathan Corbet <corbet@lwn.net>

...and that's not entirely true, now that you've updated it as well.
Probably both of those lines can go too.

> +Large contiguous memory allocations can be unreliable in the Linux kernel.
> +Kernel programmers will sometimes respond to this problem by allocating
> +pages with ``vmalloc()``.  This solution not ideal, though.  On 32-bit systems,

:c:func:`vmalloc()` will cause cross-reference links to be made.

> +memory from vmalloc() must be mapped into a relatively small address space;
> +it's easy to run out.  On SMP systems, the page table changes required by
> +vmalloc() allocations can require expensive cross-processor interrupts on
> +all CPUs.  And, on all systems, use of space in the vmalloc() range
> +increases pressure on the translation lookaside buffer (TLB), reducing the
> +performance of the system.
> +
> +In many cases, the need for memory from vmalloc() can be eliminated by
> +piecing together an array from smaller parts; the flexible array library
> +exists to make this task easier.
> +
> +A flexible array holds an arbitrary (within limits) number of fixed-sized
> +objects, accessed via an integer index.  Sparse arrays are handled
> +reasonably well.  Only single-page allocations are made, so memory
> +allocation failures should be relatively rare.  The down sides are that the
> +arrays cannot be indexed directly, individual object size cannot exceed the
> +system page size, and putting data into a flexible array requires a copy
> +operation.  It's also worth noting that flexible arrays do no internal
> +locking at all; if concurrent access to an array is possible, then the
> +caller must arrange for appropriate mutual exclusion.
> +
> +The creation of a flexible array is done with :c:func:`flex_array_alloc`::

Put the parentheses in there: :c:func:`flex_array_alloc()`

> +
> +    #include <linux/flex_array.h>
> +
> +    struct flex_array *flex_array_alloc(int element_size,
> +					unsigned int total,
> +					gfp_t flags);
> +
> +The individual object size is provided by ``element_size``, while total is the
> +maximum number of objects which can be stored in the array.  The flags
> +argument is passed directly to the internal memory allocation calls.  With
> +the current code, using flags to ask for high memory is likely to lead to
> +notably unpleasant side effects.
> +
> +It is also possible to define flexible arrays at compile time with::
> +
> +    DEFINE_FLEX_ARRAY(name, element_size, total);
> +
> +This macro will result in a definition of an array with the given name; the
> +element size and total will be checked for validity at compile time.
> +
> +Storing data into a flexible array is accomplished with a call to :c:func:`flex_array_put`::

Parentheses here too (and more below).  Also, when the changes cause the
lines to get too long, go ahead and break them.

> +
> +    int flex_array_put(struct flex_array *array, unsigned int element_nr,
> +    		       void *src, gfp_t flags);
> +
> +This call will copy the data from src into the array, in the position
> +indicated by ``element_nr`` (which must be less than the maximum specified when
> +the array was created).  If any memory allocations must be performed, flags
> +will be used.  The return value is zero on success, a negative error code
> +otherwise.
> +
> +There might possibly be a need to store data into a flexible array while
> +running in some sort of atomic context; in this situation, sleeping in the
> +memory allocator would be a bad thing.  That can be avoided by using
> +``GFP_ATOMIC`` for the flags value, but, often, there is a better way.  The
> +trick is to ensure that any needed memory allocations are done before
> +entering atomic context, using :c:func:`flex_array_prealloc`::
> +
> +    int flex_array_prealloc(struct flex_array *array, unsigned int start,
> +			    unsigned int nr_elements, gfp_t flags);
> +
> +This function will ensure that memory for the elements indexed in the range
> +defined by ``start`` and ``nr_elements`` has been allocated.  Thereafter, a
> +``flex_array_put()`` call on an element in that range is guaranteed not to
> +block.
> +
> +Getting data back out of the array is done with :c:func:`flex_array_get`::
> +
> +    void *flex_array_get(struct flex_array *fa, unsigned int element_nr);
> +
> +The return value is a pointer to the data element, or NULL if that
> +particular element has never been allocated.
> +
> +Note that it is possible to get back a valid pointer for an element which
> +has never been stored in the array.  Memory for array elements is allocated
> +one page at a time; a single allocation could provide memory for several
> +adjacent elements.  Flexible array elements are normally initialized to the
> +value ``FLEX_ARRAY_FREE`` (defined as 0x6c in <linux/poison.h>), so errors
> +involving that number probably result from use of unstored array entries.
> +Note that, if array elements are allocated with ``__GFP_ZERO``, they will be
> +initialized to zero and this poisoning will not happen.
> +
> +Individual elements in the array can be cleared with :c:func:`flex_array_clear`::
> +
> +    int flex_array_clear(struct flex_array *array, unsigned int element_nr);
> +
> +This function will set the given element to ``FLEX_ARRAY_FREE`` and return
> +zero.  If storage for the indicated element is not allocated for the array,
> +``flex_array_clear()`` will return ``-EINVAL`` instead.  Note that clearing an
> +element does not release the storage associated with it; to reduce the
> +allocated size of an array, call :c:func:`flex_array_shrink`::
> +
> +    int flex_array_shrink(struct flex_array *array);
> +
> +The return value will be the number of pages of memory actually freed.
> +This function works by scanning the array for pages containing nothing but
> +``FLEX_ARRAY_FREE`` bytes, so (1) it can be expensive, and (2) it will not work
> +if the array's pages are allocated with ``__GFP_ZERO``.
> +
> +It is possible to remove all elements of an array with a call to :c:func:`flex_array_free_parts`::
> +
> +    void flex_array_free_parts(struct flex_array *array);
> +
> +This call frees all elements, but leaves the array itself in place.
> +Freeing the entire array is done with :c:func:`flex_array_free`::
> +
> +    void flex_array_free(struct flex_array *array);
> +
> +As of this writing, there are no users of flexible arrays in the mainline
> +kernel.  The functions described here are also not exported to modules;
> +that will probably be fixed when somebody comes up with a need for it.
> +
> +
> +Flexible-arrays functions

s/arrays/array/

> +-------------------------
> +
> +.. kernel-doc:: include/linux/flex_array.h

So in a sense the kerneldoc stuff duplicates the discussion above.  This is
a step in the right direction, but you could consider, if you wanted,
integrating things to remove that duplication.

> diff --git a/Documentation/core-api/index.rst b/Documentation/core-api/index.rst
> index 0d93d80..2b908ac 100644
> --- a/Documentation/core-api/index.rst
> +++ b/Documentation/core-api/index.rst
> @@ -16,6 +16,7 @@ Core utilities
>     cpu_hotplug
>     local_ops
>     workqueue
> +   flexible-arrays
>  
>  Interfaces for kernel debugging
>  ===============================
> diff --git a/include/linux/flex_array.h b/include/linux/flex_array.h
> index b6efb0c..1603503 100644
> --- a/include/linux/flex_array.h
> +++ b/include/linux/flex_array.h

That's outside the docs tree, of course.  It seems nobody else really owns
that file, though, so I think I can take this change when the patch is
ready. 

> @@ -61,16 +61,82 @@ struct flex_array {
>  			FLEX_ARRAY_ELEMENTS_PER_PART(__element_size));	\
>  	}
>  
> +/**
> + * flex_array_alloc() - Creates a flexible array
> + * @element_size:	individual object size.
> + * @total:	maximum number of objects which can be stored.
> + * @flags:	passed directly to the internal memory allocation calls
> + *
> + * Return:	Returns an object of structure flex_array
> + */
>  struct flex_array *flex_array_alloc(int element_size, unsigned int total,
>  		gfp_t flags);
> +
> +/**
> + * flex_array_prealloc() - Ensures that memory for the elements indexed in the
> + * range defined by start and nr_elements has been allocated.
> + * @fa:		array to be freed
> + * @start:	start address
> + * @nr_elements:number of elements to be allocated

Let's try to line the descriptions up and put at least one space after
the colon.

> + * @flags:	passed directly to the internal memory allocation calls

I might be inclined to just say "GFP flags" here; people will know what
that means.

> + */
>  int flex_array_prealloc(struct flex_array *fa, unsigned int start,
>  		unsigned int nr_elements, gfp_t flags);
> +
> +/**
> + * flex_array_free() - Removes all elements of a flexible array
> + * @fa:		array to be freed
> + */
>  void flex_array_free(struct flex_array *fa);
> +
> +/**
> + * flex_array_free_parts() - Removes all elements of a flexible array, but
> + * leaves the array itself in place
> + * @fa:		array to be freed

Here the array is not freed; "cleared" or "emptied" maybe?

> + */
>  void flex_array_free_parts(struct flex_array *fa);
> +
> +/**
> + * flex_array_put() - Stores data into a flexible array
> + * @fa:		array to be freed

And this array is *definitely* not being freed!

> + * @element_nr:	position to copy, must be less than the maximum specified when
> + *		the array was created
> + * @src:	data source to be copied into the array
> + * @flags:	passed directly to the internal memory allocation calls
> + *
> + * Return:	Returns zero on success, a negative error code otherwise.
> + */
>  int flex_array_put(struct flex_array *fa, unsigned int element_nr, void *src,
>  		gfp_t flags);
> +
> +/**
> + * flex_array_clear() - Clears individual elements in the array, sets the given
> + * element to FLEX_ARRAY_FREE

It clears *an individual element*, right?

> + * @element_nr:	element position to clear
> + * @fa:		array to be freed

...and the array is not freed.

> + *
> + * Return:	Returns zero on success, -EINVAL otherwise.
> + */
>  int flex_array_clear(struct flex_array *fa, unsigned int element_nr);
> +
> +/**
> + * flex_array_get() - Retreives data into a flexible array

"i before e except after c" :)

> + * @element_nr:	position to copy, must be less than the maximum specified when
> + *		the array was created

Does it "copy"?  It just returns the pointer.

> + * @fa:		array to be freed

Here too.

> + *
> + * Return:	Returns a pointer to the data element, or NULL if that
> + *		particular element has never been allocated.
> + */
>  void *flex_array_get(struct flex_array *fa, unsigned int element_nr);
> +
> +/**
> + * flex_array_shrink() - Reduces the allocated size of an array
> + * @fa:		array to be freed
> + *
> + * Return:	Returns number of pages of memory actually freed
> + *
> + */
>  int flex_array_shrink(struct flex_array *fa);
>  
>  #define flex_array_put_ptr(fa, nr, src, gfp) \

When you have a final patch ready, it should go to LKML as well.

Thanks,

jon

