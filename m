Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BF2C52F6A
	for <outreachy@lists.linux.dev>; Mon, 25 Mar 2024 16:47:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711385250; cv=none; b=pyIY5QruPyaHebXFuYW3AEqASgEGeK7vjxG58vOHqzE0n5blznKNiWhZVOSzhky2JZSJB7g4r7liHn4AULg3mjqMZrvLVDoyPptXbQ91MYRtgVBESBOOvYY3dTCG5FUEM5oJ+8zqkIMoVOQUft/aBU0T7bfMyZb+1x3sqB7hT7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711385250; c=relaxed/simple;
	bh=Me0gicQZV1nCIYk4eCeIcAqoBn+NwWHIYGCD2FV/NHY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=VeRjdDdzeJLxMTdIYdwFgn88jRkjKCIK54PdioIdoeeK1PzoLpFCFIO2IsrvEm/BESxMoqN1YpBIVhQ4i9KL9gr0YKChGF5klaVpx8Ddp6ynPh6LaA+Q1TVt3Ef8DCI7X+vb2Fr3Dns/UgKq1BVlPWkHagR1Fiu6Za3vBBbmTMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ePC63D/U; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ePC63D/U"
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-56c0bd07e7bso1387139a12.1
        for <outreachy@lists.linux.dev>; Mon, 25 Mar 2024 09:47:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711385247; x=1711990047; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P0Gh+g/y/ErB35HTb2Z4MVk/as7tHOFHMRT+PUuic4s=;
        b=ePC63D/UGdSCkdwoNwS6a/S1hCC6gpUXa87KHQOPEyfeew3/EQxrQoBNhznEQXQD6D
         run9A+htZ1vIyk2sf5MndY5itfiKwrxR4epS3WaT6c06uccr1RWMFQ8RUG8NgLOWIXgn
         aBVN5Qp+hUWbjqTsnsYQcPLIBbKMIUSa6Szx9Q+aCm/X6HvDG5EtOOuwv13kHBEEHCcJ
         qhSiX4mmB1uwvn83CjpMWOL/fuJPsYuSiQA9RrO8PDl/7QmdtJ4e023HVXAPcmODJmXN
         OSd4PkNoG4hwaAWrMX5aaQKAJLoNrnJF/9YhUc8KuR62XtynCwfwU81IVaoJYxA64A4S
         NeVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711385247; x=1711990047;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P0Gh+g/y/ErB35HTb2Z4MVk/as7tHOFHMRT+PUuic4s=;
        b=k3jvNu62RhvZLFm/RWj9yMzmysY7EPYLgKSUUwjLhoviMmwg63oZKAfZt3Aa5dpeLl
         nosmhD3TbpNvyWYVVFbOEtWCqC98vm3IfnuzjiCWcUcqmACHpwhIX3zJlShEGEKEBWA3
         SoJ0b92rnEBtuwsft4ru7antQfG3J8lqCxiAjcMke04LYqhnkkBobjdp73J+ghndNyC2
         z35PQV80yZ+DItlaahpahM9C3a0HXC77X+ZNUHCYuqLlcbH+1x/qI/5bhViOnBLBAOoW
         OEe7Cx5UcflS+2cDWkiIbRytXK6qCpJXPWa4IjNVY9L+m0rbfjMIir4cwLXfcFZhskzT
         Pa8w==
X-Forwarded-Encrypted: i=1; AJvYcCXCwIZWQXp5WodofG3/Dc9HBhyJSGKWdImKotLrb/oJTuiJudZ+F08RVYckI4SaFbud6bsnBx8s769NST1DRY5fQxTKwKFyzjOB
X-Gm-Message-State: AOJu0YzxrNNqu+wom/faqKoKksJmnjX9IfnRbRcBpS4v631l70cwZZuk
	tkGebVKw7bPpviARwAz7Z4eUmBeMHFYVRJmiujM/GQy07a+XuA4y
X-Google-Smtp-Source: AGHT+IGXEjaGZSf5+10YWHdyQLm6Ml8hVNxbpDpgqgntmm+pa346JfR+t34Kh5sS9dvJkragoA5xew==
X-Received: by 2002:a17:907:9707:b0:a47:4a32:604 with SMTP id jg7-20020a170907970700b00a474a320604mr5188372ejc.26.1711385246507;
        Mon, 25 Mar 2024 09:47:26 -0700 (PDT)
Received: from ubuntu-focal.zuku.co.ke ([197.237.50.252])
        by smtp.gmail.com with ESMTPSA id hy8-20020a1709068a6800b00a46c0191306sm3214320ejc.213.2024.03.25.09.47.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 09:47:26 -0700 (PDT)
From: Dorine Tipo <dorine.a.tipo@gmail.com>
To: mic@digikod.net,
	skhan@linuxfoundation.org,
	outreachy@lists.linux.dev
Cc: Dorine Tipo <dorine.a.tipo@gmail.com>
Subject: [PATCH 1/2] Add test for io_uring openat access control with Landlock rules
Date: Mon, 25 Mar 2024 02:32:34 +0000
Message-Id: <d819acb31efdde5d3cbe00fbf52c19b985257cc5.1711331521.git.dorine.a.tipo@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1711331521.git.dorine.a.tipo@gmail.com>
References: <cover.1711331521.git.dorine.a.tipo@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Expand Landlock test coverage to include io_uring operations.

This commit introduces a test for IORING_OP_OPENAT with Landlock
rules, verifying allowed and disallowed access. This mitigates potential
security vulnerabilities by ensuring Landlock controls access through
io_uring.

Signed-off-by: Dorine Tipo <dorine.a.tipo@gmail.com>
---
 tools/testing/selftests/landlock/fs_test.c | 132 +++++++++++++++++++++
 1 file changed, 132 insertions(+)

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

