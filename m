Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9CA933F4
	for <outreachy@lists.linux.dev>; Fri, 15 Apr 2022 22:49:12 +0000 (UTC)
Received: by mail-ej1-f49.google.com with SMTP id lc2so17360170ejb.12
        for <outreachy@lists.linux.dev>; Fri, 15 Apr 2022 15:49:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=VQ4t+4unN4Bi2tgZL0pBgqD4ZstJy3iXF/YNfaCg2WI=;
        b=ObV34T+kpcrh6eaaVTGB6Le5M8mZPnyAXPMLvNAPDLpOjddDHjVavhgYMchdM/A8xl
         /+reelLcwuCRJcRTLitN1OgYcQ0FuKVCnOWN6ZrtaEt7Owz2ufoUEq9pEVcqUkwHckcu
         kTwHVcOLglPo1zMomGgPxQ+i1u+bXV7c04CiEUHfSG80RVU+eQDD/iIkgb4AiZZYM/zY
         ly8tmdubUywmqwyQzmysyyxz+oHlINzinstmiP4vya/GSinSqdjwhfxecJiJQXkfoUyF
         GskjOLQYQVn6T3PneuduMctx/nJ7k2ST/jXIKs5+il+Yu6t0BMVZ1t0qbC79ABkmU5Pw
         vcsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=VQ4t+4unN4Bi2tgZL0pBgqD4ZstJy3iXF/YNfaCg2WI=;
        b=Cfqzd503Dr8qgLMz97HYqzuculFw7CONLAOVmXXs4+UPhyEg0soR4Pxa1Rk++Tbz2d
         gQnj/gIPI3VAD4AswXfcv06yoxCjd594lB++iDrDfP6tZxtbgMpCgvTB/L1AA1JERl4z
         pozdCmXFYWDHrR96mJU5CCp+VCJUJ/1rfFaTmfj7QKoIljfBW1XprAy4V5aFfIe6NmF6
         jvEwyvmfS3Nq9puHl/wPJqEnprpSkDXj9AePzt1UuzwcwojXtOJ+hqRoTTfLtAJTMbUf
         0IzTMGuEEsBSqzTau4clpSrjlYnG5Qt6zSlD3F/a8dh+WA4PepkFVGPnGXh1i10ORrtW
         vOSA==
X-Gm-Message-State: AOAM532qLfXLX7D6Mi2v79wFb19SJVUs00US4Wgp/KfW97nealAC3awU
	hfKA067Btsl0Ie6lgx86W+Y=
X-Google-Smtp-Source: ABdhPJxQdpWSKtJ+ObFmcft69mxtjakcULFi7JLrSvy84iWNrfUGvKZAekaEhjGFdI/DjyxKzEnn7A==
X-Received: by 2002:a17:907:868c:b0:6e8:d608:bcc7 with SMTP id qa12-20020a170907868c00b006e8d608bcc7mr894503ejc.148.1650062951135;
        Fri, 15 Apr 2022 15:49:11 -0700 (PDT)
Received: from localhost.localdomain (host-79-43-11-75.retail.telecomitalia.it. [79.43.11.75])
        by smtp.gmail.com with ESMTPSA id gh9-20020a170906e08900b006e8662287edsm2026409ejb.54.2022.04.15.15.49.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Apr 2022 15:49:09 -0700 (PDT)
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
Subject: [PATCH v3 1/2] Documentation/vm: Extend "Temporary Virtual Mappings" section
Date: Sat, 16 Apr 2022 00:48:58 +0200
Message-Id: <20220415224859.21060-2-fmdefrancesco@gmail.com>
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

Extend and rework the "Temporary Virtual Mappings" section of the highmem.rst
documentation.

Do a partial rework of the paragraph related to kmap() and add a new paragraph
in order to document the set of kmap_local_*() functions. Re-order paragraphs
in decreasing order of preference of usage.

Despite the local kmaps were introduced by Thomas Gleixner in October 2020,
documentation was still missing information about them. These additions rely
largely on Gleixner's patches, Jonathan Corbet's LWN articles, comments by
Ira Weiny and Matthew Wilcox, and in-code comments from
./include/linux/highmem.h.

Cc: Jonathan Corbet <corbet@lwn.net>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Ira Weiny <ira.weiny@intel.com>
Cc: Matthew Wilcox <willy@infradead.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---
 Documentation/vm/highmem.rst | 67 ++++++++++++++++++++++++++++++------
 1 file changed, 56 insertions(+), 11 deletions(-)

diff --git a/Documentation/vm/highmem.rst b/Documentation/vm/highmem.rst
index 0f69a9fec34d..12dcfbee094d 100644
--- a/Documentation/vm/highmem.rst
+++ b/Documentation/vm/highmem.rst
@@ -52,24 +52,69 @@ Temporary Virtual Mappings
 
 The kernel contains several ways of creating temporary mappings:
 
-* vmap().  This can be used to make a long duration mapping of multiple
-  physical pages into a contiguous virtual space.  It needs global
-  synchronization to unmap.
-
-* kmap().  This permits a short duration mapping of a single page.  It needs
-  global synchronization, but is amortized somewhat.  It is also prone to
-  deadlocks when using in a nested fashion, and so it is not recommended for
-  new code.
+* kmap_local_*().  These provide a set of functions that are used to require
+  short term mappings. They can be invoked from any context (including
+  interrupts) but the mappings can only be used in the context which acquired
+  it.
+
+  These mappings are per thread, CPU local (i.e., migration from one CPU to
+  another is disabled - this is why they are called "local"), but they don't
+  disable preemption. It's valid to take pagefaults in a local kmap region,
+  unless the context in which the local mapping is acquired does not allow
+  it for other reasons.
+
+  If a task holding local kmaps is preempted, the maps are removed on context
+  switch and restored when the task comes back on the CPU. As the maps are
+  strictly CPU local, it is guaranteed that the task stays on the CPU and
+  that the CPU cannot be unplugged until the local kmaps are released.
+
+  Nesting kmap_local.*() and kmap_atomic.*() mappings is allowed to a certain
+  extent (up to KMAP_TYPE_NR). Nested kmap_local.*() and kunmap_local.*()
+  invocations have to be strictly ordered because the map implementation is
+  stack based.
 
 * kmap_atomic().  This permits a very short duration mapping of a single
   page.  Since the mapping is restricted to the CPU that issued it, it
   performs well, but the issuing task is therefore required to stay on that
   CPU until it has finished, lest some other task displace its mappings.
 
-  kmap_atomic() may also be used by interrupt contexts, since it is does not
-  sleep and the caller may not sleep until after kunmap_atomic() is called.
+  kmap_atomic() may also be used by interrupt contexts, since it does not
+  sleep and the caller too can not sleep until after kunmap_atomic() is called.
+  Each call of kmap_atomic() in the kernel creates a non-preemptible section and
+  disable pagefaults.
+
+  This could be a source of unwanted latency, so it should be only used if it is
+  absolutely required, otherwise the corresponding kmap_local_*() variant should
+  be used if it is feasible.
+
+  On 64-bit systems, calls to kmap() and kmap_atomic() have no real work to do
+  because a 64-bit address space is more than sufficient to address all the
+  physical memory, so all of physical memory appears in the direct mapping.
+
+  It is assumed that k[un]map_atomic() won't fail.
 
-  It may be assumed that k[un]map_atomic() won't fail.
+* kmap().  This should be used to make short duration mapping of a single
+  page with no restrictions on preemption or migration. It comes with an
+  overhead as mapping space is restricted and protected by a global lock
+  for synchronization. When mapping is no more needed, the address that
+  the page was mapped to must be released with kunmap().
+
+  Mapping changes must be propagated across all the CPUs. kmap() also
+  requires global TLB invalidation when the kmap's pool wraps and it might
+  block when the mapping space is fully utilized until a slot becomes
+  available. Therefore, kmap() is only callable from preemptible context.
+
+  All the above work is necessary if a mapping must last for a relatively
+  long time but the bulk of high-memory mappings in the kernel are
+  short-lived and only used in one place. This means that the cost of
+  kmap() is mostly wasted in such cases. kmap() was not intended for long
+  term mappings but it has morphed in that direction and its use is
+  strongly discouraged in newer code and the set of the preceding functions
+  should be preferred.
+
+* vmap().  This can be used to make a long duration mapping of multiple
+  physical pages into a contiguous virtual space.  It needs global
+  synchronization to unmap.
 
 
 Using kmap_atomic
-- 
2.34.1

