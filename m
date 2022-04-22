Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com [209.85.167.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCEF57A
	for <outreachy@lists.linux.dev>; Fri, 22 Apr 2022 12:55:51 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id q129so8932174oif.4
        for <outreachy@lists.linux.dev>; Fri, 22 Apr 2022 05:55:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=SSzBkjMJuCHeJx2Pu4aS83z4goHTE74keZ/qqMMfuhA=;
        b=MqqUxOS6UYkQBMFgU7FZuYpCZrExwg+iIEuziM/4qa29/1zOq6WslvELA3HQS0ejgx
         Au1NoV8rU4pBBlnQA3p1ZibeVPdfn40tJjopUi2IhCGJsKorWv4TF4fLYUYuevob2sN6
         zWK7HLwR2gz+7kFqxQXS+xccqQNQ15lVf28X4gdj3o4xLJOmTL4MecUqHXqvi7YCGxt3
         9w9h+7VBe95DPAsjdJlhIe+R3IEYgQvCF80HJnTGOU3nrdpP67/FbVZpR8VTRmkpSZD5
         HGigzSQmSsXUd8QB6Mhg5A1UcBgICaX2aOrVnz7uIQSEhBn1GvyfAUAciLBiZx1CypCW
         XwVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SSzBkjMJuCHeJx2Pu4aS83z4goHTE74keZ/qqMMfuhA=;
        b=M63tVkb3n9kPrIhJs++p8qYICnpewqy8KcUhwcNOGnYjyjS0gQNNrVIRgH+a3ycL9v
         ESfX3HSxZEsi53rUCDkvO9/7nlwylleJB98pbM7LVjGpUXaupKWkbNlo7by251RSRAai
         AvO6ig0f6UC8Fq8QbtUelYwdJV8JkUMNLAskm9DfJ2e+Fq7CEhDavREeU6k16RuaQ598
         zQQm9f9U4a84lPKSH21nu+kDjIe+E5uBRB07aOGNJBjZUETaqni1Pxpov/RJDkieX/cM
         otyiDk7Y4v66X3PRWeRyMV7pMbALLBfD2izucL0RwHRQd6EIoHcn0bgLIYbSdsJB7ssF
         01rg==
X-Gm-Message-State: AOAM533fZyh7LNdg+ouNvNRWHQ8i9FXLmUcFmX3ZCvU0YF/U75sO+e/D
	/+Gv0M4klG/jYKe4/SrFA9M=
X-Google-Smtp-Source: ABdhPJwEZILKUBLVPKo5TtyKFNvR3mT7Dbgr+qteZauIsUxypI1YzklO3lV25m56prRuZdBLh8baOQ==
X-Received: by 2002:a05:6808:14d4:b0:323:652:9302 with SMTP id f20-20020a05680814d400b0032306529302mr4192401oiw.105.1650632150926;
        Fri, 22 Apr 2022 05:55:50 -0700 (PDT)
Received: from bertie (072-190-140-117.res.spectrum.com. [72.190.140.117])
        by smtp.gmail.com with ESMTPSA id 64-20020aca0643000000b002f9b8a6ca98sm732174oig.4.2022.04.22.05.55.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Apr 2022 05:55:50 -0700 (PDT)
From: Rebecca Mckeever <remckee0@gmail.com>
To: outreachy@lists.linux.dev
Cc: Mike Rapoport <rppt@kernel.org>,
	linux-mm@kvack.org,
	linux-kernel@vger.kernel.org,
	David Hildenbrand <david@redhat.com>,
	Rebecca Mckeever <remckee0@gmail.com>
Subject: [PATCH v2 1/4] memblock tests: update style of comments for memblock_add_*() functions
Date: Fri, 22 Apr 2022 07:55:35 -0500
Message-Id: <2ea997e7b5c4737d674a2e5d9288938d557cb0c3.1650631746.git.remckee0@gmail.com>
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

Update comments in memblock_add_*() functions to match the style used
in tests/alloc_*.c by rewording to make the expected outcome more apparent
and, if more than one memblock is involved, adding a visual of the
memory blocks.

Signed-off-by: Rebecca Mckeever <remckee0@gmail.com>
---
 tools/testing/memblock/tests/basic_api.c | 77 +++++++++++++++++-------
 1 file changed, 55 insertions(+), 22 deletions(-)

diff --git a/tools/testing/memblock/tests/basic_api.c b/tools/testing/memblock/tests/basic_api.c
index fbc1ce160303..e96be0319ad4 100644
--- a/tools/testing/memblock/tests/basic_api.c
+++ b/tools/testing/memblock/tests/basic_api.c
@@ -26,8 +26,8 @@ static int memblock_initialization_check(void)
 /*
  * A simple test that adds a memory block of a specified base address
  * and size to the collection of available memory regions (memblock.memory).
- * It checks if a new entry was created and if region counter and total memory
- * were correctly updated.
+ * Expect to create a new entry. The region counter and total memory get
+ * updated.
  */
 static int memblock_add_simple_check(void)
 {
@@ -53,10 +53,10 @@ static int memblock_add_simple_check(void)
 }
 
 /*
- * A simple test that adds a memory block of a specified base address, size
+ * A simple test that adds a memory block of a specified base address, size,
  * NUMA node and memory flags to the collection of available memory regions.
- * It checks if the new entry, region counter and total memory size have
- * expected values.
+ * Expect to create a new entry. The region counter and total memory get
+ * updated.
  */
 static int memblock_add_node_simple_check(void)
 {
@@ -87,9 +87,15 @@ static int memblock_add_node_simple_check(void)
 
 /*
  * A test that tries to add two memory blocks that don't overlap with one
- * another. It checks if two correctly initialized entries were added to the
- * collection of available memory regions (memblock.memory) and if this
- * change was reflected in memblock.memory's total size and region counter.
+ * another:
+ *
+ *  |        +--------+        +--------+  |
+ *  |        |   r1   |        |   r2   |  |
+ *  +--------+--------+--------+--------+--+
+ *
+ * Expect to add two correctly initialized entries to the collection of
+ * available memory regions (memblock.memory). The total size and
+ * region counter fields get updated.
  */
 static int memblock_add_disjoint_check(void)
 {
@@ -125,10 +131,20 @@ static int memblock_add_disjoint_check(void)
 
 /*
  * A test that tries to add two memory blocks, where the second one overlaps
- * with the beginning of the first entry (that is r1.base < r2.base + r2.size).
- * After this, it checks if two entries are merged into one region that starts
- * at r2.base and has size of two regions minus their intersection. It also
- * verifies the reported total size of the available memory and region counter.
+ * with the beginning of the first entry (that is r1.base < r2.base + r2.size):
+ *
+ *  |    +----+----+------------+          |
+ *  |    |    |r2  |   r1       |          |
+ *  +----+----+----+------------+----------+
+ *       ^    ^
+ *       |    |
+ *       |    r1.base
+ *       |
+ *       r2.base
+ *
+ * Expect to merge the two entries into one region that starts at r2.base
+ * and has size of two regions minus their intersection. The total size of
+ * the available memory is updated, and the region counter stays the same.
  */
 static int memblock_add_overlap_top_check(void)
 {
@@ -163,11 +179,20 @@ static int memblock_add_overlap_top_check(void)
 
 /*
  * A test that tries to add two memory blocks, where the second one overlaps
- * with the end of the first entry (that is r2.base < r1.base + r1.size).
- * After this, it checks if two entries are merged into one region that starts
- * at r1.base and has size of two regions minus their intersection. It verifies
- * that memblock can still see only one entry and has a correct total size of
- * the available memory.
+ * with the end of the first entry (that is r2.base < r1.base + r1.size):
+ *
+ *  |  +--+------+----------+              |
+ *  |  |  | r1   | r2       |              |
+ *  +--+--+------+----------+--------------+
+ *     ^  ^
+ *     |  |
+ *     |  r2.base
+ *     |
+ *     r1.base
+ *
+ * Expect to merge the two entries into one region that starts at r1.base
+ * and has size of two regions minus their intersection. The total size of
+ * the available memory is updated, and the region counter stays the same.
  */
 static int memblock_add_overlap_bottom_check(void)
 {
@@ -203,9 +228,17 @@ static int memblock_add_overlap_bottom_check(void)
 /*
  * A test that tries to add two memory blocks, where the second one is
  * within the range of the first entry (that is r1.base < r2.base &&
- * r2.base + r2.size < r1.base + r1.size). It checks if two entries are merged
- * into one region that stays the same. The counter and total size of available
- * memory are expected to not be updated.
+ * r2.base + r2.size < r1.base + r1.size):
+ *
+ *  |   +-------+--+-----------------------+
+ *  |   |       |r2|      r1               |
+ *  +---+-------+--+-----------------------+
+ *      ^
+ *      |
+ *      r1.base
+ *
+ * Expect to merge two entries into one region that stays the same.
+ * The counter and total size of available memory are not updated.
  */
 static int memblock_add_within_check(void)
 {
@@ -236,8 +269,8 @@ static int memblock_add_within_check(void)
 }
 
 /*
- * A simple test that tries to add the same memory block twice. The counter
- * and total size of available memory are expected to not be updated.
+ * A simple test that tries to add the same memory block twice. Expect
+ * the counter and total size of available memory to not be updated.
  */
 static int memblock_add_twice_check(void)
 {
-- 
2.32.0

