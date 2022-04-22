Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com [209.85.167.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1B327A
	for <outreachy@lists.linux.dev>; Fri, 22 Apr 2022 13:33:22 +0000 (UTC)
Received: by mail-oi1-f194.google.com with SMTP id a10so9029783oif.9
        for <outreachy@lists.linux.dev>; Fri, 22 Apr 2022 06:33:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=vWWT9S1ut5UtdYn94rrDqYYPxhJGIa0Bw2tNIUfzycc=;
        b=iSjgOmJph0wI9W9moIoXgUb4CbS77tWvK87utauHR+6Ec3lu9iCOjOKrPey6QWPLPS
         6v4qa3wD3p7p2nja/OQAv5gz3LLVHJkfiP0D8EaZM0CXGfEljtRDWp2lQunorYflBFXI
         YVL5+4kIGFtcHehI1OhtkZIx2JL9SKgyAlvdei/ZVfws25BxhpIJdLIA4iSNOjLtoCCG
         Ltqy95QdlkdZ8M+hvBX4kYXIN9/ij1Q7nAJtoLaUMrhY2Tm+nhvinFwjFm1oumz/WxeZ
         v3nVvZMdq6f3z5V14CVLHOylKKafekCo689D1U5wxl0ac6pFVhM6OkTuwq7ZMQHGCV96
         DFjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vWWT9S1ut5UtdYn94rrDqYYPxhJGIa0Bw2tNIUfzycc=;
        b=yx9Lq7fyo5VWQEsG2a8Qx9faaaA4281IncVZp7brNA9SOcKM75ioSpf1qw4th5ozTP
         POyclBN9SWzgENt4/tegiZCvaLbZSbtyGBE0tbvIcG+ab/B6xbKu3ZIn9cZOxqK7AcTm
         /ArZ4WCGXg8ulVduZWYycNzzFhG3ucjLoYsXe1WUf6OWn5NsVzv6AcJL1QLJ1QgfutIA
         JWFTrh/kBZmS+jmLAaSXycMkXtk8igb82p0XjovnWJsqu4iBE5tPhwNBOrv10UYCW/v3
         ERzqIdKZ6Ff8GeWXh4t/+tRjoFIL+YBzP9m/ktI76K6LPpRaMZdOEUJb1GZSHyZUtD32
         0ayQ==
X-Gm-Message-State: AOAM5303nOrzlifo8k7eaTF0OFp5jB0iQaEUI4LF4z9+1OVQmiBAiNUx
	J0ZkHiVPuAb9Bmf78PWuyqosrYubn0nPYQ==
X-Google-Smtp-Source: ABdhPJw2WQ/OVm35pqkbglbSshfHt4oKxslDglb4Myr1bVgiekofd0Lj4FByZNNqa1B+FNWl24Fitw==
X-Received: by 2002:a54:4719:0:b0:322:6ce1:6fa7 with SMTP id k25-20020a544719000000b003226ce16fa7mr2092564oik.105.1650634401866;
        Fri, 22 Apr 2022 06:33:21 -0700 (PDT)
Received: from bertie (072-190-140-117.res.spectrum.com. [72.190.140.117])
        by smtp.gmail.com with ESMTPSA id u3-20020a4a9703000000b0033336ab4909sm788777ooi.7.2022.04.22.06.33.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Apr 2022 06:33:21 -0700 (PDT)
From: Rebecca Mckeever <remckee0@gmail.com>
To: outreachy@lists.linux.dev
Cc: Mike Rapoport <rppt@kernel.org>,
	linux-mm@kvack.org,
	linux-kernel@vger.kernel.org,
	David Hildenbrand <david@redhat.com>,
	Rebecca Mckeever <remckee0@gmail.com>
Subject: [PATCH v3 3/5] memblock tests: update style of comments for memblock_remove_*() functions
Date: Fri, 22 Apr 2022 08:33:00 -0500
Message-Id: <3b83322c070bdd43a33c336d135f485244f107d3.1650633253.git.remckee0@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <cover.1650633253.git.remckee0@gmail.com>
References: <cover.1650633253.git.remckee0@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Update comments in memblock_remove_*() functions to match the style used
in tests/alloc_*.c by rewording to make the expected outcome more apparent
and, if more than one memblock is involved, adding a visual of the
memory blocks.

If the comment has an extra column of spaces, remove the extra space at
the beginning of each line for consistency and to conform to Linux kernel
coding style.

Signed-off-by: Rebecca Mckeever <remckee0@gmail.com>
---
 tools/testing/memblock/tests/basic_api.c | 101 +++++++++++++++++------
 1 file changed, 75 insertions(+), 26 deletions(-)

diff --git a/tools/testing/memblock/tests/basic_api.c b/tools/testing/memblock/tests/basic_api.c
index 75cd7479ee54..08847dc5065e 100644
--- a/tools/testing/memblock/tests/basic_api.c
+++ b/tools/testing/memblock/tests/basic_api.c
@@ -550,14 +550,21 @@ static int memblock_reserve_checks(void)
 	return 0;
 }
 
- /*
-  * A simple test that tries to remove the first entry of the array of
-  * available memory regions. By "removing" a region we mean overwriting it
-  * with the next region in memblock.memory. To check this is the case, the
-  * test adds two memory blocks and verifies that the value of the latter
-  * was used to erase r1 region.  It also checks if the region counter and
-  * total size were updated to expected values.
-  */
+/*
+ * A simple test that tries to remove the first entry of the array of
+ * with the next region in memblock.memory:
+ *
+ *  |  ......          +----------------+  |
+ *  |  : r1 :          |       r2       |  |
+ *  +--+----+----------+----------------+--+
+ *                     ^
+ *                     |
+ *                     rgn.base
+ *
+ * Expect to add two memory blocks r1 and r2 and then remove r1 region
+ * so that r2 is the first available region. The region counter and
+ * total size are updated.
+ */
 static int memblock_remove_simple_check(void)
 {
 	struct memblock_region *rgn;
@@ -587,11 +594,22 @@ static int memblock_remove_simple_check(void)
 	return 0;
 }
 
- /*
-  * A test that tries to remove a region that was not registered as available
-  * memory (i.e. has no corresponding entry in memblock.memory). It verifies
-  * that array, regions counter and total size were not modified.
-  */
+/*
+ * A test that tries to remove a region that was not registered as available
+ * memory (i.e. has no corresponding entry in memblock.memory):
+ *
+ *                     +----------------+
+ *                     |       r2       |
+ *                     +----------------+
+ *  |  +----+                              |
+ *  |  | r1 |                              |
+ *  +--+----+------------------------------+
+ *     ^
+ *     |
+ *     rgn.base
+ *
+ * Expect the array, regions counter and total size to not be modified.
+ */
 static int memblock_remove_absent_check(void)
 {
 	struct memblock_region *rgn;
@@ -622,10 +640,21 @@ static int memblock_remove_absent_check(void)
 
 /*
  * A test that tries to remove a region which overlaps with the beginning of
- * the already existing entry r1 (that is r1.base < r2.base + r2.size). It
- * checks if only the intersection of both regions is removed from the available
- * memory pool. The test also checks if the regions counter and total size are
- * updated to expected values.
+ * the already existing entry r1 (that is r1.base < r2.base + r2.size):
+ *
+ *           +-----------------+
+ *           |       r2        |
+ *           +-----------------+
+ *  |                 .........+--------+  |
+ *  |                 :     r1 |  rgn   |  |
+ *  +-----------------+--------+--------+--+
+ *                    ^        ^
+ *                    |        |
+ *                    |        rgn.base
+ *                    r1.base
+ *
+ * Expect that only the intersection of both regions is removed from the
+ * available memory pool. The regions counter and total size are updated.
  */
 static int memblock_remove_overlap_top_check(void)
 {
@@ -662,10 +691,20 @@ static int memblock_remove_overlap_top_check(void)
 
 /*
  * A test that tries to remove a region which overlaps with the end of the
- * first entry (that is r2.base < r1.base + r1.size). It checks if only the
- * intersection of both regions is removed from the available memory pool.
- * The test also checks if the regions counter and total size are updated to
- * expected values.
+ * first entry (that is r2.base < r1.base + r1.size):
+ *
+ *        +--------------------------------+
+ *        |               r2               |
+ *        +--------------------------------+
+ *  | +---+.....                           |
+ *  | |rgn| r1 :                           |
+ *  +-+---+----+---------------------------+
+ *    ^
+ *    |
+ *    r1.base
+ *
+ * Expect that only the intersection of both regions is removed from the
+ * available memory pool. The regions counter and total size are updated.
  */
 static int memblock_remove_overlap_bottom_check(void)
 {
@@ -700,11 +739,21 @@ static int memblock_remove_overlap_bottom_check(void)
 /*
  * A test that tries to remove a region which is within the range of the
  * already existing entry (that is
- * (r1.base < r2.base) && (r2.base + r2.size < r1.base + r1.size)).
- * It checks if the region is split into two - one that ends at r2.base and
- * second that starts at r2.base + size, with appropriate sizes. The test
- * also checks if the region counter and total size were updated to
- * expected values.
+ * (r1.base < r2.base) && (r2.base + r2.size < r1.base + r1.size)):
+ *
+ *                  +----+
+ *                  | r2 |
+ *                  +----+
+ *  | +-------------+....+---------------+ |
+ *  | |     rgn1    | r1 |     rgn2      | |
+ *  +-+-------------+----+---------------+-+
+ *    ^
+ *    |
+ *    r1.base
+ *
+ * Expect that the region is split into two - one that ends at r2.base and
+ * another that starts at r2.base + size, with appropriate sizes. The
+ * region counter and total size are updated.
  */
 static int memblock_remove_within_check(void)
 {
-- 
2.32.0

