Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9ECF78C73
	for <outreachy@lists.linux.dev>; Thu, 15 Aug 2024 18:29:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723746588; cv=none; b=MBvj6DvOV5Q2zu/Fa4OZ799Wg8RdwB/SY8/kFXlfmmQVwNX/0XVmM4ymh8vgXz2QjyhEqrGevX6ZRoYO0OUA1XcRSSk+kjmGVU0wLjtQILlrsDYXVXN8dnqDJodCBYe+iM1JsKSiBpmOsQvVfzQxOhwZA3p4PurHK2Lb0wPBcEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723746588; c=relaxed/simple;
	bh=Dwr57pngHUSLhksrsKqWWibkSxtCwUUh0p6vmB6rYUc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=dgb/dRUZSFsMRx8gaGVXRFYMPUNI8IosnVS4AtAuo2i4b2rVjCDazduzZoU7pARddWaqDR5rsqfJqP9WVSrPIQFvFYoHi6L6d50o/CKtSW5nc3vSXnVeLHwxiILeNw+CmtWu9NvhRi3rvSqQOmFw7AkrmwLVtD7Kbbe9iKQLu20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=foek9oHL; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="foek9oHL"
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-710d1de6e79so896640b3a.0
        for <outreachy@lists.linux.dev>; Thu, 15 Aug 2024 11:29:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723746585; x=1724351385; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CDmpFZN7V1g06/ZGYNIP4Pk8NE5ZqNFuGVyTota0SLk=;
        b=foek9oHLESEJJKjeNOrvExiUyp3Q8a7mRxkBKVejEObm33U4JzsntqnaAoV+6Mi1+q
         n8KR4ZJq5yoUQfhF95vp86aJgvU3dGULmj/W/OFDg9qfBlO8zgnQ/PVUzhAfiO1FjME2
         qOqILBKHlGuJfUCQ42Fde8asl7QTST6kpTMIlKUc/YmCdo+MOTyU91mClAaw8Cz+cpzu
         W2IvDwPnB8tL22jQaSoKjaFCSKJl3R2JLS6MkF5wek/o5Ii7oF0dVsBzwkdlFT+7zwl6
         n6dNB+JT14Ugdv/18VvjfWzslTPXNIKZQ8Cz1G8DltjEnWwXMO1vg67pCXujnRnT2zM2
         V9EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723746585; x=1724351385;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CDmpFZN7V1g06/ZGYNIP4Pk8NE5ZqNFuGVyTota0SLk=;
        b=RGZ2lcHmMHs51xJD+6xl/WnEIWjjbbywR1qfNunGlhiJTNX/kdSf7tA7vv5dNQ2f02
         9PtVhV8TN+ScG0uFrUetQLP0/0iC9QCcL6TjsmjVIfh2BGdhwslirGizepcKBNSLUa7Z
         nNY1jnsaX8zRjLdq9+vTBRYsa4CY3/u2RsfRHKGrqTcl9uNPoBA1I4QVLSu4X6x42fm3
         boe4Nxxbug90orewz025e2O/bF0es28u9DDlwUEsjarYkLBGnBqXLfo1S4+hY5HySI4f
         mrnSOJQpXKBGYwh3vDDKUnuMtM26ZoHAt0WWiRtl2DaKuo1q0R5z1a06EarpOv06FQkw
         ILug==
X-Gm-Message-State: AOJu0Ywyof8tsy+wbtmN5bE7z04P3E+oCt6jut+qCrfPUlwhR2T0psWR
	Qvdv/+DuU0QNE1HbC4OsoueWNjgzIxiun+imri99QM0F5cpNfugb1UiBn8b7
X-Google-Smtp-Source: AGHT+IEAx3eAq13eKvyQi76A8rHmXhmvNa2y+UtFzSmr+VF8ucB8ZCth/llQ5TrkB5fficwGiAOAxQ==
X-Received: by 2002:a05:6a21:2d86:b0:1c4:9100:6a1b with SMTP id adf61e73a8af0-1c904fca42bmr648447637.30.1723746584960;
        Thu, 15 Aug 2024 11:29:44 -0700 (PDT)
Received: from tahera-OptiPlex-5000.uc.ucalgary.ca ([136.159.49.123])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7c6b6356c76sm1431683a12.62.2024.08.15.11.29.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Aug 2024 11:29:44 -0700 (PDT)
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
Subject: [PATCH v3 3/6] selftest/Landlock: Signal restriction tests
Date: Thu, 15 Aug 2024 12:29:22 -0600
Message-Id: <82b0d2103013397d8b46de9fc7c8c78456055299.1723680305.git.fahimitahera@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1723680305.git.fahimitahera@gmail.com>
References: <cover.1723680305.git.fahimitahera@gmail.com>
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
 .../selftests/landlock/scoped_signal_test.c   | 302 ++++++++++++++++++
 1 file changed, 302 insertions(+)
 create mode 100644 tools/testing/selftests/landlock/scoped_signal_test.c

diff --git a/tools/testing/selftests/landlock/scoped_signal_test.c b/tools/testing/selftests/landlock/scoped_signal_test.c
new file mode 100644
index 000000000000..92958c6266ca
--- /dev/null
+++ b/tools/testing/selftests/landlock/scoped_signal_test.c
@@ -0,0 +1,302 @@
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

