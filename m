Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com [209.85.161.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0DCE45948
	for <outreachy@lists.linux.dev>; Thu, 18 Jul 2024 04:15:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721276154; cv=none; b=J/2c2y/Ro38XSvgWwZes4DhTQKi3j8LMSK2r26qXbCgprCPzwwt931HT6GFIwIdrT4Z6DuHDjQ9ai8xUB52YkJGm7edXB2oPhwam51/mMpNIwHlcJJk2vbxURZEaPl+ojV3CqIfkFKIhJYMJ6/OpwP/F0bNSWp6oFuP5Kqwk2BY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721276154; c=relaxed/simple;
	bh=Mi5ZUM41/ktJX7zKCU6FlONfY/9U4/6+NbrEylDFMN4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=pDuABLi53s8LY5CxaFiGIIwbi/frW5459uXuO6jjsXqpdWkXjrbkLPpdcOhd3BqzDzeHHlpvNU1Me5kcaD1z3lI6DEbx0L05k+QRTpzLdyTBeUlE7VVP08IsPUtS5IEKdt45CoXLDrudPqLFgzW9CkbonPTdttNIlva81158lHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NLs96LAm; arc=none smtp.client-ip=209.85.161.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NLs96LAm"
Received: by mail-oo1-f54.google.com with SMTP id 006d021491bc7-5c651c521f2so145221eaf.1
        for <outreachy@lists.linux.dev>; Wed, 17 Jul 2024 21:15:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721276152; x=1721880952; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s6zBj5uZPcxriKU++D3mNaRl/FODLGy5kTzzaF5U6JU=;
        b=NLs96LAm/nbGk4xCXoMf93ZdTYC1AjKPhePLFYfphxzEZ4ise8GFs7Q9kCSR6Zu/bi
         TMi5IA3wT6QaEETsLt3FxKnaJGtTF+KRg07M/XK1LOTNNweHlXiNACU4FQqwh6pQUp0o
         1e6RYi/9jF+ywl3L0u1tvAMsXO6rx76vXFwtQvJyy/88Cs76U/BWs+KmQddDY5z/lBc5
         eTIfKKRI51hQTJ/Cat8yRJCpn8iHngkgcA50oCJdv28NFaTPtuA2ztgK9v/+ya4KlE9I
         ZJge8UYMFkW0wKeciMQ+GjkMJLfp8hdN/ZRFMDd5wKsE/ArcagvK3/LrF3EQvxNbguRV
         r+OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721276152; x=1721880952;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s6zBj5uZPcxriKU++D3mNaRl/FODLGy5kTzzaF5U6JU=;
        b=SSyaiGkUBiVei/Jc0L1hSROO+Cd46u7CW4aWsV2JRhiWnXv2y3Ao/6CaeQd+DDqcAK
         6951fzlb+uwrhaSebYFsn9kxs+XfX+ON6dxjYRheLdb6j41WSCRJjVqJWBE4j73rDpDG
         0hvkO56+mDFgQhHPLTwT4lhnspzblDDYnEXfj9a0TLFQZe8l4tL4iUHzrUf7kwZ0ZYH+
         /ZXzfwqJ2qB2gkP6FwPOuZtIMNOlG2+6v6O8/UBcYv/mwAY5wodC2uzQRXd2XSrqzXID
         vdNMhAvI0e6cupAhaR5cR8XIV+5ENxA+s8nh0Po0y2LWuLzB/TiT4ZIHZ+1DXNWPI3zl
         f7sg==
X-Forwarded-Encrypted: i=1; AJvYcCVi4ku1PeMyrMP+KBXJClGTTRS68xu3nrzMfh/v3D9BnjhtOl1hFrVSCbjg8UBdTvxi4CzgpJ8n/ksIjYp7M+RqJwSjYS/BvJ1B
X-Gm-Message-State: AOJu0Yzf5dlHbCqdqImKF2RVQgTxniM7UpzS4m4v4mqEi4Gx3ya5NdWq
	/Ts/Rf18DBneAZ/ALiI/gmyt/V2bbmZ75wxmnOdj/UhWpYv4i++g
X-Google-Smtp-Source: AGHT+IFwFt3EVAdJbOsXpxxA3vfHmISA7yugItyNb7EugfFXHK8ITWJL2iMN37Ie6Bpm5iDgO7brkg==
X-Received: by 2002:a05:6359:4121:b0:1aa:d71f:6921 with SMTP id e5c5f4694b2df-1aca9e92f8dmr148395155d.5.1721276151571;
        Wed, 17 Jul 2024 21:15:51 -0700 (PDT)
Received: from tahera-OptiPlex-5000.tail3bf47f.ts.net ([136.159.49.123])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fc0bc38dc0sm83152785ad.215.2024.07.17.21.15.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jul 2024 21:15:51 -0700 (PDT)
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
Subject: [PATCH v7 3/4] samples/landlock: Support abstract unix socket restriction
Date: Wed, 17 Jul 2024 22:15:21 -0600
Message-Id: <4f533a80d56d9f57d50a87d55101cfdeb03404c3.1721269836.git.fahimitahera@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1721269836.git.fahimitahera@gmail.com>
References: <cover.1721269836.git.fahimitahera@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

- Adding IPC scoping to the sandbox demo by defining a new "LL_SCOPED"
  environment variable. "LL_SCOPED" gets value "a" to restrict abstract
  unix sockets.
- Change to LANDLOCK_ABI_LAST to 6.

Signed-off-by: Tahera Fahimi <fahimitahera@gmail.com>
---
 samples/landlock/sandboxer.c | 25 +++++++++++++++++++------
 1 file changed, 19 insertions(+), 6 deletions(-)

diff --git a/samples/landlock/sandboxer.c b/samples/landlock/sandboxer.c
index e8223c3e781a..d280616585d4 100644
--- a/samples/landlock/sandboxer.c
+++ b/samples/landlock/sandboxer.c
@@ -14,6 +14,7 @@
 #include <fcntl.h>
 #include <linux/landlock.h>
 #include <linux/prctl.h>
+#include <linux/socket.h>
 #include <stddef.h>
 #include <stdio.h>
 #include <stdlib.h>
@@ -55,6 +56,7 @@ static inline int landlock_restrict_self(const int ruleset_fd,
 #define ENV_FS_RW_NAME "LL_FS_RW"
 #define ENV_TCP_BIND_NAME "LL_TCP_BIND"
 #define ENV_TCP_CONNECT_NAME "LL_TCP_CONNECT"
+#define ENV_SCOPED_NAME "LL_SCOPED"
 #define ENV_DELIMITER ":"
 
 static int parse_path(char *env_path, const char ***const path_list)
@@ -208,7 +210,7 @@ static int populate_ruleset_net(const char *const env_var, const int ruleset_fd,
 
 /* clang-format on */
 
-#define LANDLOCK_ABI_LAST 5
+#define LANDLOCK_ABI_LAST 6
 
 int main(const int argc, char *const argv[], char *const *const envp)
 {
@@ -216,6 +218,7 @@ int main(const int argc, char *const argv[], char *const *const envp)
 	char *const *cmd_argv;
 	int ruleset_fd, abi;
 	char *env_port_name;
+	char *env_scoped_name;
 	__u64 access_fs_ro = ACCESS_FS_ROUGHLY_READ,
 	      access_fs_rw = ACCESS_FS_ROUGHLY_READ | ACCESS_FS_ROUGHLY_WRITE;
 
@@ -223,14 +226,15 @@ int main(const int argc, char *const argv[], char *const *const envp)
 		.handled_access_fs = access_fs_rw,
 		.handled_access_net = LANDLOCK_ACCESS_NET_BIND_TCP |
 				      LANDLOCK_ACCESS_NET_CONNECT_TCP,
+		.scoped = LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET,
 	};
 
 	if (argc < 2) {
 		fprintf(stderr,
-			"usage: %s=\"...\" %s=\"...\" %s=\"...\" %s=\"...\"%s "
+			"usage: %s=\"...\" %s=\"...\" %s=\"...\" %s=\"...\" %s=\"...\" %s "
 			"<cmd> [args]...\n\n",
 			ENV_FS_RO_NAME, ENV_FS_RW_NAME, ENV_TCP_BIND_NAME,
-			ENV_TCP_CONNECT_NAME, argv[0]);
+			ENV_TCP_CONNECT_NAME, ENV_SCOPED_NAME, argv[0]);
 		fprintf(stderr,
 			"Execute a command in a restricted environment.\n\n");
 		fprintf(stderr,
@@ -251,15 +255,18 @@ int main(const int argc, char *const argv[], char *const *const envp)
 		fprintf(stderr,
 			"* %s: list of ports allowed to connect (client).\n",
 			ENV_TCP_CONNECT_NAME);
+		fprintf(stderr, "* %s: list of allowed restriction on IPCs.\n",
+			ENV_SCOPED_NAME);
 		fprintf(stderr,
 			"\nexample:\n"
 			"%s=\"${PATH}:/lib:/usr:/proc:/etc:/dev/urandom\" "
 			"%s=\"/dev/null:/dev/full:/dev/zero:/dev/pts:/tmp\" "
 			"%s=\"9418\" "
 			"%s=\"80:443\" "
+			"%s=\"a\" "
 			"%s bash -i\n\n",
 			ENV_FS_RO_NAME, ENV_FS_RW_NAME, ENV_TCP_BIND_NAME,
-			ENV_TCP_CONNECT_NAME, argv[0]);
+			ENV_TCP_CONNECT_NAME, ENV_SCOPED_NAME, argv[0]);
 		fprintf(stderr,
 			"This sandboxer can use Landlock features "
 			"up to ABI version %d.\n",
@@ -326,7 +333,10 @@ int main(const int argc, char *const argv[], char *const *const envp)
 	case 4:
 		/* Removes LANDLOCK_ACCESS_FS_IOCTL_DEV for ABI < 5 */
 		ruleset_attr.handled_access_fs &= ~LANDLOCK_ACCESS_FS_IOCTL_DEV;
-
+		__attribute__((fallthrough));
+	case 5:
+		/* Removes IPC scoping mechanism for ABI < 6 */
+		ruleset_attr.scoped &= ~LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET;
 		fprintf(stderr,
 			"Hint: You should update the running kernel "
 			"to leverage Landlock features "
@@ -357,7 +367,10 @@ int main(const int argc, char *const argv[], char *const *const envp)
 		ruleset_attr.handled_access_net &=
 			~LANDLOCK_ACCESS_NET_CONNECT_TCP;
 	}
-
+	/* Removes IPC scoping attribute if not supported by a user. */
+	env_scoped_name = getenv(ENV_SCOPED_NAME);
+	if (!env_scoped_name)
+		ruleset_attr.scoped &= ~LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET;
 	ruleset_fd =
 		landlock_create_ruleset(&ruleset_attr, sizeof(ruleset_attr), 0);
 	if (ruleset_fd < 0) {
-- 
2.34.1

