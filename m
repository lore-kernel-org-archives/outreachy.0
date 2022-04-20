Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com [209.85.167.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24AF21373
	for <outreachy@lists.linux.dev>; Wed, 20 Apr 2022 11:19:20 +0000 (UTC)
Received: by mail-oi1-f193.google.com with SMTP id z2so1642224oic.6
        for <outreachy@lists.linux.dev>; Wed, 20 Apr 2022 04:19:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ocpsacXCMhu5GBT0i/LaXz+wmK5Kqsy/4v93G9iC2Rc=;
        b=mmplh0H/itlMHz2vLr1LN5tpZ4/fUG5mT1vmfD1oSsoCfI7cESf3kCCDptnBJXg7Mx
         loOp9QJykorv2QlNs1AOCAwtQ+/LnPF1D1H1JnnlOEzstsZkU4N/rS5pI6U4zK0D42VE
         e9jHrtKUBHBYe0pgX0M0RU//vwX8tgxU3p+bijtyizTTjshlC5OFGmiDgR1pETSH24/n
         B1dw7JJxMQgQP64KasBCOLD1DAgHesgfFeKM37Bw0YvNHSEHBDCId2w8YHwcU+rWhNCR
         UUqSTFgXVG6uaKQfmPi7rMdQk/NCIFcSMWzeugIZ6fIBdyl3fgU4utt3iGuS9w8YH0TN
         uIWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ocpsacXCMhu5GBT0i/LaXz+wmK5Kqsy/4v93G9iC2Rc=;
        b=bAdPz4fbJ25TsI77XAGwwFOiBT+lQIkufOkemA6YUe4R3QmOp1gLVavATpjnsEYn8N
         2doj6rGjLM5LaMXX9WL0rjzjkY9vHwOVVUz0oXX7EKQbSaZ7q7sKaenUihNEBze0Yp65
         PVeq9F6b8zsF1rKdzk1xRI0qBvFuJiUfv3tiVqKI6AKD4T7QyrWqY7JX2z5pTzQD5HaE
         ++z/MXL5GKrnlFRSCG+Jh3oz4/9alwiMDn0XODDPjfzXS7ALtM5Qn/lfUHzP3xv08vv8
         yIn6inuZNR+jTmh7DhHOht72oa7nv4vxlrAvoNi6VoJr55V24fWlg+99lqqgmJCwPBao
         /imA==
X-Gm-Message-State: AOAM5314/bzMHyinFs9coLVMFMYH1kXPcqqodACrqPsaGy14IBUkp2L/
	910XqawsPjS5ML4zwkLHXW5YnAaIXERhCQ==
X-Google-Smtp-Source: ABdhPJzCLioSonUcKlvI1uTh9yYyuPILIAJL12KvTLTjIslEPEY32uLdlGClfc6dNR5E/EQZpzKwEw==
X-Received: by 2002:a05:6808:1b0a:b0:2fa:6fdd:e2ee with SMTP id bx10-20020a0568081b0a00b002fa6fdde2eemr1315310oib.237.1650453559240;
        Wed, 20 Apr 2022 04:19:19 -0700 (PDT)
Received: from bertie (072-190-140-117.res.spectrum.com. [72.190.140.117])
        by smtp.gmail.com with ESMTPSA id 5-20020a9d0105000000b005fbe5093eb0sm6374070otu.54.2022.04.20.04.19.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Apr 2022 04:19:18 -0700 (PDT)
From: Rebecca Mckeever <remckee0@gmail.com>
To: outreachy@lists.linux.dev
Cc: Mike Rapoport <rppt@kernel.org>,
	linux-mm@kvack.org,
	linux-kernel@vger.kernel.org,
	David Hildenbrand <david@redhat.com>,
	Rebecca Mckeever <remckee0@gmail.com>
Subject: [PATCH 2/3] memblock tests: update style of comments for memblock_reserve_*() functions
Date: Wed, 20 Apr 2022 06:19:01 -0500
Message-Id: <6f385ad37eeb81331f9556fdddeced80ae32bded.1650452552.git.remckee0@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <cover.1650452552.git.remckee0@gmail.com>
References: <cover.1650452552.git.remckee0@gmail.com>
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

Signed-off-by: Rebecca Mckeever <remckee0@gmail.com>
---
 tools/testing/memblock/tests/basic_api.c | 70 +++++++++++++++++-------
 1 file changed, 51 insertions(+), 19 deletions(-)

diff --git a/tools/testing/memblock/tests/basic_api.c b/tools/testing/memblock/tests/basic_api.c
index cdf112d25343..834d8705ff8a 100644
--- a/tools/testing/memblock/tests/basic_api.c
+++ b/tools/testing/memblock/tests/basic_api.c
@@ -306,8 +306,8 @@ static int memblock_add_checks(void)
  /*
   * A simple test that marks a memory block of a specified base address
   * and size as reserved and to the collection of reserved memory regions
-  * (memblock.reserved). It checks if a new entry was created and if region
-  * counter and total memory size were correctly updated.
+  * (memblock.reserved). Expect to create a new entry. The region counter
+  * and total memory size are updated.
   */
 static int memblock_reserve_simple_check(void)
 {
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
@@ -411,10 +425,19 @@ static int memblock_reserve_overlap_top_check(void)
  * A test that tries to mark two memory blocks as reserved, where the
  * second one overlaps with the end of the first entry (that is
  * r2.base < r1.base + r1.size).
- * It checks if two entries are merged into one region that starts at r1.base
- * and has size of two regions minus their intersection. It verifies that
- * memblock can still see only one entry and has a correct total size of the
- * reserved memory.
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
@@ -451,9 +474,18 @@ static int memblock_reserve_overlap_bottom_check(void)
  * A test that tries to mark two memory blocks as reserved, where the second
  * one is within the range of the first entry (that is
  * (r1.base < r2.base) && (r2.base + r2.size < r1.base + r1.size)).
- * It checks if two entries are merged into one region that stays the
- * same. The counter and total size of available memory are expected to not be
- * updated.
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

