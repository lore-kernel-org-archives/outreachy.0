Received: from mail-oa1-f65.google.com (mail-oa1-f65.google.com [209.85.160.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3055328F1
	for <outreachy@lists.linux.dev>; Fri, 22 Apr 2022 12:55:56 +0000 (UTC)
Received: by mail-oa1-f65.google.com with SMTP id 586e51a60fabf-deb9295679so8513398fac.6
        for <outreachy@lists.linux.dev>; Fri, 22 Apr 2022 05:55:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=vWWT9S1ut5UtdYn94rrDqYYPxhJGIa0Bw2tNIUfzycc=;
        b=UCaRhmUzpsSlR456w7eQ3PEwHtLCS2FCp2PPWQosnu/RVbQF4ATMHJR2zrEqzemnoy
         TTbPGGLkD0Pli4mKb83BJ7+pqNF020r5TQuX71sd43abDd8qQzg4q+bisVkuluxXDSM0
         F9vNQzWYv8CN5559yNQOP2jvGRtEXcDqnaaAFxFvzopiNXLUP0NVL4iRmQSHMyZEwprr
         dyA8jLjaSIKWDKXE1EG6WaU4CTfr6rmFA1+wHIYDc7M9z4FKrIbdeUCdfyMSHPXQBS1Z
         GkG4pilfloCLFt3nAIo+Pt9XHB194SzNrxn9yn6+fM4tELWyuOLtmT8oK/OPcOQFDbfW
         fRsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vWWT9S1ut5UtdYn94rrDqYYPxhJGIa0Bw2tNIUfzycc=;
        b=1Wa2wCAzmi4TixP0UeqwDdqzy3KL+dQWEHwFTMy3JtFUylshnfi07mxWvYd5tzbRie
         1RO5PIci/J7LMcSdiNRNZoDnsEpyfB8RvkRGP7Lrad4FHtJ4EVCkvE1cammTdFA6VDsB
         pw+aI6egfVdE4uPZhqqad2FM0K3nC8eDH+1V3rlz0Kcr8JiGgBBWdGii0GBqjDBcjqLb
         TL2Q29L4m17AtYbFjQ8gJYIgVwQ6VdzvLYb+oOtPxSnZlQxN/O2fiDYjR/QEh0qRILf0
         DRKHyaUSpzpj5MdORHIepxItA26eoylTjHWpLWopdyeVBbETOazgRYa7WTGt+Io8k6BF
         YhGg==
X-Gm-Message-State: AOAM5321NPQufhbX4AeG3vktfyBHSoetbaZXx/0zFqsuoH/aMt2JrB/v
	Vja1JjLgJZ9O485SinlXTwY=
X-Google-Smtp-Source: ABdhPJwsjnPR0JnCBe7tNvuWVrHoysWmLCjrw1eXkP+lpnZ/gYO62bi5woJV/qy2lyUzpsa7hNeYvA==
X-Received: by 2002:a05:6870:a1a0:b0:d9:b198:4cfa with SMTP id a32-20020a056870a1a000b000d9b1984cfamr1850895oaf.159.1650632155327;
        Fri, 22 Apr 2022 05:55:55 -0700 (PDT)
Received: from bertie (072-190-140-117.res.spectrum.com. [72.190.140.117])
        by smtp.gmail.com with ESMTPSA id y6-20020a4a86c6000000b0033a64ed2074sm739421ooh.19.2022.04.22.05.55.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Apr 2022 05:55:55 -0700 (PDT)
From: Rebecca Mckeever <remckee0@gmail.com>
To: outreachy@lists.linux.dev
Cc: Mike Rapoport <rppt@kernel.org>,
	linux-mm@kvack.org,
	linux-kernel@vger.kernel.org,
	David Hildenbrand <david@redhat.com>,
	Rebecca Mckeever <remckee0@gmail.com>
Subject: [PATCH v2 3/4] memblock tests: update style of comments for memblock_remove_*() functions
Date: Fri, 22 Apr 2022 07:55:37 -0500
Message-Id: <3b83322c070bdd43a33c336d135f485244f107d3.1650631746.git.remckee0@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <cover.1650631746.git.remckee0@gmail.com>
References: <cover.1650631746.git.remckee0@gmail.com>
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

