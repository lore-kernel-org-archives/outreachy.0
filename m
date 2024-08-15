Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FCC21547F2
	for <outreachy@lists.linux.dev>; Thu, 15 Aug 2024 18:29:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723746590; cv=none; b=egIR6fXOMS3iBDxDW09Ohjtn+VsWr2R3j+EkEd368w/g3CJKJNBNUgc7QUsV0nHqpgm+x/IduewTPQK38HwtvoTkUCfRu//okaiHQBejl8zXvotGp7TQHatlamuq+9m03qf/qpsNv1BdzQa6UO7sxI1zyQEYY5PP4p1tdy4bT/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723746590; c=relaxed/simple;
	bh=YG7ztYtGDpdMdRJxGt0nbvusc+jjG6LY7He5l4J8OGo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=nTKcqYPjUbMTvF6fl9Du/wau83iIuACDb2YFY1YwKPgvrB/84Jcs+F5xjsFxl0hQbOkPSgxtm/wurpntU43rJ1LfkIzeuIK2QxdPF/W+NhNFQD8NVTTaUT89bRGNlj7wggkG4LgCnmblSwGSlzBiWucs8UXcnPTk1B9q+pviVeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FfWLHWaT; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FfWLHWaT"
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-71275436546so1036129b3a.1
        for <outreachy@lists.linux.dev>; Thu, 15 Aug 2024 11:29:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723746587; x=1724351387; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gaqFtVOJowFqILZS0KD2ZkJqnDGSSbSvRXd+7bNfKMI=;
        b=FfWLHWaTjTQt9EjCpbkrtfHhI1k8iaisnQb8Nlt+TuRMCoijGh/lEvi9gFLED8z8vV
         8MLVL1TYFph+GVY9a8UQBNY/VuLLdzOTuzJcqJoHry5qggWb4ajNt62wlQP6fBjtiK15
         od80JqfHJI2JqZ/VvpvAwHMDlUHveQWGuQXnQ9Bgu5Ox+DphXR7fjjo9woaKRiIkc/GX
         /HsXtX6pc5hFa4ig1QJgLJNzownFeVYcF+G4Fiv2QnFargOtYpuBVkNQSxV3gXbXzCz5
         edjlQ55MsUfKqSDGK1EVT2yqxzd8QDe5iuZNvUCdyMzLhGQqGRJAEKYCR8MekZyi0DAw
         fuZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723746587; x=1724351387;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gaqFtVOJowFqILZS0KD2ZkJqnDGSSbSvRXd+7bNfKMI=;
        b=qp6Y40GKsu9+r6LY36fmRI024G3EZetrsE3LCIyfqYf/f5vIRUiaOdjRg8BimD0eTY
         enKc+Ar2KhFFIvjvbjJtKQKIwCTDsJS2cEdmgQFC3wZl3mY3EGPQ18flHPA6f5TQrSeK
         wgGySt8qPEr1c3ljcdViE7XXUQYKnO1OhcmYoR2JnwG+UCpQKvCRw07jpsKCh76/To6K
         I1fpP3TCOQSUxhAwMbWjNB8clhCUb+kknvZH/4OwO2CkJMsyHt9KSfPeLSBCmyWLWDuW
         M5PG4UA+aDPVHLSrnCfgW2lcx/epj2fgcSxr0Rkk9Ok5La0xGIX/fpX9rtsKp3mb4G3A
         z3Pg==
X-Gm-Message-State: AOJu0Yz0YYH3pFW4SHcLUmu8UBrkw5ufRWpMcbrAGrnRSw2xrhwrLXJe
	Tm2tkZpdMhNPgCDnvicrzhuN4HfMQ57fhHQNai6XBRDlQcxywvliXa6hLJo+
X-Google-Smtp-Source: AGHT+IHg/i02zernU8cOom14t7K88UP+y0+xstuHerG5u3WS+VLAHsxJyKYaAQsRpbgep845undT1Q==
X-Received: by 2002:a05:6a00:6f2a:b0:706:5d85:61a5 with SMTP id d2e1a72fcca58-713c4e0b4b9mr688752b3a.8.1723746587008;
        Thu, 15 Aug 2024 11:29:47 -0700 (PDT)
Received: from tahera-OptiPlex-5000.uc.ucalgary.ca ([136.159.49.123])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7c6b6356c76sm1431683a12.62.2024.08.15.11.29.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Aug 2024 11:29:46 -0700 (PDT)
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
Subject: [PATCH v3 5/6] sample/Landlock: Support signal scoping restriction
Date: Thu, 15 Aug 2024 12:29:24 -0600
Message-Id: <c39fff6b21d4694bf2e0baa24e219fecefa7c76e.1723680305.git.fahimitahera@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1723680305.git.fahimitahera@gmail.com>
References: <cover.1723680305.git.fahimitahera@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

A sandboxer can receive the character "s" as input from the environment
variable LL_SCOPE to restrict itself from sending a signal to a process
outside its scoped domain.

Example
=======
Create a sandboxed shell and pass the character "s" to LL_SCOPED:
LL_FS_RO=/ LL_FS_RW=. LL_SCOPED="s" ./sandboxer /bin/bash
Try to send a SIGTRAP to a process with process ID <PID> through:
kill -SIGTRAP <PID>
The sandboxed process should not be able to send the signal.

Signed-off-by: Tahera Fahimi <fahimitahera@gmail.com>
---
v3:
- Add a restrict approach on input of LL_SCOPED, so it only allows
  zero or one "s" to be the input.
---
 samples/landlock/sandboxer.c | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/samples/landlock/sandboxer.c b/samples/landlock/sandboxer.c
index bec201eb96f7..32fec6cede2c 100644
--- a/samples/landlock/sandboxer.c
+++ b/samples/landlock/sandboxer.c
@@ -191,10 +191,12 @@ static bool check_ruleset_scope(const char *const env_var,
 				struct landlock_ruleset_attr *ruleset_attr)
 {
 	bool abstract_scoping = false;
+	bool signal_scoping = false;
 	bool ret = true;
 	char *env_type_scope, *env_type_scope_next, *ipc_scoping_name;
 
-	ruleset_attr->scoped &= ~LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET;
+	ruleset_attr->scoped &= ~(LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET |
+				  LANDLOCK_SCOPED_SIGNAL);
 	env_type_scope = getenv(env_var);
 	/* scoping is not supported by the user */
 	if (!env_type_scope)
@@ -209,6 +211,10 @@ static bool check_ruleset_scope(const char *const env_var,
 			abstract_scoping = true;
 			ruleset_attr->scoped |=
 				LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET;
+		} else if (strcmp("s", ipc_scoping_name) == 0 &&
+			   !signal_scoping) {
+			signal_scoping = true;
+			ruleset_attr->scoped |= LANDLOCK_SCOPED_SIGNAL;
 		} else {
 			fprintf(stderr, "Unsupported scoping \"%s\"\n",
 				ipc_scoping_name);
@@ -260,7 +266,8 @@ int main(const int argc, char *const argv[], char *const *const envp)
 		.handled_access_fs = access_fs_rw,
 		.handled_access_net = LANDLOCK_ACCESS_NET_BIND_TCP |
 				      LANDLOCK_ACCESS_NET_CONNECT_TCP,
-		.scoped = LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET,
+		.scoped = LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET |
+			  LANDLOCK_SCOPED_SIGNAL,
 	};
 
 	if (argc < 2) {
@@ -297,7 +304,7 @@ int main(const int argc, char *const argv[], char *const *const envp)
 			"%s=\"/dev/null:/dev/full:/dev/zero:/dev/pts:/tmp\" "
 			"%s=\"9418\" "
 			"%s=\"80:443\" "
-			"%s=\"a\" "
+			"%s=\"a:s\" "
 			"%s bash -i\n\n",
 			ENV_FS_RO_NAME, ENV_FS_RW_NAME, ENV_TCP_BIND_NAME,
 			ENV_TCP_CONNECT_NAME, ENV_SCOPED_NAME, argv[0]);
@@ -371,7 +378,8 @@ int main(const int argc, char *const argv[], char *const *const envp)
 		__attribute__((fallthrough));
 	case 5:
 		/* Removes LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET for ABI < 6 */
-		ruleset_attr.scoped &= ~LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET;
+		ruleset_attr.scoped &= ~(LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET |
+					 LANDLOCK_SCOPED_SIGNAL);
 		fprintf(stderr,
 			"Hint: You should update the running kernel "
 			"to leverage Landlock features "
-- 
2.34.1

