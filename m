Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD76913AD20
	for <outreachy@lists.linux.dev>; Tue,  6 Aug 2024 18:11:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722967882; cv=none; b=h2R/0M8PgVAYN1JlgGly4uUr6bW+BrepKtQ+fqWlvTTGt32Bsfk6FbUeSofd9feThAAQv2xxajgCyZekBrlORamTJJ14T9DDXvix+gTuBcfcAgUyxjy8SSxo9rxOoNH1fvCQbaqT5LO3LdjMfgfc1maPP1sjLnOm4uJaynmp39c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722967882; c=relaxed/simple;
	bh=OL8YDt9ckh5mt14xDgUvpKYnO8xoVA5eiX3ktYKrBwg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=tfRAwds+p5t1PVCtdXQ4Ig9/OoFq9q6JW+C0HykZRIvm5pVPWcxRSn9Ap0j62SYcqZ0Qum9kpdt9DKgw/2yfp+wxyFKWUFVV8+Zd5IYNGW5okGsp/fLay0pd/oJqDZry69i3B+1V4/sWH6SiUqjSNz0ZYa9qlKE+AYmqNrxc9W0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VRwQ11PX; arc=none smtp.client-ip=209.85.215.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VRwQ11PX"
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-7a0e8b76813so622929a12.3
        for <outreachy@lists.linux.dev>; Tue, 06 Aug 2024 11:11:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722967880; x=1723572680; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1m33RcWxdO0nPOjLkO6+czI4OXLdEbwvOpCuSkjhK1I=;
        b=VRwQ11PXiZFdWpNeGSGQX4/oxVVRL1P5wSyFEgvTWS9+TfkvPvsq8rca3Ulj3Tm5wh
         M4eg78vigBeKiph7/ciicAaQLZWziq2uopJnFerfzA45nmZ6qmu4TTkalyT5hTMRqNaN
         TKh5qOeABnkX1sG5tCoow2RQUvpKKyQqbd9ABYAv/E//xPMYbQQHRZCo51JXeePHQVFO
         ZW4fdE1ONkPNt/E+r26Cx81qWnU17mvc/zezM8FEJWBXlwG94gq2lRK7+bMdRXprF1k6
         fukkTZOJ+rOzcaIoqdVh6Ior7WXza73T6kc1E6BjIpKOevTzau6rYqTiFZkXpJUR2ye1
         9dyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722967880; x=1723572680;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1m33RcWxdO0nPOjLkO6+czI4OXLdEbwvOpCuSkjhK1I=;
        b=Mr0E1Th9sIk0NWRGcH0y+Go+bJVkFVnxW5WeV+el2eJbpVhtdJsaFKc91EyauRghQW
         4BkkzxotA9c3TE6LEwnxdl7B7+C0Aw049tMJ/6JQbAdksQUGzNODKYyJMTkwdTWpetgV
         cB7nTV0SFLnKQz0oGESd6tNb2ipBCYJ48nPnHcquewiu3MsVdONXgl7eaxvHuAMRJ5Yj
         BT0ljTsGvFKeMQxBifq1z/dIPjwqa+kbo1EG5wyOiyjpYQFRmNuOL2ISr0q/gNqnRBxn
         J/qvXNQC3Tlpc4K2exZ+ywzEZnDqWAOsVM+cN2X+pMMH6pdqVahjdC/MSUSaO3+TwlMQ
         WU5g==
X-Gm-Message-State: AOJu0YyVwDetK4xg6rnGKK0wop64CU/XowxKq9gKRZRswKVeti/OcUTf
	QX1mo7pxJqmLqVWfUqq9OZHuQ1ZyudfKsie1xM/n/agCwvsHutNF5EMD4V3l
X-Google-Smtp-Source: AGHT+IEGenzYlt3InIG6GjJXqL6gzeoVJJlv0EHbALzZdfiNd16vaiBKs7i7E7zW2R/WfazNUE5HQA==
X-Received: by 2002:a17:90b:50cf:b0:2cf:cc0d:96cc with SMTP id 98e67ed59e1d1-2cff9413dcemr18564083a91.9.1722967879444;
        Tue, 06 Aug 2024 11:11:19 -0700 (PDT)
Received: from tahera-OptiPlex-5000.tail3bf47f.ts.net ([136.159.49.123])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2cfdc45b51esm12829504a91.32.2024.08.06.11.11.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Aug 2024 11:11:18 -0700 (PDT)
From: Tahera Fahimi <fahimitahera@gmail.com>
To: outreachy@lists.linux.dev
Cc: mic@digikod.net,
	gnoack@google.com,
	paul@paul-moore.com,
	jmorris@namei.org,
	serge@hallyn.com,
	linux-security-module@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	bjorn3_gh@protonmail.com,
	jannh@google.com,
	netdev@vger.kernel.org,
	Tahera Fahimi <fahimitahera@gmail.com>
Subject: [PATCH v2 2/4] selftest/Landlock: Signal restriction tests
Date: Tue,  6 Aug 2024 12:10:41 -0600
Message-Id: <d8fdf745f0f624cae57312e7f5f06ee64b96b33d.1722966592.git.fahimitahera@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1722966592.git.fahimitahera@gmail.com>
References: <cover.1722966592.git.fahimitahera@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This patch expands Landlock ABI version 6 by providing tests for
signal scoping mechanism. Base on kill(2), if the signal is 0,
no signal will be sent, but the permission of a process to send
a signal will be checked. Likewise, this test consider one signal
for each signal category.

Signed-off-by: Tahera Fahimi <fahimitahera@gmail.com>
---
Chnages in versions:
V2:
* Moving tests from ptrace_test.c to scoped_signal_test.c
* Remove debugging statements.
* Covering all basic restriction scenarios by sending 0 as signal
V1:
* Expanding Landlock ABI version 6 by providing basic tests for
  four signals to test signal scoping mechanism.
---
 tools/testing/selftests/landlock/base_test.c  |   2 +-
 .../selftests/landlock/scoped_signal_test.c   | 303 ++++++++++++++++++
 2 files changed, 304 insertions(+), 1 deletion(-)
 create mode 100644 tools/testing/selftests/landlock/scoped_signal_test.c

diff --git a/tools/testing/selftests/landlock/base_test.c b/tools/testing/selftests/landlock/base_test.c
index 3c1e9f35b531..52b00472a487 100644
--- a/tools/testing/selftests/landlock/base_test.c
+++ b/tools/testing/selftests/landlock/base_test.c
@@ -75,7 +75,7 @@ TEST(abi_version)
 	const struct landlock_ruleset_attr ruleset_attr = {
 		.handled_access_fs = LANDLOCK_ACCESS_FS_READ_FILE,
 	};
-	ASSERT_EQ(5, landlock_create_ruleset(NULL, 0,
+	ASSERT_EQ(6, landlock_create_ruleset(NULL, 0,
 					     LANDLOCK_CREATE_RULESET_VERSION));
 
 	ASSERT_EQ(-1, landlock_create_ruleset(&ruleset_attr, 0,
diff --git a/tools/testing/selftests/landlock/scoped_signal_test.c b/tools/testing/selftests/landlock/scoped_signal_test.c
new file mode 100644
index 000000000000..133b1c8edf49
--- /dev/null
+++ b/tools/testing/selftests/landlock/scoped_signal_test.c
@@ -0,0 +1,303 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Landlock tests - Signal Scoping
+ *
+ * Copyright © 2017-2020 Mickaël Salaün <mic@digikod.net>
+ * Copyright © 2019-2020 ANSSI
+ */
+
+#define _GNU_SOURCE
+#include <errno.h>
+#include <fcntl.h>
+#include <linux/landlock.h>
+#include <signal.h>
+#include <sys/prctl.h>
+#include <sys/types.h>
+#include <sys/wait.h>
+#include <unistd.h>
+#include <signal.h>
+
+#include "common.h"
+
+static sig_atomic_t signaled;
+
+static void create_signal_domain(struct __test_metadata *const _metadata)
+{
+	int ruleset_fd;
+	const struct landlock_ruleset_attr ruleset_attr = {
+		.scoped = LANDLOCK_SCOPED_SIGNAL,
+	};
+
+	ruleset_fd =
+		landlock_create_ruleset(&ruleset_attr, sizeof(ruleset_attr), 0);
+	EXPECT_LE(0, ruleset_fd)
+	{
+		TH_LOG("Failed to create a ruleset: %s", strerror(errno));
+	}
+	enforce_ruleset(_metadata, ruleset_fd);
+	EXPECT_EQ(0, close(ruleset_fd));
+}
+
+static void scope_signal_handler(int sig, siginfo_t *info, void *ucontext)
+{
+	if (sig == SIGHUP || sig == SIGURG || sig == SIGTSTP ||
+	    sig == SIGTRAP || sig == SIGUSR1) {
+		signaled = 1;
+	}
+}
+
+/* clang-format off */
+FIXTURE(signal_scoping) {};
+/* clang-format on */
+
+FIXTURE_VARIANT(signal_scoping)
+{
+	const int sig;
+	const bool domain_both;
+	const bool domain_parent;
+	const bool domain_child;
+};
+
+/* clang-format off */
+FIXTURE_VARIANT_ADD(signal_scoping, allow_without_domain) {
+	/* clang-format on */
+	.sig = 0,
+	.domain_both = false,
+	.domain_parent = false,
+	.domain_child = false,
+};
+
+/* clang-format off */
+FIXTURE_VARIANT_ADD(signal_scoping, deny_with_child_domain) {
+	/* clang-format on */
+	.sig = 0,
+	.domain_both = false,
+	.domain_parent = false,
+	.domain_child = true,
+};
+
+/* clang-format off */
+FIXTURE_VARIANT_ADD(signal_scoping, allow_with_parent_domain) {
+	/* clang-format on */
+	.sig = 0,
+	.domain_both = false,
+	.domain_parent = true,
+	.domain_child = false,
+};
+
+/* clang-format off */
+FIXTURE_VARIANT_ADD(signal_scoping, deny_with_sibling_domain) {
+	/* clang-format on */
+	.sig = 0,
+	.domain_both = false,
+	.domain_parent = true,
+	.domain_child = true,
+};
+
+/* clang-format off */
+FIXTURE_VARIANT_ADD(signal_scoping, allow_sibling_domain) {
+	/* clang-format on */
+	.sig = 0,
+	.domain_both = true,
+	.domain_parent = false,
+	.domain_child = false,
+};
+
+/* clang-format off */
+FIXTURE_VARIANT_ADD(signal_scoping, deny_with_nested_domain) {
+	/* clang-format on */
+	.sig = 0,
+	.domain_both = true,
+	.domain_parent = false,
+	.domain_child = true,
+};
+
+/* clang-format off */
+FIXTURE_VARIANT_ADD(signal_scoping, allow_with_nested_and_parent_domain) {
+	/* clang-format on */
+	.sig = 0,
+	.domain_both = true,
+	.domain_parent = true,
+	.domain_child = false,
+};
+
+/* clang-format off */
+FIXTURE_VARIANT_ADD(signal_scoping, deny_with_forked_domain) {
+	/* clang-format on */
+	.sig = 0,
+	.domain_both = true,
+	.domain_parent = true,
+	.domain_child = true,
+};
+
+/* Default Action: Terminate*/
+/* clang-format off */
+FIXTURE_VARIANT_ADD(signal_scoping, deny_with_forked_domain_SIGHUP) {
+	/* clang-format on */
+	.sig = SIGHUP,
+	.domain_both = true,
+	.domain_parent = true,
+	.domain_child = true,
+};
+
+/* clang-format off */
+FIXTURE_VARIANT_ADD(signal_scoping, allow_with_forked_domain_SIGHUP) {
+	/* clang-format on */
+	.sig = SIGHUP,
+	.domain_both = false,
+	.domain_parent = true,
+	.domain_child = false,
+};
+
+/* Default Action: Ignore*/
+/* clang-format off */
+FIXTURE_VARIANT_ADD(signal_scoping, deny_with_forked_domain_SIGURG) {
+	/* clang-format on */
+	.sig = SIGURG,
+	.domain_both = true,
+	.domain_parent = true,
+	.domain_child = true,
+};
+
+/* clang-format off */
+FIXTURE_VARIANT_ADD(signal_scoping, allow_with_forked_domain_SIGURG) {
+	/* clang-format on */
+	.sig = SIGURG,
+	.domain_both = false,
+	.domain_parent = true,
+	.domain_child = false,
+};
+
+/* Default Action: Stop*/
+/* clang-format off */
+FIXTURE_VARIANT_ADD(signal_scoping, deny_with_forked_domain_SIGTSTP) {
+	/* clang-format on */
+	.sig = SIGTSTP,
+	.domain_both = true,
+	.domain_parent = true,
+	.domain_child = true,
+};
+
+/* clang-format off */
+FIXTURE_VARIANT_ADD(signal_scoping, allow_with_forked_domain_SIGTSTP) {
+	/* clang-format on */
+	.sig = SIGTSTP,
+	.domain_both = false,
+	.domain_parent = true,
+	.domain_child = false,
+};
+
+/* Default Action: Coredump*/
+/* clang-format off */
+FIXTURE_VARIANT_ADD(signal_scoping, deny_with_forked_domain_SIGTRAP) {
+	/* clang-format on */
+	.sig = SIGTRAP,
+	.domain_both = true,
+	.domain_parent = true,
+	.domain_child = true,
+};
+
+/* clang-format off */
+FIXTURE_VARIANT_ADD(signal_scoping, allow_with_forked_domain_SIGTRAP) {
+	/* clang-format on */
+	.sig = SIGTRAP,
+	.domain_both = false,
+	.domain_parent = true,
+	.domain_child = false,
+};
+
+/* clang-format off */
+FIXTURE_VARIANT_ADD(signal_scoping, deny_with_forked_domain_SIGUSR1) {
+	/* clang-format on */
+	.sig = SIGUSR1,
+	.domain_both = true,
+	.domain_parent = true,
+	.domain_child = true,
+};
+
+FIXTURE_SETUP(signal_scoping)
+{
+}
+
+FIXTURE_TEARDOWN(signal_scoping)
+{
+}
+
+TEST_F(signal_scoping, test_signal)
+{
+	pid_t child;
+	pid_t parent = getpid();
+	int status;
+	bool can_signal;
+	int pipe_parent[2];
+	struct sigaction action = {
+		.sa_sigaction = scope_signal_handler,
+		.sa_flags = SA_SIGINFO,
+
+	};
+
+	can_signal = !variant->domain_child;
+
+	if (variant->sig > 0)
+		ASSERT_LE(0, sigaction(variant->sig, &action, NULL));
+
+	if (variant->domain_both) {
+		create_signal_domain(_metadata);
+		if (!__test_passed(_metadata))
+			/* Aborts before forking. */
+			return;
+	}
+	ASSERT_EQ(0, pipe2(pipe_parent, O_CLOEXEC));
+
+	child = fork();
+	ASSERT_LE(0, child);
+	if (child == 0) {
+		char buf_child;
+		int err;
+
+		ASSERT_EQ(0, close(pipe_parent[1]));
+		if (variant->domain_child)
+			create_signal_domain(_metadata);
+
+		/* Waits for the parent to be in a domain, if any. */
+		ASSERT_EQ(1, read(pipe_parent[0], &buf_child, 1));
+
+		err = kill(parent, variant->sig);
+		if (can_signal) {
+			ASSERT_EQ(0, err);
+		} else {
+			ASSERT_EQ(-1, err);
+			ASSERT_EQ(EPERM, errno);
+		}
+		/* no matter of the domain, a process should be able to send
+		 * a signal to itself.
+		 */
+		ASSERT_EQ(0, raise(variant->sig));
+		if (variant->sig > 0)
+			ASSERT_EQ(1, signaled);
+		_exit(_metadata->exit_code);
+		return;
+	}
+	ASSERT_EQ(0, close(pipe_parent[0]));
+	if (variant->domain_parent)
+		create_signal_domain(_metadata);
+
+	/* Signals that the parent is in a domain, if any. */
+	ASSERT_EQ(1, write(pipe_parent[1], ".", 1));
+
+	if (can_signal && variant->sig > 0) {
+		ASSERT_EQ(-1, pause());
+		ASSERT_EQ(EINTR, errno);
+		ASSERT_EQ(1, signaled);
+	} else {
+		ASSERT_EQ(0, signaled);
+	}
+
+	ASSERT_EQ(child, waitpid(child, &status, 0));
+
+	if (WIFSIGNALED(status) || !WIFEXITED(status) ||
+	    WEXITSTATUS(status) != EXIT_SUCCESS)
+		_metadata->exit_code = KSFT_FAIL;
+}
+
+TEST_HARNESS_MAIN
-- 
2.34.1

