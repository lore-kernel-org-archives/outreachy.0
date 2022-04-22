Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com [209.85.210.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A7A67A
	for <outreachy@lists.linux.dev>; Fri, 22 Apr 2022 13:33:20 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id w27-20020a056830061b00b00604cde931a0so5490229oti.2
        for <outreachy@lists.linux.dev>; Fri, 22 Apr 2022 06:33:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XlCh/TROTMgIT0UvKXK2lUbRlqfaTVRDW2LmfRt6iMQ=;
        b=iaxa/qlkHIPUaRAIv7RENsm5uqvFD5F+AGD11htqjVrxDJvvnB6oIgtTQBL+ZnA9YK
         iN0zUp7SMP9/UGwNyTVXCIR2UwIJ18j+457n6lrMlE/yZe3Nr2EXmePrh+qcq7rQoodV
         RKI6X9CBoVNmWhCXivgsrzJN8eMI+Vlv6RPsvG0vwHiJKtk9qvODKOWZi2WrwGZa5/TI
         T4OBybc0MC91K3CowfTdruAkQ7/IrMTmLilzuM3aZqxL6xLvZH5D8D/s/jN6M3NvVMmY
         hNBZ0NP+lKCejF4WYiMvdLlz3Yru9JlIV7VymBAW9WUUVB1Y7oJmdQwBcD0BaOpg7hnk
         O+yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XlCh/TROTMgIT0UvKXK2lUbRlqfaTVRDW2LmfRt6iMQ=;
        b=TuplP1VVLg0rcPj4/5ElEeJPfqUqaP3cVLlVB4983ER4ErSS6cAhESLF5zlhtZV1c+
         31xEtO+PffumGUwCD7HUHZffM0uhF+AraeA/KY/sbpfv/FfS38JWLRxFo9kZdIA41o1H
         NAnCTtY/lfHmIaKu/1RzJBTQFL05YsOmdns9s8zwjw0MDctTujyDvyn3JCTtNqoyzUz2
         81yWoVNOgF3zy2ObymJjrImgCrpdi82TkHFjgVVKqGDmSlm0MrrzDptKHecuYpgmfLXK
         T4LfAnTS5zpOMFtAIkhggsTQET+FCbL6qYt2gHVEIx8F9uQ4qppyZwstTgwzypiR2HVx
         juWw==
X-Gm-Message-State: AOAM532ScPzBLS95YtkDeKbrFWwqys23Rt6odB7bGE/z4aAsVO7gULgy
	n6EFTFlD0WdbZbozWqL/9SQ=
X-Google-Smtp-Source: ABdhPJzbXMkh8RjqP6Pa+d7iGuUJTgcOFvN07w1TH7hp9iR6U6Bwz2ZaNrs8joSVIhNvkQhAtRcH6Q==
X-Received: by 2002:a9d:4d98:0:b0:605:4cbe:1a3b with SMTP id u24-20020a9d4d98000000b006054cbe1a3bmr1676131otk.292.1650634399534;
        Fri, 22 Apr 2022 06:33:19 -0700 (PDT)
Received: from bertie (072-190-140-117.res.spectrum.com. [72.190.140.117])
        by smtp.gmail.com with ESMTPSA id bq4-20020a05680823c400b0032304581da9sm766688oib.13.2022.04.22.06.33.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Apr 2022 06:33:19 -0700 (PDT)
From: Rebecca Mckeever <remckee0@gmail.com>
To: outreachy@lists.linux.dev
Cc: Mike Rapoport <rppt@kernel.org>,
	linux-mm@kvack.org,
	linux-kernel@vger.kernel.org,
	David Hildenbrand <david@redhat.com>,
	Rebecca Mckeever <remckee0@gmail.com>
Subject: [PATCH v3 2/5] memblock tests: update style of comments for memblock_reserve_*() functions
Date: Fri, 22 Apr 2022 08:32:59 -0500
Message-Id: <7e21d96491ed573f1f7823cfe56c4d8ced4f78fe.1650633253.git.remckee0@gmail.com>
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

Update comments in memblock_reserve_*() functions to match the style used
in tests/alloc_*.c by rewording to make the expected outcome more apparent
and, if more than one memblock is involved, adding a visual of the
memory blocks.

If the comment has an extra column of spaces, remove the extra space at
the beginning of each line for consistency and to conform to Linux kernel
coding style.

Signed-off-by: Rebecca Mckeever <remckee0@gmail.com>
---
 tools/testing/memblock/tests/basic_api.c | 82 ++++++++++++++++--------
 1 file changed, 57 insertions(+), 25 deletions(-)

diff --git a/tools/testing/memblock/tests/basic_api.c b/tools/testing/memblock/tests/basic_api.c
index e96be0319ad4..75cd7479ee54 100644
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
@@ -370,11 +375,20 @@ static int memblock_reserve_disjoint_check(void)
 /*
  * A test that tries to mark two memory blocks as reserved, where the
  * second one overlaps with the beginning of the first (that is
- * r1.base < r2.base + r2.size).
- * It checks if two entries are merged into one region that starts at r2.base
- * and has size of two regions minus their intersection. The test also verifies
- * that memblock can still see only one entry and has a correct total size of
- * the reserved memory.
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
@@ -410,11 +424,20 @@ static int memblock_reserve_overlap_top_check(void)
 /*
  * A test that tries to mark two memory blocks as reserved, where the
  * second one overlaps with the end of the first entry (that is
- * r2.base < r1.base + r1.size).
- * It checks if two entries are merged into one region that starts at r1.base
- * and has size of two regions minus their intersection. It verifies that
- * memblock can still see only one entry and has a correct total size of the
- * reserved memory.
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
@@ -450,10 +473,19 @@ static int memblock_reserve_overlap_bottom_check(void)
 /*
  * A test that tries to mark two memory blocks as reserved, where the second
  * one is within the range of the first entry (that is
- * (r1.base < r2.base) && (r2.base + r2.size < r1.base + r1.size)).
- * It checks if two entries are merged into one region that stays the
- * same. The counter and total size of available memory are expected to not be
- * updated.
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

