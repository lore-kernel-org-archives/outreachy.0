Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B180715B96E
	for <outreachy@lists.linux.dev>; Fri,  6 Sep 2024 21:30:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725658224; cv=none; b=i0Q0dEj2N7tF2gNsJtMUW/SVBIoPirT60yE+8FF6LfUqOQKCJmsc+wib2ytGcaA5DymDpGb4EBf/s2C3gVzyYd1wdRlz3glOBbz2P60cSCRY06JqPkat5eR8B2ySo72cGrMQr48tlIuxmvUtbwoyg9ZgeqeqYsAO0vxgRu4FVRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725658224; c=relaxed/simple;
	bh=5URkew6MTbSPjmDCxnZtF4ylhtAoZWs2zFXPZaqdC+k=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=h9oCrEQy+sZAqBdu02IRUIzgJIiNyJxfry1Hqc/EJNDOWB/j+TrAmCCKVuY82RgjAZ2djQYL0Q/7BpJrjjg4leeCl9MgKbVVcW1D7cPLNKjIXKxzjMveVykwYyVC/Iph5qhssKW0S8gKS58V0KSGTh8dqxaDIK6tvE///pNxEII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JCd4tTFF; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JCd4tTFF"
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-20688fbaeafso25269445ad.0
        for <outreachy@lists.linux.dev>; Fri, 06 Sep 2024 14:30:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725658221; x=1726263021; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eo09Uhc5A+uBAyAcs1Ht/DtBSMlFilRGw1wDCdIXuMU=;
        b=JCd4tTFF0dpc+oUcrk3zCDinuGv1an+gVu2GMSvNoiVQEuWZu2Vm1JRbh+FvUs9S1i
         q8yq/nTL4bD+PyD2Zs/aYHVOBl+A8C91Dj1izIadjCsSiqZJCejDdYYqAVZ+Su0MAIy8
         HC4RcL9I2MoxK+gERsJNlHb05H6k23aqZuVgJ/JGVTadIXJNnGn2rwcuneu2dpHVkCPL
         4xrXmycbUILL4FFJ8q+HtrwybrrrEaaXFln4Rrv5+/6+OuRsuIITxptiFCGWESPn1iG6
         QJ2EzAFIvSLDQ5rUFkEan+0Pt6R6jXysBXncVr7UB7YEGWpj2NF4MC8P8USPsMVwGSiW
         LMpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725658221; x=1726263021;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eo09Uhc5A+uBAyAcs1Ht/DtBSMlFilRGw1wDCdIXuMU=;
        b=OkUW1PmJuZ+b3wSR/l/837GnP9Zb+mJSs/PL3i4SVH3FdgaY6iwik7bhVtPcnULsgF
         hUWNpkzA64SF+cGEU4LA5vsLrIJjI3E6Tna1SD2r4fXblwpB4D3AWXEYR0j/N7zGpzsq
         yONHaqBzc6VljgeHfUuT1fKtP0atnsoCF1pGMRrSlywSjNB7F/kTxO9tFOHJSvVlrNtR
         y5/2RwMbqvpe6zQ76frZXJjeKE5OJLI8q2JE///AVhS1j+owMCuWVPYwEHmafBycX6Xl
         j28ubv+quC81C3fkUmI/SiJr6HFAWmMq976Pq9981Pvxk+mZLGWgfW+0SYwiRCOR9/fp
         Mfxg==
X-Gm-Message-State: AOJu0YybcyzR9r5loYtDHm3DQWNE0d5PIv2JluRvSEEHGmwIGye1Zxmf
	+hrt/LcAvmi9q4REumaa7ZHte8ih5ultDDY16hZBnXo4i8VHYND01gPRWeqc
X-Google-Smtp-Source: AGHT+IFHhd91sIx7FTtJWHA0Ayu/+5PDc1IaIfyUSpCenN3ZsXr9Gb/JEuPnWNZjlO9JhweP6OEElg==
X-Received: by 2002:a17:902:d4c4:b0:206:f065:f45d with SMTP id d9443c01a7336-206f065f520mr43510585ad.31.1725658221188;
        Fri, 06 Sep 2024 14:30:21 -0700 (PDT)
Received: from tahera-OptiPlex-5000.tail3bf47f.ts.net ([136.159.49.123])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-206aea67bd1sm47081065ad.247.2024.09.06.14.30.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Sep 2024 14:30:20 -0700 (PDT)
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
Subject: [PATCH v4 5/6] sample/landlock: Support sample for signal scoping restriction
Date: Fri,  6 Sep 2024 15:30:07 -0600
Message-Id: <1f3f1992b2abeb8e5d7aa61b854e1b0721978b9a.1725657728.git.fahimitahera@gmail.com>
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
v4:
- Make it compatible with changes in abstract UNIX socket scoping sample
v3:
- Add a restrict approach on input of LL_SCOPED, so it only allows
  zero or one "s" to be the input.
---
 samples/landlock/sandboxer.c | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/samples/landlock/sandboxer.c b/samples/landlock/sandboxer.c
index 18d072c23a23..618fbf70d38f 100644
--- a/samples/landlock/sandboxer.c
+++ b/samples/landlock/sandboxer.c
@@ -191,11 +191,13 @@ static bool check_ruleset_scope(const char *const env_var,
 				struct landlock_ruleset_attr *ruleset_attr)
 {
 	bool abstract_scoping = false;
+	bool signal_scoping = false;
 	bool ret = true;
 	char *env_type_scope, *env_type_scope_next, *ipc_scoping_name;
 
 	/* scoping is not supported by Landlock ABI */
-	if (!(ruleset_attr->scoped & LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET))
+	if (!(ruleset_attr->scoped &
+	      (LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET | LANDLOCK_SCOPED_SIGNAL)))
 		return ret;
 
 	env_type_scope = getenv(env_var);
@@ -212,6 +214,9 @@ static bool check_ruleset_scope(const char *const env_var,
 			strsep(&env_type_scope_next, ENV_DELIMITER))) {
 		if (strcmp("a", ipc_scoping_name) == 0 && !abstract_scoping) {
 			abstract_scoping = true;
+		} else if (strcmp("s", ipc_scoping_name) == 0 &&
+			   !signal_scoping) {
+			signal_scoping = true;
 		} else {
 			fprintf(stderr, "Unsupported scoping \"%s\"\n",
 				ipc_scoping_name);
@@ -221,6 +226,8 @@ static bool check_ruleset_scope(const char *const env_var,
 	}
 	if (!abstract_scoping)
 		ruleset_attr->scoped &= ~LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET;
+	if (!signal_scoping)
+		ruleset_attr->scoped &= ~LANDLOCK_SCOPED_SIGNAL;
 out_free_name:
 	free(env_type_scope);
 	return ret;
@@ -265,7 +272,8 @@ int main(const int argc, char *const argv[], char *const *const envp)
 		.handled_access_fs = access_fs_rw,
 		.handled_access_net = LANDLOCK_ACCESS_NET_BIND_TCP |
 				      LANDLOCK_ACCESS_NET_CONNECT_TCP,
-		.scoped = LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET,
+		.scoped = LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET |
+			  LANDLOCK_SCOPED_SIGNAL,
 	};
 
 	if (argc < 2) {
@@ -302,7 +310,7 @@ int main(const int argc, char *const argv[], char *const *const envp)
 			"%s=\"/dev/null:/dev/full:/dev/zero:/dev/pts:/tmp\" "
 			"%s=\"9418\" "
 			"%s=\"80:443\" "
-			"%s=\"a\" "
+			"%s=\"a:s\" "
 			"%s bash -i\n\n",
 			ENV_FS_RO_NAME, ENV_FS_RW_NAME, ENV_TCP_BIND_NAME,
 			ENV_TCP_CONNECT_NAME, ENV_SCOPED_NAME, argv[0]);
@@ -376,7 +384,8 @@ int main(const int argc, char *const argv[], char *const *const envp)
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

