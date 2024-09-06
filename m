Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F8E15A85A
	for <outreachy@lists.linux.dev>; Fri,  6 Sep 2024 21:30:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725658220; cv=none; b=GuJ05LPnUPMQPFwlxkbhsHpKCLrNWBPiq7hffKXhNQSUzmMTfTxIIJ1Q2LxGgeQJNpN1xes6L9LLwhpIzl8e+JN4ryC5xu3YimlqY80eQPubLvJEBuNCXOWgNWa1f2/XTx+7F442hO067M2vKvvp3vCo6Iojj3ixkJIw7bJaRjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725658220; c=relaxed/simple;
	bh=+3GejC8fHZoPuCDOxc4GYCoeoABETLnFK0r5C8s/9TY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=PS5T6zxz+ZL/vIMoelCbRsS0hhgA3aN+icQ3WMXHlGfYER4qirifSLmnijRZ25O7cLr2jMvx+4TkYhkBk8nCg3zDSjE1WMrjcv5Ev41qAIegxAAWVbAAIwS8Wiw4xPbofouXi4vmAHhFAiXlQEsO0v6svsWRvo5iFHM8zAGPU5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=D6hctdBa; arc=none smtp.client-ip=209.85.215.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="D6hctdBa"
Received: by mail-pg1-f178.google.com with SMTP id 41be03b00d2f7-7c691c8f8dcso1819616a12.1
        for <outreachy@lists.linux.dev>; Fri, 06 Sep 2024 14:30:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725658218; x=1726263018; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Px9kUYGOkDiPrxrl12O1BhXK0JaB/ZwCDZNetTf6eAE=;
        b=D6hctdBaG0d5fOJyjD/YS+mEaRImWSritUdQMzwv9QHYRiNlHiT3qllnZ9rB6xjW9q
         JgnSFgL0tNavZCJXpjm6vviEBFBJBStd7TAXJ3eVlDoSHOYABZ9beM1Rb3QpEHA2g480
         ETrVRGMMAIsf3hCUrp5OnpEhacB6RYj2cGh+GciSDnCsHctz3qX3VwBgRHpRi0DhKPKT
         R+joQu0nN2IFi3pSho1KL/IPEoLPr7VT7ZyKKC8m2YArBIvv5TGx/gTtTB+zqq8vZxiA
         R/K+gFfOs9HVmoH8CB+rvFG0DVM00rjULKaurCHljjGkltfvOPbmrjm/QXS151P+81p+
         trPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725658218; x=1726263018;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Px9kUYGOkDiPrxrl12O1BhXK0JaB/ZwCDZNetTf6eAE=;
        b=ZwDU/fRNJecQAstaAeYNpp8wHtYcEd2RF4MYdWFWUYOPkUmfrvRWHtSk9FjAS6cnrI
         2fu0RYO3m7P6oeAjxJjo7lERuGGGnLISoAOAzBnkUVXfxIYq0pBhFcc2ZLZVTG3ACnId
         F/JYZobEjL9fcMGM4H1YHFkPwhkTBJPxTJo35wBnIIkznz7r06YWdYA1LmdqbmeXCM5i
         fmb/JkUSvtOUsotoW/BRx/y8/+ZSGn2p3sNgvHFWspaskD1hylZfc5spKZCWJSRDIynq
         hWrcwT8etc4zwf0jfsIm0C80w0VpfYK2Ddpua4eylXlS7x27IYkFV7YaX3mUAp5jMbD5
         0ZnQ==
X-Gm-Message-State: AOJu0Yyw75aXFaVKhhGrrFgm1uP9RICiav6+4KvPzYfEEbsYYobD4MV5
	igWv/x/sxqmTooNtplzTEia6k3mhoDyhLyXbfJ/ijBi6opbnr3OI/S+IfEcV
X-Google-Smtp-Source: AGHT+IGGt8W0J2UbunoEUWLDtpF2ThbmJPfKVMU0HnPXu6CQeI3givwDF6NiWdHYI5hjtmDFB8XDdA==
X-Received: by 2002:a17:902:e80c:b0:206:c5cf:9727 with SMTP id d9443c01a7336-206f056f895mr40518755ad.31.1725658218067;
        Fri, 06 Sep 2024 14:30:18 -0700 (PDT)
Received: from tahera-OptiPlex-5000.tail3bf47f.ts.net ([136.159.49.123])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-206aea67bd1sm47081065ad.247.2024.09.06.14.30.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Sep 2024 14:30:17 -0700 (PDT)
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
Subject: [PATCH v4 2/6] selftest/landlock: Signal restriction tests
Date: Fri,  6 Sep 2024 15:30:04 -0600
Message-Id: <15dc202bb7f0a462ddeaa0c1cd630d2a7c6fa5c5.1725657728.git.fahimitahera@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1725657727.git.fahimitahera@gmail.com>
References: <cover.1725657727.git.fahimitahera@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This patch expands Landlock ABI version 6 by providing tests for signal
scoping mechanism. Base on kill(2), if the signal is 0, no signal will
be sent, but the permission of a process to send a signal will be
checked. Likewise, this test consider one signal for each signal
category (SIGTRAP, SIGURG, SIGHUP, and SIGTSTP).

Signed-off-by: Tahera Fahimi <fahimitahera@gmail.com>
---
Changes in versions:
V4:
* Refactoring by providing two sets of tests, send_sig_to_parent to
  check simple case of sending signal with scoped and non-scoped
  domains, and check_access_signal to examine access to send a signal
  with various domains.
V3:
* Using generalized scoped domain creation "create_scoped_domain"
V2:
* Moving tests from ptrace_test.c to scoped_signal_test.c
* Remove debugging statements.
* Covering all basic restriction scenarios by sending 0 as signal
V1:
* Expanding Landlock ABI version 6 by providing basic tests for
  four signals to test signal scoping mechanism.
---
 .../selftests/landlock/scoped_signal_test.c   | 225 ++++++++++++++++++
 1 file changed, 225 insertions(+)
 create mode 100644 tools/testing/selftests/landlock/scoped_signal_test.c

diff --git a/tools/testing/selftests/landlock/scoped_signal_test.c b/tools/testing/selftests/landlock/scoped_signal_test.c
new file mode 100644
index 000000000000..8df027e22324
--- /dev/null
+++ b/tools/testing/selftests/landlock/scoped_signal_test.c
@@ -0,0 +1,225 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Landlock tests - Signal Scoping
+ *
+ * Copyright © 2024 Tahera Fahimi <fahimitahera@gmail.com>
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
+#include "scoped_common.h"
+
+/* This variable is used for handeling several signals. */
+static volatile sig_atomic_t is_signaled;
+
+/* clang-format off */
+FIXTURE(scoping_signals) {};
+/* clang-format on */
+
+FIXTURE_VARIANT(scoping_signals)
+{
+	int sig;
+};
+
+/* clang-format off */
+FIXTURE_VARIANT_ADD(scoping_signals, sigtrap) {
+	/* clang-format on */
+	.sig = SIGTRAP,
+};
+
+/* clang-format off */
+FIXTURE_VARIANT_ADD(scoping_signals, sigurg) {
+	/* clang-format on */
+	.sig = SIGURG,
+};
+
+/* clang-format off */
+FIXTURE_VARIANT_ADD(scoping_signals, sighup) {
+	/* clang-format on */
+	.sig = SIGHUP,
+};
+
+/* clang-format off */
+FIXTURE_VARIANT_ADD(scoping_signals, sigtstp) {
+	/* clang-format on */
+	.sig = SIGTSTP,
+};
+
+FIXTURE_SETUP(scoping_signals)
+{
+	is_signaled = 0;
+}
+
+FIXTURE_TEARDOWN(scoping_signals)
+{
+}
+
+static void scope_signal_handler(int sig, siginfo_t *info, void *ucontext)
+{
+	if (sig == SIGTRAP || sig == SIGURG || sig == SIGHUP || sig == SIGTSTP)
+		is_signaled = 1;
+}
+
+/*
+ * In this test, a child process sends a signal to parent before and
+ * after getting scoped.
+ */
+TEST_F(scoping_signals, send_sig_to_parent)
+{
+	pid_t child;
+	pid_t parent = getpid();
+	int status;
+	struct sigaction action = {
+		.sa_sigaction = scope_signal_handler,
+		.sa_flags = SA_SIGINFO,
+
+	};
+
+	ASSERT_LE(0, sigaction(variant->sig, &action, NULL));
+
+	/* The process should not have already been signaled. */
+	EXPECT_EQ(0, is_signaled);
+
+	child = fork();
+	ASSERT_LE(0, child);
+	if (child == 0) {
+		int err;
+
+		/*
+		 * The child process can send signal to parent when
+		 * domain is not scoped.
+		 */
+		err = kill(parent, variant->sig);
+		ASSERT_EQ(0, err);
+
+		create_scoped_domain(_metadata, LANDLOCK_SCOPED_SIGNAL);
+
+		/*
+		 * The child process cannot send signal to the parent
+		 * anymore.
+		 */
+		err = kill(parent, variant->sig);
+		ASSERT_EQ(-1, err);
+		ASSERT_EQ(EPERM, errno);
+
+		/*
+		 * No matter of the domain, a process should be able to
+		 * send a signal to itself.
+		 */
+		ASSERT_EQ(0, is_signaled);
+		ASSERT_EQ(0, raise(variant->sig));
+		ASSERT_EQ(1, is_signaled);
+
+		_exit(_metadata->exit_code);
+		return;
+	}
+
+	while (!is_signaled && !usleep(1))
+		;
+	ASSERT_EQ(1, is_signaled);
+
+	ASSERT_EQ(child, waitpid(child, &status, 0));
+
+	if (WIFSIGNALED(status) || !WIFEXITED(status) ||
+	    WEXITSTATUS(status) != EXIT_SUCCESS)
+		_metadata->exit_code = KSFT_FAIL;
+}
+
+/* clang-format off */
+FIXTURE(scoped_domains) {};
+/* clang-format on */
+
+#include "scoped_base_variants.h"
+
+FIXTURE_SETUP(scoped_domains)
+{
+}
+
+FIXTURE_TEARDOWN(scoped_domains)
+{
+}
+
+/*
+ * This test ensures that a scoped process cannot send signal out of
+ * scoped domain.
+ */
+TEST_F(scoped_domains, check_access_signal)
+{
+	pid_t child;
+	pid_t parent = getpid();
+	int status;
+	bool can_signal_child, can_signal_parent;
+	int pipe_parent[2], pipe_child[2];
+	int err;
+	char buf;
+
+	can_signal_parent = !variant->domain_child;
+	can_signal_child = !variant->domain_parent;
+
+	if (variant->domain_both)
+		create_scoped_domain(_metadata, LANDLOCK_SCOPED_SIGNAL);
+	ASSERT_EQ(0, pipe2(pipe_parent, O_CLOEXEC));
+	ASSERT_EQ(0, pipe2(pipe_child, O_CLOEXEC));
+
+	child = fork();
+	ASSERT_LE(0, child);
+	if (child == 0) {
+		ASSERT_EQ(0, close(pipe_child[0]));
+		ASSERT_EQ(0, close(pipe_parent[1]));
+
+		if (variant->domain_child)
+			create_scoped_domain(_metadata, LANDLOCK_SCOPED_SIGNAL);
+
+		ASSERT_EQ(1, write(pipe_child[1], ".", 1));
+
+		/* Waits for the parent to send signals. */
+		ASSERT_EQ(1, read(pipe_parent[0], &buf, 1));
+
+		err = kill(parent, 0);
+		if (can_signal_parent) {
+			ASSERT_EQ(0, err);
+		} else {
+			ASSERT_EQ(-1, err);
+			ASSERT_EQ(EPERM, errno);
+		}
+		/*
+		 * No matter of the domain, a process should be able to
+		 * send a signal to itself.
+		 */
+		ASSERT_EQ(0, raise(0));
+
+		_exit(_metadata->exit_code);
+		return;
+	}
+	ASSERT_EQ(0, close(pipe_parent[0]));
+	if (variant->domain_parent)
+		create_scoped_domain(_metadata, LANDLOCK_SCOPED_SIGNAL);
+
+	ASSERT_EQ(1, read(pipe_child[0], &buf, 1));
+
+	err = kill(child, 0);
+	if (can_signal_child) {
+		ASSERT_EQ(0, err);
+	} else {
+		ASSERT_EQ(-1, err);
+		ASSERT_EQ(EPERM, errno);
+	}
+	ASSERT_EQ(0, raise(0));
+
+	ASSERT_EQ(1, write(pipe_parent[1], ".", 1));
+	ASSERT_EQ(child, waitpid(child, &status, 0));
+	if (WIFSIGNALED(status) || !WIFEXITED(status) ||
+	    WEXITSTATUS(status) != EXIT_SUCCESS)
+		_metadata->exit_code = KSFT_FAIL;
+}
+
+TEST_HARNESS_MAIN
-- 
2.34.1

