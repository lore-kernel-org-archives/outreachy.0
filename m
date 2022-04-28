Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A15C138F
	for <outreachy@lists.linux.dev>; Thu, 28 Apr 2022 21:25:12 +0000 (UTC)
Received: by mail-ej1-f47.google.com with SMTP id dk23so11997300ejb.8
        for <outreachy@lists.linux.dev>; Thu, 28 Apr 2022 14:25:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fjmeDt2yw6BAdExaQDbjjx+V1POVPHBtHKYVuj5eu/o=;
        b=fLf+kEKk/G/GbMbYZt5wF/ids93UzRAoHIG3B8YA55Md415wTMhZ6buJEJhzPp0jxi
         f0LRl8xXnGjdUk8Aw5DEwshaBSBlzTyUKtcYV/vLXcbUwmw4pe/yL7gqFLGaj9k0Svj7
         aLVphwY9a3V5/uhYl7a3OK0sc6CESzGHv/NiO4PtDASQuwQsnoTrHEiKMmj1bgptSYzl
         csr9DtT3WX7QefU+tdAt2zbdWuldi0i0wk5pF7WvzQf0pW+EEOguwnAMXyxIQtO24kyc
         mr7TsLofN2Bih8+HBzWmyoiDG+Je+T5T7VkbJXFQLXy1EmQwiBrHEHNWba/qJ09ETWn/
         X9Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fjmeDt2yw6BAdExaQDbjjx+V1POVPHBtHKYVuj5eu/o=;
        b=j8ViO3u7EN13qpLhVuW4UnljqxeHqj5mTbq19FZLkn39wDXKYH5qJ+xM3UNLx754ol
         dPhRI+S59WnF7v9zKGEtGUP+dTlnSsPS/v4WewWk8kTEOux18EiO7ZkwqosLLdlwARPm
         +Cl+G00+aGj/9zP7Z2jyQual1hRVwYJbTMAkty+4EU2xcvI41+HCyHpwtOm5W59BM4sk
         bOFD6PvBaSm0kPPLhL76AhDsQJ2UMw3YhUSWLh83xld7NT88eW6WTrYt4PadIRQqhuhI
         tOl2g+/4bk4YO72wYzOMctJxYGFriWOkmmWVAR2UVzDXaJJG2pdHtbKlDej67rjSoIa8
         2qNw==
X-Gm-Message-State: AOAM5309FnvzERPBYm02SXxIY79YaXxW4F+owAB52XB3tJBg/NKVM8tM
	lMmo/MocrXWEBNIrws/BJYc=
X-Google-Smtp-Source: ABdhPJyyyU/1nD7V6tY3Q4ZxnhlHdzsy3gzHd8vbn02vQxaSojptW962SPkdAPYR5crxUWUF4c4uYg==
X-Received: by 2002:a17:906:478c:b0:6df:6b35:156d with SMTP id cw12-20020a170906478c00b006df6b35156dmr32858821ejc.578.1651181110717;
        Thu, 28 Apr 2022 14:25:10 -0700 (PDT)
Received: from localhost.localdomain (host-79-50-86-254.retail.telecomitalia.it. [79.50.86.254])
        by smtp.gmail.com with ESMTPSA id ze12-20020a170906ef8c00b006f3ef214e68sm37147ejb.206.2022.04.28.14.25.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Apr 2022 14:25:08 -0700 (PDT)
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
	linux-doc@vger.kernel.org,
	outreachy@lists.linux.dev
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Peter Zijlstra <peterz@infradead.org>,
	Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH v4 4/4] Documentation/vm: Rework "Temporary Virtual Mappings" section
Date: Thu, 28 Apr 2022 23:24:55 +0200
Message-Id: <20220428212455.892-5-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220428212455.892-1-fmdefrancesco@gmail.com>
References: <20220428212455.892-1-fmdefrancesco@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Extend and rework the "Temporary Virtual Mappings" section of the highmem.rst
documentation.

Despite the local kmaps were introduced by Thomas Gleixner in October 2020,
documentation was still missing information about them. These additions rely
largely on Gleixner's patches, Jonathan Corbet's LWN articles, comments by
Ira Weiny and Matthew Wilcox, and in-code comments from
./include/linux/highmem.h.

1) Add a paragraph to document kmap_local_page().
2) Reorder the list of functions by decreasing order of preference of
use.
3) Rework part of the kmap() entry in list.

Cc: Jonathan Corbet <corbet@lwn.net>
Cc: Matthew Wilcox <willy@infradead.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: Thomas Gleixner <tglx@linutronix.de>
Suggested-by: Ira Weiny <ira.weiny@intel.com>
Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---
 Documentation/vm/highmem.rst | 70 ++++++++++++++++++++++++++++++------
 1 file changed, 59 insertions(+), 11 deletions(-)

diff --git a/Documentation/vm/highmem.rst b/Documentation/vm/highmem.rst
index e05bf5524174..c9887f241c6c 100644
--- a/Documentation/vm/highmem.rst
+++ b/Documentation/vm/highmem.rst
@@ -50,26 +50,74 @@ space when they use mm context tags.
 Temporary Virtual Mappings
 ==========================
 
-The kernel contains several ways of creating temporary mappings:
+The kernel contains several ways of creating temporary mappings. The following
+list shows them in order of preference of use.
 
-* vmap().  This can be used to make a long duration mapping of multiple
-  physical pages into a contiguous virtual space.  It needs global
-  synchronization to unmap.
+* kmap_local_page().  This function is used to require short term mappings.
+  It can be invoked from any context (including interrupts) but the mappings
+  can only be used in the context which acquired them.
+
+  This function should be preferred, where feasible, over all the others.
 
-* kmap().  This permits a short duration mapping of a single page.  It needs
-  global synchronization, but is amortized somewhat.  It is also prone to
-  deadlocks when using in a nested fashion, and so it is not recommended for
-  new code.
+  These mappings are thread-local and CPU-local, meaning that the mapping
+  can only be accessed from within this thread and the thread is bound the
+  CPU while the mapping is active. Even if the thread is preempted (since
+  preemption is never disabled by the function) the CPU can not be
+  unplugged from the system via CPU-hotplug until the mapping is disposed.
+
+  It's valid to take pagefaults in a local kmap region, unless the context
+  in which the local mapping is acquired does not allow it for other reasons.
+
+  kmap_local_page() always returns a valid virtual address and it is assumed
+  that kunmap_local() will never fail.
+
+  Nesting kmap_local_page() and kmap_atomic() mappings is allowed to a certain
+  extent (up to KMAP_TYPE_NR) but their invocations have to be strictly ordered
+  because the map implementation is stack based. See kmap_local_page() kdocs
+  (included in the "Functions" section) for details on how to manage nested
+  mappings.
 
 * kmap_atomic().  This permits a very short duration mapping of a single
   page.  Since the mapping is restricted to the CPU that issued it, it
   performs well, but the issuing task is therefore required to stay on that
   CPU until it has finished, lest some other task displace its mappings.
 
-  kmap_atomic() may also be used by interrupt contexts, since it is does not
-  sleep and the caller may not sleep until after kunmap_atomic() is called.
+  kmap_atomic() may also be used by interrupt contexts, since it does not
+  sleep and the callers too may not sleep until after kunmap_atomic() is
+  called.
+
+  Each call of kmap_atomic() in the kernel creates a non-preemptible section
+  and disable pagefaults. This could be a source of unwanted latency. Therefore
+  users should prefer kmap_local_page() instead of kmap_atomic().
 
-  It may be assumed that k[un]map_atomic() won't fail.
+  It is assumed that k[un]map_atomic() won't fail.
+
+* kmap().  This should be used to make short duration mapping of a single
+  page with no restrictions on preemption or migration. It comes with an
+  overhead as mapping space is restricted and protected by a global lock
+  for synchronization. When mapping is no longer needed, the address that
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
+  On 64-bit systems, calls to kmap_local_page(), kmap_atomic() and kmap() have
+  no real work to do because a 64-bit address space is more than sufficient to
+  address all the physical memory whose pages are permanently mapped.
+
+* vmap().  This can be used to make a long duration mapping of multiple
+  physical pages into a contiguous virtual space.  It needs global
+  synchronization to unmap.
 
 
 Cost of Temporary Mappings
-- 
2.34.1

