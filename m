Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2E7113C907
	for <outreachy@lists.linux.dev>; Fri,  5 Jul 2024 21:22:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720214558; cv=none; b=u7C5aaTHGRjtFtA/JRctI1RJJWnbash7GW0aiBkMLFHKdULDrYuQ7lG59uaUoCi5z+R3VkM633pjK+jjvKaL25N24Cs1cMREMH2QyHoMWknlSthz82UvR6ttQk8XBj7nLrDehcnE6Am3bkOqndBSp0SK2kZJEdpYUIpGbE60tdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720214558; c=relaxed/simple;
	bh=LP9JoMyO4RZYpmRyEi7/n2mZtToGbzb3V52WgLGytew=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=qDYDeWepcT7GJ0BeG2qaGkll6ou6L6iSvSQJ3+zAEuxS28wkkjoXatl/+Uc6KqY5PE3SNTxgQn+FFpTdpNzbNMTsBBn+XS4nXG3CfDoa2j1tu1iiZ/RvTjB1JrtwBFIAmj7yShbRDpOmPbdZ58pQybweqU6uHKfxk6twtxUQ8AU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Bka95uxH; arc=none smtp.client-ip=209.85.160.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Bka95uxH"
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-25e43dda1edso644469fac.0
        for <outreachy@lists.linux.dev>; Fri, 05 Jul 2024 14:22:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720214556; x=1720819356; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1IhT7MF8kH57E/SnoiAkldNxZCcRzmTR9RjNaE8Yyeo=;
        b=Bka95uxHup76G4z/P4m5TddqPEQQPz02YDEVCl9QgTrbNrg1W5RKhZyiMHFhjWvEsO
         0zz0BAPBw0YWqgh19zrK2deetkzIcRFrgn0/g7Afr/oPTJBT92p94/oXpy/S34APFooa
         bp/4Oyi5siYucIKBoSEXY2yXoT0ZQsmcd126uwFIsQl82sBwVNF2nQT4zcVTktWIRohI
         pXsy9afFafRq/cdiFOJO1FASEwHrX8jY7w4+La3Q+EhDa+TaVnaT225DcKOtTiFs6/EK
         Gs1X4QnuyyylFDJ1kjEcNsjnuvXPNslfPKlhcZxSYA/hBJFsMat4rJTHIMYmf/SoYiuj
         1OwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720214556; x=1720819356;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1IhT7MF8kH57E/SnoiAkldNxZCcRzmTR9RjNaE8Yyeo=;
        b=Lcfq5hpIbWLeWByb1O8xjydUUXK8s47Fikl4SBimeKWHxjPuT8hhoEwzk5pIEV4zB0
         NUBySw62Vhf1OXfcd/YY0d9HoeffxjrKLTeP4cTrZ6buCajZJ0KdtUYuXCfvpjjO/Kbq
         05PBnMxdXRQyBetfAl9rbeWfC+Av1EUuEI/x6+M4lxceMMFS7rh7n6SWsB4HZCDd7/8a
         w+GaAnY9Wz42j1NcqeIUHjHqpo6ywV36vfkvvrtCW+SpmkKzwx4y9++WiBMe7nvilj9x
         +kpbAMpOGRBt6PQdY2n4oV/g6TgYt1vvhgGS7jr5uV7i275phoYvIbLcKNQ004cJQuXa
         3wlQ==
X-Forwarded-Encrypted: i=1; AJvYcCWWoetFbcRvaIxLfeSOHc9bqsWSfOTljqb4+2Gy2GAgT6854SLUQqaTzoe3ekeDT2MhBVyvo0mo6eE28dyjIhl7Jf5EWHs0tlL4
X-Gm-Message-State: AOJu0Yzrjth24aKJF0Li2iHw4KeG3kpevPJicbnjItNUJ7daDuEnR+kl
	6+KI1NwtIAj19E+K9/FNVttB6Im/HGGlN006M2cq0TNTOPszyRrH
X-Google-Smtp-Source: AGHT+IEeLwgtXYb/uj8sDcO09wT71NkvpSBq/jo4Esw2OxgX+mlE6v9Dh2n5HNVFAIktMgSFbTyp7A==
X-Received: by 2002:a05:6870:63a6:b0:25e:1659:4ce9 with SMTP id 586e51a60fabf-25e2b5a06admr4612401fac.0.1720214555903;
        Fri, 05 Jul 2024 14:22:35 -0700 (PDT)
Received: from tahera-OptiPlex-5000.uc.ucalgary.ca ([136.159.49.123])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70802566511sm14507529b3a.75.2024.07.05.14.22.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jul 2024 14:22:35 -0700 (PDT)
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
Subject: [PATCH v1 1/2] Landlock: Add signal control
Date: Fri,  5 Jul 2024 15:21:42 -0600
Message-Id: <36958dbc486e1f975f4d4ecdfa51ae65c2c4ced0.1720213293.git.fahimitahera@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Currently, a sandbox process is not restricted to send a signal
(e.g. SIGKILL) to a process outside of the sandbox environment.
Ability to sending a signal for a sandboxed process should be
scoped the same way abstract unix sockets are scoped.

The same way as abstract unix socket, we extend "scoped" field
in a ruleset with "LANDLOCK_SCOPED_SIGNAL" to specify that a ruleset
will deny sending any signal from within a sandbox process to its
parent(i.e. any parent sandbox or non-sandboxed procsses).

Signed-off-by: Tahera Fahimi <fahimitahera@gmail.com>
---
 include/uapi/linux/landlock.h |  3 +++
 security/landlock/limits.h    |  2 +-
 security/landlock/task.c      | 49 +++++++++++++++++++++++++++++++++++
 3 files changed, 53 insertions(+), 1 deletion(-)

diff --git a/include/uapi/linux/landlock.h b/include/uapi/linux/landlock.h
index 010aaca5b05a..878479a1b9dd 100644
--- a/include/uapi/linux/landlock.h
+++ b/include/uapi/linux/landlock.h
@@ -291,8 +291,11 @@ struct landlock_net_port_attr {
  *   from connecting to an abstract unix socket created by a process
  *   outside the related Landlock domain (e.g. a parent domain or a process
  *   which is not sandboxed).
+ * - %LANDLOCK_SCOPED_SIGNAL: Restrict a sandboxed process from sending a signal
+ *   to another process outside sandbox domain.
  */
 /* clang-format off */
 #define LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET		(1ULL << 0)
+#define LANDLOCK_SCOPED_SIGNAL		                (1ULL << 1)
 /* clang-format on*/
 #endif /* _UAPI_LINUX_LANDLOCK_H */
diff --git a/security/landlock/limits.h b/security/landlock/limits.h
index eb01d0fb2165..fa28f9236407 100644
--- a/security/landlock/limits.h
+++ b/security/landlock/limits.h
@@ -26,7 +26,7 @@
 #define LANDLOCK_MASK_ACCESS_NET	((LANDLOCK_LAST_ACCESS_NET << 1) - 1)
 #define LANDLOCK_NUM_ACCESS_NET		__const_hweight64(LANDLOCK_MASK_ACCESS_NET)
 
-#define LANDLOCK_LAST_SCOPE		LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET
+#define LANDLOCK_LAST_SCOPE		LANDLOCK_SCOPED_SIGNAL
 #define LANDLOCK_MASK_SCOPE		((LANDLOCK_LAST_SCOPE << 1) - 1)
 #define LANDLOCK_NUM_SCOPE		__const_hweight64(LANDLOCK_MASK_SCOPE)
 /* clang-format on */
diff --git a/security/landlock/task.c b/security/landlock/task.c
index acc6e0fbc111..caee485b97b2 100644
--- a/security/landlock/task.c
+++ b/security/landlock/task.c
@@ -168,11 +168,60 @@ static int hook_unix_may_send(struct socket *const sock,
 	return -EPERM;
 }
 
+static bool signal_is_scoped(const struct landlock_ruleset *const sender_dom,
+			     struct task_struct *const target)
+{
+	const struct landlock_ruleset *target_dom =
+		landlock_get_task_domain(target);
+
+	/* quick return if there is no domain or .scoped is not set */
+	if (!sender_dom || !get_scoped_accesses(sender_dom))
+		return true;
+
+	if (!target_dom || !get_scoped_accesses(target_dom))
+		return false;
+
+	/* other is scoped, they connect if they are in the same domain */
+	return domain_scope_le(sender_dom, target_dom);
+}
+
+static int hook_task_kill(struct task_struct *const p,
+			  struct kernel_siginfo *const info, const int sig,
+			  const struct cred *const cred)
+{
+	const struct landlock_ruleset *const dom =
+		landlock_get_current_domain();
+	bool ret = false;
+
+	if (!cred)
+		ret = signal_is_scoped(dom, p);
+	else
+		ret = signal_is_scoped(landlock_cred(cred)->domain, p);
+	if (ret)
+		return 0;
+	return EPERM;
+}
+
+static int hook_file_send_sigiotask(struct task_struct *tsk,
+				    struct fown_struct *fown, int signum)
+{
+	const struct task_struct *result =
+		get_pid_task(fown->pid, fown->pid_type);
+
+	const struct landlock_ruleset *const dom =
+		landlock_get_task_domain(result);
+	if (signal_is_scoped(dom, tsk))
+		return 0;
+	return EPERM;
+}
+
 static struct security_hook_list landlock_hooks[] __ro_after_init = {
 	LSM_HOOK_INIT(ptrace_access_check, hook_ptrace_access_check),
 	LSM_HOOK_INIT(ptrace_traceme, hook_ptrace_traceme),
 	LSM_HOOK_INIT(unix_stream_connect, hook_unix_stream_connect),
 	LSM_HOOK_INIT(unix_may_send, hook_unix_may_send),
+	LSM_HOOK_INIT(task_kill, hook_task_kill),
+	LSM_HOOK_INIT(file_send_sigiotask, hook_file_send_sigiotask),
 };
 
 __init void landlock_add_task_hooks(void)
-- 
2.34.1

