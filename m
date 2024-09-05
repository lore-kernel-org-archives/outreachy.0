Received: from mail-oo1-f44.google.com (mail-oo1-f44.google.com [209.85.161.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4817FEAF1
	for <outreachy@lists.linux.dev>; Thu,  5 Sep 2024 00:14:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725495269; cv=none; b=AsBbKLYFL/HJiqSZXTN8fFQJCLqjgWLRDWOmWprnNKv6bdV6KysD7A/j6VWKfoW/D31SbGGGIT6UCQ7Z31Cot0fmGYengyVHpEIoIFcRfQkNZ/dnkvyZaDdX3tff93/HqYnTjWTn978MwkGb1Ic/lusoC7mZzTef8DbfEqC2ArM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725495269; c=relaxed/simple;
	bh=6Mppb/IteTfIlLgsMNenC9CxdXvOR6R4inruYITVZ04=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=bRxEtAR/f/JaXJRUyUJGr2iBtHtUVw45t7FsHXOU9xxH1GHfu7g9ixzsNZbafKZFVZ6AE/vH1Jy61GpXYTcxw1R9osyzAXMesXTxPQnRo45p0lNT5Cf7xEOYZJ3PUR76Y8sTS0FnNOvmbE37CN+CuUWDXrEtZeWIkh1mDujms7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TKnRgLUO; arc=none smtp.client-ip=209.85.161.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TKnRgLUO"
Received: by mail-oo1-f44.google.com with SMTP id 006d021491bc7-5da686531d3so135681eaf.3
        for <outreachy@lists.linux.dev>; Wed, 04 Sep 2024 17:14:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725495266; x=1726100066; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WdUGGmo4EZXMWUsoOjFrOLVLRkPFoKDmP9VM6UY6JiY=;
        b=TKnRgLUO1zGhXeQIMMgGutAN22mdVLFKfxx4AwQ8mK41OmFAdZCdd1Xr2FBUX/APxg
         +UEOE7vN/Lc4uXn20c7zkFp3zXzCljW8KYLAtfb/wUqDnpU0qTBhuV7Hwp3zzU9thnCA
         z6/bq6/kGTFQLvC5z5sQ3BzvkllXG12FqYwivwBwE/jN26r0SqJr9W1tWJgaNrmsH9OS
         1gYuLXu2PVMMvyYoYvRv73mMDpEmqXnIIzoa8Xma1RR43/yq5GXkC0czviqEbN620TYI
         JGUf4p4pHAQQ3nTtQDDyMJNefqkHqyFZWhG6lqe+pkYew7tiQdxYJyTzIHtIMWHbXkNB
         NwKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725495266; x=1726100066;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WdUGGmo4EZXMWUsoOjFrOLVLRkPFoKDmP9VM6UY6JiY=;
        b=pAq6YVmTWMrDSwKeTzrwstXib6gjyx+C7ZlmTgM9Gl4E227P6ABX66QMFQoxijRgr1
         0EdqqAadIZdwzYz2AjqEwz5LPitYPSc0VGvDYs8HYq0Iit4Ev1wQx7eric+97ZovjZzV
         QKvz/bfDUu2+bPedv9dqVw9vlyVgf575Nm04OGaIQoR/TIT5GmIQSd6O2b5y+U6BxZN0
         clNKt+B8CnLV9LKa+7obu2q7nubRNW51Tu5x3VxEybJvAv26zf5TsOFE4S2lTJzgsNWu
         KqUp9Ha+bAnoeonyaj3Q+JCUNGQMh4XssrMTV/+HnEpChUFTzDNGE6Pt4VtaXvEW2CF6
         2OZA==
X-Gm-Message-State: AOJu0YzV80vPrZdsDrvcOkrm0NXmyogrcghyv53QnwBhTjV4xTXk+ePg
	HcZ7DXcdVB+Mhr3i+v0pGLh9FQluynxS5/q88+mVEER15CsUjdBP81jJK8rK
X-Google-Smtp-Source: AGHT+IFUHVZGaAJdSoHKOAWujxHJjsI4Egi6h0piPVafcBQ2aa228X4CzWAN/Tv7siQ9XqpsZqQ7BQ==
X-Received: by 2002:a05:6358:7e50:b0:1b1:a8a6:1630 with SMTP id e5c5f4694b2df-1b7edbcc8bfmr2225984755d.20.1725495265851;
        Wed, 04 Sep 2024 17:14:25 -0700 (PDT)
Received: from tahera-OptiPlex-5000.tail3bf47f.ts.net ([136.159.49.123])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71778534921sm2159781b3a.76.2024.09.04.17.14.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Sep 2024 17:14:25 -0700 (PDT)
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
Subject: [PATCH v11 4/8] selftests/landlock: Add tests for UNIX sockets with any address formats
Date: Wed,  4 Sep 2024 18:13:58 -0600
Message-Id: <a9e8016aaa5846252623b158c8f1ce0d666944f4.1725494372.git.fahimitahera@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1725494372.git.fahimitahera@gmail.com>
References: <cover.1725494372.git.fahimitahera@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch expands abstract UNIX socket restriction tests by examining
different scenarios for UNIX sockets with pathname or unnamed address
formats connection with scoped domain.

The test "various_address_sockets" ensures that UNIX sockets bound to a
filesystem pathname and unnamed sockets created by socketpair can still
connect to a socket outside of their scoped domain, meaning that even if
the domain is scoped with LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET, the
socket can connect to a socket outside the scoped domain.

Signed-off-by: Tahera Fahimi <fahimitahera@gmail.com>
---
changes in versions:
v11:
- Using generalized scoped domain creation, "create_scoped_domain"
- Rename pathname_address_sockets to various_address_sockets
- Using local variables.
- Commit improvement.
- Support test for unnamed datagram sockets(via socketpair(2)).
v10:
- Code improvements by changing fixture variables to local ones.
- Commit improvement.
v9:
- Moving remove_path() back to fs_test.c, and using unlink(2) and
  rmdir(2) instead.
- Removing hard-coded numbers and using "backlog" instead.
V8:
- Adding pathname_address_sockets to cover all types of address formats
  for unix sockets, and moving remove_path() to common.h to reuse in
  this test.
---
 .../landlock/scoped_abstract_unix_test.c      | 202 ++++++++++++++++++
 1 file changed, 202 insertions(+)

diff --git a/tools/testing/selftests/landlock/scoped_abstract_unix_test.c b/tools/testing/selftests/landlock/scoped_abstract_unix_test.c
index 00ea5151979f..8fc47e45d17e 100644
--- a/tools/testing/selftests/landlock/scoped_abstract_unix_test.c
+++ b/tools/testing/selftests/landlock/scoped_abstract_unix_test.c
@@ -617,4 +617,206 @@ TEST_F(outside_socket, socket_with_different_domain)
 		_metadata->exit_code = KSFT_FAIL;
 }
 
+static const char path1[] = TMP_DIR "/s1_variant1";
+static const char path2[] = TMP_DIR "/s2_variant1";
+
+/* clang-format off */
+FIXTURE(various_address_sockets)
+{
+	struct service_fixture stream_address, dgram_address;
+};
+/* clang-format on */
+
+FIXTURE_VARIANT(various_address_sockets)
+{
+	const int domain;
+};
+
+/* clang-format off */
+FIXTURE_VARIANT_ADD(various_address_sockets, pathname_socket_scoped_domain) {
+	/* clang-format on */
+	.domain = SCOPE_SANDBOX,
+};
+
+/* clang-format off */
+FIXTURE_VARIANT_ADD(various_address_sockets, pathname_socket_other_domain) {
+	/* clang-format on */
+	.domain = OTHER_SANDBOX,
+};
+
+/* clang-format off */
+FIXTURE_VARIANT_ADD(various_address_sockets, pathname_socket_no_domain) {
+	/* clang-format on */
+	.domain = NO_SANDBOX,
+};
+
+FIXTURE_SETUP(various_address_sockets)
+{
+	disable_caps(_metadata);
+	umask(0077);
+	ASSERT_EQ(0, mkdir(TMP_DIR, 0700));
+
+	ASSERT_EQ(0, mknod(path1, S_IFREG | 0700, 0))
+	{
+		TH_LOG("Failed to create file \"%s\": %s", path1,
+		       strerror(errno));
+		ASSERT_EQ(0, unlink(TMP_DIR) & rmdir(TMP_DIR));
+	}
+	ASSERT_EQ(0, mknod(path2, S_IFREG | 0700, 0))
+	{
+		TH_LOG("Failed to create file \"%s\": %s", path2,
+		       strerror(errno));
+		ASSERT_EQ(0, unlink(TMP_DIR) & rmdir(TMP_DIR));
+	}
+	memset(&self->stream_address, 0, sizeof(self->stream_address));
+	set_unix_address(&self->stream_address, 0);
+	memset(&self->dgram_address, 0, sizeof(self->dgram_address));
+	set_unix_address(&self->dgram_address, 1);
+}
+
+FIXTURE_TEARDOWN(various_address_sockets)
+{
+	ASSERT_EQ(0, unlink(path1) & rmdir(path1));
+	ASSERT_EQ(0, unlink(path2) & rmdir(path2));
+	ASSERT_EQ(0, unlink(TMP_DIR) & rmdir(TMP_DIR));
+}
+
+TEST_F(various_address_sockets, scoped_pathname_sockets)
+{
+	const char *const stream_path = path1;
+	const char *const dgram_path = path2;
+	socklen_t size, size_dg;
+	struct sockaddr_un stream_pathname_addr, dgram_pathname_addr;
+	int unnamed_sockets[2];
+	int stream_pathname_socket, dgram_pathname_socket,
+		stream_abstract_socket, dgram_abstract_socket;
+	int pipe_parent[2];
+	pid_t child;
+	int status;
+	char buf_child;
+	char data = 'S';
+	char buf[5];
+	int nbyte;
+
+	ASSERT_EQ(0, socketpair(AF_UNIX, SOCK_DGRAM, 0, unnamed_sockets));
+
+	stream_pathname_addr.sun_family = AF_UNIX;
+	snprintf(stream_pathname_addr.sun_path,
+		 sizeof(stream_pathname_addr.sun_path), "%s", stream_path);
+	size = offsetof(struct sockaddr_un, sun_path) +
+	       strlen(stream_pathname_addr.sun_path);
+
+	dgram_pathname_addr.sun_family = AF_UNIX;
+	snprintf(dgram_pathname_addr.sun_path,
+		 sizeof(dgram_pathname_addr.sun_path), "%s", dgram_path);
+	size_dg = offsetof(struct sockaddr_un, sun_path) +
+		  strlen(dgram_pathname_addr.sun_path);
+
+	ASSERT_EQ(0, pipe2(pipe_parent, O_CLOEXEC));
+
+	child = fork();
+	ASSERT_LE(0, child);
+	if (child == 0) {
+		int err, err_dg;
+
+		ASSERT_EQ(0, close(pipe_parent[1]));
+
+		if (variant->domain == SCOPE_SANDBOX)
+			create_scoped_domain(
+				_metadata,
+				LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET);
+		else if (variant->domain == OTHER_SANDBOX)
+			create_fs_domain(_metadata);
+
+		ASSERT_EQ(0, close(unnamed_sockets[1]));
+		ASSERT_NE(-1, write(unnamed_sockets[0], &data, sizeof(data)));
+		ASSERT_EQ(0, close(unnamed_sockets[0]));
+
+		ASSERT_EQ(1, read(pipe_parent[0], &buf_child, 1));
+
+		/* Connect with pathname sockets. */
+		stream_pathname_socket = socket(AF_UNIX, SOCK_STREAM, 0);
+		ASSERT_LE(0, stream_pathname_socket);
+		ASSERT_EQ(0, connect(stream_pathname_socket,
+				     &stream_pathname_addr, size));
+		dgram_pathname_socket = socket(AF_UNIX, SOCK_DGRAM, 0);
+		ASSERT_LE(0, dgram_pathname_socket);
+		ASSERT_EQ(0, connect(dgram_pathname_socket,
+				     &dgram_pathname_addr, size_dg));
+
+		/* Connect with abstract sockets. */
+		stream_abstract_socket = socket(AF_UNIX, SOCK_STREAM, 0);
+		dgram_abstract_socket = socket(AF_UNIX, SOCK_DGRAM, 0);
+
+		ASSERT_NE(-1, stream_abstract_socket);
+		ASSERT_NE(-1, dgram_abstract_socket);
+
+		err = connect(stream_abstract_socket,
+			      &self->stream_address.unix_addr,
+			      self->stream_address.unix_addr_len);
+		err_dg = connect(dgram_abstract_socket,
+				 &self->dgram_address.unix_addr,
+				 self->dgram_address.unix_addr_len);
+		if (variant->domain == SCOPE_SANDBOX) {
+			EXPECT_EQ(-1, err);
+			EXPECT_EQ(-1, err_dg);
+			EXPECT_EQ(EPERM, errno);
+		} else {
+			EXPECT_EQ(0, err);
+			EXPECT_EQ(0, err_dg);
+		}
+		ASSERT_EQ(0, close(stream_abstract_socket));
+		ASSERT_EQ(0, close(dgram_abstract_socket));
+		ASSERT_EQ(0, close(stream_pathname_socket));
+		ASSERT_EQ(0, close(dgram_pathname_socket));
+		_exit(_metadata->exit_code);
+		return;
+	}
+	ASSERT_EQ(0, close(pipe_parent[0]));
+
+	ASSERT_EQ(0, close(unnamed_sockets[0]));
+	nbyte = read(unnamed_sockets[1], buf, sizeof(buf));
+	ASSERT_EQ(sizeof(data), nbyte);
+	buf[nbyte] = '\0';
+	ASSERT_EQ(0, strcmp(&data, buf));
+	ASSERT_LE(0, close(unnamed_sockets[1]));
+
+	/* Sets up pathname servers */
+	stream_pathname_socket = socket(AF_UNIX, SOCK_STREAM, 0);
+	ASSERT_LE(0, stream_pathname_socket);
+	ASSERT_EQ(0, unlink(stream_path));
+	ASSERT_EQ(0, bind(stream_pathname_socket, &stream_pathname_addr, size));
+	ASSERT_EQ(0, listen(stream_pathname_socket, backlog));
+
+	ASSERT_EQ(0, unlink(dgram_path));
+	dgram_pathname_socket = socket(AF_UNIX, SOCK_DGRAM, 0);
+	ASSERT_LE(0, dgram_pathname_socket);
+	ASSERT_EQ(0,
+		  bind(dgram_pathname_socket, &dgram_pathname_addr, size_dg));
+
+	/* Set up abstract servers */
+	stream_abstract_socket = socket(AF_UNIX, SOCK_STREAM, 0);
+	dgram_abstract_socket = socket(AF_UNIX, SOCK_DGRAM, 0);
+	ASSERT_NE(-1, stream_abstract_socket);
+	ASSERT_NE(-1, dgram_abstract_socket);
+	ASSERT_EQ(0,
+		  bind(stream_abstract_socket, &self->stream_address.unix_addr,
+		       self->stream_address.unix_addr_len));
+	ASSERT_EQ(0, bind(dgram_abstract_socket, &self->dgram_address.unix_addr,
+			  self->dgram_address.unix_addr_len));
+	ASSERT_EQ(0, listen(stream_abstract_socket, backlog));
+
+	ASSERT_EQ(1, write(pipe_parent[1], ".", 1));
+	ASSERT_EQ(child, waitpid(child, &status, 0));
+
+	ASSERT_EQ(0, close(stream_abstract_socket));
+	ASSERT_EQ(0, close(dgram_abstract_socket));
+	ASSERT_EQ(0, close(stream_pathname_socket));
+	ASSERT_EQ(0, close(dgram_pathname_socket));
+
+	if (WIFSIGNALED(status) || !WIFEXITED(status) ||
+	    WEXITSTATUS(status) != EXIT_SUCCESS)
+		_metadata->exit_code = KSFT_FAIL;
+}
+
 TEST_HARNESS_MAIN
-- 
2.34.1

