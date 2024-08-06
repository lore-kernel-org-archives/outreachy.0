Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 911E973477
	for <outreachy@lists.linux.dev>; Tue,  6 Aug 2024 18:11:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722967881; cv=none; b=st1j17bn7wgR6SkhA9LF0vP50n5FGMJYSo9CdrP9QPnVCXhQUzMHxIJPQ4uoIPpmIXt82P4E6tzSjcjabe0uNQuOEetL1p9vPcp2+La9Dxtt3Ty/MDbNl9RNddlfKQkxOURbNLluok4qXFNOcTttM64ny0y9N4OjIWKLroxDkDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722967881; c=relaxed/simple;
	bh=Tgz4rG0gdNZOi7Ceze4G3izUyhOrU5qXIBDASb3Kk/U=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=WJt6g1Ovj5awyfcBNQvDCCaxQHbDVrDRC7EJuOV2SEAnQKGkxQDJYE3YpqfCMZ5xlxlTrharmBydGS875FD5Fvg85izjTaC0OkS9KIDD21bQEyZVVlwo/sOurtgrMX6clRkh1ek9zqCA1P2XC1swk/PrmJn5wm502fJATu8AnJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jVRnjiwQ; arc=none smtp.client-ip=209.85.216.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jVRnjiwQ"
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-2cb4c4de4cbso642484a91.1
        for <outreachy@lists.linux.dev>; Tue, 06 Aug 2024 11:11:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722967878; x=1723572678; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fhkqFYwnINAcfquZFJ6nqQu+rI21VoQBsZtsC0iWGgg=;
        b=jVRnjiwQyaWk6iQl8SHvyTu86cNBJmUQzJTVdFEc4blp0mMlL5u+W067E+Asvq19iH
         UYifVJSJy4fwdGYE6HXz4ThdplEiSoQ70Fv302Mme0Cb4pyG7BIpus229wyrxKerlM7u
         VvA/xLH/iZZ6VtgZlHxdpe/59gAnNRA2gGx10Z9DSCZFLPIXxO0qBGf4EHUJ8jKcyw/b
         pkA6pD8YqldeXa/RDhZB1r3K2jyKHWjLDRp4siwSc2+xV8nZZIW/+R1RTq+y6fwi43kq
         kZWufsvaeT8GjGTow+mmG61j4cV02TuMKFRi1ahpSfY/Q+dNdkwIQe9k9CSOl9rZJ1L9
         y3VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722967878; x=1723572678;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fhkqFYwnINAcfquZFJ6nqQu+rI21VoQBsZtsC0iWGgg=;
        b=oBSV5oAgkUr84eIfTrUlctLDavvyD6/ow64G8Uk2c/5ba7uvh6RqliyEkaPpQYST7x
         p869pGCOpPQVxPe16nSysEKgl+nw9LVwx2rA5QJDYo3TsX3p5bg8P++hvlQaNp4GUBIn
         0VlYafKJmM59ISj23Idol/AGJ3bEEKJuKx+Yn3/MMdMIXhk8JyBqosn6XT3dtOc4+qG/
         daiX/y5ZQxmXsAXD63FX8PL5vNu9fEKw8Sgll2YsvV9OPjh9APot+TKgc0QcWr3VK7TK
         jcvxGJWM+thbbSkhiXQ1tKGX+3xhL3p3W9mLCzeTlsU+9D8w5ZZji8ql+cS60UQtj5qU
         py/w==
X-Gm-Message-State: AOJu0YzTVd55oi6+4xFGkzRedufoy+wO20xGn78KDQsonHpgZHo5prNQ
	PSVsFPTtlQilgjR9vEXeDGSjTHR5Cf75AeTV0rXXoa0feOqw3d0qsMEDyWQM
X-Google-Smtp-Source: AGHT+IG76IuTNr6BsP8RmeCPZaai/4NOu4kgq/HwMYShzLvUbPgoG8kPSvG2wBDihpM3klD8MA89cQ==
X-Received: by 2002:a17:90a:8a18:b0:2cf:2bf6:b030 with SMTP id 98e67ed59e1d1-2cff952d1fcmr15848502a91.33.1722967878333;
        Tue, 06 Aug 2024 11:11:18 -0700 (PDT)
Received: from tahera-OptiPlex-5000.tail3bf47f.ts.net ([136.159.49.123])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2cfdc45b51esm12829504a91.32.2024.08.06.11.11.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Aug 2024 11:11:17 -0700 (PDT)
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
Subject: [PATCH v2 1/4] Landlock: Add signal control
Date: Tue,  6 Aug 2024 12:10:40 -0600
Message-Id: <49557e48c1904d2966b8aa563215d2e1733dad95.1722966592.git.fahimitahera@gmail.com>
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

Currently, a sandbox process is not restricted to send a signal
(e.g. SIGKILL) to a process outside of the sandbox environment.
Ability to sending a signal for a sandboxed process should be
scoped the same way abstract unix sockets are scoped. Therefore,
we extend "scoped" field in a ruleset with
"LANDLOCK_SCOPED_SIGNAL" to specify that a ruleset will deny
sending any signal from within a sandbox process to its
parent(i.e. any parent sandbox or non-sandboxed procsses).

Signed-off-by: Tahera Fahimi <fahimitahera@gmail.com>
---

Chenges in versions:
V2:
* Remove signal_is_scoped function
* Applying reviews of V1
V1:
* Introducing LANDLOCK_SCOPE_SIGNAL
* Adding two hooks, hook_task_kill and hook_file_send_sigiotask
  for signal scoping.
---
 include/uapi/linux/landlock.h |  3 +++
 security/landlock/limits.h    |  2 +-
 security/landlock/task.c      | 43 +++++++++++++++++++++++++++++++++++
 3 files changed, 47 insertions(+), 1 deletion(-)

diff --git a/include/uapi/linux/landlock.h b/include/uapi/linux/landlock.h
index ab31e9f53e55..a65fdb507d39 100644
--- a/include/uapi/linux/landlock.h
+++ b/include/uapi/linux/landlock.h
@@ -292,8 +292,11 @@ struct landlock_net_port_attr {
  *   from connecting to an abstract unix socket created by a process
  *   outside the related Landlock domain (e.g. a parent domain or a
  *   non-sandboxed process).
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
index 7e8579ebae83..a73cff27bb91 100644
--- a/security/landlock/task.c
+++ b/security/landlock/task.c
@@ -261,11 +261,54 @@ static int hook_unix_may_send(struct socket *const sock,
 	return -EPERM;
 }
 
+static int hook_task_kill(struct task_struct *const p,
+			  struct kernel_siginfo *const info, const int sig,
+			  const struct cred *const cred)
+{
+	bool is_scoped;
+	const struct landlock_ruleset *target_dom;
+
+	/* rcu is already locked */
+	target_dom = landlock_get_task_domain(p);
+	if (cred)
+		/* dealing with USB IO */
+		is_scoped = domain_IPC_scope(landlock_cred(cred)->domain,
+					     target_dom,
+					     LANDLOCK_SCOPED_SIGNAL);
+	else
+		is_scoped = domain_IPC_scope(landlock_get_current_domain(),
+					     target_dom,
+					     LANDLOCK_SCOPED_SIGNAL);
+	if (is_scoped)
+		return 0;
+
+	return -EPERM;
+}
+
+static int hook_file_send_sigiotask(struct task_struct *tsk,
+				    struct fown_struct *fown, int signum)
+{
+	bool is_scoped;
+	const struct landlock_ruleset *dom, *target_dom;
+	struct task_struct *result = get_pid_task(fown->pid, fown->pid_type);
+
+	/* rcu is already locked! */
+	dom = landlock_get_task_domain(result);
+	target_dom = landlock_get_task_domain(tsk);
+	is_scoped = domain_IPC_scope(dom, target_dom, LANDLOCK_SCOPED_SIGNAL);
+	put_task_struct(result);
+	if (is_scoped)
+		return 0;
+	return -EPERM;
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

