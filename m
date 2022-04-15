Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82EBF33F4
	for <outreachy@lists.linux.dev>; Fri, 15 Apr 2022 23:19:31 +0000 (UTC)
Received: by mail-ed1-f43.google.com with SMTP id t25so11373855edt.9
        for <outreachy@lists.linux.dev>; Fri, 15 Apr 2022 16:19:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=TxYSIJusvv1F2X2tb5X/5N97/buqqwn1b/mpmqc30I0=;
        b=ddtQL3OFQQXj8wvKhOGcfms57oABnX9kA2Qy81w1VMmTUR8zE6KNq8ZDTnwQEoPiJI
         rV3myVF4YxEcoRlTbEacWSqydm6P5xwWAWCofYcfhLX+TnyGK0gALOKHlucJ3p9D5Pju
         z6uxfa1Z2OqpCJvOuxt66CHNjcZSQq9Bq2pix5BdL6XbKr5ax2DMgAXOfghCeKuFRtvR
         5ghANU/Uf/W6OplZ60G0j+1P1OVjzKq8MzGSljm/NNOwj0tcbWAlvDgS4GqvHqVW0tYW
         JtBGZ/4SyoTgQtsMTkwg8d+UZV6UGFudU+RpBXiQgMQt8zTsZGZ9noLrWppc/zRqpBpO
         7NZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=TxYSIJusvv1F2X2tb5X/5N97/buqqwn1b/mpmqc30I0=;
        b=rPoWbXleneK0jiWjFn1DWCnwjsP+skVxw0iP7wgxY0GvjQTdM9XqnJSOzTBMpw3DG2
         x504morYfxeYu8K6Q0PUHC7+sr5j17WLIGZybeeOooigRvd8lKMhkB0rLBgAzX3Ep+10
         kx4kPg8V1OHPI46nqPx2EpdEj6PJbEixxKyy0vRkxDPF4ijagCcLtznGdeQGowOmWHx2
         sFwB/qdiCrSPy/0GapYvtL99TbfDOlnnXnBet0mxw/gkuGI2buPAfnj0SunClnXVX0vd
         GrdLinVOrgI5Dt1piIH2Tjsj1IE8XmNS8qzMsNewcpBQGtdbQ3G85KWpOwsfjDhP+8fo
         vfaw==
X-Gm-Message-State: AOAM531c6jxOIGaJyLD0ED+Gf36PreS9B2kz4VJ3huHDDj13oHuMIVD6
	UIg0zdXt+eYwSANnaJ9QT9I=
X-Google-Smtp-Source: ABdhPJybk84Df2haJHZe2URBNZPyeHAPYgkYJQzuipWurrPPEAiLg/7+KNinE2Xp7rACwHfN0rDnyg==
X-Received: by 2002:a05:6402:2309:b0:41f:a5a9:fe13 with SMTP id l9-20020a056402230900b0041fa5a9fe13mr1331840eda.123.1650064769863;
        Fri, 15 Apr 2022 16:19:29 -0700 (PDT)
Received: from localhost.localdomain (host-79-43-11-75.retail.telecomitalia.it. [79.43.11.75])
        by smtp.gmail.com with ESMTPSA id o15-20020a50fd8f000000b0041f95b8a90dsm3203394edt.69.2022.04.15.16.19.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Apr 2022 16:19:28 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Jonathan Corbet <corbet@lwn.net>,
	Andrew Morton <akpm@linux-foundation.org>,
	SeongJae Park <sj@kernel.org>,
	Jiajian Ye <yejiajian2018@email.szu.edu.cn>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ira Weiny <ira.weiny@intel.com>,
	Matthew Wilcox <willy@infradead.org>,
	Peter Zijlstra <peterz@infradead.org>,
	outreachy@lists.linux.dev,
	linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [PATCH v3 2/2] Documentation/vm: Include kernel-doc to highmem.rst
Date: Sat, 16 Apr 2022 01:19:17 +0200
Message-Id: <20220415231917.25962-3-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220415231917.25962-1-fmdefrancesco@gmail.com>
References: <20220415231917.25962-1-fmdefrancesco@gmail.com>
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

