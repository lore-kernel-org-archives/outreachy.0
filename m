Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 985771FCD
	for <outreachy@lists.linux.dev>; Thu, 21 Apr 2022 18:02:18 +0000 (UTC)
Received: by mail-ej1-f52.google.com with SMTP id u15so11560468ejf.11
        for <outreachy@lists.linux.dev>; Thu, 21 Apr 2022 11:02:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=HmA3/73h+5LBB10zHGxV017fuflOUeGcPLWTr+e8zPI=;
        b=JxFESrRIt2UUIpYO6BpQfEJYWlNMou98BAoenYcLTFq13O/N0HaMuWE+53AANrJ25l
         LMMa2E3ZxlxPBTKAfe+XpPseTVvRPRdjFVHhnW/nH0D9hx67ybP4rvw+XlibU2dQWbFZ
         ayNEFeXq6fHAMPA3QMg69+E2zXekkq9IEr30pEYCXzzsixokcuZ6HYQmZSmDH6W/S/Qt
         vEeqwPYsNebnjtzu4hNBhLcSf4WOyNooXZbKRuDX6Ay6Xgf9RTgqpARssMLY1gZkyiWc
         zsjBqoZ9Hb6bb728U6ak+GmynyJ/os/7ElTN04K0x50f3qc02Piu5U4giQXd7FAr1O3S
         T0dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=HmA3/73h+5LBB10zHGxV017fuflOUeGcPLWTr+e8zPI=;
        b=HbbvNDmLwmjVYqFMb3OjBwLU+I5hYLfUIJ3KMVPmRK5USswJHqgm3N2nmY2oCelDTT
         K8aFfDqSsCg/T1xscJ34P4gWRxmelJhguPAljcjyvDBx93huumPC+CkMThyMtbQS29/g
         fg81wGQR3ZYPYuEK8eUvqPMGFxHuM53spVlxjyp7AQA1VTN4XW9hS5DNnIHOjl1/62m1
         6eO+DsJhN0hw6QSQA3CDSsiVJHsa64CkXdrMjWCeiPD1nzXcM4LJ//lkRQQR2WaLx46W
         c7Wyayo5o2Whx/1WGYAXT7/48uQUTsCaAwIvioyDDbGxg0nEVnomMNowjT02nDZcZN0D
         AF1w==
X-Gm-Message-State: AOAM531YlTUy2rk6wwxq1RMdBYyyaLrBm203d1dbRhodsiLnp68P0e+Y
	BNQOo2lwlK9FjYVmelFlr58=
X-Google-Smtp-Source: ABdhPJyq9h4yAAyEQ3sVOf5aNXfL6p5Uwg640htvov7CuE7VFCMkHwZOIAe5oGdZuEAGRac218rGag==
X-Received: by 2002:a17:907:3da8:b0:6ef:f3e8:2989 with SMTP id he40-20020a1709073da800b006eff3e82989mr637575ejc.29.1650564136966;
        Thu, 21 Apr 2022 11:02:16 -0700 (PDT)
Received: from localhost.localdomain (host-79-50-86-254.retail.telecomitalia.it. [79.50.86.254])
        by smtp.gmail.com with ESMTPSA id l17-20020a056402231100b0041d98ed7ad8sm11836204eda.46.2022.04.21.11.02.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Apr 2022 11:02:15 -0700 (PDT)
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
	Thomas Gleixner <tglx@linutronix.de>,
	Peter Zijlstra <peterz@infradead.org>
Subject: [PATCH 3/4] Documentation/vm: Remove "Using kmap-atomic" from highmem.rst.
Date: Thu, 21 Apr 2022 20:01:59 +0200
Message-Id: <20220421180200.16901-4-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220421180200.16901-1-fmdefrancesco@gmail.com>
References: <20220421180200.16901-1-fmdefrancesco@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The use of kmap_atomic() is deprecated in favor of kmap_local_page(). For
this reason the "Using kmap_atomic" section in highmem.rst is obsolete and
unnecessary.

Therefore, just remove it.

Cc: Jonathan Corbet <corbet@lwn.net>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Ira Weiny <ira.weiny@intel.com>
Cc: Matthew Wilcox <willy@infradead.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---
 Documentation/vm/highmem.rst | 35 -----------------------------------
 1 file changed, 35 deletions(-)

diff --git a/Documentation/vm/highmem.rst b/Documentation/vm/highmem.rst
index ccff08a8211d..e05bf5524174 100644
--- a/Documentation/vm/highmem.rst
+++ b/Documentation/vm/highmem.rst
@@ -72,41 +72,6 @@ The kernel contains several ways of creating temporary mappings:
   It may be assumed that k[un]map_atomic() won't fail.
 
 
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
 
-- 
2.34.1

