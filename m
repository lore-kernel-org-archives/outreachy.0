X-GM-THRID: 6402671850043736064
X-Received: by 10.99.3.145 with SMTP id 139mr855471pgd.7.1490819494170;
        Wed, 29 Mar 2017 13:31:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.51.156 with SMTP id u28ls2817866otc.49.gmail; Wed, 29 Mar
 2017 13:31:33 -0700 (PDT)
X-Received: by 10.157.3.9 with SMTP id 9mr918881otv.100.1490819493725;
        Wed, 29 Mar 2017 13:31:33 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id 2si3010pfz.1.2017.03.29.13.31.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 13:31:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id g2so4511413pge.2
        for <outreachy-kernel@googlegroups.com>; Wed, 29 Mar 2017 13:31:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=urTHA85Z/mSVPZTt94/UTipolndTxmqr7Y9SgZbOsIs=;
        b=da1MfxTu8h6sA9sMvd8g6e1VycwdN26h57R5VrKXnfzFRTx1e07mS/E3jD3Sjv0TMW
         enG4f6gQkXZx5mJGW6deS6TBlbFKFGUfCaJ6GXhlCeTPq1nZh9znaZpPgcORx41xcIhG
         fBL8Nz1RqoVOY8EvwqWiIFl4TrCFkRQowso6eOVhgFmoToVbcoTUQvTCdVZkkaSE47sr
         KqqdFLJgiCX0NYuVI3O0HrEPLNoYq07b0IKm4vwHxBUPranphUkRlhkyztGuIJglyadJ
         QZDyZQ98XGFmFdJZGdiaHq+57KExepu84MOtU7B7+fBsjoD4EUgcWG0dgiRzftZri1Hv
         R4hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=urTHA85Z/mSVPZTt94/UTipolndTxmqr7Y9SgZbOsIs=;
        b=aIj2+Lkcu24nnUrdPeluJr0ham9SNI8CuJd1tkSCpP3rWn+ut4a2jG8L4FaV6DNEHv
         aXU5THb5fUs3ZELJ4GpdhBX+Apm1YE3qvjh1CuvXInhtF4ow+gz0F1mJcHnQaqdYC9aZ
         LR/4w1gHuZNwcHB+WUTzpkUEHBqt1u4MXArIa7dceT7MWbeAbpCHHsnEWjNzPXA2U+Dj
         0rJnZAJTiXoNza5FgN7yTUpQTkh6izVEbXBFqPzl6tF4+ERGC1RN7hDqXkmplbxI2dcI
         iJf5sZ6pdbBcZXwqALr60j1bkum6rkSmm32mOK5tYLarEQtLqCLbpbQoL9ZmM1xZyN1k
         RI7A==
X-Gm-Message-State: AFeK/H3Wq3liD0EpPpx03Nu/s1/BW0AF62eagtxCEi671faA5DNPml+QYh3/aFDaiMFKnQ==
X-Received: by 10.98.95.197 with SMTP id t188mr2454360pfb.150.1490819493092;
        Wed, 29 Mar 2017 13:31:33 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([103.59.75.6])
        by smtp.gmail.com with ESMTPSA id j188sm23102pfg.27.2017.03.29.13.31.27
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 13:31:32 -0700 (PDT)
Date: Thu, 30 Mar 2017 02:01:16 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Jonathan Corbet <corbet@lwn.net>, linux-kernel@vger.kernel.org
Subject: [PATCH v2] Documentation: Add flexible-arrays.rst to the
 documentation tree
Message-ID: <20170329203116.GA4861@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Add flexible-arrays.rst to Documentation/core-api. Add kernel-doc
comments to allow referencing.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
Changes in v2:
-Removed default comment by sphinx and author's name
-Added :c:func:`vmalloc()`
-Added the parenthesis in :c:func:`func()`
-Edited spacing and line length
-Edited description for gfp flags and fa
-Corrected typo for 'retrieve'
-Added to lkml to cc

 Documentation/core-api/flexible-arrays.rst | 130 +++++++++++++++++++++++++++++
 Documentation/core-api/index.rst           |   1 +
 include/linux/flex_array.h                 |  67 +++++++++++++++
 3 files changed, 198 insertions(+)
 create mode 100644 Documentation/core-api/flexible-arrays.rst

diff --git a/Documentation/core-api/flexible-arrays.rst b/Documentation/core-api/flexible-arrays.rst
new file mode 100644
index 0000000..b6b85a1
--- /dev/null
+++ b/Documentation/core-api/flexible-arrays.rst
@@ -0,0 +1,130 @@
+
+===================================
+Using flexible arrays in the kernel
+===================================
+
+Large contiguous memory allocations can be unreliable in the Linux kernel.
+Kernel programmers will sometimes respond to this problem by allocating
+pages with :c:func:`vmalloc()`.  This solution not ideal, though.  On 32-bit
+systems, memory from vmalloc() must be mapped into a relatively small address
+space; it's easy to run out.  On SMP systems, the page table changes required
+by vmalloc() allocations can require expensive cross-processor interrupts on
+all CPUs.  And, on all systems, use of space in the vmalloc() range increases
+pressure on the translation lookaside buffer (TLB), reducing the performance
+of the system.
+
+In many cases, the need for memory from vmalloc() can be eliminated by piecing
+together an array from smaller parts; the flexible array library exists to make
+this task easier.
+
+A flexible array holds an arbitrary (within limits) number of fixed-sized
+objects, accessed via an integer index.  Sparse arrays are handled
+reasonably well.  Only single-page allocations are made, so memory
+allocation failures should be relatively rare.  The down sides are that the
+arrays cannot be indexed directly, individual object size cannot exceed the
+system page size, and putting data into a flexible array requires a copy
+operation.  It's also worth noting that flexible arrays do no internal
+locking at all; if concurrent access to an array is possible, then the
+caller must arrange for appropriate mutual exclusion.
+
+The creation of a flexible array is done with :c:func:`flex_array_alloc()`::
+
+    #include <linux/flex_array.h>
+
+    struct flex_array *flex_array_alloc(int element_size,
+					unsigned int total,
+					gfp_t flags);
+
+The individual object size is provided by ``element_size``, while total is the
+maximum number of objects which can be stored in the array.  The flags
+argument is passed directly to the internal memory allocation calls.  With
+the current code, using flags to ask for high memory is likely to lead to
+notably unpleasant side effects.
+
+It is also possible to define flexible arrays at compile time with::
+
+    DEFINE_FLEX_ARRAY(name, element_size, total);
+
+This macro will result in a definition of an array with the given name; the
+element size and total will be checked for validity at compile time.
+
+Storing data into a flexible array is accomplished with a call to
+:c:func:`flex_array_put()`::
+
+    int flex_array_put(struct flex_array *array, unsigned int element_nr,
+    		       void *src, gfp_t flags);
+
+This call will copy the data from src into the array, in the position
+indicated by ``element_nr`` (which must be less than the maximum specified when
+the array was created).  If any memory allocations must be performed, flags
+will be used.  The return value is zero on success, a negative error code
+otherwise.
+
+There might possibly be a need to store data into a flexible array while
+running in some sort of atomic context; in this situation, sleeping in the
+memory allocator would be a bad thing.  That can be avoided by using
+``GFP_ATOMIC`` for the flags value, but, often, there is a better way.  The
+trick is to ensure that any needed memory allocations are done before
+entering atomic context, using :c:func:`flex_array_prealloc()`::
+
+    int flex_array_prealloc(struct flex_array *array, unsigned int start,
+			    unsigned int nr_elements, gfp_t flags);
+
+This function will ensure that memory for the elements indexed in the range
+defined by ``start`` and ``nr_elements`` has been allocated.  Thereafter, a
+``flex_array_put()`` call on an element in that range is guaranteed not to
+block.
+
+Getting data back out of the array is done with :c:func:`flex_array_get()`::
+
+    void *flex_array_get(struct flex_array *fa, unsigned int element_nr);
+
+The return value is a pointer to the data element, or NULL if that
+particular element has never been allocated.
+
+Note that it is possible to get back a valid pointer for an element which
+has never been stored in the array.  Memory for array elements is allocated
+one page at a time; a single allocation could provide memory for several
+adjacent elements.  Flexible array elements are normally initialized to the
+value ``FLEX_ARRAY_FREE`` (defined as 0x6c in <linux/poison.h>), so errors
+involving that number probably result from use of unstored array entries.
+Note that, if array elements are allocated with ``__GFP_ZERO``, they will be
+initialized to zero and this poisoning will not happen.
+
+Individual elements in the array can be cleared with
+:c:func:`flex_array_clear()`::
+
+    int flex_array_clear(struct flex_array *array, unsigned int element_nr);
+
+This function will set the given element to ``FLEX_ARRAY_FREE`` and return
+zero.  If storage for the indicated element is not allocated for the array,
+``flex_array_clear()`` will return ``-EINVAL`` instead.  Note that clearing an
+element does not release the storage associated with it; to reduce the
+allocated size of an array, call :c:func:`flex_array_shrink()`::
+
+    int flex_array_shrink(struct flex_array *array);
+
+The return value will be the number of pages of memory actually freed.
+This function works by scanning the array for pages containing nothing but
+``FLEX_ARRAY_FREE`` bytes, so (1) it can be expensive, and (2) it will not work
+if the array's pages are allocated with ``__GFP_ZERO``.
+
+It is possible to remove all elements of an array with a call to
+:c:func:`flex_array_free_parts()`::
+
+    void flex_array_free_parts(struct flex_array *array);
+
+This call frees all elements, but leaves the array itself in place.
+Freeing the entire array is done with :c:func:`flex_array_free()`::
+
+    void flex_array_free(struct flex_array *array);
+
+As of this writing, there are no users of flexible arrays in the mainline
+kernel.  The functions described here are also not exported to modules;
+that will probably be fixed when somebody comes up with a need for it.
+
+
+Flexible array functions
+------------------------
+
+.. kernel-doc:: include/linux/flex_array.h
diff --git a/Documentation/core-api/index.rst b/Documentation/core-api/index.rst
index 0d93d80..2b908ac 100644
--- a/Documentation/core-api/index.rst
+++ b/Documentation/core-api/index.rst
@@ -16,6 +16,7 @@ Core utilities
    cpu_hotplug
    local_ops
    workqueue
+   flexible-arrays
 
 Interfaces for kernel debugging
 ===============================
diff --git a/include/linux/flex_array.h b/include/linux/flex_array.h
index b6efb0c..11366b3 100644
--- a/include/linux/flex_array.h
+++ b/include/linux/flex_array.h
@@ -61,16 +61,83 @@ struct flex_array {
 			FLEX_ARRAY_ELEMENTS_PER_PART(__element_size));	\
 	}
 
+/**
+ * flex_array_alloc() - Creates a flexible array.
+ * @element_size:	individual object size.
+ * @total:		maximum number of objects which can be stored.
+ * @flags:		GFP flags
+ *
+ * Return:		Returns an object of structure flex_array.
+ */
 struct flex_array *flex_array_alloc(int element_size, unsigned int total,
 		gfp_t flags);
+
+/**
+ * flex_array_prealloc() - Ensures that memory for the elements indexed in the
+ * range defined by start and nr_elements has been allocated.
+ * @fa:			array to allocate memory to.
+ * @start:		start address
+ * @nr_elements:	number of elements to be allocated.
+ * @flags:		GFP flags
+ *
+ */
 int flex_array_prealloc(struct flex_array *fa, unsigned int start,
 		unsigned int nr_elements, gfp_t flags);
+
+/**
+ * flex_array_free() - Removes all elements of a flexible array.
+ * @fa:		array to be freed.
+ */
 void flex_array_free(struct flex_array *fa);
+
+/**
+ * flex_array_free_parts() - Removes all elements of a flexible array, but
+ * leaves the array itself in place.
+ * @fa:		array to be emptied.
+ */
 void flex_array_free_parts(struct flex_array *fa);
+
+/**
+ * flex_array_put() - Stores data into a flexible array.
+ * @fa:		array where element is to be stored.
+ * @element_nr:	position to copy, must be less than the maximum specified when
+ *		the array was created.
+ * @src:	data source to be copied into the array.
+ * @flags:	GFP flags
+ *
+ * Return:	Returns zero on success, a negative error code otherwise.
+ */
 int flex_array_put(struct flex_array *fa, unsigned int element_nr, void *src,
 		gfp_t flags);
+
+/**
+ * flex_array_clear() - Clears an individual element in the array, sets the
+ * given element to FLEX_ARRAY_FREE.
+ * @element_nr:	element position to clear.
+ * @fa:		array to which element to be cleared belongs.
+ *
+ * Return:	Returns zero on success, -EINVAL otherwise.
+ */
 int flex_array_clear(struct flex_array *fa, unsigned int element_nr);
+
+/**
+ * flex_array_get() - Retrieves data into a flexible array.
+ *
+ * @element_nr:	Element position to retrieve data from.
+ * @fa:		array from which data is to be retrieved.
+ *
+ * Return:	Returns a pointer to the data element, or NULL if that
+ *		particular element has never been allocated.
+ */
 void *flex_array_get(struct flex_array *fa, unsigned int element_nr);
+
+/**
+ * flex_array_shrink() - Reduces the allocated size of an array.
+ * @fa:		array to shrink.
+ *
+ * Return:	Returns number of pages of memory actually freed.
+ *
+ */
 int flex_array_shrink(struct flex_array *fa);
 
 #define flex_array_put_ptr(fa, nr, src, gfp) \
-- 
2.7.4


