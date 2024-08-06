Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C408A144D29
	for <outreachy@lists.linux.dev>; Tue,  6 Aug 2024 18:11:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722967883; cv=none; b=YV51jvCmjiBnDw5CcNyxj9rspZxQHc1ubGBBpxKPvNtQQzeUP+KMT9burivyPo1kyak00YQZ2qwjSmJwtKOcWKHRahwGXlSU3ty/t3oMVa9p1LIYlgZTmAa78nvhoZzSxiAAW5O9+AbSOdxQyItwNJzeA704IIio04lSTFDKyeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722967883; c=relaxed/simple;
	bh=n4/dqbrwVslhyK/HTd08bHNcZ8Y8wPwXJ9K9yx1yxas=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=GVz+Hgd8CvaezjxW0j6aRIKcaFlplc/yQ5fKyUwmupVAKExJAj6W708aeEbGl9+JUluEgttm6kHV64QDVMvCJ5iw9jZBm1fgHGEXVXzNy98r3FoVj5g86B5TqLCLguoWtyxG/8Ujozo6cGNnSU+EGORxDVtXNXVmrwiXRxLAkeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IbOfHxId; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IbOfHxId"
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-2cb7cd6f5f2so697770a91.2
        for <outreachy@lists.linux.dev>; Tue, 06 Aug 2024 11:11:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722967881; x=1723572681; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BEZkK4aC6TuYoJdjdgVGJfF2fqj8l2qjt8Waj8faY9E=;
        b=IbOfHxIdTnMvwflvpsLSLFPUQdzZ/nHIfJklHvHJV+4s+iUMbJIDrYSRNn3aLPBSui
         eANMz+SXv3f4NMStsOWBsRqd8WE5lk4zGGJyi/zVBrjuVyhDL4ALO8NnMHp1wLdbsi5H
         rpSnWFrNYu4JZ1R+tU1W56Gkhb+Du6HubV/a/fR5PBgP/ehLjM5t5mi0iClFc8yksCCs
         Ol1+uTpy6bzF4UfGduUUvuYL8jGjIfG+oAjTg87YLaKilrRBJQNExt4nLf8dseVQWm8f
         1BEJwDpnFaIGipCKKe/N5VXdijRGK5DkMzGSPdfyY6INm+gC4jwwuWxkW+6vs9CUeKta
         wk7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722967881; x=1723572681;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BEZkK4aC6TuYoJdjdgVGJfF2fqj8l2qjt8Waj8faY9E=;
        b=PM3iz5mo6VTnzAuR6vC9Q4WdNRu1d10zoxtqAfyJqoEcUxkmD0XWFjGNzUz73PdnDa
         +5Bbv0FXZiXbpQSX9y5aWB7aliq/TBpK8mgC5LFD/DXloVy8EQ6lQ1G3hXVExlyxEGI8
         MCo4y8hd/AujjFCiKbmmeRAMUXOPLsnyHKJFWTyRoeOLzb8Ig+08uOjIh3HkuKm097VG
         vojySUH//M+jmzb8h9JSQU1X6n9kraIMwyIMA0UF1rhDITZ0I/SAyIqru1bryVQFZIxx
         qurLzuZ7UlVTWiYK6gRTn+d1S91rogCGbUE6yOu7eb6Cbcx993nWOBip7dV/1M04UHH1
         ivBQ==
X-Gm-Message-State: AOJu0YwomrDDkKeJGykYhdfUWWLEJSt0uPjhCDeon2gCqv/MIZrhk7pJ
	Bi6BQlvpY7QbhHoy3wTpHribZxbsaPXiRJdwfLN92B4pwuoCXVtbUal0CVuY
X-Google-Smtp-Source: AGHT+IFp4JhvBq+3jfMNtSfpN+1rDjfve0u0OglfBB7FNWXmGTaZh1UuxmojRVX4EBP5p89W5q94xA==
X-Received: by 2002:a17:90b:38c:b0:2cf:2ab6:a134 with SMTP id 98e67ed59e1d1-2cff952becbmr18435616a91.32.1722967880615;
        Tue, 06 Aug 2024 11:11:20 -0700 (PDT)
Received: from tahera-OptiPlex-5000.tail3bf47f.ts.net ([136.159.49.123])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2cfdc45b51esm12829504a91.32.2024.08.06.11.11.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Aug 2024 11:11:20 -0700 (PDT)
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
Subject: [PATCH v2 3/4] sample/Landlock: Support signal scoping restriction
Date: Tue,  6 Aug 2024 12:10:42 -0600
Message-Id: <b301aea5431e60f8827404e76975cfbf4601edbf.1722966592.git.fahimitahera@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1722966592.git.fahimitahera@gmail.com>
References: <cover.1722966592.git.fahimitahera@gmail.com>
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
 samples/landlock/sandboxer.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/samples/landlock/sandboxer.c b/samples/landlock/sandboxer.c
index 98132fd823ad..c3123f3ee8eb 100644
--- a/samples/landlock/sandboxer.c
+++ b/samples/landlock/sandboxer.c
@@ -193,7 +193,8 @@ static bool check_ruleset_scope(const char *const env_var,
 	bool ret = true;
 	char *env_type_scope, *env_type_scope_next, *ipc_scoping_name;
 
-	ruleset_attr->scoped &= ~LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET;
+	ruleset_attr->scoped &= ~(LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET |
+				  LANDLOCK_SCOPED_SIGNAL);
 	env_type_scope = getenv(env_var);
 	/* scoping is not supported by the user */
 	if (!env_type_scope)
@@ -207,6 +208,8 @@ static bool check_ruleset_scope(const char *const env_var,
 		if (strcmp("a", ipc_scoping_name) == 0) {
 			ruleset_attr->scoped |=
 				LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET;
+		} else if (strcmp("s", ipc_scoping_name) == 0) {
+			ruleset_attr->scoped |= LANDLOCK_SCOPED_SIGNAL;
 		} else {
 			fprintf(stderr, "Unsupported scoping \"%s\"\n",
 				ipc_scoping_name);
@@ -258,7 +261,8 @@ int main(const int argc, char *const argv[], char *const *const envp)
 		.handled_access_fs = access_fs_rw,
 		.handled_access_net = LANDLOCK_ACCESS_NET_BIND_TCP |
 				      LANDLOCK_ACCESS_NET_CONNECT_TCP,
-		.scoped = LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET,
+		.scoped = LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET |
+			  LANDLOCK_SCOPED_SIGNAL,
 	};
 
 	if (argc < 2) {
@@ -295,7 +299,7 @@ int main(const int argc, char *const argv[], char *const *const envp)
 			"%s=\"/dev/null:/dev/full:/dev/zero:/dev/pts:/tmp\" "
 			"%s=\"9418\" "
 			"%s=\"80:443\" "
-			"%s=\"a\" "
+			"%s=\"a:s\" "
 			"%s bash -i\n\n",
 			ENV_FS_RO_NAME, ENV_FS_RW_NAME, ENV_TCP_BIND_NAME,
 			ENV_TCP_CONNECT_NAME, ENV_SCOPED_NAME, argv[0]);
@@ -369,7 +373,8 @@ int main(const int argc, char *const argv[], char *const *const envp)
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

