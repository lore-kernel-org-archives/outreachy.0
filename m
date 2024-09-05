Received: from mail-oo1-f45.google.com (mail-oo1-f45.google.com [209.85.161.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 403E117BCA
	for <outreachy@lists.linux.dev>; Thu,  5 Sep 2024 00:14:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725495271; cv=none; b=bqLe6dFP4fEPEEYGs39NmfCuJJyia4ljCr4LjXSPnZosws09pyG3p+baEbmSN/BxbFaT0PVvgaqNEgqiQeaq76tBb/bbJsHk4QTHw+8uozX/+0B7blEB3TNlZK/0gF99u8dUDudtcSSEuerPD72srXfV941sqCEuwt0q0Zpcnjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725495271; c=relaxed/simple;
	bh=RqWkchAHwryayt3Hw0HpIWRhsf16JdaX/v77cAvyw3g=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=W4C0xFimmqY2SQrezih2X81VvG+G+buYhjF209BD4k6P6FQbmWxSgFcY8vs9CFdvXx9lmPmQtg8f+DRw6nPgzMYl8ZOKk/vyrxcEym9QWVi8oIdyy5Sy3mqXqjKNiB9k8TgfE6Zilf6Bhjm7VQW+9rle702OZFHmQ2iWO12oI7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Q1KrD7fN; arc=none smtp.client-ip=209.85.161.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Q1KrD7fN"
Received: by mail-oo1-f45.google.com with SMTP id 006d021491bc7-5e1972a9622so145781eaf.0
        for <outreachy@lists.linux.dev>; Wed, 04 Sep 2024 17:14:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725495268; x=1726100068; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VLU/Dks+aXWcA0j3NcWT/JOFKYGYOLpEI0gipU7ELuY=;
        b=Q1KrD7fNLYu4yv6KeOtCGP1apo4yOquQsK6wnLMOceLTh1zgpeEvMz3/K/DggTo2JJ
         ifEz0wnwFzLf5m8b9pI0Bu4ntwgWvX6XR9oOck5ftrWf68w7Qd9BaL7p7j5WSZwtWKXO
         8uRLNqguAabzvXtF8qwWkyi9hfAO4xEQx+xlrom/465wG9sR2pefD0goeev2ePti4vqS
         V3Ey/BTo0YGveLvuDQ6wNMyLhfnnOmjIRYO6NSL4rd5CGZYR71qvLtQ4HnBZdxSFA8yn
         qLrFwy+0c1HApi++9uvAGiuwdlap5XtkBIjChyhHJZq9yUyJn51VXNepCrKm2XxTx7T3
         IxUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725495268; x=1726100068;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VLU/Dks+aXWcA0j3NcWT/JOFKYGYOLpEI0gipU7ELuY=;
        b=sqKyWI3ZyXL27oI24VE58X29J5Wt1enhnJyNo3FHhMBomTzchpfUkRMBWrPqKGmggf
         tOAnD99Q2HlVBHE1QjkT5+lFqtak7RlMspCeH50iOKf/eJEVEa2UMPcRG3Kd3qHu/2qo
         jEs6IRP9dHn1EedUQqwQbDGjZSHIcrHx10Mwub1nW2elbQ+uXGmjs9vAZhfFbT43W+dr
         mZYaPat85480u9DOmFr9mhX9lG1vDue1bUR7eUtYwxOgj1eFEI81Szm2ot2HigANWu6e
         zLIdRWL6t9vf178XNbCW50k8xmR8eCQaf44A1TCE2K3Xf4XPDdIuaGUtWIL0pHGj0/de
         B8aA==
X-Gm-Message-State: AOJu0YzPnK6xeF/rhe4p3PyAEAF/7JqzIAeJiCTffh9zY7pE71UBnRrd
	zmayIzRHnGQVCMG7jcUNwUCQs85vjaI7GXj1cTx/FQ0Grqa6rm+wMpxCSENX
X-Google-Smtp-Source: AGHT+IEYBzaZziqgePl/VAJRK2y9nblLr4dKcr/reyFKQBYG8x3W9aZIf9LB6cNhGm5u/xeQg76/dg==
X-Received: by 2002:a05:6358:e48b:b0:1b5:f592:6729 with SMTP id e5c5f4694b2df-1b603c200f6mr410937955d.9.1725495268523;
        Wed, 04 Sep 2024 17:14:28 -0700 (PDT)
Received: from tahera-OptiPlex-5000.tail3bf47f.ts.net ([136.159.49.123])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71778534921sm2159781b3a.76.2024.09.04.17.14.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Sep 2024 17:14:27 -0700 (PDT)
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
Subject: [PATCH v11 6/8] selftests/landlock: Restrict inherited datagram UNIX socket to connect
Date: Wed,  4 Sep 2024 18:14:00 -0600
Message-Id: <1428574deec13603b6ab2f2ed68ecbfa3b63bcb3.1725494372.git.fahimitahera@gmail.com>
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

A socket can be shared between multiple processes, so it can connect and
send data to them. This patch provides a test scenario where a sandboxed
process inherits a socket's file descriptor. The process cannot connect
or send data to the inherited socket since the process is scoped.

Signed-off-by: Tahera Fahimi <fahimitahera@gmail.com>
---
 .../landlock/scoped_abstract_unix_test.c      | 66 +++++++++++++++++++
 1 file changed, 66 insertions(+)

diff --git a/tools/testing/selftests/landlock/scoped_abstract_unix_test.c b/tools/testing/selftests/landlock/scoped_abstract_unix_test.c
index 39297ebf7b73..97ef74ce9f49 100644
--- a/tools/testing/selftests/landlock/scoped_abstract_unix_test.c
+++ b/tools/testing/selftests/landlock/scoped_abstract_unix_test.c
@@ -924,4 +924,70 @@ TEST(datagram_sockets)
 		_metadata->exit_code = KSFT_FAIL;
 }
 
+TEST(self_connect)
+{
+	struct service_fixture connected_addr, non_connected_addr;
+	int connected_socket, non_connected_socket, status;
+	pid_t child;
+
+	drop_caps(_metadata);
+	memset(&connected_addr, 0, sizeof(connected_addr));
+	set_unix_address(&connected_addr, 0);
+	memset(&non_connected_addr, 0, sizeof(non_connected_addr));
+	set_unix_address(&non_connected_addr, 1);
+
+	connected_socket = socket(AF_UNIX, SOCK_DGRAM, 0);
+	non_connected_socket = socket(AF_UNIX, SOCK_DGRAM, 0);
+	ASSERT_NE(-1, connected_socket);
+	ASSERT_NE(-1, non_connected_socket);
+
+	ASSERT_EQ(0, bind(connected_socket, &connected_addr.unix_addr,
+			  connected_addr.unix_addr_len));
+	ASSERT_EQ(0, bind(non_connected_socket, &non_connected_addr.unix_addr,
+			  non_connected_addr.unix_addr_len));
+
+	child = fork();
+	ASSERT_LE(0, child);
+	if (child == 0) {
+		char buf_data[64];
+
+		memset(buf_data, 'x', sizeof(buf_data));
+		/* Child's domain is scoped. */
+		create_scoped_domain(_metadata,
+				     LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET);
+
+		/*
+		 * The child inherits the sockets, and cannot connect or
+		 * send data to them.
+		 */
+		ASSERT_NE(0,
+			  connect(connected_socket, &connected_addr.unix_addr,
+				  connected_addr.unix_addr_len));
+		ASSERT_EQ(EPERM, errno);
+
+		ASSERT_EQ(-1,
+			  sendto(connected_socket, buf_data, sizeof(buf_data),
+				 0, &connected_addr.unix_addr,
+				 connected_addr.unix_addr_len));
+		ASSERT_EQ(EPERM, errno);
+
+		ASSERT_EQ(-1, sendto(non_connected_socket, buf_data,
+				     sizeof(buf_data), 0,
+				     &non_connected_addr.unix_addr,
+				     non_connected_addr.unix_addr_len));
+		ASSERT_EQ(EPERM, errno);
+
+		EXPECT_EQ(0, close(connected_socket));
+		EXPECT_EQ(0, close(non_connected_socket));
+		_exit(_metadata->exit_code);
+		return;
+	}
+	EXPECT_EQ(0, close(connected_socket));
+	EXPECT_EQ(0, close(non_connected_socket));
+	ASSERT_EQ(child, waitpid(child, &status, 0));
+	if (WIFSIGNALED(status) || !WIFEXITED(status) ||
+	    WEXITSTATUS(status) != EXIT_SUCCESS)
+		_metadata->exit_code = KSFT_FAIL;
+}
+
 TEST_HARNESS_MAIN
-- 
2.34.1

