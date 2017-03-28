X-GM-THRID: 6402671850043736064
X-Received: by 10.99.39.6 with SMTP id n6mr9722999pgn.98.1490738207551;
        Tue, 28 Mar 2017 14:56:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.19.61 with SMTP id f58ls17639736ote.36.gmail; Tue, 28 Mar
 2017 14:56:47 -0700 (PDT)
X-Received: by 10.129.168.202 with SMTP id f193mr10810657ywh.88.1490738207134;
        Tue, 28 Mar 2017 14:56:47 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id n127si487035ita.3.2017.03.28.14.56.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Mar 2017 14:56:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id o123so21558960pga.1
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Mar 2017 14:56:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=03QMN65mYqxyLZC1Ua5k+stUNLjBtq2xLRDJriPY2Uk=;
        b=PEv/CDmC1zK5KkOZYkVSxaLuRzz14Q4Fvb0fMFUDD+amAbmpHQlBdeJs2EX0ZqP0x9
         NGWw4+fcfEh/K4rqq4S02m43ppI1mJydfnJO19VAzMnONovEXOx1UuovtTlKFeb3Oztw
         hKRz9AZQJd8nfTUiRoQS/BAOyE3sx8B3tSYZwaX9IRmjHAiPEixsMmEQISpv3NCf93JE
         XwevsgtiB0qXpGgLGgVEAZ0TxzePq87muBmsUsN4jRLMTT0qCjG4tXQFMJxV7Rv2kx9R
         R9Jjrvb8PDndvOV2ryMcZX3+7rkHiY3Vl+vqCZGUW1M0TvF2F5dx01D3tgR0eu04QENn
         DLpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=03QMN65mYqxyLZC1Ua5k+stUNLjBtq2xLRDJriPY2Uk=;
        b=GMzWAyX+6mBWHutF9/0nWLsr9i7hSStszIIcGujkh6rA30wQ1ze8JTparuhfhHcqyC
         j3jBRP2BWPuMcVSZYTc8lJqsrjmOlcTEHmkRI7OW/uhfOAuKFzZRaDqBxINxqxz4DucM
         j80yV+kLOvSiYvCfydq8LI42SuAOaHRe8QbnCXTNgquOPxz+gl6D1fkGi4ElZeexQgV4
         EChvnzV+Wi1dI9BW+t5ZFEBB0ZeH00bXvGqBuLNhjMZY0sjM4NbYEi1lkhpAw7zaSggS
         n9IySXXySyQ9D71DvzuVT2DiFf/u68fIXBTUSbMpJBN1LQd5dZTF8i/Nz9etYhbPdpEW
         1D4w==
X-Gm-Message-State: AFeK/H1NeeMYVkFZkzMo/nmlSg56MeBw5MNNUB89luY0SI9cdEZxS1FXq7UOeI9/pRcZ6A==
X-Received: by 10.84.233.136 with SMTP id l8mr22472648plk.21.1490738206535;
        Tue, 28 Mar 2017 14:56:46 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([2402:8100:3800:13b3:b543:1a3:82ce:dade])
        by smtp.gmail.com with ESMTPSA id g29sm9254503pfg.37.2017.03.28.14.56.40
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Mar 2017 14:56:45 -0700 (PDT)
Date: Wed, 29 Mar 2017 03:26:26 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Jonathan Corbet <corbet@lwn.net>
Subject: [PATCH] Documentation: Add flexible-arrays.rst to the documentation
 tree
Message-ID: <20170328215458.GA9976@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Add flexible-arrays.rst to Documentation/core-api. Add kernel-doc
comments to allow referencing.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 Documentation/core-api/flexible-arrays.rst | 134 +++++++++++++++++++++++++++++
 Documentation/core-api/index.rst           |   1 +
 include/linux/flex_array.h                 |  66 ++++++++++++++
 3 files changed, 201 insertions(+)
 create mode 100644 Documentation/core-api/flexible-arrays.rst

diff --git a/Documentation/core-api/flexible-arrays.rst b/Documentation/core-api/flexible-arrays.rst
new file mode 100644
index 0000000..ddce04f
--- /dev/null
+++ b/Documentation/core-api/flexible-arrays.rst
@@ -0,0 +1,134 @@
+.. Flexible Array documentation master file, created by
+   sphinx-quickstart on Sat Mar 18 02:03:03 2017.
+   You can adapt this file completely to your liking, but it should at least
+   contain the root `toctree` directive.
+
+===================================
+Using flexible arrays in the kernel
+===================================
+
+Last updated for 2.6.32
+Jonathan Corbet <corbet@lwn.net>
+
+Large contiguous memory allocations can be unreliable in the Linux kernel.
+Kernel programmers will sometimes respond to this problem by allocating
+pages with ``vmalloc()``.  This solution not ideal, though.  On 32-bit systems,
+memory from vmalloc() must be mapped into a relatively small address space;
+it's easy to run out.  On SMP systems, the page table changes required by
+vmalloc() allocations can require expensive cross-processor interrupts on
+all CPUs.  And, on all systems, use of space in the vmalloc() range
+increases pressure on the translation lookaside buffer (TLB), reducing the
+performance of the system.
+
+In many cases, the need for memory from vmalloc() can be eliminated by
+piecing together an array from smaller parts; the flexible array library
+exists to make this task easier.
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
+The creation of a flexible array is done with :c:func:`flex_array_alloc`::
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
+Storing data into a flexible array is accomplished with a call to :c:func:`flex_array_put`::
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
+entering atomic context, using :c:func:`flex_array_prealloc`::
+
+    int flex_array_prealloc(struct flex_array *array, unsigned int start,
+			    unsigned int nr_elements, gfp_t flags);
+
+This function will ensure that memory for the elements indexed in the range
+defined by ``start`` and ``nr_elements`` has been allocated.  Thereafter, a
+``flex_array_put()`` call on an element in that range is guaranteed not to
+block.
+
+Getting data back out of the array is done with :c:func:`flex_array_get`::
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
+Individual elements in the array can be cleared with :c:func:`flex_array_clear`::
+
+    int flex_array_clear(struct flex_array *array, unsigned int element_nr);
+
+This function will set the given element to ``FLEX_ARRAY_FREE`` and return
+zero.  If storage for the indicated element is not allocated for the array,
+``flex_array_clear()`` will return ``-EINVAL`` instead.  Note that clearing an
+element does not release the storage associated with it; to reduce the
+allocated size of an array, call :c:func:`flex_array_shrink`::
+
+    int flex_array_shrink(struct flex_array *array);
+
+The return value will be the number of pages of memory actually freed.
+This function works by scanning the array for pages containing nothing but
+``FLEX_ARRAY_FREE`` bytes, so (1) it can be expensive, and (2) it will not work
+if the array's pages are allocated with ``__GFP_ZERO``.
+
+It is possible to remove all elements of an array with a call to :c:func:`flex_array_free_parts`::
+
+    void flex_array_free_parts(struct flex_array *array);
+
+This call frees all elements, but leaves the array itself in place.
+Freeing the entire array is done with :c:func:`flex_array_free`::
+
+    void flex_array_free(struct flex_array *array);
+
+As of this writing, there are no users of flexible arrays in the mainline
+kernel.  The functions described here are also not exported to modules;
+that will probably be fixed when somebody comes up with a need for it.
+
+
+Flexible-arrays functions
+-------------------------
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
index b6efb0c..1603503 100644
--- a/include/linux/flex_array.h
+++ b/include/linux/flex_array.h
@@ -61,16 +61,82 @@ struct flex_array {
 			FLEX_ARRAY_ELEMENTS_PER_PART(__element_size));	\
 	}
 
+/**
+ * flex_array_alloc() - Creates a flexible array
+ * @element_size:	individual object size.
+ * @total:	maximum number of objects which can be stored.
+ * @flags:	passed directly to the internal memory allocation calls
+ *
+ * Return:	Returns an object of structure flex_array
+ */
 struct flex_array *flex_array_alloc(int element_size, unsigned int total,
 		gfp_t flags);
+
+/**
+ * flex_array_prealloc() - Ensures that memory for the elements indexed in the
+ * range defined by start and nr_elements has been allocated.
+ * @fa:		array to be freed
+ * @start:	start address
+ * @nr_elements:number of elements to be allocated
+ * @flags:	passed directly to the internal memory allocation calls
+ */
 int flex_array_prealloc(struct flex_array *fa, unsigned int start,
 		unsigned int nr_elements, gfp_t flags);
+
+/**
+ * flex_array_free() - Removes all elements of a flexible array
+ * @fa:		array to be freed
+ */
 void flex_array_free(struct flex_array *fa);
+
+/**
+ * flex_array_free_parts() - Removes all elements of a flexible array, but
+ * leaves the array itself in place
+ * @fa:		array to be freed
+ */
 void flex_array_free_parts(struct flex_array *fa);
+
+/**
+ * flex_array_put() - Stores data into a flexible array
+ * @fa:		array to be freed
+ * @element_nr:	position to copy, must be less than the maximum specified when
+ *		the array was created
+ * @src:	data source to be copied into the array
+ * @flags:	passed directly to the internal memory allocation calls
+ *
+ * Return:	Returns zero on success, a negative error code otherwise.
+ */
 int flex_array_put(struct flex_array *fa, unsigned int element_nr, void *src,
 		gfp_t flags);
+
+/**
+ * flex_array_clear() - Clears individual elements in the array, sets the given
+ * element to FLEX_ARRAY_FREE
+ * @element_nr:	element position to clear
+ * @fa:		array to be freed
+ *
+ * Return:	Returns zero on success, -EINVAL otherwise.
+ */
 int flex_array_clear(struct flex_array *fa, unsigned int element_nr);
+
+/**
+ * flex_array_get() - Retreives data into a flexible array
+ * @element_nr:	position to copy, must be less than the maximum specified when
+ *		the array was created
+ * @fa:		array to be freed
+ *
+ * Return:	Returns a pointer to the data element, or NULL if that
+ *		particular element has never been allocated.
+ */
 void *flex_array_get(struct flex_array *fa, unsigned int element_nr);
+
+/**
+ * flex_array_shrink() - Reduces the allocated size of an array
+ * @fa:		array to be freed
+ *
+ * Return:	Returns number of pages of memory actually freed
+ *
+ */
 int flex_array_shrink(struct flex_array *fa);
 
 #define flex_array_put_ptr(fa, nr, src, gfp) \
-- 
2.7.4


