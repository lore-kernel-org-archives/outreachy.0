Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77A8E7A
	for <outreachy@lists.linux.dev>; Mon, 18 Apr 2022 07:53:12 +0000 (UTC)
Received: by mail-ed1-f51.google.com with SMTP id c64so16633980edf.11
        for <outreachy@lists.linux.dev>; Mon, 18 Apr 2022 00:53:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=X3nZpZoTm/4GzQl9vlLPVEuRqbmxcJd/wkxQHsqfN9A=;
        b=VbaTu+nLoCyCEqc5gpJL1pubsBRB3q2MCQfmRvnBUZo1DP+9EcjETfF5BrLqKxwOQo
         aXN6XzmK+DeBGA2i1JL4RdbT6nCvUrWvgLy7pr4vSjTp3pigSTNuo58UCljjejQ5fW+f
         eNPpj495FnkekAfXet0DzJEogD16CjfdAQUVKskEdWSVl++eDyFZCnCLnPQp08v7A9QF
         ws7Stx7TwosxNL1CsF/KT+9TzHN9lyANULBae7R1IkaczFxfBZ+163un8cU4CfCfoWnt
         Mf0FEyGmWi7V6swvDta4oOkt3qMj/13fCYEemjjwB3/WT0xcao5raWnIRmpbDeuF3RoW
         +wCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=X3nZpZoTm/4GzQl9vlLPVEuRqbmxcJd/wkxQHsqfN9A=;
        b=vxg6BjlYMcHn9dtbvmW0zXa6ra0M4QhYXbg4WJ4jUjEUXgg9H7ZVgMLK6loDjEqWJ6
         PdttP9DtTyMrY5MGQss+gFRdj6tK/6eaPRN8twnScdpkoTA8NwsyFWqkj3hc7KuKncII
         d+O3oRWMyQMWVrUGFvAvoKKacIQgwBQt3uLxfcaqtWYpoVqbQNurjWLYv8mlHcj7/tvc
         RBNNbpmi1sV063IU5r9pCIA9GqjfjjG6SZI+v0fud2HYpSjSrPQ6BvlNKJJBpbFkD3j4
         OEG70h6gW9hx2bU7OwpszpA8dBqmbFkmSQsZuKFCrIIbVDMLZcjB+XgGoGet7qYKhi2s
         nV4Q==
X-Gm-Message-State: AOAM532A3+mG2nT7w35CG4UeU0M8fXF0GVzQ8UwcRhzPCPmfY5zoo1oQ
	s4ILDh9lwufLqt0CXkxVU04=
X-Google-Smtp-Source: ABdhPJwrBbSYw5Sen0RcqaytjovQapyz1OJ0kWnbr6Nw1R5G0LDiWLDvT5g6vUQ4u8CZpiE2m/qHSQ==
X-Received: by 2002:a05:6402:2554:b0:423:f3e3:81da with SMTP id l20-20020a056402255400b00423f3e381damr529850edb.87.1650268390524;
        Mon, 18 Apr 2022 00:53:10 -0700 (PDT)
Received: from localhost.localdomain (host-79-50-86-254.retail.telecomitalia.it. [79.50.86.254])
        by smtp.gmail.com with ESMTPSA id q22-20020a170906771600b006cf8a37ebf5sm4339932ejm.103.2022.04.18.00.53.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Apr 2022 00:53:09 -0700 (PDT)
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
	outreachy@lists.linux.dev
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [PATCH] mm/highmem: Fix kernel-doc warnings in highmem*.h
Date: Mon, 18 Apr 2022 09:53:04 +0200
Message-Id: <20220418075304.20259-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

`scripts/kernel-doc -none include/linux/highmem*` reports the following
warnings:

include/linux/highmem.h:160: warning: expecting prototype for kunmap_atomic(). Prototype was for nr_free_highpages() instead
include/linux/highmem-internal.h:256: warning: Function parameter or member '__addr' not described in 'kunmap_atomic'
include/linux/highmem-internal.h:256: warning: Excess function parameter 'addr' description in 'kunmap_atomic'

Fix these warnings by (1) move the kernel-doc comments from highmem.h to
highmem-internal.h (which is the file were the kunmap_atomic() macro is
actually defined), merge it with the comment which already was in
highmem-internal.h, and (3) replace "@addr" with "@__addr".

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---
 include/linux/highmem-internal.h | 14 +++++++++++---
 include/linux/highmem.h          | 13 +------------
 2 files changed, 12 insertions(+), 15 deletions(-)

diff --git a/include/linux/highmem-internal.h b/include/linux/highmem-internal.h
index a77be5630209..7307de391288 100644
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
+ * Counterpart to kmap_atomic().
+ *
+ * Effectively a wrapper around kunmap_local() which additionally undoes
+ * the side effects of kmap_atomic(), i.e. reenabling pagefaults and
+ * preemption. Prevent people trying to call kunmap_atomic() as if it
+ * were kunmap() because kunmap_atomic() should get the return value of
+ * kmap_atomic(), not its argument which is a pointer to struct page.
  */
 #define kunmap_atomic(__addr)					\
 do {								\
diff --git a/include/linux/highmem.h b/include/linux/highmem.h
index 39bb9b47fa9c..0a7a89721e5d 100644
--- a/include/linux/highmem.h
+++ b/include/linux/highmem.h
@@ -37,7 +37,7 @@ static inline void *kmap(struct page *page);
 
 /**
  * kunmap - Unmap the virtual address mapped by kmap()
- * @addr:	Virtual address to be unmapped
+ * @page:	Virtual address to be unmapped
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
-- 
2.34.1

