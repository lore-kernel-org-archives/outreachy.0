Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com [209.85.210.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1EB37A
	for <outreachy@lists.linux.dev>; Fri, 22 Apr 2022 13:33:17 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id c11-20020a9d684b000000b00603307cef05so5489490oto.3
        for <outreachy@lists.linux.dev>; Fri, 22 Apr 2022 06:33:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=SSzBkjMJuCHeJx2Pu4aS83z4goHTE74keZ/qqMMfuhA=;
        b=pdXwU9el90n1POz4nfj8QsiTcX9DfG9tM4whbkiza4N2KIeXrBHlZxGZ9reLzlm+s0
         1G1ptjkAGTBlPN+eiLUGBwXXG8VgifGHGYD2a/DrG14OeGf73pWa1WfcfEZK7FmLUphE
         FHDAlFHFImfO5YOYghNBJ0n7wvm9OoBL9WwHezpJpfAAziK6n1AmJES8ygXYzNLTJjfT
         NB1CwTWxjhI/+JjvbuxgprD6y3InrJLD9izkkLLXh2GNor1g3pi1/0faYg7uwb+zg7Gj
         GFNpG4aWRph7E1T+mXGEYI/6rUocYpTagm81+ww9c/iAiZa7UA7lL5+yUZBTCPz6DDgB
         NzOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SSzBkjMJuCHeJx2Pu4aS83z4goHTE74keZ/qqMMfuhA=;
        b=jWXcyJcygQdVX7FG5PiDOjWuV6+XBC+yCsOth9Nnl66KL1AAf6ezs4kQ+7aSf5Do8a
         Cq46kkJOZ9lFswleZhIvff7MnJ5llQnZTroTaxbOav711OMbBlUys0rqQVMtteWDNJTG
         ie+75TY3dkg6YDyD0bzI0gJ97iR3dhbnCMqMt0rDKlflH6D8mNuBbOYayw9SNoU7cuv1
         DjL08PVNVW2eotVu43okjhF9IieDfYG1iPAahu6zSXUtt7lI3Rb1ftqM1B3WpDWFNoCZ
         kCN+HUMo6USHUDthiNreWXmCwMyfJnwaG00MS+OBorHjYVuDUdGCY8liZlAnsQs+7H8/
         huIw==
X-Gm-Message-State: AOAM531f4K2zQgNr5jiXqxjv5CXiVCL+Y5ak1GErX7jErIXXs/9hMm7v
	+olmxVYHkRK/HSF49WLxpAYptQKTwUoAtA==
X-Google-Smtp-Source: ABdhPJxgToPmJWgewVsHFQryinVlA4PpvFcNIna3LchciFNaCobmyWc5DI9azV1+2JjWCghKRCWIxw==
X-Received: by 2002:a05:6830:3153:b0:605:84df:bb59 with SMTP id c19-20020a056830315300b0060584dfbb59mr1258471ots.223.1650634397125;
        Fri, 22 Apr 2022 06:33:17 -0700 (PDT)
Received: from bertie (072-190-140-117.res.spectrum.com. [72.190.140.117])
        by smtp.gmail.com with ESMTPSA id n35-20020a05687055a300b000e1e2ab91e4sm622744oao.39.2022.04.22.06.33.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Apr 2022 06:33:16 -0700 (PDT)
From: Rebecca Mckeever <remckee0@gmail.com>
To: outreachy@lists.linux.dev
Cc: Mike Rapoport <rppt@kernel.org>,
	linux-mm@kvack.org,
	linux-kernel@vger.kernel.org,
	David Hildenbrand <david@redhat.com>,
	Rebecca Mckeever <remckee0@gmail.com>
Subject: [PATCH v3 1/5] memblock tests: update style of comments for memblock_add_*() functions
Date: Fri, 22 Apr 2022 08:32:58 -0500
Message-Id: <2ea997e7b5c4737d674a2e5d9288938d557cb0c3.1650633253.git.remckee0@gmail.com>
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

