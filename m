Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7078C29D19
	for <outreachy@lists.linux.dev>; Fri,  2 Aug 2024 04:03:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722571394; cv=none; b=UTBjYMc/8pou0IiqNWhFkGQeRNWyr0nApA01llGCQuDhsH2yJC99dTLDaH9t/Y5jZvJMajwy7aqSXLnwop0gpRt2UhCXJP59RX+XzxQFBgYa0srNdRFlPQA3lBzf22RCHcPAm00gKpl1fvlb42baz63MPof7NVCGIXcPqIdAezU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722571394; c=relaxed/simple;
	bh=8XIoOmnudj+J0jp40AbjeJinyE+1/P9q1HUvUmfnQcA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Ye+R93OtmZ5ZC+DIMxh1GSuzv+D/g/YiWWsHjcN5ptlkzntkwJECwfYxV4AE2ritoJ+1z7Ev3MIEZm7CJjivqV2ok7QfnMaFZbylH0kGVp9AhLMHRNsVuFTXp8Yhy8Vs57U66UbKq+g6SXS6JFQe1Xplm3PnbzPcFmiEPVh2w7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=K5jwuFr6; arc=none smtp.client-ip=209.85.215.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="K5jwuFr6"
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-7a264a24ea7so5096839a12.3
        for <outreachy@lists.linux.dev>; Thu, 01 Aug 2024 21:03:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722571391; x=1723176191; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V/7ENZLqF+SNnzbCmbEtFHYfnUukQIei88t3Zjus22M=;
        b=K5jwuFr6ETM/OqsMKSTKcX8TXH43NFW9+cjkvPiPql7StMF+sXhuitWowqd7YReDz1
         2z5cTtR0BMhWkps5Cy2sDi/PnxDzTP7FM945pCw4IFdkoECZgupW9nP1Lulb0FKnGoY0
         v6pPeNFg33jb8FavrFgF3FBhJdiGs0lWqMYo+1mqjIpn3gb1/wqBVTsa8nWF4FyDlFuI
         sYMJGT9Ns4foEOBGdd0Z0Z4tmsSbLFKqPt/QwdZwCKrs5mP1rTK4gHRUyUiON/CGbyIP
         aQB2QFRl7hqu7dn2FXwwKNNMCQsoBcUf/DLKl2wW3l3/c9GLt4sp942tkWB5I0XtaAta
         rcUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722571391; x=1723176191;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V/7ENZLqF+SNnzbCmbEtFHYfnUukQIei88t3Zjus22M=;
        b=dFuv7Pg29gNUqLR0YHkKsGC7FdbTBWEZkwaxbuQDXajNXMPQwTVNPiTPQhMdIcGDxM
         bdcAPRczC9P7IKwVxhuTLr4rAWExvVr/h995PJ7AyzMIlX5FpQuCDlBdAwhRE31Dsr18
         OG0c8ZKUPFHSh/XCbqM/Bwe06vOrJ2hy8KAw3j7iYt5XGuMHuUYHlcRoGL62It6tBD0e
         1rdhQywDaJnaqxfcwej1NILxPk17DAczCQIalEN2h/d+Uzx3+LYpVRgWbpsTaRev61Gg
         GMdNcNThssD0LyGhFcoI2nAl+Yv2LGdqDIwrmn7YM95JiD6nYX3mT+OTEH+LxcprTiKb
         9icg==
X-Gm-Message-State: AOJu0Yx9lod4QjV6DMNLqQNLb5jiP/JXKG7AjDv2jfTk4aWYplDbAWTD
	ImxG7YiKbEcBxHuOENqWyhvz/W2Gh9Jh9cH+zeexRgarJveNDERxnXp5QyoY
X-Google-Smtp-Source: AGHT+IEYDNYKInMS3sjYGMrrwrb6W3AgsMv3z/oTq4RwfulLbbgIBY6gjz5fOXBjO9sspRWBr7e5bg==
X-Received: by 2002:a05:6a21:38d:b0:1af:66aa:7fc7 with SMTP id adf61e73a8af0-1c6995795c3mr1987577637.3.1722571391105;
        Thu, 01 Aug 2024 21:03:11 -0700 (PDT)
Received: from tahera-OptiPlex-5000.tail3bf47f.ts.net ([136.159.49.123])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7106ec41465sm542099b3a.60.2024.08.01.21.03.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Aug 2024 21:03:10 -0700 (PDT)
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
Subject: [PATCH v8 3/4] sample/Landlock: Support abstract unix socket restriction
Date: Thu,  1 Aug 2024 22:02:35 -0600
Message-Id: <2b1ac6822d852ea70dd2dcdf41065076d9ee8028.1722570749.git.fahimitahera@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1722570749.git.fahimitahera@gmail.com>
References: <cover.1722570749.git.fahimitahera@gmail.com>
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
 samples/landlock/sandboxer.c | 56 +++++++++++++++++++++++++++++++++---
 1 file changed, 52 insertions(+), 4 deletions(-)

diff --git a/samples/landlock/sandboxer.c b/samples/landlock/sandboxer.c
index e8223c3e781a..98132fd823ad 100644
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
@@ -184,6 +187,38 @@ static int populate_ruleset_net(const char *const env_var, const int ruleset_fd,
 	return ret;
 }
 
+static bool check_ruleset_scope(const char *const env_var,
+				struct landlock_ruleset_attr *ruleset_attr)
+{
+	bool ret = true;
+	char *env_type_scope, *env_type_scope_next, *ipc_scoping_name;
+
+	ruleset_attr->scoped &= ~LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET;
+	env_type_scope = getenv(env_var);
+	/* scoping is not supported by the user */
+	if (!env_type_scope)
+		return true;
+	env_type_scope = strdup(env_type_scope);
+	unsetenv(env_var);
+
+	env_type_scope_next = env_type_scope;
+	while ((ipc_scoping_name =
+			strsep(&env_type_scope_next, ENV_DELIMITER))) {
+		if (strcmp("a", ipc_scoping_name) == 0) {
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
@@ -208,7 +243,7 @@ static int populate_ruleset_net(const char *const env_var, const int ruleset_fd,
 
 /* clang-format on */
 
-#define LANDLOCK_ABI_LAST 5
+#define LANDLOCK_ABI_LAST 6
 
 int main(const int argc, char *const argv[], char *const *const envp)
 {
@@ -223,14 +258,15 @@ int main(const int argc, char *const argv[], char *const *const envp)
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
@@ -251,15 +287,18 @@ int main(const int argc, char *const argv[], char *const *const envp)
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
@@ -327,6 +366,10 @@ int main(const int argc, char *const argv[], char *const *const envp)
 		/* Removes LANDLOCK_ACCESS_FS_IOCTL_DEV for ABI < 5 */
 		ruleset_attr.handled_access_fs &= ~LANDLOCK_ACCESS_FS_IOCTL_DEV;
 
+		__attribute__((fallthrough));
+	case 5:
+		/* Removes LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET for ABI < 6 */
+		ruleset_attr.scoped &= ~LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET;
 		fprintf(stderr,
 			"Hint: You should update the running kernel "
 			"to leverage Landlock features "
@@ -358,6 +401,11 @@ int main(const int argc, char *const argv[], char *const *const envp)
 			~LANDLOCK_ACCESS_NET_CONNECT_TCP;
 	}
 
+	if (!check_ruleset_scope(ENV_SCOPED_NAME, &ruleset_attr)) {
+		perror("Unsupported IPC scoping requested");
+		return 1;
+	}
+
 	ruleset_fd =
 		landlock_create_ruleset(&ruleset_attr, sizeof(ruleset_attr), 0);
 	if (ruleset_fd < 0) {
-- 
2.34.1

