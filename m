Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB88C28EB
	for <outreachy@lists.linux.dev>; Thu,  5 Sep 2024 00:14:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725495270; cv=none; b=mTvMAUZoi3qGLM9GAJdT26DRQEv00uMTbdZDyeKtpNTOfd+78nXyFHM1NO+73tzlVP6yD7muoMNm5fuMo+5CfuZezhbwSFw6nBbE2VphEHT4vHOZPGlWU7c4VmBLc4uwDE4wBlZeLH9P18+5JO1JWhmSoznj8E60HB4OaoYmUsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725495270; c=relaxed/simple;
	bh=6B5/fbYGXDCmpCB56kmnCm2tByrZA7Zjr7RtQx6ILtg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=R5m29VSBCwbg+QKSiaYh8ZCO+VUNP6HSPXWJpSO3PsN+/osQg3rgsYnXSQSa5D87mvuttTDAlSmizYl21FLGNPNLEXBOXlEg6E1waFIT5U3z/5BNifXFtYv0Xur9fc09oPFGRNPc1YEbCbRLuQF9R2wbVRTixSBTs1Pwv4q2L+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TDy9ZiWm; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TDy9ZiWm"
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-7d4fb2cd1ecso13919a12.0
        for <outreachy@lists.linux.dev>; Wed, 04 Sep 2024 17:14:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725495267; x=1726100067; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UYo96gfr0shigHW7k7ch8rY/tXVue2H6sZrfJvM5RKk=;
        b=TDy9ZiWmbphjVCCx/Sxwf6vBULdtT6CeYSbw4h03yM3c4Nk4x4Zde5mEb0y9l+n4Yb
         OPUwhC4SBCDTf7fmlaAYPTZE0pIKEjpd1OmUhb+k3cca4d84xtcm0QnjCInZtYklr6S3
         SJTcEynZw8/CktaPVHUur2h9UJbBfSjQg9WEq91pnS/Z0ZygDCbhj7V/Vc+2IV5mhXZi
         bnWzGv6ReXZA5z31tBn6VILc5Dj6rbskkTz2LYy/7OioMxhRUIUf3kWKThvSnRMHgPRV
         pfWilldHYXoYXOJFNjG1w6/S7iCPoYwAInH+K4OmI24EFg5htzu9SQch7PuKdZl7gjWV
         2AQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725495267; x=1726100067;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UYo96gfr0shigHW7k7ch8rY/tXVue2H6sZrfJvM5RKk=;
        b=O+0akyfqxjf2dqPBC5XgAPVDz5vncpcvkgqZGu0y90ch+CcBzFJyz1MjLRCGESdeQa
         yI6GDajDIxhA0msezRIzOCUM1moAAlNd+MtrmN47DNBgquf5uRxshsR8Q7We8tz1ur9N
         x437TXjzVvN6DmKQ/zE4a885Vrrv2W3SJDzZP6KR0Cmz2fWBCcVStA3WUaIeD2ZG+BRL
         tvN1U+GEggMZ+dYuL3QRbRXoaiD35kx7LjsouLX6jE/KlZ5tW0lZ4xE9YXQ7p3WNuann
         B+iq6af1qs6tW34EorVx1NSZxv4XegfWQUIkT+ZyfIkhss23tZOsbjhpRWXy5Zr11c/D
         0qTA==
X-Gm-Message-State: AOJu0YzXbnmBZESRQfyAYFMEAcONLNn82bskoQsQFEr40O9BhNFKmrCL
	84lT6XWJQA0R7gXvdQCTgxjWvV9sUvPXsWQESs6aGEhUH9uVtB/k3JtGlfE1
X-Google-Smtp-Source: AGHT+IGDPU/BNHAZz0bwWU8S2tHlNB+zCpsSMRBxuqOoSw8vPfK18pVrIafwCMVe5MFMa3TZMSUUkg==
X-Received: by 2002:a05:6a20:43a8:b0:1be:c3c1:7be8 with SMTP id adf61e73a8af0-1cce1015c4dmr23641835637.26.1725495266908;
        Wed, 04 Sep 2024 17:14:26 -0700 (PDT)
Received: from tahera-OptiPlex-5000.tail3bf47f.ts.net ([136.159.49.123])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71778534921sm2159781b3a.76.2024.09.04.17.14.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Sep 2024 17:14:26 -0700 (PDT)
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
Subject: [PATCH v11 5/8] selftests/landlock: Test connected vs non-connected datagram UNIX socket
Date: Wed,  4 Sep 2024 18:13:59 -0600
Message-Id: <c28c9cd8feef67dd25e115c401a2389a75f9983b.1725494372.git.fahimitahera@gmail.com>
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

This patch checks the specific case where a scoped datagram socket is
connected and send(2) works, whereas sendto(2) is denied if the datagram
socket is not connected.

Signed-off-by: Tahera Fahimi <fahimitahera@gmail.com>
---
 .../landlock/scoped_abstract_unix_test.c      | 105 ++++++++++++++++++
 1 file changed, 105 insertions(+)

diff --git a/tools/testing/selftests/landlock/scoped_abstract_unix_test.c b/tools/testing/selftests/landlock/scoped_abstract_unix_test.c
index 8fc47e45d17e..39297ebf7b73 100644
--- a/tools/testing/selftests/landlock/scoped_abstract_unix_test.c
+++ b/tools/testing/selftests/landlock/scoped_abstract_unix_test.c
@@ -819,4 +819,109 @@ TEST_F(various_address_sockets, scoped_pathname_sockets)
 		_metadata->exit_code = KSFT_FAIL;
 }
 
+TEST(datagram_sockets)
+{
+	struct service_fixture connected_addr, non_connected_addr;
+	int conn_sock, non_conn_sock;
+	int pipe_parent[2], pipe_child[2];
+	int status;
+	char buf;
+	pid_t child;
+	int num_bytes;
+	char data[64];
+
+	drop_caps(_metadata);
+	memset(&connected_addr, 0, sizeof(connected_addr));
+	set_unix_address(&connected_addr, 0);
+	memset(&non_connected_addr, 0, sizeof(non_connected_addr));
+	set_unix_address(&non_connected_addr, 1);
+
+	ASSERT_EQ(0, pipe2(pipe_parent, O_CLOEXEC));
+	ASSERT_EQ(0, pipe2(pipe_child, O_CLOEXEC));
+
+	child = fork();
+	ASSERT_LE(0, child);
+	if (child == 0) {
+		char buf_data[64];
+
+		ASSERT_EQ(0, close(pipe_parent[1]));
+		ASSERT_EQ(0, close(pipe_child[0]));
+
+		conn_sock = socket(AF_UNIX, SOCK_DGRAM, 0);
+		non_conn_sock = socket(AF_UNIX, SOCK_DGRAM, 0);
+		ASSERT_NE(-1, conn_sock);
+		ASSERT_NE(-1, non_conn_sock);
+
+		ASSERT_EQ(1, read(pipe_parent[0], &buf, 1));
+
+		ASSERT_EQ(0, connect(conn_sock, &connected_addr.unix_addr,
+				     connected_addr.unix_addr_len));
+
+		/* Both connected and non-connected sockets can send
+		 * data when the domain is not scoped.
+		 */
+		memset(buf_data, 'x', sizeof(buf_data));
+		ASSERT_NE(-1, send(conn_sock, buf_data, sizeof(buf_data), 0));
+		ASSERT_NE(-1, sendto(non_conn_sock, buf_data, sizeof(buf_data),
+				     0, &non_connected_addr.unix_addr,
+				     non_connected_addr.unix_addr_len));
+		ASSERT_EQ(1, write(pipe_child[1], ".", 1));
+
+		/* Scopes the domain. */
+		create_scoped_domain(_metadata,
+				     LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET);
+
+		/*
+		 * Connected socket sends data to the receiver, but the
+		 * non-connected socket must fail to send data.
+		 */
+		ASSERT_NE(-1, send(conn_sock, buf_data, sizeof(buf_data), 0));
+		ASSERT_EQ(-1, sendto(non_conn_sock, buf_data, sizeof(buf_data),
+				     0, &non_connected_addr.unix_addr,
+				     non_connected_addr.unix_addr_len));
+		ASSERT_EQ(EPERM, errno);
+		ASSERT_EQ(1, write(pipe_child[1], ".", 1));
+
+		EXPECT_EQ(0, close(conn_sock));
+		EXPECT_EQ(0, close(non_conn_sock));
+		_exit(_metadata->exit_code);
+		return;
+	}
+	ASSERT_EQ(0, close(pipe_parent[0]));
+	ASSERT_EQ(0, close(pipe_child[1]));
+
+	conn_sock = socket(AF_UNIX, SOCK_DGRAM, 0);
+	non_conn_sock = socket(AF_UNIX, SOCK_DGRAM, 0);
+	ASSERT_NE(-1, conn_sock);
+	ASSERT_NE(-1, non_conn_sock);
+
+	ASSERT_EQ(0, bind(conn_sock, &connected_addr.unix_addr,
+			  connected_addr.unix_addr_len));
+	ASSERT_EQ(0, bind(non_conn_sock, &non_connected_addr.unix_addr,
+			  non_connected_addr.unix_addr_len));
+
+	ASSERT_EQ(1, write(pipe_parent[1], ".", 1));
+
+	ASSERT_EQ(1, read(pipe_child[0], &buf, 1));
+	num_bytes = recv(conn_sock, data, sizeof(data) - 1, 0);
+	ASSERT_NE(-1, num_bytes);
+	num_bytes = recv(non_conn_sock, data, sizeof(data) - 1, 0);
+	ASSERT_NE(-1, num_bytes);
+
+	/*
+	 * Connected datagram socket will receive data, but
+	 * non-connected datagram socket does not receive data.
+	 */
+	ASSERT_EQ(1, read(pipe_child[0], &buf, 1));
+	num_bytes = recv(conn_sock, data, sizeof(data) - 1, 0);
+	ASSERT_NE(-1, num_bytes);
+
+	EXPECT_EQ(0, close(conn_sock));
+	EXPECT_EQ(0, close(non_conn_sock));
+	ASSERT_EQ(child, waitpid(child, &status, 0));
+	if (WIFSIGNALED(status) || !WIFEXITED(status) ||
+	    WEXITSTATUS(status) != EXIT_SUCCESS)
+		_metadata->exit_code = KSFT_FAIL;
+}
+
 TEST_HARNESS_MAIN
-- 
2.34.1

