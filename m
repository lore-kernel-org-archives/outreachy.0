Received: from mail-oo1-f65.google.com (mail-oo1-f65.google.com [209.85.161.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D23D07A
	for <outreachy@lists.linux.dev>; Fri, 22 Apr 2022 13:33:24 +0000 (UTC)
Received: by mail-oo1-f65.google.com with SMTP id f13-20020a4aa68d000000b0033a2c53d0baso1413291oom.0
        for <outreachy@lists.linux.dev>; Fri, 22 Apr 2022 06:33:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=tNoQl+sfpyAeueHKt3p64baur4SRIlT3Mj6rERAMI1U=;
        b=ZkZJH8DeJTV2QEF/sLGsBvw72C6OMsR+FICTZFvE7+T0kIjcKfM/AIiu/2y+GLDwbx
         igQ+D//IoSZCQsdhRTJHMcoMC0K64EiDvTREklRTVFJWHze/rAOPq8XzP+bQFz/scUDe
         D2+I34OCJPRgg6TG0RMs8Qy5ysy1AnHz7KuFXzTS52CYdkT2pgX32F1f22XM3SaE5GRJ
         v8zjKTTWXPZPrBFG4SMPCAPw3DDvm0NayjBpoTvzKTYyqqBt8dVmk+WzD/8GjwWPfqo3
         N1a23ieOTECnnDQcv09Dj6vtz0jnPdn/icxvv8n134KDhfdMOoFWoYI3fiXzI5bwPTpJ
         ZdTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=tNoQl+sfpyAeueHKt3p64baur4SRIlT3Mj6rERAMI1U=;
        b=LksFxkjO9RFia3XJzaMU0VNgSEgoT3HG+r1Kp57zU6FM978KWlgGskBRaOOCmFYb8b
         WH+DBCjDqLyAJNcIzKmKZSmHeP7sJCdHQZz1uV72gVKUXDquMGVrPOWoA9pB2LvDYpT7
         K/YDRhKLq3hl6Su26JuKgI1riG5HvZiUP9hArezocLhZAeJknQq+ARY8f3e+zqUtS2zc
         4z8rJhQWiWUnQHyvvYZHXZnr+XRwY0xJcC+y9pGwo2vJVK7xfXRolCgYs027ppCxf9Q2
         LZzASdVKfEed3/9WAMUEOl0XN+kE9lmH6sZ5Y6+gtVt/pfUTLvC+bcFijrlijsTKW01C
         ODjQ==
X-Gm-Message-State: AOAM530yQd1YDLxH0OGdKak4JdTR1oIMJr21VOqswctHAA7cNj7d3zl6
	1BTyHHYGi8BKxUBCN1K9BKs5ucaBf31lmQ==
X-Google-Smtp-Source: ABdhPJxSU/zThx4wKmESf3C+FPCzLNZeY1V1RBDCVU/BjmOt+fWcoMfXS/9QAM9GK9EneSJf+MrSPA==
X-Received: by 2002:a4a:968e:0:b0:324:22c6:1a31 with SMTP id s14-20020a4a968e000000b0032422c61a31mr1553415ooi.93.1650634403983;
        Fri, 22 Apr 2022 06:33:23 -0700 (PDT)
Received: from bertie (072-190-140-117.res.spectrum.com. [72.190.140.117])
        by smtp.gmail.com with ESMTPSA id c25-20020a0568301af900b0060579b0abe2sm708887otd.61.2022.04.22.06.33.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Apr 2022 06:33:23 -0700 (PDT)
From: Rebecca Mckeever <remckee0@gmail.com>
To: outreachy@lists.linux.dev
Cc: Mike Rapoport <rppt@kernel.org>,
	linux-mm@kvack.org,
	linux-kernel@vger.kernel.org,
	David Hildenbrand <david@redhat.com>,
	Rebecca Mckeever <remckee0@gmail.com>
Subject: [PATCH v3 4/5] memblock tests: update style of comments for memblock_free_*() functions
Date: Fri, 22 Apr 2022 08:33:01 -0500
Message-Id: <4952e3dce1147685a7ad0ae41287348e9e3f7f68.1650633253.git.remckee0@gmail.com>
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

