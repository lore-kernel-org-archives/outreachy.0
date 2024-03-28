Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F8AF31A89
	for <outreachy@lists.linux.dev>; Thu, 28 Mar 2024 23:12:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711667537; cv=none; b=YjRqnb1AXiFIBheCpJqTmNWp1LQzVVAZZlWJ7smoGOGv4Se/Ouuo3R2exKy3K23a4SwcN9UJJZj1ehLxco8FVTP2L8aausglyjrQoZjyPTBra1wGo3BhgCqraOLIHrcXdy1EyhjW5idAPEFiHxwQfMdp7FoEYLP3zKiqjvHuzm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711667537; c=relaxed/simple;
	bh=Y2yGhw5DoVYcmyKvtY93T2ZHh8GSDwyarOd0jGWdti4=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=umQ4saR6LNB/Hp+iJwdDt0XObEfpw6oBsdgCACqAWNYmsYVpDM6Zhxz8l0GiPs35PVxbPvbbXUbmes1P18/8cGjZZxXK2UV9Ij6ekspKT29wELPjMNsUQZE50caESRo+GH+eyoN0TVCoPHOGJORwURgnoL8/adI1jcm/9ASTJIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=L4131AXh; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="L4131AXh"
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-1e228c12468so3687225ad.1
        for <outreachy@lists.linux.dev>; Thu, 28 Mar 2024 16:12:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711667536; x=1712272336; darn=lists.linux.dev;
        h=content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:to:from:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5Gh8/LNAzMBxlxkm/tP0Vt2dtSY7TQP4IXEdBVsXfZM=;
        b=L4131AXhZrtQLbW71OKoC4NzWHvP+j/eg6iaSrjcBhJN+qxoAR+LJpL0Slw5AzlfZP
         mAOo5s363lGVm+Eafu+KI1DpISY44y4lXhnfE1N2Xqm7HPU4SwyS/8x4teQvRbVZcarU
         TWVjTVn+U7nffFjTUsNTaQaWGn7RwCezR2XV7homPtGz2m4rHx9xU8wo+EToFR9sMVZl
         xhz/LSul/x4awXBd4ruVQjTdpaukhWV7ZCDyqrZitIAh0/HjGK5pLDKx4groT0L74Ak2
         yFsJ1qOXf2ROR7E+0zNs4ZP9RoWRwuA1iIbBeCvMxQL2/Gk0AqrPNU0FIoblL0M9xXlS
         Uojg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711667536; x=1712272336;
        h=content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5Gh8/LNAzMBxlxkm/tP0Vt2dtSY7TQP4IXEdBVsXfZM=;
        b=kvU5PSQ3RFxDfEwB7gWtlLmdM35KQhNg8uSPk1hn3mlNyhImX160AzRHUnlru/HnlG
         V3V8bM06ys2JBdmsZP/byA9nYnnRExsuTjRDLS4tTRBTJz/350GrpthujvL4MGagyG4A
         BclLiSc6Dq/wQrNGkGgiUY9SxqEaOtkJGknG7nh5bGP2SYRUWyQZp7zgnB67ZKOPBDp2
         o4taezzVc+qFzE6AobOuGy7lxRZz2LuOtO4IRK0Mg1FYptEstYvAuiq65TacGGjm4F6T
         fTGMKSf9lPXQi5BYmeXCMWajWpL2/yVXNa3BXew5UAG6Uq8Cwwb7dEuDcvKqLC+i85Oc
         m/Mg==
X-Forwarded-Encrypted: i=1; AJvYcCVvCLRKpB/G8yl4wMxQLuS6wHW61LSWU5/qsYwz90gK0I7Fj7tkPD+Z/IvttPLzbku3aDXutUsQy69CoPmaQCabvfNaNl4S+NL4
X-Gm-Message-State: AOJu0YwDS35yAbPJ1e8/cMV3dPhBiG7l3PR9mnvNjLEtnbq/bz64oqOX
	D6n5BJ65lOWAQmZgzJeNyi3dQLjmo17ysQsblaePQtXOjsa9/iih6k70U01+UEs=
X-Google-Smtp-Source: AGHT+IGiX4p20Gwid9PPKaKJVns4F9PJz84+sUjqx9+J/dOlHH2stjgClgj+FeJ3WcKQHrD7SdnqLw==
X-Received: by 2002:a17:903:1c7:b0:1e0:115c:e05a with SMTP id e7-20020a17090301c700b001e0115ce05amr5996164plh.12.1711667535655;
        Thu, 28 Mar 2024 16:12:15 -0700 (PDT)
Received: from tahera-OptiPlex-5000 ([136.159.49.124])
        by smtp.gmail.com with ESMTPSA id u1-20020a170902e5c100b001e0b5eee802sm2174664plf.123.2024.03.28.16.12.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Mar 2024 16:12:15 -0700 (PDT)
Date: Thu, 28 Mar 2024 17:12:13 -0600
From: TaheraFahimi <fahimitahera@gmail.com>
To: =?iso-8859-1?Q?Micka=EBl_Sala=FCn?= <mic@digikod.net>,
	Paul Moore <paul@paul-moore.com>, James Morris <jmorris@namei.org>,
	"Serge E. Hallyn" <serge@hallyn.com>,
	linux-security-module@vger.kernel.org, linux-kernel@vger.kernel.org,
	outreachy@lists.linux.dev
Subject: [PATCH v2] landlock: Add abstract unix socket connect restrictions
Message-ID: <ZgX5TRTrSDPrJFfF@tahera-OptiPlex-5000>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Abstract unix sockets are used for local interprocess communication without
relying on filesystem. Since landlock has no restriction for connecting to
a UNIX socket in the abstract namespace, a sandboxed process can connect to
a socket outside the sandboxed environment. Access to such sockets should
be scoped the same way ptrace access is limited.

For a landlocked process to be allowed to connect to a target process, it
must have a subset of the target process’s rules (the connecting socket
must be in a sub-domain of the listening socket). This patch adds a new
LSM hook for connect function in unix socket with the related access rights.

Link to first draft:
	https://lore.kernel.org/outreachy/20240328.ShoR4Iecei8o@digikod.net/

Signed-off-by: Tahera Fahimi <fahimitahera@gmail.com>

----
Changes in v2:
- Remove wrapper functions, noted by Casey Schaufler <casey@schaufler-ca.com>
---
 security/landlock/task.c | 40 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/security/landlock/task.c b/security/landlock/task.c
index 849f5123610b..67528f87b7de 100644
--- a/security/landlock/task.c
+++ b/security/landlock/task.c
@@ -13,6 +13,7 @@
 #include <linux/lsm_hooks.h>
 #include <linux/rcupdate.h>
 #include <linux/sched.h>
+#include <net/sock.h>
 
 #include "common.h"
 #include "cred.h"
@@ -108,9 +109,48 @@ static int hook_ptrace_traceme(struct task_struct *const parent)
 	return task_ptrace(parent, current);
 }
 
+static bool unix_sock_is_scoped(struct sock *const sock,
+				struct sock *const other)
+{
+	bool is_scoped = true;
+
+	/* get the ruleset of connecting sock*/
+	const struct landlock_ruleset *const dom_sock =
+		landlock_get_current_domain();
+
+	if (!dom_sock)
+		return true;
+
+	/* get credential of listening sock*/
+	const struct cred *cred_other = get_cred(other->sk_peer_cred);
+
+	if (!cred_other)
+		return true;
+
+	/* retrieve the landlock_rulesets */
+	const struct landlock_ruleset *dom_parent;
+
+	rcu_read_lock();
+	dom_parent = landlock_cred(cred_other)->domain;
+	is_scoped = domain_scope_le(dom_parent, dom_sock);
+	rcu_read_unlock();
+
+	return is_scoped;
+}
+
+static int hook_unix_stream_connect(struct sock *const sock,
+				    struct sock *const other,
+				    struct sock *const newsk)
+{
+	if (unix_sock_is_scoped(sock, other))
+		return 0;
+	return -EPERM;
+}
+
 static struct security_hook_list landlock_hooks[] __ro_after_init = {
 	LSM_HOOK_INIT(ptrace_access_check, hook_ptrace_access_check),
 	LSM_HOOK_INIT(ptrace_traceme, hook_ptrace_traceme),
+	LSM_HOOK_INIT(unix_stream_connect, hook_unix_stream_connect),
 };
 
 __init void landlock_add_task_hooks(void)
-- 
2.34.1

