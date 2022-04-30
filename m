Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com [209.85.210.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A84682F35
	for <outreachy@lists.linux.dev>; Sat, 30 Apr 2022 22:49:56 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id 31-20020a9d0822000000b00605f1807664so4454299oty.3
        for <outreachy@lists.linux.dev>; Sat, 30 Apr 2022 15:49:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=bG37rvcep9NRYqYV++Ee/JVfkX0YlgX6zU5PsGTmvc8=;
        b=ME9eSKKJT4KOyft/ekv2IQm9FhMq0P5+6hW4Iiq5+V3dpm5nQRjUpk1v2xNulr78Gk
         ygckxMsgCyRrO1RplfI69ubjhYPSA4fY5SLfmHd+A2kIDpq3ksoFTkccWldjpnyrTQon
         bLTr6Ah3sMN81SVd1GLAH4RSZt3GdoBsWibhQDWr44Vw6nFLXiiJB0j/gYoDder5vEWQ
         i7wl7AH3I95BQvP0n1fgusm0XAUgjAnRt331mvvSh2r3DAkXBnlIiMOps3MhHskWlk3H
         BW5o7FQxkAOzGlQrHWry+6lFNwivrOzjlKozQcmL0HLJhEsDjh4HL1UdFfNbwvDNWQAW
         NKkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=bG37rvcep9NRYqYV++Ee/JVfkX0YlgX6zU5PsGTmvc8=;
        b=1NYaMtWZdbChs7+rSIfQPuf2Yx4A8xkcQShHWxP5N/J4s72v7PKIFz7mUV96KJ50CP
         PsBA9sc6VqXyYDZv0yiWoZFdQ1/ruykZaYbDOq/CcaecGfdxrY+eb50jBlLrZ+D4zoRN
         6ev5QfHCzYfaYcYgUxojGEyc0s0WHP/RaS9b/mDtq/zAqGNwyJF3z7pzeqJ21viabTm4
         hXyx+jYkgqphtZLNjjwMZOL/xfUbIOHBaPe+1NE64x5NH68C9y0QaGH1z0rVhjq+R01a
         /yUKeo1Z6f+WVL2Ma82nq1lwM2EoFaPSJxc27ntgZMUKl6uqSuaItTLoJ78rhjLR2NWC
         XuMg==
X-Gm-Message-State: AOAM532livPxIXgLrdcs8HN5ieaY5LOKmzQAFASaETAsYuxt1TeKA8xT
	tsf/Gurt0EPHcjzdA+NxD8w=
X-Google-Smtp-Source: ABdhPJznJm1itKSDf/m3vlvnbHvAEbJUxILanJO1EwBl14QPFWK3jBHS5Zl3rl/4097Q+dlYgTWQ3w==
X-Received: by 2002:a9d:6a4d:0:b0:605:df01:9858 with SMTP id h13-20020a9d6a4d000000b00605df019858mr1980565otn.87.1651358995614;
        Sat, 30 Apr 2022 15:49:55 -0700 (PDT)
Received: from bertie (072-190-140-117.res.spectrum.com. [72.190.140.117])
        by smtp.gmail.com with ESMTPSA id bf22-20020a056808191600b00325cda1ff92sm1035946oib.17.2022.04.30.15.49.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Apr 2022 15:49:55 -0700 (PDT)
From: Rebecca Mckeever <remckee0@gmail.com>
To: outreachy@lists.linux.dev
Cc: Mike Rapoport <rppt@kernel.org>,
	linux-mm@kvack.org,
	linux-kernel@vger.kernel.org,
	David Hildenbrand <david@redhat.com>,
	Rebecca Mckeever <remckee0@gmail.com>
Subject: [PATCH v4 2/5] memblock tests: update style of comments for memblock_reserve_*() functions
Date: Sat, 30 Apr 2022 17:49:37 -0500
Message-Id: <c3c31797a61bccab08cd4b95a63304c4584ded44.1651357434.git.remckee0@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <cover.1651357434.git.remckee0@gmail.com>
References: <cover.1651357434.git.remckee0@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Update comments in memblock_reserve_*() functions to match the style used
in tests/alloc_*.c by rewording to make the expected outcome more apparent
and, if more than one memblock is involved, adding a visual of the
memory blocks.

If the comment has an extra column of spaces, remove the extra space at
the beginning of each line for consistency and to conform to Linux kernel
coding style.

Reviewed-by: David Hildenbrand <david@redhat.com>
Signed-off-by: Rebecca Mckeever <remckee0@gmail.com>
---
 tools/testing/memblock/tests/basic_api.c | 94 ++++++++++++++++--------
 1 file changed, 63 insertions(+), 31 deletions(-)

diff --git a/tools/testing/memblock/tests/basic_api.c b/tools/testing/memblock/tests/basic_api.c
index ab8d71b1e24b..6054b83962ca 100644
--- a/tools/testing/memblock/tests/basic_api.c
+++ b/tools/testing/memblock/tests/basic_api.c
@@ -303,12 +303,12 @@ static int memblock_add_checks(void)
 	return 0;
 }
 
- /*
-  * A simple test that marks a memory block of a specified base address
-  * and size as reserved and to the collection of reserved memory regions
-  * (memblock.reserved). It checks if a new entry was created and if region
-  * counter and total memory size were correctly updated.
-  */
+/*
+ * A simple test that marks a memory block of a specified base address
+ * and size as reserved and to the collection of reserved memory regions
+ * (memblock.reserved). Expect to create a new entry. The region counter
+ * and total memory size are updated.
+ */
 static int memblock_reserve_simple_check(void)
 {
 	struct memblock_region *rgn;
@@ -330,10 +330,15 @@ static int memblock_reserve_simple_check(void)
 }
 
 /*
- * A test that tries to mark two memory blocks that don't overlap as reserved
- * and checks if two entries were correctly added to the collection of reserved
- * memory regions (memblock.reserved) and if this change was reflected in
- * memblock.reserved's total size and region counter.
+ * A test that tries to mark two memory blocks that don't overlap as reserved:
+ *
+ *  |        +--+      +----------------+  |
+ *  |        |r1|      |       r2       |  |
+ *  +--------+--+------+----------------+--+
+ *
+ * Expect to add two entries to the collection of reserved memory regions
+ * (memblock.reserved). The total size and region counter for
+ * memblock.reserved are updated.
  */
 static int memblock_reserve_disjoint_check(void)
 {
@@ -368,13 +373,22 @@ static int memblock_reserve_disjoint_check(void)
 }
 
 /*
- * A test that tries to mark two memory blocks as reserved, where the
- * second one overlaps with the beginning of the first (that is
- * r1.base < r2.base + r2.size).
- * It checks if two entries are merged into one region that starts at r2.base
- * and has size of two regions minus their intersection. The test also verifies
- * that memblock can still see only one entry and has a correct total size of
- * the reserved memory.
+ * A test that tries to mark two memory blocks r1 and r2 as reserved,
+ * where r2 overlaps with the beginning of r1 (that is
+ * r1.base < r2.base + r2.size):
+ *
+ *  |  +--------------+--+--------------+  |
+ *  |  |       r2     |  |     r1       |  |
+ *  +--+--------------+--+--------------+--+
+ *     ^              ^
+ *     |              |
+ *     |              r1.base
+ *     |
+ *     r2.base
+ *
+ * Expect to merge two entries into one region that starts at r2.base and
+ * has size of two regions minus their intersection. The total size of the
+ * reserved memory is updated, and the region counter is not updated.
  */
 static int memblock_reserve_overlap_top_check(void)
 {
@@ -408,13 +422,22 @@ static int memblock_reserve_overlap_top_check(void)
 }
 
 /*
- * A test that tries to mark two memory blocks as reserved, where the
- * second one overlaps with the end of the first entry (that is
- * r2.base < r1.base + r1.size).
- * It checks if two entries are merged into one region that starts at r1.base
- * and has size of two regions minus their intersection. It verifies that
- * memblock can still see only one entry and has a correct total size of the
- * reserved memory.
+ * A test that tries to mark two memory blocks r1 and r2 as reserved,
+ * where r2 overlaps with the end of r1 (that is
+ * r2.base < r1.base + r1.size):
+ *
+ *  |  +--------------+--+--------------+  |
+ *  |  |       r1     |  |     r2       |  |
+ *  +--+--------------+--+--------------+--+
+ *     ^              ^
+ *     |              |
+ *     |              r2.base
+ *     |
+ *     r1.base
+ *
+ * Expect to merge two entries into one region that starts at r1.base and
+ * has size of two regions minus their intersection. The total size of the
+ * reserved memory is updated, and the region counter is not updated.
  */
 static int memblock_reserve_overlap_bottom_check(void)
 {
@@ -448,12 +471,21 @@ static int memblock_reserve_overlap_bottom_check(void)
 }
 
 /*
- * A test that tries to mark two memory blocks as reserved, where the second
- * one is within the range of the first entry (that is
- * (r1.base < r2.base) && (r2.base + r2.size < r1.base + r1.size)).
- * It checks if two entries are merged into one region that stays the
- * same. The counter and total size of available memory are expected to not be
- * updated.
+ * A test that tries to mark two memory blocks r1 and r2 as reserved,
+ * where r2 is within the range of r1 (that is
+ * (r1.base < r2.base) && (r2.base + r2.size < r1.base + r1.size)):
+ *
+ *  | +-----+--+---------------------------|
+ *  | |     |r2|          r1               |
+ *  +-+-----+--+---------------------------+
+ *    ^     ^
+ *    |     |
+ *    |     r2.base
+ *    |
+ *    r1.base
+ *
+ * Expect to merge two entries into one region that stays the same. The
+ * counter and total size of available memory are not updated.
  */
 static int memblock_reserve_within_check(void)
 {
@@ -485,7 +517,7 @@ static int memblock_reserve_within_check(void)
 
 /*
  * A simple test that tries to reserve the same memory block twice.
- * The region counter and total size of reserved memory are expected to not
+ * Expect the region counter and total size of reserved memory to not
  * be updated.
  */
 static int memblock_reserve_twice_check(void)
-- 
2.32.0

