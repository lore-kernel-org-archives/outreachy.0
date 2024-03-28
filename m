Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265544436D
	for <outreachy@lists.linux.dev>; Thu, 28 Mar 2024 20:07:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711656426; cv=none; b=mB2WDxb1/EiJlZyA/icLqYgqTcVHWGdmYqlvXPHWCE9AzuggcnKaAFf2M106fXh8vyB3bEMkbNdFEKBkZ2LqMNFdFz50hv9lyPPOUS98xDVrE9l4keVJgnWpspS9lUvb2nMr/BV9IoqcXfp4rtUYz686JtKi2i8jw3c0PeYGZBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711656426; c=relaxed/simple;
	bh=icLKc+NlLTA/ubQEiOvaKjJVK9wgarwoGcCMWXJPcBc=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=UjZdHd2oyJy0YO73ng86PfkVEWuRMeoQTT2vX87xYHK/Xfh8cmGWhAyG6AEUK1undFderXtKfJdWhmLU3InT0Mhd0Vc+TZz1bRz9ciktSuypp15ga8ZS/W/JGsxIXRO0gbcnjUV72tJs/qDJKGqulcUHzd/jxUhwSzi8bCfTZvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FxO8XHJO; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FxO8XHJO"
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-1def89f0cfdso19387795ad.0
        for <outreachy@lists.linux.dev>; Thu, 28 Mar 2024 13:07:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711656424; x=1712261224; darn=lists.linux.dev;
        h=content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:to:from:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ju6YB3mtZJAi658SXHHBI9fZWuQW9dTBciLAhgrB3UE=;
        b=FxO8XHJOA2MphSnX0/m6mMa7tZD9mN7QYnZwQ4IAmQmCHhbP/fQJK7N9rLOj91aSkF
         TqPQj3GScaM+uUrBRodSWWmFP3LYNGX9I5NihcJZHLvZgmqbBvRkEKxbwyCTac4aCswy
         H/ok5k5LamTiCiGMOczz1lthdyMSY5DVUbNE8rznZG3de7KvxuipHN/uZNq5w2BIkw+k
         VqBjFqAxgAMtBlHZ/5R+/+/r2/2dPYEjdfpa7404dv5CpasD94tqOzXf/E8ERFBdViZs
         G1HPW3OSclkErzOdI4P/baThmNRt10RaTFEXD11+sddv+RyPd3crOwWgG7WuVsYxsBsv
         q4Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711656424; x=1712261224;
        h=content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ju6YB3mtZJAi658SXHHBI9fZWuQW9dTBciLAhgrB3UE=;
        b=vlrTlSutU092GokyPD/CuC8h9ABKAi0iuknHsoyFMPtlH9yEppInf5lbVgYBWyGSWl
         A6nOme2lMIUkY/ECDsPPr1UmgyZ6WiYGgGd2nOvzr4L2eE3uMGf/JoP8FRpOFLd6LtWE
         LGRv/CRC4riVES4yH4GOFt5LY6PaSYl5gMdsnkPoWuYOd2gQurd9Osde3rC3pLYIRiBl
         YtR+3AhWuf55GwB4vCPpSaR+Z3NBYIWXNKd1xZNIbUBRb+9G9txQ5Fr7I3tDFGGHArgJ
         s0CsyriIXq2Cd/CZzDv0+W4+L9mbBc8gaqHnl52WH7uAnccEwH6vkx5AYh1Qmj4Kyb5Y
         M1Yw==
X-Gm-Message-State: AOJu0Yw3yrgjEWnKyo5q664Fhtrq+qCIMZyaZTF3cdzE5Uh7epPEk4CC
	OvkGqi/TU7fiKEf6yQ8NI8FtwvHww6WKCsqmgxK0O7OOnOTE8PInuNLm+wPsrWs=
X-Google-Smtp-Source: AGHT+IELjcqIv0VORj1EnfKe71QoNIdyIK7nr1/XW2jUVaCl1BtmKXz2XUBexFJEuna+vspNKarKVQ==
X-Received: by 2002:a17:902:f68e:b0:1e0:c070:b082 with SMTP id l14-20020a170902f68e00b001e0c070b082mr5344722plg.14.1711656423944;
        Thu, 28 Mar 2024 13:07:03 -0700 (PDT)
Received: from tahera-OptiPlex-5000 ([136.159.49.124])
        by smtp.gmail.com with ESMTPSA id p2-20020a1709027ec200b001e0af9928casm2069031plb.55.2024.03.28.13.07.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Mar 2024 13:07:03 -0700 (PDT)
Date: Thu, 28 Mar 2024 14:07:01 -0600
From: TaheraFahimi <fahimitahera@gmail.com>
To: outreachy@lists.linux.dev,
	=?iso-8859-1?Q?Micka=EBl_Sala=FCn?= <mic@digikod.net>,
	Paul Moore <paul@paul-moore.com>, James Morris <jmorris@namei.org>,
	"Serge E. Hallyn" <serge@hallyn.com>,
	linux-security-module@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] landlock: Add abstract unix socket connect restrictions
Message-ID: <ZgXN5fi6A1YQKiAQ@tahera-OptiPlex-5000>
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

Signed-off-by: Tahera Fahimi <fahimitahera@gmail.com>
---
 security/landlock/task.c | 70 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 70 insertions(+)

diff --git a/security/landlock/task.c b/security/landlock/task.c
index 849f5123610b..7f4155fc6174 100644
--- a/security/landlock/task.c
+++ b/security/landlock/task.c
@@ -13,6 +13,7 @@
 #include <linux/lsm_hooks.h>
 #include <linux/rcupdate.h>
 #include <linux/sched.h>
+#include <net/sock.h>
 
 #include "common.h"
 #include "cred.h"
@@ -108,9 +109,78 @@ static int hook_ptrace_traceme(struct task_struct *const parent)
 	return task_ptrace(parent, current);
 }
 
+static const struct cred *sk_get_cred(struct sock *sk)
+{
+	const struct cred *cred = get_cred(sk->sk_peer_cred);
+
+	if (!cred)
+		return NULL;
+	return cred;
+}
+
+static const struct landlock_ruleset *get_current_sock_domain(void)
+{
+	const struct landlock_ruleset *const dom =
+		landlock_get_current_domain();
+
+	if (!dom)
+		return NULL;
+
+	return dom;
+}
+
+static bool unix_sock_is_scoped(struct sock *const sock,
+				struct sock *const other)
+{
+	bool is_scoped = true;
+
+	/* get the ruleset of connecting sock*/
+	const struct landlock_ruleset *const dom_sock =
+		get_current_sock_domain();
+
+	if (!dom_sock)
+		return true;
+
+	/* get credential of listening sock*/
+	const struct cred *cred_other = sk_get_cred(other);
+
+	if (!cred_other)
+		return true;
+
+	/* retrieve the landlock_rulesets*/
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
+static int task_unix_stream_connect(struct sock *const sock,
+				    struct sock *const other,
+				    struct sock *const newsk)
+{
+	if (unix_sock_is_scoped(sock, other))
+		return 0;
+	return -EPERM;
+}
+
+/**
+ * hook_unix_stream_connect
+ */
+static int hook_unix_stream_connect(struct sock *const sock,
+				    struct sock *const other,
+				    struct sock *const newsk)
+{
+	return task_unix_stream_connect(sock, other, newsk);
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

