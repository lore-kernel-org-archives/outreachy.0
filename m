Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com [209.85.167.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 113457A
	for <outreachy@lists.linux.dev>; Fri, 22 Apr 2022 12:55:59 +0000 (UTC)
Received: by mail-oi1-f193.google.com with SMTP id b188so8889565oia.13
        for <outreachy@lists.linux.dev>; Fri, 22 Apr 2022 05:55:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=tNoQl+sfpyAeueHKt3p64baur4SRIlT3Mj6rERAMI1U=;
        b=ji65TxCA3tmlfdVknwpKYywGb2HaRNRxSvUyvFDLl9DdADHkKFKtq/axLT5OWcQLXR
         VBbUdCpfytKzdayozh+lb3fjIFUqs9q1pmdG6fgRgGyXB9haX4xZcM42qJmEIy3ZKCa5
         pJQUR/2S8ratEbnuZSzo65Oc7Nu9AgV3JKJYRTigF/y98eSK03Z4VJuX/Z5OQjlONBtl
         FSp8g+0TY/bxP/AicBw7hgDrSSYCY/k4SBA9IKGPAaFX5METAsqmej7aLmAhkkQkTwQV
         Ng+GESGZ0bmX2vj3jiBKYh+ZsnkuivOFECYqCgXhnQN53JahE35kNOtRUSMSVLoOyhdj
         HnEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=tNoQl+sfpyAeueHKt3p64baur4SRIlT3Mj6rERAMI1U=;
        b=GDlEfVAxKV1j5IADVOk1mv1hg9cNkcMIRXOO0oVdA/WrUQC5DK4rLlbH7QLIqoeAA1
         E9IG01iEuIhyUc+NEWSQSERCKja1VRFulJMHYZCBxLLx6mjRPCw5XcHdP31n69tsmKvt
         mIv7C6KzpL89Zv8LlwIjWza+uRleyVuhgEO4ZVcZeT+2EoDIUaPrvg5/ZpVNwk9r/iO2
         OY3kPS45k/SAew9LzqyXbyNA7iSZ5uwzgz3+3Dfh1K8jPZmbGvX5MgDh/LO8/wlOeRCj
         td0ds8t0+cPjxixNizP87qph5PJ66NtGInuD/FPfgWNBjcb5KV4XMMPc/NzmTiiUyt9X
         bC2A==
X-Gm-Message-State: AOAM530ODP6aH/pMEWlYss+Xswx4gEo9YHIDl4oZ/VadUw2iRXXXfTYe
	ObsrB8AD8iz4ygEnNSDt6hk=
X-Google-Smtp-Source: ABdhPJyJrr0CiATpo13Emrrr6nQwwKUUt71Wrui52IDGpgAulqrm9p4NhEldrtfJveTtJYcerJqKGQ==
X-Received: by 2002:aca:a907:0:b0:322:6cd9:2533 with SMTP id s7-20020acaa907000000b003226cd92533mr6447627oie.74.1650632158209;
        Fri, 22 Apr 2022 05:55:58 -0700 (PDT)
Received: from bertie (072-190-140-117.res.spectrum.com. [72.190.140.117])
        by smtp.gmail.com with ESMTPSA id e47-20020a9d01b2000000b006058d31851esm339289ote.77.2022.04.22.05.55.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Apr 2022 05:55:57 -0700 (PDT)
From: Rebecca Mckeever <remckee0@gmail.com>
To: outreachy@lists.linux.dev
Cc: Mike Rapoport <rppt@kernel.org>,
	linux-mm@kvack.org,
	linux-kernel@vger.kernel.org,
	David Hildenbrand <david@redhat.com>,
	Rebecca Mckeever <remckee0@gmail.com>
Subject: [PATCH v2 4/4] memblock tests: update style of comments for memblock_free_*() functions
Date: Fri, 22 Apr 2022 07:55:38 -0500
Message-Id: <4952e3dce1147685a7ad0ae41287348e9e3f7f68.1650631746.git.remckee0@gmail.com>
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

Update comments in memblock_free_*() functions to match the style used
in tests/alloc_*.c by rewording to make the expected outcome more apparent
and, if more than one memblock is involved, adding a visual of the
memory blocks.

If the comment has an extra column of spaces, remove the extra space at
the beginning of each line for consistency and to conform to Linux kernel
coding style.

Signed-off-by: Rebecca Mckeever <remckee0@gmail.com>
---
 tools/testing/memblock/tests/basic_api.c | 90 ++++++++++++++++++------
 1 file changed, 69 insertions(+), 21 deletions(-)

diff --git a/tools/testing/memblock/tests/basic_api.c b/tools/testing/memblock/tests/basic_api.c
index 08847dc5065e..f646350d370e 100644
--- a/tools/testing/memblock/tests/basic_api.c
+++ b/tools/testing/memblock/tests/basic_api.c
@@ -806,10 +806,17 @@ static int memblock_remove_checks(void)
 /*
  * A simple test that tries to free a memory block that was marked earlier
  * as reserved. By "freeing" a region we mean overwriting it with the next
- * entry in memblock.reserved. To check this is the case, the test reserves
- * two memory regions and verifies that the value of the latter was used to
- * erase r1 region.
- * The test also checks if the region counter and total size were updated.
+ * entry in memblock.reserved:
+ *
+ *  |              ......           +----+ |
+ *  |              : r1 :           | r2 | |
+ *  +--------------+----+-----------+----+-+
+ *                                  ^
+ *                                  |
+ *                                  rgn.base
+ *
+ * Expect to reserve two memory regions and then erase r1 region with the
+ * value of r2. The region counter and total size are updated.
  */
 static int memblock_free_simple_check(void)
 {
@@ -840,11 +847,22 @@ static int memblock_free_simple_check(void)
 	return 0;
 }
 
- /*
-  * A test that tries to free a region that was not marked as reserved
-  * (i.e. has no corresponding entry in memblock.reserved). It verifies
-  * that array, regions counter and total size were not modified.
-  */
+/*
+ * A test that tries to free a region that was not marked as reserved
+ * (i.e. has no corresponding entry in memblock.reserved):
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
+ * The array, regions counter and total size are not modified.
+ */
 static int memblock_free_absent_check(void)
 {
 	struct memblock_region *rgn;
@@ -875,10 +893,22 @@ static int memblock_free_absent_check(void)
 
 /*
  * A test that tries to free a region which overlaps with the beginning of
- * the already existing entry r1 (that is r1.base < r2.base + r2.size). It
- * checks if only the intersection of both regions is freed. The test also
- * checks if the regions counter and total size are updated to expected
- * values.
+ * the already existing entry r1 (that is r1.base < r2.base + r2.size):
+ *
+ *     +----+
+ *     | r2 |
+ *     +----+
+ *  |    ...+--------------+               |
+ *  |    :  |    r1        |               |
+ *  +----+--+--------------+---------------+
+ *       ^  ^
+ *       |  |
+ *       |  rgn.base
+ *       |
+ *       r1.base
+ *
+ * Expect that only the intersection of both regions is freed. The
+ * regions counter and total size are updated.
  */
 static int memblock_free_overlap_top_check(void)
 {
@@ -913,9 +943,17 @@ static int memblock_free_overlap_top_check(void)
 
 /*
  * A test that tries to free a region which overlaps with the end of the
- * first entry (that is r2.base < r1.base + r1.size). It checks if only the
- * intersection of both regions is freed. The test also checks if the
- * regions counter and total size are updated to expected values.
+ * first entry (that is r2.base < r1.base + r1.size):
+ *
+ *                   +----------------+
+ *                   |       r2       |
+ *                   +----------------+
+ *  |    +-----------+.....                |
+ *  |    |       r1  |    :                |
+ *  +----+-----------+----+----------------+
+ *
+ * Expect that only the intersection of both regions is freed. The
+ * regions counter and total size are updated.
  */
 static int memblock_free_overlap_bottom_check(void)
 {
@@ -951,11 +989,21 @@ static int memblock_free_overlap_bottom_check(void)
 /*
  * A test that tries to free a region which is within the range of the
  * already existing entry (that is
- * (r1.base < r2.base) && (r2.base + r2.size < r1.base + r1.size)).
- * It checks if the region is split into two - one that ends at r2.base and
- * second that starts at r2.base + size, with appropriate sizes. It is
- * expected that the region counter and total size fields were updated t
- * reflect that change.
+ * (r1.base < r2.base) && (r2.base + r2.size < r1.base + r1.size)):
+ *
+ *                    +----+
+ *                    | r2 |
+ *                    +----+
+ *  |    +------------+....+---------------+
+ *  |    |    rgn1    | r1 |     rgn2      |
+ *  +----+------------+----+---------------+
+ *       ^
+ *       |
+ *       r1.base
+ *
+ * Expect that the region is split into two - one that ends at r2.base and
+ * another that starts at r2.base + size, with appropriate sizes. The
+ * region counter and total size fields are updated.
  */
 static int memblock_free_within_check(void)
 {
-- 
2.32.0

