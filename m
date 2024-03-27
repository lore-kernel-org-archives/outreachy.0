Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9847912E1F1
	for <outreachy@lists.linux.dev>; Wed, 27 Mar 2024 15:52:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711554770; cv=none; b=pFRyKqdzsqu46cqFTYpdoAHaaJhO6Vs8w6iOQEox5WG1qumzI17cTtjjLccUlKz3/Wvz8yTkIm8IWwgLbkaEr2yy5wdjse9KHFnq3DUBgt67auW1qJgkU7Wo/sJ48NZ46jbz5MqzbG49i1FtsdGt6SM3ZUm3ILShS4a1/1uxvCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711554770; c=relaxed/simple;
	bh=9BsTBttaNeQ6a5gfuegSsQASYTAJUBLcoEYCHb2HPGo=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=JKft/DQ5gKl+bKMcHmIfvJhGq6L/LLZ/m6jEC5Oj1Bi4vW6upXX1+5hdUaM9SA+TmfPK/tqv5HE/CjB4UMSzeDOzdWDlS4U/LKZ0Oae6QQnmk05zPL7sw507I5stXHRgWdjJl8KZEMIlLL+PgTP3+noJWdSHtjem+L23yjOh7hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XjWiEW0m; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XjWiEW0m"
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-56c197d042fso3876987a12.0
        for <outreachy@lists.linux.dev>; Wed, 27 Mar 2024 08:52:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711554766; x=1712159566; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GS0Ob4jU/G84Ddkdqu+odFrukFdSS5ojkXiPchkzhv4=;
        b=XjWiEW0mVEpxd8atTyXKybCQ4tBAgNXst+xjla0Tv7HMZz87O+H11DShFVuo6kjLuA
         gWZP7VCAxDe6Pz35mCMNrHccZf+67Me7opHOxtHT9o9mCTRVGDOzJLUzs6P74W+hFL+z
         47KJPKpLlOhqJiPsWr3P+t14zwtZqWk3+bl72XKGGqM7bhA+Gtfo3u1TxJyIU9kJzEy/
         xegyywbG/C/CRiSG+T7kJV8OpfW9Je6k9iKkAQKrY6UEu8abNz61MN2/0ywcY+ThVyOK
         Z0jtmYdlYKrTRglLsTFYJpXy1R/4EzQ1gRUe7lTKSnYc12LDmd86tOQPqkdUpiuBAc0F
         GxlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711554766; x=1712159566;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GS0Ob4jU/G84Ddkdqu+odFrukFdSS5ojkXiPchkzhv4=;
        b=Jl2ls/RX2Ljs34RRFiLK9NFpuxMv5N1f3eyu+sDF0S2Q/KYO3/FHdGr2FZ5jkt/lWg
         Q1tH9zKNfdCtoP6GBlX4PDJ7njhCCsD+3dSVkzXQySq5v8bUiURFXaGx5IOnt+oGXf8s
         o8F5y5PBmJ3Rx45bZ2JWOFDRXdO47ktsDk3h4LVa9kfDaEAbbI8BEIfRWW7fhQscdJ++
         SYCe5UfA40Ix0AwsKzKyi1RfVSRwzFL9SCNdfYYoPxMJTdmbWxx6/cMhAnONHe7Wv31Y
         8IXo2TIwe0GxNqpcZzJFgzDz+zCN4GS1rbqdkn6NSLuIfuEOEluZ60zLh6KjWzxMh2Ue
         pVHA==
X-Forwarded-Encrypted: i=1; AJvYcCXVbkcMyG1hyeBez3pGsuG2ib1i0WSmApurM3LIbrinj5/JP6SGmazwzz2hAhu6rZIA/qq7b45exhePNf4c017/S0Rb7sRnPQ5L
X-Gm-Message-State: AOJu0YyGWu06F4rqrpyGuEg3r1uF87kKG9gjt0DId1MvdCtwl1bvTo/L
	XuSyFvkjyQKkl2JHdel62XjpgwMGHGK7ytMrxP373yVq17JZRYXr4u3yEGfs7Xc=
X-Google-Smtp-Source: AGHT+IGLrOMRFuN60KG3htD+Q2E1fSKnz7NJueT1L3ZIYFkRf8T6ndZAbIgxDLkY9aDL7cQ5wIbIzw==
X-Received: by 2002:a50:ab52:0:b0:566:4a85:ceba with SMTP id t18-20020a50ab52000000b005664a85cebamr134223edc.1.1711554765432;
        Wed, 27 Mar 2024 08:52:45 -0700 (PDT)
Received: from ubuntu-focal.zuku.co.ke ([197.237.50.252])
        by smtp.gmail.com with ESMTPSA id x1-20020a056402414100b0056c4372c161sm399414eda.55.2024.03.27.08.52.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Mar 2024 08:52:45 -0700 (PDT)
From: Dorine Tipo <dorine.a.tipo@gmail.com>
To: mic@digikod.net,
	skhan@linuxfoundation.org,
	outreachy@lists.linux.dev
Cc: Dorine Tipo <dorine.a.tipo@gmail.com>,
	"Fabio M . De Francesco" <fabio.maria.de.francesco@linux.intel.com>
Subject: [PATCH v2] Add Landlock test for io_uring IORING_OP_OPENAT operation
Date: Wed, 27 Mar 2024 13:20:01 +0000
Message-Id: <20240327132001.30576-1-dorine.a.tipo@gmail.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch expands Landlock test coverage to include io_uring operations.
It introduces a test for IORING_OP_OPENAT with Landlock rules, verifying
allowed and disallowed access. This mitigates potential security
vulnerabilities by ensuring Landlock controls access through io_uring.

It also updates the Makefile to include -luring in the LDLIBS.
This ensures the test code has access to the necessary liburing
library for io_uring operations.

Signed-off-by: Dorine Tipo <dorine.a.tipo@gmail.com>
---
Changes since V1:
V2: - Consolidated two dependent patches in the V1 series into one patch
      as suggested by <fabio.maria.de.francesco@linux.intel.com>
    - Updated the subject line to be more descriptive.

 tools/testing/selftests/landlock/Makefile  |   4 +-
 tools/testing/selftests/landlock/fs_test.c | 132 +++++++++++++++++++++
 2 files changed, 134 insertions(+), 2 deletions(-)

diff --git a/tools/testing/selftests/landlock/Makefile b/tools/testing/selftests/landlock/Makefile
index 348e2dbdb4e0..ab47d1dadb62 100644
--- a/tools/testing/selftests/landlock/Makefile
+++ b/tools/testing/selftests/landlock/Makefile
@@ -13,11 +13,11 @@ TEST_GEN_PROGS := $(src_test:.c=)
 TEST_GEN_PROGS_EXTENDED := true

 # Short targets:
-$(TEST_GEN_PROGS): LDLIBS += -lcap
+$(TEST_GEN_PROGS): LDLIBS += -lcap -luring
 $(TEST_GEN_PROGS_EXTENDED): LDFLAGS += -static

 include ../lib.mk

 # Targets with $(OUTPUT)/ prefix:
-$(TEST_GEN_PROGS): LDLIBS += -lcap
+$(TEST_GEN_PROGS): LDLIBS += -lcap -luring
 $(TEST_GEN_PROGS_EXTENDED): LDFLAGS += -static
diff --git a/tools/testing/selftests/landlock/fs_test.c b/tools/testing/selftests/landlock/fs_test.c
index 9a6036fbf289..9c8247995d42 100644
--- a/tools/testing/selftests/landlock/fs_test.c
+++ b/tools/testing/selftests/landlock/fs_test.c
@@ -21,7 +21,10 @@
 #include <sys/stat.h>
 #include <sys/sysmacros.h>
 #include <sys/vfs.h>
+#include <sys/types.h>
 #include <unistd.h>
+#include <liburing.h>
+#include <linux/io_uring.h>

 #include "common.h"

@@ -4874,4 +4877,133 @@ TEST_F_FORK(layout3_fs, release_inodes)
 	ASSERT_EQ(EACCES, test_open(TMP_DIR, O_RDONLY));
 }

+/* Test io_uring openat access control with landlock rules */
+static int test_ioring_op_openat(struct __test_metadata *const _metadata, const __u64 access, const char **paths, const int paths_size)
+{
+	struct io_uring ring;
+	struct io_uring_sqe *sqe;
+
+	const char *allowed_paths[] = {
+		file1_s1d1, file2_s1d1,
+		file1_s1d2, file2_s1d2,
+		file1_s1d3, file2_s1d3,
+		file1_s2d1, file1_s2d2,
+		file1_s2d3, file2_s2d3,
+		file1_s3d1,
+	};
+	const char *disallowed_paths[] = {
+		/* dir_s3d2 is a mount point. */
+		dir_s3d2,
+		dir_s3d3,
+	};
+
+	/* Test Allowed Access */
+	const struct rule allowed_rule[] = {
+		{
+			.path = allowed_paths[0],
+			.access = LANDLOCK_ACCESS_FS_READ_FILE |
+				  LANDLOCK_ACCESS_FS_WRITE_FILE,
+		},
+	};
+	int allowed_ruleset_fd = create_ruleset(_metadata, allowed_rule[0].access, allowed_rule);
+
+	ASSERT_LE(0, allowed_ruleset_fd);
+
+	int ret = io_uring_queue_init(32, &ring, 0);
+
+	ASSERT_EQ(0, ret);
+
+	/* Test each allowed path */
+	for (int i = 0; i < ARRAY_SIZE(allowed_paths); ++i) {
+		sqe = io_uring_get_sqe(&ring);
+		io_uring_prep_openat(sqe, AT_FDCWD, allowed_paths[i], O_RDONLY,
+				     allowed_ruleset_fd);
+		/* Verify successful SQE preparation */
+		ASSERT_EQ(0, ret);
+
+		if (ret != 0)
+			return ret;
+
+		ret = io_uring_submit(&ring);
+		/* Verify 1 submission completed */
+		ASSERT_EQ(1, ret);
+	}
+
+	/* Test Disallowed Access */
+	const struct rule disallowed_rule[] = {
+		{
+			.path = disallowed_paths[0],
+			.access = 0,
+		}
+
+	};
+	int disallowed_ruleset_fd = create_ruleset(_metadata, disallowed_rule[0].access, disallowed_rule);
+
+	ASSERT_LE(0, disallowed_ruleset_fd);
+
+	/* Test each disallowed path */
+	for (int i = 0; i < ARRAY_SIZE(disallowed_paths); ++i) {
+		sqe = io_uring_get_sqe(&ring);
+		io_uring_prep_openat(sqe, AT_FDCWD, disallowed_paths[i], O_RDONLY, disallowed_ruleset_fd);
+		/* Verify successful SQE preparation */
+		ASSERT_EQ(1, ret);
+
+		if (ret != 0)
+			return ret;
+
+		ret = io_uring_submit(&ring);
+		/* Verify 1 submission completed */
+		ASSERT_EQ(0, ret);
+	}
+
+	/*  Cleanup: close ruleset fds, etc. */
+	close(allowed_ruleset_fd);
+	close(disallowed_ruleset_fd);
+
+	return 0;
+}
+
+/* clang-format off */
+FIXTURE(openat_test) {
+	struct __test_metadata *metadata;
+	const char *allowed_paths[11];
+	const char *disallowed_paths[2];
+};
+
+/* clang-format on */
+
+FIXTURE_SETUP(openat_test)
+{
+	/* initialize metadata, allowed_paths, and disallowed_paths */
+	self->metadata = _metadata;
+	const char *temp_allowed_paths[] = {
+		file1_s1d1, file2_s1d1, file1_s1d2, file2_s1d2,
+		file1_s1d3, file2_s1d3, file1_s2d1, file1_s2d2,
+		file1_s2d3, file2_s2d3, file1_s3d1};
+
+	memcpy(self->allowed_paths, temp_allowed_paths, sizeof(temp_allowed_paths));
+
+	const char *temp_disallowed_paths[] = {dir_s3d2, dir_s3d3};
+
+	memcpy(self->disallowed_paths, temp_disallowed_paths, sizeof(temp_disallowed_paths));
+}
+
+FIXTURE_TEARDOWN(openat_test)
+{
+	/* Clean up test environment */
+}
+
+TEST_F_FORK(openat_test, test_ioring_op_openat_allowed)
+{
+	test_ioring_op_openat(self->metadata, LANDLOCK_ACCESS_FS_READ_FILE |
+			      LANDLOCK_ACCESS_FS_WRITE_FILE, self->allowed_paths,
+			      ARRAY_SIZE(self->allowed_paths));
+}
+
+TEST_F_FORK(openat_test, test_ioring_op_openat_disallowed)
+{
+	test_ioring_op_openat(self->metadata, 0, self->disallowed_paths,
+			      ARRAY_SIZE(self->disallowed_paths));
+}
+
 TEST_HARNESS_MAIN
--
2.25.1

