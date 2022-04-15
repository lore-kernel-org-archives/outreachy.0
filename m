Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B5833F4
	for <outreachy@lists.linux.dev>; Fri, 15 Apr 2022 22:49:16 +0000 (UTC)
Received: by mail-ej1-f52.google.com with SMTP id g18so17377631ejc.10
        for <outreachy@lists.linux.dev>; Fri, 15 Apr 2022 15:49:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=TxYSIJusvv1F2X2tb5X/5N97/buqqwn1b/mpmqc30I0=;
        b=THrKNhGGzMeRCARdOnwyDYB5GSPyip4494ePdijpbsvgZ5u6nVJqvkBpDJCVn1YbZ6
         GIORsQ7/OUPP+nAdN4s9T9d7xN24hQP9NPnIMPDDalg5jUcTtPTRF4X/x8qcrcud4YjC
         9upSZN1UGqi4pDFbH69W2iR745ksZPT0G8F7n3SbK+7LQMa0lxDEgddUbZBZ2iWqep4Z
         u62OvhHtdsrKuqYAqjaUMJkzUzKGOONr+aoKIapc3RftK95DIb7i3uZeOLbUTDsnp/5k
         zhE5wDCtf2mK4jcCMiqQ38S5QuG5I7ZfnVbjzAZljr+VzRHpoNx6+Y6z0jwggExchvUe
         Ze7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=TxYSIJusvv1F2X2tb5X/5N97/buqqwn1b/mpmqc30I0=;
        b=B10XSEIjGvApYf4sfSAj7opL4GBxME4oRKdV70bABKVMSybH4Gpw9qMrI5FrNCZISe
         8XBBy8kp5ibFUKkpqrd5IHnh3GYyWmN6InQTEVH1srKK8b+TyH1NxqETWzHRGLQKqkEi
         09sC+TEe1zWLn/2st5hqkdpI1zYd8q4q+9O8OXlsc7FrzyhqjJcna1O487n/eSKzjoZv
         4XJBfVH/cbNxP1yAIiApQ6gfS6LKGMMUu3fMXu/fsV4VhlOn8wOMB+BGoLsQqNsKO+/K
         OwGO9bl+bPRoHfGWYYlDUctptToERa9FHgOORr0gsdvHulbS6Xfxc+W8BDM23nUr6S4X
         QEHA==
X-Gm-Message-State: AOAM531/H5KxYrF7G5ePwisPjc3NvzrpoRSwVwBlNpBT7zEDmpX1BB4k
	AYMUyvsXkGVBkjaRoyVPqmQ=
X-Google-Smtp-Source: ABdhPJx+qhf7nw/9GBqaCZgur93EuMLqBlCr7hJf5f957v7YH5TwS2IYPCggdPEfyRNk2gkhWWCGXw==
X-Received: by 2002:a17:906:6a0b:b0:6e8:d7ba:6648 with SMTP id qw11-20020a1709066a0b00b006e8d7ba6648mr892707ejc.288.1650062954524;
        Fri, 15 Apr 2022 15:49:14 -0700 (PDT)
Received: from localhost.localdomain (host-79-43-11-75.retail.telecomitalia.it. [79.43.11.75])
        by smtp.gmail.com with ESMTPSA id gh9-20020a170906e08900b006e8662287edsm2026409ejb.54.2022.04.15.15.49.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Apr 2022 15:49:13 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Jonathan Corbet <corbet@lwn.net>,
	Andrew Morton <akpm@linux-foundation.org>,
	SeongJae Park <sj@kernel.org>,
	Jiajian Ye <yejiajian2018@email.szu.edu.cn>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ira Weiny <ira.weiny@intel.com>,
	Matthew Wilcox <willy@infradead.org>,
	Peter Zijlstra <peterz@infradead.org>,
	outreachy@lists.linux.dev
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [PATCH v3 2/2] Documentation/vm: Include kernel-doc to highmem.rst
Date: Sat, 16 Apr 2022 00:48:59 +0200
Message-Id: <20220415224859.21060-3-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220415224859.21060-1-fmdefrancesco@gmail.com>
References: <20220415224859.21060-1-fmdefrancesco@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Include kernel-doc comments to highmem.rst from
include/kernel/highmem.h.

From now on, the "Using kmap_atomic" section is redundant and obsolete,
therefore remove it.

Cc: Jonathan Corbet <corbet@lwn.net>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Ira Weiny <ira.weiny@intel.com>
Cc: Matthew Wilcox <willy@infradead.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---
 Documentation/vm/highmem.rst | 41 ++++++------------------------------
 1 file changed, 6 insertions(+), 35 deletions(-)

diff --git a/Documentation/vm/highmem.rst b/Documentation/vm/highmem.rst
index 12dcfbee094d..5dcee6233cd5 100644
--- a/Documentation/vm/highmem.rst
+++ b/Documentation/vm/highmem.rst
@@ -117,41 +117,6 @@ The kernel contains several ways of creating temporary mappings:
   synchronization to unmap.
 
 
-Using kmap_atomic
-=================
-
-When and where to use kmap_atomic() is straightforward.  It is used when code
-wants to access the contents of a page that might be allocated from high memory
-(see __GFP_HIGHMEM), for example a page in the pagecache.  The API has two
-functions, and they can be used in a manner similar to the following::
-
-	/* Find the page of interest. */
-	struct page *page = find_get_page(mapping, offset);
-
-	/* Gain access to the contents of that page. */
-	void *vaddr = kmap_atomic(page);
-
-	/* Do something to the contents of that page. */
-	memset(vaddr, 0, PAGE_SIZE);
-
-	/* Unmap that page. */
-	kunmap_atomic(vaddr);
-
-Note that the kunmap_atomic() call takes the result of the kmap_atomic() call
-not the argument.
-
-If you need to map two pages because you want to copy from one page to
-another you need to keep the kmap_atomic calls strictly nested, like::
-
-	vaddr1 = kmap_atomic(page1);
-	vaddr2 = kmap_atomic(page2);
-
-	memcpy(vaddr1, vaddr2, PAGE_SIZE);
-
-	kunmap_atomic(vaddr2);
-	kunmap_atomic(vaddr1);
-
-
 Cost of Temporary Mappings
 ==========================
 
@@ -190,3 +155,9 @@ The general recommendation is that you don't use more than 8GiB on a 32-bit
 machine - although more might work for you and your workload, you're pretty
 much on your own - don't expect kernel developers to really care much if things
 come apart.
+
+
+Functions
+=========
+
+.. kernel-doc:: include/linux/highmem.h
-- 
2.34.1

