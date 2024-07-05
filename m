Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9FAC13C9BD
	for <outreachy@lists.linux.dev>; Fri,  5 Jul 2024 21:22:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720214560; cv=none; b=pzzDm+znOWh66J/pfCbYn7qbYU+Vxe1LWE6As1dQbiel+pxbvJ45ShWM1ZWJ1kInIWHcrljyYXeIh8YK8ojAvR5SZpVa8LcvTzRcJbmi0jmJyDtGh5cNfs0ssD2j6c3Mt8KY8hW6qwh6C+UGZPOfAIhbb/kz719OlS7sPT+3I0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720214560; c=relaxed/simple;
	bh=L0pa+ASgYRvONHqMPgOIaKPjkxUMXzz5JmdhJ3C+zZk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=swiGTd/yBP7EFXtKNxXGvidLTxMTN/huU/WuBlQB+63sEweFeP7ivzxer5GPE3CZuQvnlfbLze3MiAzu+OXG5nLdSxqJL/AP6N2l1DdVjy/h1Tt8Urs+dtXZjEFasLNwwaSXfybp428ALG42iP2yZvuQuWCacnm2fdBgGaAn4jQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=etWLxbIe; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="etWLxbIe"
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-70af5fbf0d5so1327626b3a.1
        for <outreachy@lists.linux.dev>; Fri, 05 Jul 2024 14:22:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720214557; x=1720819357; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XwAF8+6oQayFkR41Q8MjfYalt/kzwwy3b6NOpJMFL58=;
        b=etWLxbIe4+YDLCca+1g7GUek05/ntsk9fOCrtbzNNmaZQVcQ31qMW0ZdIilhXJfBvn
         Lay4k/47bZ9TTwIIGXsaiVC9K+WE5+TQKR4URIap9rqmKZuMD1qQB6AeRhtZnTIPVI/o
         PLvZOFYrFyJC5owrTLq6VUHsRRt0NNjccGc0v049NngfFYKLW5pTdrjNrmjgRgt7wzKH
         6ihY4OGh1DKmaZXJYXrku0E2V321wLieyURQaTYzu150PYVBDHXWnjySX4qIpe/X+VL1
         i9KLrNZ0tIkQ6nIkOnA6+uUd9R8dViNnM5ZCfzkoG4IxFz+doWLpL24qrjFfiz+FXaCc
         ASRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720214557; x=1720819357;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XwAF8+6oQayFkR41Q8MjfYalt/kzwwy3b6NOpJMFL58=;
        b=u/k72F8o5/a3oCtGib8GWjU0RsURlB/XGODAsxkywf2McGqrjw7NkWmiBYE1vbxLon
         pNAh2L4LwLYnYneM7/1PJFo8cOKG5ijZxluOEijGHuhfc//86unKZzQNVwwYBDMHKNpJ
         u6T4J3d5bjqcb5+KTqmzDTltxMVnwOS+1qbvJN7fK8aYpaY3KLjiU/1Pr57ySENzE5x0
         aM5eLJ/uSr8OQVf98E1jmRetjCPDcxPQioh1xiERuzgTAC+LPUtK5X0Xrsd2f0e8M9tl
         CteoEeNI1Qok+aUYzGPMP/ymubm61N49ZXiF8yVovCRrSMuJI2YA5o4qPRrkE+5CmPQE
         YfQA==
X-Forwarded-Encrypted: i=1; AJvYcCW3qGsBQTZBDVsgSsfwEdOrgdx0dPI5epL9Xph2exd2J4W3h4+mt703+RHeC/b2iSml6MMafHck8YJhTYYA/OitGbq87rgrmsEJ
X-Gm-Message-State: AOJu0YzDgG7BGKxOHQT9gFzWxG7mxXsfVsnBqtDzRhva4fUMxgFyZcqR
	xfwIawgqtYFiMexrWH4u7ragLoSiuYpGZS86ZlnbRMxoyW4B1N/ypH/UnTI+
X-Google-Smtp-Source: AGHT+IEHKBP4ZHXvKMfTXUMD/6/Pg/HUUZBKKhSdKnbKczuLUardtiIMYvOIQoszQuegJ1s3C9JAEQ==
X-Received: by 2002:a05:6a00:2d8a:b0:708:41c4:8849 with SMTP id d2e1a72fcca58-70b01b320a5mr7013983b3a.9.1720214556886;
        Fri, 05 Jul 2024 14:22:36 -0700 (PDT)
Received: from tahera-OptiPlex-5000.uc.ucalgary.ca ([136.159.49.123])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70802566511sm14507529b3a.75.2024.07.05.14.22.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jul 2024 14:22:36 -0700 (PDT)
From: Tahera Fahimi <fahimitahera@gmail.com>
To: mic@digikod.net,
	gnoack@google.com,
	paul@paul-moore.com,
	jmorris@namei.org,
	serge@hallyn.com,
	linux-security-module@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	bjorn3_gh@protonmail.com,
	jannh@google.com,
	outreachy@lists.linux.dev,
	netdev@vger.kernel.org
Cc: Tahera Fahimi <fahimitahera@gmail.com>
Subject: [PATCH v1 2/2] Landlock: Signal scoping tests
Date: Fri,  5 Jul 2024 15:21:43 -0600
Message-Id: <70756a7b4ed5bd32f2d881aa1a0d1e7760ce4215.1720213293.git.fahimitahera@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <36958dbc486e1f975f4d4ecdfa51ae65c2c4ced0.1720213293.git.fahimitahera@gmail.com>
References: <36958dbc486e1f975f4d4ecdfa51ae65c2c4ced0.1720213293.git.fahimitahera@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Tahera Fahimi <fahimitahera@gmail.com>
---
 .../testing/selftests/landlock/ptrace_test.c  | 216 ++++++++++++++++++
 1 file changed, 216 insertions(+)

diff --git a/tools/testing/selftests/landlock/ptrace_test.c b/tools/testing/selftests/landlock/ptrace_test.c
index a19db4d0b3bd..e092b67f8b67 100644
--- a/tools/testing/selftests/landlock/ptrace_test.c
+++ b/tools/testing/selftests/landlock/ptrace_test.c
@@ -17,6 +17,8 @@
 #include <sys/wait.h>
 #include <unistd.h>
 
+#include <signal.h>
+
 #include "common.h"
 
 /* Copied from security/yama/yama_lsm.c */
@@ -25,6 +27,8 @@
 #define YAMA_SCOPE_CAPABILITY 2
 #define YAMA_SCOPE_NO_ATTACH 3
 
+static sig_atomic_t signaled;
+
 static void create_domain(struct __test_metadata *const _metadata)
 {
 	int ruleset_fd;
@@ -436,4 +440,216 @@ TEST_F(hierarchy, trace)
 		_metadata->exit_code = KSFT_FAIL;
 }
 
+static void create_sig_domain(struct __test_metadata *const _metadata)
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
+	if (sig == SIGHUP || sig == SIGURG || sig == SIGTSTP || sig == SIGTRAP)
+		signaled = 1;
+
+	// signal process group
+	//kill(-(t->pid), SIGKILL);
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
+/* Default Action: Terminate*/
+/* clang-format off */
+FIXTURE_VARIANT_ADD(signal_scoping, deny_with_forked_domain) {
+	/* clang-format on */
+	.sig = SIGHUP,
+	.domain_both = true,
+	.domain_parent = true,
+	.domain_child = true,
+};
+
+/* clang-format off */
+FIXTURE_VARIANT_ADD(signal_scoping, allow_with_forked_domain) {
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
+	int pipe_child[2], pipe_parent[2];
+	//char buf_parent;
+
+	struct sigaction action = {
+		.sa_sigaction = scope_signal_handler,
+		.sa_flags = SA_SIGINFO,
+
+	};
+
+	can_signal = !variant->domain_child;
+
+	//sigemptyset(&act.sa_mask);
+
+	ASSERT_LE(0, sigaction(variant->sig, &action, NULL))
+	{
+		TH_LOG("ERROR in sigaction %s", strerror(errno));
+	}
+
+	if (variant->domain_both) {
+		create_sig_domain(_metadata);
+		if (!__test_passed(_metadata))
+			/* Aborts before forking. */
+			return;
+	}
+	ASSERT_EQ(0, pipe2(pipe_child, O_CLOEXEC));
+	ASSERT_EQ(0, pipe2(pipe_parent, O_CLOEXEC));
+
+	child = fork();
+	ASSERT_LE(0, child);
+	if (child == 0) {
+		char buf_child;
+		int err;
+
+		ASSERT_EQ(0, close(pipe_parent[1]));
+		ASSERT_EQ(0, close(pipe_child[0]));
+
+		if (variant->domain_child)
+			create_sig_domain(_metadata);
+
+		/* Waits for the parent to be in a domain, if any. */
+		ASSERT_EQ(1, read(pipe_parent[0], &buf_child, 1));
+
+		//err = raise(SIGHUP);
+		err = kill(parent, variant->sig);
+		if (can_signal) {
+			ASSERT_EQ(0, err);
+		} else {
+			ASSERT_EQ(EPERM, errno)
+			{
+				TH_LOG("Invalid error cached: %s",
+				       strerror(errno));
+			}
+		}
+		_exit(_metadata->exit_code);
+		return;
+	}
+
+	ASSERT_EQ(0, close(pipe_child[1]));
+	ASSERT_EQ(0, close(pipe_parent[0]));
+	if (variant->domain_parent)
+		create_sig_domain(_metadata);
+
+	/* Signals that the parent is in a domain, if any. */
+	ASSERT_EQ(1, write(pipe_parent[1], ".", 1));
+
+	if (can_signal) {
+		ASSERT_EQ(-1, pause());
+		ASSERT_EQ(EINTR, errno);
+		ASSERT_EQ(1, signaled);
+	}
+
+	ASSERT_EQ(child, waitpid(child, &status, 0));
+
+	if (WIFEXITED(status)) {
+		TH_LOG("Exited with code %d:", WEXITSTATUS(status));
+		if (!can_signal)
+			ASSERT_NE(1, signaled);
+	}
+
+	if (WIFSIGNALED(status) || !WIFEXITED(status) ||
+	    WEXITSTATUS(status) != EXIT_SUCCESS)
+		_metadata->exit_code = KSFT_FAIL;
+}
+
 TEST_HARNESS_MAIN
-- 
2.34.1

