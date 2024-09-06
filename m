Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A45B15B111
	for <outreachy@lists.linux.dev>; Fri,  6 Sep 2024 21:30:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725658222; cv=none; b=F56OC7xRntf0ruuDROY9Rhy6d21YjzfuMvfCPh7tAyeQ4BNBUp7OlLb9BMWKEU3DqHD0YNkzopfvH4lIxnCkk+mZmRzuyJk18DoeM06P5b6GhoHXrUYGBYFndXhuX0JDNZnoNjPmOIDaVigIW217OiPR1WKosl7rfGU3BmLYs7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725658222; c=relaxed/simple;
	bh=DkDtosDpUP9qC10sQxpAe2JKOgxIX1YdAxvK6AOUDM8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=nTGQxbiNE8y15xRH0bQ9DeryrPT+9DDUMQlv/vz5awObK0jOYwwIVtQZntptrT6xbgI2P34ThP1Ly8yfW6hBWCsGklgmyTaLIXXZaZ84lg4Dlobf5wkYgWTx+TyDSTzY8Ok5R1H43tuYts78Lei7jO3T2op9cR/+LyZdtQKn/wU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SBjAZ2Ky; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SBjAZ2Ky"
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-205909afad3so25715135ad.2
        for <outreachy@lists.linux.dev>; Fri, 06 Sep 2024 14:30:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725658220; x=1726263020; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hSMrmdZdyuZUqEvjpif0S/dw7Gi7efe1pBKKqJKf+wQ=;
        b=SBjAZ2KyPaozVoT/ziMS36BV8KmMPNFLOleGG2K8JUeRO9RGfpTZ5Ebw8nVeCZmid9
         tMuNgpwezssJtJ0g8x2uroEHyruJTTUjXzGMfYMdKxVX4hi7G5Yyz5ifAV3BfOx37ROw
         wru6m96C+mvTn2H1w4cyDulTorzeh9zfGJiKK+laG0Hq55zhokLyualGyNDW0A3eeu4Y
         Id3M5Y4jMr//ZU4D3W4/z0/QM+K0PiZ9NaIxidLuc2KZwTGx8GdwPmQAmFPhq8iDK06Q
         aa3C16KJYIlQUYbIO9riGFV2Z9zzLRqslBBGBwa2Z4FwcOJWRKXleOiDiahqZzkogoVB
         4rEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725658220; x=1726263020;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hSMrmdZdyuZUqEvjpif0S/dw7Gi7efe1pBKKqJKf+wQ=;
        b=BPrN8ra9KGFJ1EUtCMzyA7yLp+LYLoJGglyWkmqPBmdEuDNYW8Zxum06gpczZTV4bi
         f1hcW8x75/CcTq8MV/rmg5pZW3en898Hggy38X4NjvetyUz+riPwQLghySFqBuRC6x4h
         7t9ZF329wLCVKW8bdjaz6sFfAMB5URvt8eUQe8R5X9Hgi366hd9ED05MZnFevLKl5unX
         oyoTyiro+ZP4rISLpUSyiFRCTjB00PEsUQht4sxq04YVhh1J2XI+z9HzrnbekZX5vHwD
         /MGtAdfoWgrxyK1kIvybhywcUA/3uouATwTfMMrrxaFdGMIlvD+mct9JCphNv3WPsQYr
         cpug==
X-Gm-Message-State: AOJu0YyczjbKk7GbFdE80W3hCBqO2YTkaiRuhHHgiQNuyFfDuhThUSeS
	LifYdqkEYDQ4JsI4jW6hYyHJW9PgCznc6NwperMssNjmH87FAK/6slz0+dKM
X-Google-Smtp-Source: AGHT+IHNHK2fwO3i887aEkZiDEJIPOt7RTzBl1gPJt8nik/cMuQj120cJOKWXrEnL+sIzBzwLJU8Dw==
X-Received: by 2002:a17:903:2442:b0:201:e7c2:bd03 with SMTP id d9443c01a7336-2070a82ae4emr7633455ad.60.1725658220146;
        Fri, 06 Sep 2024 14:30:20 -0700 (PDT)
Received: from tahera-OptiPlex-5000.tail3bf47f.ts.net ([136.159.49.123])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-206aea67bd1sm47081065ad.247.2024.09.06.14.30.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Sep 2024 14:30:19 -0700 (PDT)
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
Subject: [PATCH v4 4/6] selftest/landlock: Test file_send_sigiotask by sending out-of-bound message
Date: Fri,  6 Sep 2024 15:30:06 -0600
Message-Id: <50daeed4d4f60d71e9564d0f24004a373fc5f7d5.1725657728.git.fahimitahera@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1725657727.git.fahimitahera@gmail.com>
References: <cover.1725657727.git.fahimitahera@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch adds a test to verify handling the signal scoping mechanism
in file_send_sigiotask by triggering SIGURG through receiving an
out-of-bound message in UNIX sockets.

Signed-off-by: Tahera Fahimi <fahimitahera@gmail.com>
---
V4:
* Using pipe instead of Poll for synchronization.
---
 .../selftests/landlock/scoped_signal_test.c   | 99 +++++++++++++++++++
 1 file changed, 99 insertions(+)

diff --git a/tools/testing/selftests/landlock/scoped_signal_test.c b/tools/testing/selftests/landlock/scoped_signal_test.c
index c71fb83b7147..630f3a515731 100644
--- a/tools/testing/selftests/landlock/scoped_signal_test.c
+++ b/tools/testing/selftests/landlock/scoped_signal_test.c
@@ -269,4 +269,103 @@ TEST(signal_scoping_threads)
 	EXPECT_EQ(0, close(thread_pipe[1]));
 }
 
+#define SOCKET_PATH "/tmp/unix_sock_test"
+
+const short backlog = 10;
+
+static volatile sig_atomic_t signal_received;
+
+static void handle_sigurg(int sig)
+{
+	if (sig == SIGURG)
+		signal_received = 1;
+	else
+		signal_received = -1;
+}
+
+static int setup_signal_handler(int signal)
+{
+	struct sigaction sa;
+
+	sa.sa_handler = handle_sigurg;
+	sigemptyset(&sa.sa_mask);
+	sa.sa_flags = SA_SIGINFO | SA_RESTART;
+	return sigaction(SIGURG, &sa, NULL);
+}
+
+/*
+ * Sending an out of bound message will trigger the SIGURG signal
+ * through file_send_sigiotask.
+ */
+TEST(test_sigurg_socket)
+{
+	int sock_fd, recv_sock;
+	struct sockaddr_un addr, paddr;
+	socklen_t size;
+	char oob_buf, buffer;
+	int status;
+	int pipe_parent[2], pipe_child[2];
+	pid_t child;
+
+	ASSERT_EQ(0, pipe2(pipe_parent, O_CLOEXEC));
+	ASSERT_EQ(0, pipe2(pipe_child, O_CLOEXEC));
+
+	memset(&addr, 0, sizeof(addr));
+	addr.sun_family = AF_UNIX;
+	snprintf(addr.sun_path, sizeof(addr.sun_path), "%s", SOCKET_PATH);
+	unlink(SOCKET_PATH);
+	size = sizeof(addr);
+
+	child = fork();
+	ASSERT_LE(0, child);
+	if (child == 0) {
+		oob_buf = '.';
+
+		ASSERT_EQ(0, close(pipe_parent[1]));
+		ASSERT_EQ(0, close(pipe_child[0]));
+
+		sock_fd = socket(AF_UNIX, SOCK_STREAM, 0);
+		ASSERT_NE(-1, sock_fd);
+
+		ASSERT_EQ(1, read(pipe_parent[0], &buffer, 1));
+		ASSERT_EQ(0, connect(sock_fd, &addr, sizeof(addr)));
+
+		ASSERT_EQ(1, read(pipe_parent[0], &buffer, 1));
+		ASSERT_NE(-1, send(sock_fd, &oob_buf, 1, MSG_OOB));
+		ASSERT_EQ(1, write(pipe_child[1], ".", 1));
+
+		EXPECT_EQ(0, close(sock_fd));
+
+		_exit(_metadata->exit_code);
+		return;
+	}
+	ASSERT_EQ(0, close(pipe_parent[0]));
+	ASSERT_EQ(0, close(pipe_child[1]));
+
+	sock_fd = socket(AF_UNIX, SOCK_STREAM, 0);
+	ASSERT_NE(-1, sock_fd);
+	ASSERT_EQ(0, bind(sock_fd, &addr, size));
+	ASSERT_EQ(0, listen(sock_fd, backlog));
+
+	ASSERT_NE(-1, setup_signal_handler(SIGURG));
+	ASSERT_EQ(1, write(pipe_parent[1], ".", 1));
+	recv_sock = accept(sock_fd, &paddr, &size);
+	ASSERT_NE(-1, recv_sock);
+
+	create_scoped_domain(_metadata, LANDLOCK_SCOPED_SIGNAL);
+
+	ASSERT_NE(-1, fcntl(recv_sock, F_SETOWN, getpid()));
+	ASSERT_EQ(1, write(pipe_parent[1], ".", 1));
+	ASSERT_EQ(1, read(pipe_child[0], &buffer, 1));
+	ASSERT_EQ(1, recv(recv_sock, &oob_buf, 1, MSG_OOB));
+
+	ASSERT_EQ(1, signal_received);
+	EXPECT_EQ(0, close(sock_fd));
+	EXPECT_EQ(0, close(recv_sock));
+	ASSERT_EQ(child, waitpid(child, &status, 0));
+	if (WIFSIGNALED(status) || !WIFEXITED(status) ||
+	    WEXITSTATUS(status) != EXIT_SUCCESS)
+		_metadata->exit_code = KSFT_FAIL;
+}
+
 TEST_HARNESS_MAIN
-- 
2.34.1

