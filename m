Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F00322562
	for <outreachy@lists.linux.dev>; Mon, 25 Apr 2022 16:24:08 +0000 (UTC)
Received: by mail-ed1-f43.google.com with SMTP id a1so13428101edt.3
        for <outreachy@lists.linux.dev>; Mon, 25 Apr 2022 09:24:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=uCI5XJJQhEl0Rvu0MUBKvOSHqWoc72nC9Ng5croQe20=;
        b=GWM426VVKttgpvPwF1MZmSeP7wVjoc6F9U6TxK5zuzh3hInFVLrofTmC7gs/A7wkDz
         akCLKZ9mSDwVs/qqYEpiliNdmn5eLZ24eIB+ePTBkhb/b4t+eqt//hHwAM3WHbJTKS9G
         QLrx2eqH/x9j3iK4IqURkQcuDYamABjO78otOx6tH45RFL55Q1WSHNdDMviZxxXfTDC4
         5haJedFtVLO9df98juFNJ3wkeNw6QjLBevlU4Y9OiyjMs/8xCuVJCC9banu7y21ZKaFx
         TBCC7MTlEAN3EMTsnHKcH9DUin/wRfYJsZNagW3S1E7bW78/z8R1bOYHRr9xxuNMsH1c
         L07w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=uCI5XJJQhEl0Rvu0MUBKvOSHqWoc72nC9Ng5croQe20=;
        b=otnUh1ZyGm5q1y0Is0qzRqShg0Y731oYIX2V4YOTWrA+ApRopAZzHKPpoWk4UvQ002
         yXiope4A0Zo1R/MypaOYB/lvLrJ8aPTsDrDSSe8yeK75a3hmgiDwOH95xtNV9xD0LyON
         ruhSSV6X+0pvSAjNk1matUYEtoNoV4HuUdUZAcjUazF0Fmowx2gmYi3PYSaDldFBOZSO
         oZo6pcN+pTZLaQPX3eXqm35xd9numURvRg7EkPdqCOx9lnmX2QkXlUKX84QZP/bVFd9W
         qXjXVkWjyDlUSxQN/SDvURlCbVYm4i16zM4LeR9ndclsuSPTugE1A2bxXht/fi+vncG/
         rc5g==
X-Gm-Message-State: AOAM530Up7B2iE6SySLEucjqpEukVnHSCTLJnuzpZBsCRzEzapzbmgnB
	3/7Aha2gC16AFgdc8q0uoGU=
X-Google-Smtp-Source: ABdhPJwQbgy60NHrcrLBuAejcY/4n0Ir6e8Pjhj1ueo4kxtfr5zsTKcRDPd8DUgRRQwPwMqZpgP9oQ==
X-Received: by 2002:aa7:d5c5:0:b0:425:b144:ab84 with SMTP id d5-20020aa7d5c5000000b00425b144ab84mr19906210eds.200.1650903847284;
        Mon, 25 Apr 2022 09:24:07 -0700 (PDT)
Received: from localhost.localdomain (host-79-50-86-254.retail.telecomitalia.it. [79.50.86.254])
        by smtp.gmail.com with ESMTPSA id s12-20020a1709062ecc00b006e8558c9a5csm3784122eji.94.2022.04.25.09.24.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Apr 2022 09:24:05 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Ira Weiny <ira.weiny@intel.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	"Matthew Wilcox (Oracle)" <willy@infradead.org>,
	Will Deacon <will@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	Vlastimil Babka <vbabka@suse.cz>,
	Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
	linux-kernel@vger.kernel.org,
	Jonathan Corbet <corbet@lwn.net>,
	linux-doc@vger.kernel.org,
	outreachy@lists.linux.dev
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>,
	"Acked-by : Mike Rapoport" <rppt@linux.ibm.com>
Subject: [PATCH v2 1/4] mm/highmem: Fix kernel-doc warnings in highmem*.h
Date: Mon, 25 Apr 2022 18:23:57 +0200
Message-Id: <20220425162400.11334-2-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220425162400.11334-1-fmdefrancesco@gmail.com>
References: <20220425162400.11334-1-fmdefrancesco@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

`scripts/kernel-doc -v -none include/linux/highmem*` reports the following
warnings:

include/linux/highmem.h:160: warning: expecting prototype for kunmap_atomic(). Prototype was for nr_free_highpages() instead
include/linux/highmem.h:204: warning: No description found for return value of 'alloc_zeroed_user_highpage_movable'
include/linux/highmem-internal.h:256: warning: Function parameter or member '__addr' not described in 'kunmap_atomic'
include/linux/highmem-internal.h:256: warning: Excess function parameter 'addr' description in 'kunmap_atomic'

Fix these warnings by (1) moving the kernel-doc comments from highmem.h to
highmem-internal.h (which is the file were the kunmap_atomic() macro is
actually defined), (2) extending and merging it with the comment which was
already in highmem-internal.h, and (3) using correct parameter names.

Cc: Matthew Wilcox <willy@infradead.org>
Cc: Acked-by: Mike Rapoport <rppt@linux.ibm.com>
Cc: Reviewed-by: Ira Weiny <ira.weiny@intel.com>
Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---
 include/linux/highmem-internal.h | 14 +++++++++++---
 include/linux/highmem.h          | 15 +++------------
 2 files changed, 14 insertions(+), 15 deletions(-)

diff --git a/include/linux/highmem-internal.h b/include/linux/highmem-internal.h
index a77be5630209..aa22daeed617 100644
--- a/include/linux/highmem-internal.h
+++ b/include/linux/highmem-internal.h
@@ -236,9 +236,17 @@ static inline unsigned long totalhigh_pages(void) { return 0UL; }
 
 #endif /* CONFIG_HIGHMEM */
 
-/*
- * Prevent people trying to call kunmap_atomic() as if it were kunmap()
- * kunmap_atomic() should get the return value of kmap_atomic, not the page.
+/**
+ * kunmap_atomic - Unmap the virtual address mapped by kmap_atomic()
+ * @__addr:       Virtual address to be unmapped
+ *
+ * Unmaps an address previously mapped by kmap_atomic() and re-enables
+ * pagefaults and preemption. Mappings should be unmapped in the reverse
+ * order that they were mapped. See kmap_local_page() for details.
+ * @__addr can be any address within the mapped page, so there is no need
+ * to subtract any offset that has been added. In contrast to kunmap(),
+ * this function takes the address returned from kmap_atomic(), not the
+ * page passed to it. The compiler will warn you if you pass the page.
  */
 #define kunmap_atomic(__addr)					\
 do {								\
diff --git a/include/linux/highmem.h b/include/linux/highmem.h
index 39bb9b47fa9c..3456dc1d38db 100644
--- a/include/linux/highmem.h
+++ b/include/linux/highmem.h
@@ -37,7 +37,7 @@ static inline void *kmap(struct page *page);
 
 /**
  * kunmap - Unmap the virtual address mapped by kmap()
- * @addr:	Virtual address to be unmapped
+ * @page:	Pointer to the page which was mapped by kmap()
  *
  * Counterpart to kmap(). A NOOP for CONFIG_HIGHMEM=n and for mappings of
  * pages in the low memory area.
@@ -145,17 +145,6 @@ static inline void *kmap_local_folio(struct folio *folio, size_t offset);
  */
 static inline void *kmap_atomic(struct page *page);
 
-/**
- * kunmap_atomic - Unmap the virtual address mapped by kmap_atomic()
- * @addr:	Virtual address to be unmapped
- *
- * Counterpart to kmap_atomic().
- *
- * Effectively a wrapper around kunmap_local() which additionally undoes
- * the side effects of kmap_atomic(), i.e. reenabling pagefaults and
- * preemption.
- */
-
 /* Highmem related interfaces for management code */
 static inline unsigned int nr_free_highpages(void);
 static inline unsigned long totalhigh_pages(void);
@@ -191,6 +180,8 @@ static inline void clear_user_highpage(struct page *page, unsigned long vaddr)
  * @vma: The VMA the page is to be allocated for
  * @vaddr: The virtual address the page will be inserted into
  *
+ * Returns: The allocated and zeroed HIGHMEM page
+ *
  * This function will allocate a page for a VMA that the caller knows will
  * be able to migrate in the future using move_pages() or reclaimed
  *
-- 
2.34.1

