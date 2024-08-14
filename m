Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDFFF13BC26
	for <outreachy@lists.linux.dev>; Wed, 14 Aug 2024 06:23:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723616585; cv=none; b=CwFDfUGWOW5vvAtpn/cwU8UTuepil9GSOKPCku9lq3ZaVs65PelVjJsLbBTxH9zwvq3csj4gHpwfoq4y+Ffa8ftWMODLnjAdwjKmKQbbuNqX0vrd068VlCn+YuGdUSQ8knn6UZlJQQEHmEwmMgvOkq4gueFKVXsuj9Mjpbs4nCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723616585; c=relaxed/simple;
	bh=kg/8idxdUWZ97chH/ydatb40FE1TQIX2TYlnPM93mr0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=N5WvTOIJcusu6zu9Og7ZtPsBad1q3GQTMFJHsKzIBbJdArLsBxWCH9pg7cJEUxEFMI/dWVUP56juvEEFQPxVvSwVpaOifIn44eKpnAXT2t3ZdyjC7939s8NEKQ+NoKctdNRMrrgcCpMYI9McOEQO9y1nW2sKh6Ad/wfbG3xL1E8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Pkz4LLhO; arc=none smtp.client-ip=209.85.216.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Pkz4LLhO"
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-2cb5e0b020eso4875739a91.2
        for <outreachy@lists.linux.dev>; Tue, 13 Aug 2024 23:23:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723616583; x=1724221383; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JSbos34GZP1MBxqk5DevnuLIKX/BhuXlgd9OTZVY/rQ=;
        b=Pkz4LLhOSPfk+aNfBrGc35eLWyVv1utwl6D0TdnAE5ZkPypWGuOnqvJWfdWw59oFUs
         ADIe2138JXI30jQE1zta+MpzKCAi7bBeQHRrYZ2CtqyME3/k1EMgC4zAp8or9rs64T1v
         J59D+UHMvl6RnFwNwmCJ01Ilvl6G8Ag6NLp6BwH4a6v1NeeZsfxxz/7aA8ruvmF/7qYF
         uAKEk0psd2Q704uVrYqDHaYDaq6PRIaKEerv5Pk1A69KZHYnHdA6DbW0XnMWSjkIfE2B
         dfvySkovQlMq5+biZiq552OyLx7cJjSbV5DR+hI1B0DWha1a9pU6wkD4ww3xnt1XMGKh
         AU+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723616583; x=1724221383;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JSbos34GZP1MBxqk5DevnuLIKX/BhuXlgd9OTZVY/rQ=;
        b=ez9mxTcS8UNYXtl1meXC6JFTUU5kDr0c4Gk8mv9B27YUrgDBVyn66tMcmivUPIb8Fy
         yMGDtiWPlcBaYZzymbw3+wvjylXPN0PlxX5FjmPcWHsv+Cyvz+wrb9sIWgdLslpExgqO
         Q3ev9JI8VZY2jGQbt5jLvwnlEvLsHDTIrB7+xJ7J2qoAyN1lte//tc3gZz1dq4LiCewR
         j1/VmdImmgRNWJDu+1RIRcCGWTfaXSjS7SD7EGu3+85jOs8gqGMpNjPbhBJcMugLUP+O
         /TkmHrjkx7Tl5jthrxcF/QTrxirwkwwwCue6FWhS9anFG6nu+kMcURAppQovW7na7KxN
         peqg==
X-Gm-Message-State: AOJu0Yxn4V3fpwCW9e9mVOaZYWYQwh4ayNZ1aEzVfsfYON+IoC3Nj0U5
	rk5dqdyVm+260CoJVRPD4ze93Pc6frp4mZuMR8tD2gp5IXA2OVLUUnkk/NSm
X-Google-Smtp-Source: AGHT+IF6HPZG22dVWfrD6tAfo2bx5IXCLTB3G2YTykE19Ncv2smJjp42YPHsxmMGgakJZ99PScYcRQ==
X-Received: by 2002:a17:90b:17c2:b0:2ca:5a46:cbc8 with SMTP id 98e67ed59e1d1-2d3aab50abdmr2081710a91.26.1723616582727;
        Tue, 13 Aug 2024 23:23:02 -0700 (PDT)
Received: from tahera-OptiPlex-5000.uc.ucalgary.ca ([136.159.49.123])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2d3ac7f2120sm728811a91.31.2024.08.13.23.23.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Aug 2024 23:23:02 -0700 (PDT)
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
Subject: [PATCH v9 4/5] sample/Landlock: Support abstract unix socket restriction
Date: Wed, 14 Aug 2024 00:22:22 -0600
Message-Id: <60861c67dab1e1e8cf05ec6bfd9e5ac75d09b63a.1723615689.git.fahimitahera@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1723615689.git.fahimitahera@gmail.com>
References: <cover.1723615689.git.fahimitahera@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

A sandboxer can receive the character "a" as input from the environment
variable LL_SCOPE to restrict the abstract unix sockets from connecting
to a process outside its scoped domain.

Example
=======
Create an abstract unix socket to listen with socat(1):
socat abstract-listen:mysocket -
Create a sandboxed shell and pass the character "a" to LL_SCOPED:
LL_FS_RO=/ LL_FS_RW=. LL_SCOPED="a" ./sandboxer /bin/bash
If the sandboxed process tries to connect to the listening socket
with command "socat - abstract-connect:mysocket", the connection
will fail.

Signed-off-by: Tahera Fahimi <fahimitahera@gmail.com>
---
v9:
- Add a restrict approach on input of LL_SCOPED, so it only allows zero
  or one "a" to be the input.
v8:
- Adding check_ruleset_scope function to parse the scope environment
  variable and update the landlock attribute based on the restriction
  provided by the user.
- Adding Mickaël Salaün reviews on version 7.

v7:
- Adding IPC scoping to the sandbox demo by defining a new "LL_SCOPED"
  environment variable. "LL_SCOPED" gets value "a" to restrict abstract
  unix sockets.
- Change LANDLOCK_ABI_LAST to 6.
---
 samples/landlock/sandboxer.c | 58 +++++++++++++++++++++++++++++++++---
 1 file changed, 54 insertions(+), 4 deletions(-)

diff --git a/samples/landlock/sandboxer.c b/samples/landlock/sandboxer.c
index e8223c3e781a..bec201eb96f7 100644
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
@@ -22,6 +23,7 @@
 #include <sys/stat.h>
 #include <sys/syscall.h>
 #include <unistd.h>
+#include <stdbool.h>
 
 #ifndef landlock_create_ruleset
 static inline int
@@ -55,6 +57,7 @@ static inline int landlock_restrict_self(const int ruleset_fd,
 #define ENV_FS_RW_NAME "LL_FS_RW"
 #define ENV_TCP_BIND_NAME "LL_TCP_BIND"
 #define ENV_TCP_CONNECT_NAME "LL_TCP_CONNECT"
+#define ENV_SCOPED_NAME "LL_SCOPED"
 #define ENV_DELIMITER ":"
 
 static int parse_path(char *env_path, const char ***const path_list)
@@ -184,6 +187,40 @@ static int populate_ruleset_net(const char *const env_var, const int ruleset_fd,
 	return ret;
 }
 
+static bool check_ruleset_scope(const char *const env_var,
+				struct landlock_ruleset_attr *ruleset_attr)
+{
+	bool abstract_scoping = false;
+	bool ret = true;
+	char *env_type_scope, *env_type_scope_next, *ipc_scoping_name;
+
+	ruleset_attr->scoped &= ~LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET;
+	env_type_scope = getenv(env_var);
+	/* scoping is not supported by the user */
+	if (!env_type_scope)
+		return true;
+
+	env_type_scope = strdup(env_type_scope);
+	unsetenv(env_var);
+	env_type_scope_next = env_type_scope;
+	while ((ipc_scoping_name =
+			strsep(&env_type_scope_next, ENV_DELIMITER))) {
+		if (strcmp("a", ipc_scoping_name) == 0 && !abstract_scoping) {
+			abstract_scoping = true;
+			ruleset_attr->scoped |=
+				LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET;
+		} else {
+			fprintf(stderr, "Unsupported scoping \"%s\"\n",
+				ipc_scoping_name);
+			ret = false;
+			goto out_free_name;
+		}
+	}
+out_free_name:
+	free(env_type_scope);
+	return ret;
+}
+
 /* clang-format off */
 
 #define ACCESS_FS_ROUGHLY_READ ( \
@@ -208,7 +245,7 @@ static int populate_ruleset_net(const char *const env_var, const int ruleset_fd,
 
 /* clang-format on */
 
-#define LANDLOCK_ABI_LAST 5
+#define LANDLOCK_ABI_LAST 6
 
 int main(const int argc, char *const argv[], char *const *const envp)
 {
@@ -223,14 +260,15 @@ int main(const int argc, char *const argv[], char *const *const envp)
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
@@ -251,15 +289,18 @@ int main(const int argc, char *const argv[], char *const *const envp)
 		fprintf(stderr,
 			"* %s: list of ports allowed to connect (client).\n",
 			ENV_TCP_CONNECT_NAME);
+		fprintf(stderr, "* %s: list of restrictions on IPCs.\n",
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
@@ -327,6 +368,10 @@ int main(const int argc, char *const argv[], char *const *const envp)
 		/* Removes LANDLOCK_ACCESS_FS_IOCTL_DEV for ABI < 5 */
 		ruleset_attr.handled_access_fs &= ~LANDLOCK_ACCESS_FS_IOCTL_DEV;
 
+		__attribute__((fallthrough));
+	case 5:
+		/* Removes LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET for ABI < 6 */
+		ruleset_attr.scoped &= ~LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET;
 		fprintf(stderr,
 			"Hint: You should update the running kernel "
 			"to leverage Landlock features "
@@ -358,6 +403,11 @@ int main(const int argc, char *const argv[], char *const *const envp)
 			~LANDLOCK_ACCESS_NET_CONNECT_TCP;
 	}
 
+	if (abi >= 6 && !check_ruleset_scope(ENV_SCOPED_NAME, &ruleset_attr)) {
+		perror("Unsupported IPC scoping requested");
+		return 1;
+	}
+
 	ruleset_fd =
 		landlock_create_ruleset(&ruleset_attr, sizeof(ruleset_attr), 0);
 	if (ruleset_fd < 0) {
-- 
2.34.1

