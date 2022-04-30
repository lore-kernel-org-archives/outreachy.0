Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com [209.85.167.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEB62F35
	for <outreachy@lists.linux.dev>; Sat, 30 Apr 2022 22:49:59 +0000 (UTC)
Received: by mail-oi1-f193.google.com with SMTP id r8so12080401oib.5
        for <outreachy@lists.linux.dev>; Sat, 30 Apr 2022 15:49:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=qLuBgx3aGNrQr1Hd6LLIUfj9oL8+d6PIj9EzKX9KAkA=;
        b=fToJ7y+Ajk+cmYzGp7cGLtL/BpQuBP1P1jlQ3oncc7zoizJVxenp+9PX01mlJ8Ig6+
         nbU5/9rqLBkEivdoHfOToJ5caRTeL0GeuKpnDUuGdS1nLvRuKhHh9xDmDp8giyj70rMO
         /aRx5PG28R6D4YMrcpOo8UDrsp0yLGbgpaQBVuZrCQKbjNprtF1jp1e4QD8Ih0E8y5BI
         XzW/5QYXjqApyPnrcbqITIal/AP6XM490MNfNaZ21o8HE9T9ZIOubrBSAVXnKpF9vz+s
         +/TPN3xuK1l8SCOYGGDjpfxUi5BQIupERKU8xDOdJ1Or4Tce0Tw9LDtJPpc5ChkalPx4
         GDqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qLuBgx3aGNrQr1Hd6LLIUfj9oL8+d6PIj9EzKX9KAkA=;
        b=wEZM9LZ7jn7KrTRAmwjpsNZBUiQ1nASkdneT2JD4uiLS0dVuR0mEBU1MwpH1eJmycY
         8lz5o0dTvwbwZvB67TuNIxtEEtQTbVigXaRRERtIq1KUiiTRCD1/kzQj9LxDkXBn9fub
         G3Pl05wEBfFjdZdTjWrrzxz6mI0XU31DNAAxU59ShF864LKbqWtFp5EAuBFk9FGDeGJu
         +QXslVwAl7O8u0fIwheUwNT7u/RIXB+bTlH9Iw9ucViGOC7f/4dPZ9/F9aXvtskEpXpl
         AfZ07HoE38La+0wSRiwYexZYs++Dd/ISPgGNEsUZY0zFFO4EUTJt83IV+nOyCYmho9r4
         17hA==
X-Gm-Message-State: AOAM532TLNkbQyzFto2yq+kyJCeWLF3xO4QIIx9/MoQhRhirWRbRoAVL
	dsgJkKO/qmQD1lbYMEgURyw=
X-Google-Smtp-Source: ABdhPJzVlTi0naNqLnoQa74Ympt3loKHlOay3fdVfQHoIbfLvMbm7mPEM2yirkXCvQIKNY4QUSj38Q==
X-Received: by 2002:a05:6808:21a3:b0:325:7d2f:87b2 with SMTP id be35-20020a05680821a300b003257d2f87b2mr2677565oib.102.1651358998281;
        Sat, 30 Apr 2022 15:49:58 -0700 (PDT)
Received: from bertie (072-190-140-117.res.spectrum.com. [72.190.140.117])
        by smtp.gmail.com with ESMTPSA id y203-20020aca4bd4000000b00325cda1ffadsm1027636oia.44.2022.04.30.15.49.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Apr 2022 15:49:57 -0700 (PDT)
From: Rebecca Mckeever <remckee0@gmail.com>
To: outreachy@lists.linux.dev
Cc: Mike Rapoport <rppt@kernel.org>,
	linux-mm@kvack.org,
	linux-kernel@vger.kernel.org,
	David Hildenbrand <david@redhat.com>,
	Rebecca Mckeever <remckee0@gmail.com>
Subject: [PATCH v4 3/5] memblock tests: update style of comments for memblock_remove_*() functions
Date: Sat, 30 Apr 2022 17:49:38 -0500
Message-Id: <e3b58cf5941e3255b0b7b3df5669b44811ecd336.1651357434.git.remckee0@gmail.com>
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

Update comments in memblock_remove_*() functions to match the style used
in tests/alloc_*.c by rewording to make the expected outcome more apparent
and, if more than one memblock is involved, adding a visual of the
memory blocks.

If the comment has an extra column of spaces, remove the extra space at
the beginning of each line for consistency and to conform to Linux kernel
coding style.

Signed-off-by: Rebecca Mckeever <remckee0@gmail.com>
---
 tools/testing/memblock/tests/basic_api.c | 111 +++++++++++++++++------
 1 file changed, 81 insertions(+), 30 deletions(-)

diff --git a/tools/testing/memblock/tests/basic_api.c b/tools/testing/memblock/tests/basic_api.c
index 6054b83962ca..37b7cc075b0f 100644
--- a/tools/testing/memblock/tests/basic_api.c
+++ b/tools/testing/memblock/tests/basic_api.c
@@ -550,14 +550,22 @@ static int memblock_reserve_checks(void)
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
+ * A simple test that tries to remove a region r1 from the array of
+ * available memory regions. By "removing" a region we mean overwriting it
+ * with the next region r2 in memblock.memory:
+ *
+ *  |  ......          +----------------+  |
+ *  |  : r1 :          |       r2       |  |
+ *  +--+----+----------+----------------+--+
+ *                     ^
+ *                     |
+ *                     rgn.base
+ *
+ * Expect to add two memory blocks r1 and r2 and then remove r1 so that
+ * r2 is the first available region. The region counter and total size
+ * are updated.
+ */
 static int memblock_remove_simple_check(void)
 {
 	struct memblock_region *rgn;
@@ -587,11 +595,22 @@ static int memblock_remove_simple_check(void)
 	return 0;
 }
 
- /*
-  * A test that tries to remove a region that was not registered as available
-  * memory (i.e. has no corresponding entry in memblock.memory). It verifies
-  * that array, regions counter and total size were not modified.
-  */
+/*
+ * A test that tries to remove a region r2 that was not registered as
+ * available memory (i.e. has no corresponding entry in memblock.memory):
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
@@ -621,11 +640,23 @@ static int memblock_remove_absent_check(void)
 }
 
 /*
- * A test that tries to remove a region which overlaps with the beginning of
- * the already existing entry r1 (that is r1.base < r2.base + r2.size). It
- * checks if only the intersection of both regions is removed from the available
- * memory pool. The test also checks if the regions counter and total size are
- * updated to expected values.
+ * A test that tries to remove a region r2 that overlaps with the
+ * beginning of the already existing entry r1
+ * (that is r1.base < r2.base + r2.size):
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
@@ -661,11 +692,21 @@ static int memblock_remove_overlap_top_check(void)
 }
 
 /*
- * A test that tries to remove a region which overlaps with the end of the
- * first entry (that is r2.base < r1.base + r1.size). It checks if only the
- * intersection of both regions is removed from the available memory pool.
- * The test also checks if the regions counter and total size are updated to
- * expected values.
+ * A test that tries to remove a region r2 that overlaps with the end of
+ * the already existing region r1 (that is r2.base < r1.base + r1.size):
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
@@ -698,13 +739,23 @@ static int memblock_remove_overlap_bottom_check(void)
 }
 
 /*
- * A test that tries to remove a region which is within the range of the
- * already existing entry (that is
- * (r1.base < r2.base) && (r2.base + r2.size < r1.base + r1.size)).
- * It checks if the region is split into two - one that ends at r2.base and
- * second that starts at r2.base + size, with appropriate sizes. The test
- * also checks if the region counter and total size were updated to
- * expected values.
+ * A test that tries to remove a region r2 that is within the range of
+ * the already existing entry r1 (that is
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
+ * another that starts at r2.base + r2.size, with appropriate sizes. The
+ * region counter and total size are updated.
  */
 static int memblock_remove_within_check(void)
 {
-- 
2.32.0

