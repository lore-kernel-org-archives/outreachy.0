Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3987CFC17
	for <outreachy@lists.linux.dev>; Sat, 30 Mar 2024 13:15:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711804558; cv=none; b=krNrJhYlsh5hies3QKUklbM/Ygz7x4/stVYUQkLCW9yD2Sg1/fZSHus2lemES7xUFTkqu6hJb6JAgyD6+lpgTSnlUSAoNNgMsgAZHN2gw49iaupe91Ki+thkhUrFsLyRQIQN/vN3OY0XNEmGtWSiRphmCGrgu4v4qUcejL+/cyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711804558; c=relaxed/simple;
	bh=xiGpLqe5ebvNIIjGNQvPsRHDStDDmctlNXSbU+uXzOI=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=RFVITXHQJGBlZOJzoq1+YLv2GHrsVLdS3qhJpSnFJgFfhhVq0Vk1yxXXROJIVLY+3LWpucm9oDY+obmWD8oQBeicdH9Z4HdE1tp2P7thCYAd0ZG7Jhy1oZ9XCn+JiLjGlRGRqr8B25sw+D65TCqlUuHJIq3wK8oXh4GcaH2JVBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DvKjLvXh; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DvKjLvXh"
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a4734ae95b3so353555766b.0
        for <outreachy@lists.linux.dev>; Sat, 30 Mar 2024 06:15:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711804554; x=1712409354; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tf/GMj7lXI+wbB2mScNUlEOBgM967znxheftHQI8MrQ=;
        b=DvKjLvXhBFtC+Tw9e6fulDi0Yns8GIN3Dls4I74dpEZbYhJCXuNXDWDeSVb7gn9d/3
         WxHBYNR19NHccBYe9zicMQyDQRjRNFKO1VKF5SmBfUMEikxfCOz6uupTBgEIiLkH0ABh
         /K3wV1bvMl8ZcpPIVbZnQLoxkcjcMCw8x4Q+WJfe5szfeSjfIXaRNKx4JNo2+ylNGzO9
         075AyM7oxUhsqbYT5ENt+X0ayTB9SaaAyuq+UDQ68Vf0x3V685mzl/FuWn+HN29S16QC
         Gt/EJgZEJydXZmbgFfRkZpJJCFWiTbd+oAoTeyrTzkkdJff90nRbBc66oZOUHxIXg3/s
         6OAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711804554; x=1712409354;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tf/GMj7lXI+wbB2mScNUlEOBgM967znxheftHQI8MrQ=;
        b=GOQbGcsmYcOUWdNzkn+u+/RRqaMUJrtuXKURPUcoL9JpmPm7xvX+XTiLdW5lVGloqz
         YhydtJdVXwfQcry4Ca+a3yhVvk6NgqQv0noMjeZPVxbJTDioa1bCcIKNEIkUtQsrYsiL
         lo2fUQkQ9IoBPasevJrwdWKOotZ5nOOVSNRByFaeDKX7IKeHE45gvPuRlOrAf9r5rGVH
         oZ+aPwF9EcyC+FY9/mwEErJqY291AGmuvlAirQNUXL5zJAgyMA5hYSccRdpxFYi/rnDf
         0+B/qEMKv7HsPbKRZ+rooRZVaKN0rsmyRFHjmppWQXSkmBP9OIP3PLIrDCgDVpuOYzy7
         L25Q==
X-Forwarded-Encrypted: i=1; AJvYcCUMcO9Avw1dj/YZfBaid5J5EF0HnplLWWcMiW7D4BEpZl3YON2Yx5O5Mv5bFrsn4RvcNZ9AN3yKa7Hv8C68w0pjRoDi+gf8YdrQ
X-Gm-Message-State: AOJu0YwzjX58Jb+jZqaDMENIxFTpUyh055fwdQL3/ynENmGhgBfJc/7W
	WfKqNTYN2Nhk5zVSKq0e1CW7/zhhwUMOHwKUD4scIDb/XKLnyOAE
X-Google-Smtp-Source: AGHT+IHCHvHC1vL0OR1j6odtfWk25K5VXea1amb30FJIrlcoo252i6tPwZ2XBvv96Sg4e5V0Cc7Dnw==
X-Received: by 2002:a17:907:1b1c:b0:a4e:2c2d:32df with SMTP id mp28-20020a1709071b1c00b00a4e2c2d32dfmr3900853ejc.56.1711804554088;
        Sat, 30 Mar 2024 06:15:54 -0700 (PDT)
Received: from ubuntu-focal.zuku.co.ke ([197.237.50.252])
        by smtp.gmail.com with ESMTPSA id fx13-20020a170906b74d00b00a4a377ee13asm3071745ejb.218.2024.03.30.06.15.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Mar 2024 06:15:53 -0700 (PDT)
From: Dorine Tipo <dorine.a.tipo@gmail.com>
To: mic@digikod.net,
	skhan@linuxfoundation.org,
	outreachy@lists.linux.dev
Cc: Dorine Tipo <dorine.a.tipo@gmail.com>,
	Linux-kernel-mentees-request@lists.linuxfoundation.org,
	fabio.maria.de.francesco@linux.intel.com
Subject: [PATCH v3] selftests/landlock: Add tests for io_uring openat access control with Landlock rules
Date: Sat, 30 Mar 2024 12:48:17 +0000
Message-Id: <20240330124817.42591-1-dorine.a.tipo@gmail.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This v3 patch expands Landlock test coverage to include io_uring
operations. It also introduces a test for IORING_OP_OPENAT with Landlock
rules, verifying allowed and disallowed access. This makes sure that
IORING_OP_OPENAT is well covered from security vulnerabilities by
ensuring Landlock controls access through io_uring.

It also updates Makefile to include -luring in the LDLIBS variable.
This ensures the test code has access to the necessary library for
io_uring operations.

The patch includes several improvements to the test_ioring_openat(),
FIXTURE_SETUP() and FIXTURE_TEARDOWN() addressing feedback received on
the initial version.

Signed-off-by: Dorine Tipo <dorine.a.tipo@gmail.com>
---
Changes since V1:
V2: - Consolidated two dependent patches in the V1 series into one patch
      as suggested by Fabio.
    - Updated The subject line to be more descriptive.

V3: - Added "selftests/landlock" subject prefix
    - Revised wording in the commit message to accurately reflect the
      test functionality as suggested by Mickaël.
    - Updated the Fixture set_up and tear_down to create and remove the
      necesssary files and folders for testing access.
    - renamed allowed_ruleset_fd and disallowed_ruleset_fd to ruleset_fd
      as suggest by Mickaël.
    - Moved all variable declarations to the top of the function.
    - Refactored the code to test only one allowed and one restricted
      path instead of iterating through all the paths.
    - Added comments to explain what is happening in different blocks
      of code
    - Removed the clang-format markers.
    - Removed unused arguments in the function definition.
    - Added a final rule struct with a null path to the allowed_rule
      and disallowed_rule arrays as suggested by Fabio.
    - CC'd the missing mailing lists as suggested by Shuah.
    - All executables have been included in the .gitignore so no updates
      are necessary.

 tools/testing/selftests/landlock/Makefile  |   4 +-
 tools/testing/selftests/landlock/fs_test.c | 140 +++++++++++++++++++++
 2 files changed, 142 insertions(+), 2 deletions(-)

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
index 9a6036fbf289..7147c75b6f79 100644
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

@@ -4874,4 +4877,141 @@ TEST_F_FORK(layout3_fs, release_inodes)
 	ASSERT_EQ(EACCES, test_open(TMP_DIR, O_RDONLY));
 }

+/* Test io_uring's IORING_OP_OPENAT access control with landlock rules */
+static int test_ioring_op_openat(struct __test_metadata *const _metadata, const __u64 access, const char **paths)
+{
+	int ruleset_fd;
+	int ret;
+	struct io_uring ring;
+	struct io_uring_sqe *sqe;
+
+	/* Test Allowed Access */
+	const struct rule allowed_rule[] = {
+		{
+			.path = paths[0],
+			.access = access,
+		},
+		{
+			.path = NULL,
+		},
+	};
+
+	ruleset_fd = create_ruleset(_metadata, allowed_rule[0].access, allowed_rule);
+
+	ASSERT_LE(0, ruleset_fd);
+
+	ret = io_uring_queue_init(32, &ring, 0);
+
+	ASSERT_EQ(0, ret);
+
+	/* Test allowed path */
+	sqe = io_uring_get_sqe(&ring);
+
+	/* Prepare SQE  for the openat operation */
+	io_uring_prep_openat(sqe, AT_FDCWD, paths[0], O_RDONLY, ruleset_fd);
+
+	/* Verify successful SQE preparation */
+	ASSERT_EQ(0, ret);
+
+	if (ret != 0)
+		return ret;
+
+	ret = io_uring_submit(&ring);
+
+	/* Verify 1 submission completed */
+	ASSERT_EQ(1, ret);
+
+	/* Test Disallowed Access */
+	const struct rule disallowed_rule[] = {
+		{
+			.path = paths[0],
+			.access = 0,
+		},
+		{
+			.path = NULL,
+		},
+	};
+
+	ruleset_fd = create_ruleset(_metadata, disallowed_rule[0].access, disallowed_rule);
+
+	ASSERT_LE(0, ruleset_fd);
+
+	/* Test disallowed path */
+	sqe = io_uring_get_sqe(&ring);
+
+	/* Prepare SQE  for the openat operation */
+	io_uring_prep_openat(sqe, AT_FDCWD, paths[0], O_RDONLY, ruleset_fd);
+
+	/* Verify successful SQE preparation */
+	ASSERT_EQ(0, ret);
+
+	if (ret != 0)
+		return ret;
+
+	ret = io_uring_submit(&ring);
+	/* Verify 1 submission completed */
+	ASSERT_EQ(0, ret);
+
+	/*  Cleanup: close ruleset fds, etc. */
+	close(ruleset_fd);
+
+	return 0;
+}
+
+FIXTURE(openat_test) {
+	struct __test_metadata *metadata;
+	const char *allowed_paths[11];
+	const char *disallowed_paths[2];
+};
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
+
+	/* Create necessary directories and files */
+	for (int i = 0; i < sizeof(self->allowed_paths) / sizeof(char *); i++) {
+		create_file(self->metadata, self->allowed_paths[i]);
+	}
+
+	/* Create directories for disallowed paths */
+	for (int i = 0; i < sizeof(self->disallowed_paths) / sizeof(char *); i++) {
+		create_directory(self->metadata, self->disallowed_paths[i]);
+	}
+}
+
+FIXTURE_TEARDOWN(openat_test)
+{
+	/* Clean up test environment */
+	for (int i = 0; i < sizeof(self->allowed_paths) / sizeof(char *); i++) {
+		remove_path(self->allowed_paths[i]);
+	}
+
+	for (int i = 0; i < sizeof(self->disallowed_paths) / sizeof(char *); i++) {
+		remove_path(self->disallowed_paths[i]);
+	}
+}
+
+/* Test IORING_OP_OPENAT. */
+TEST_F_FORK(openat_test, test_ioring_op_openat_allowed)
+{
+	test_ioring_op_openat(self->metadata, LANDLOCK_ACCESS_FS_READ_FILE |
+			      LANDLOCK_ACCESS_FS_WRITE_FILE, self->allowed_paths);
+}
+
+TEST_F_FORK(openat_test, test_ioring_op_openat_disallowed)
+{
+	test_ioring_op_openat(self->metadata, 0, self->disallowed_paths);
+}
+
 TEST_HARNESS_MAIN
--
2.25.1

