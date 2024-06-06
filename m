Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 597D513E03C
	for <outreachy@lists.linux.dev>; Thu,  6 Jun 2024 23:44:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717717493; cv=none; b=K0xTAHfLoUtgFt4jySO9Prj2IaxfofgebXAV237fhurI2gd8AkxkQaI5xxBdr6p1CDx87OKMs6/kdLoiUQUSfUdzyJ5pqdzzFtG2ot0ekw3IT3K2N4JCWw3mnmKg1tGn+ZEgwEGuggSmlCzVQHpZdFBIaHSqT78M6XhfFgEy8H4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717717493; c=relaxed/simple;
	bh=iamb/rLFkUYOh3f2W+ds/fFDPpASdaMufVXcS3wVDaE=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=E1jcWVtFyjoWiHds19LEWogDaWsUg+1DpDTKOexJD5QH4f6QfFxNMetvt6CPAzrG3SJnDH0i+kBRfjJNhM90nfF280JXCrvPg3pWgJ6eMJHX6J9fzEeUj5nlBhvg9mKUv83sXERPbkxWfzWFRz1Lk1etTBQoeJAJrDYUTPN2uXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Z9+e+3MD; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Z9+e+3MD"
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-2c2bab8d69cso360572a91.0
        for <outreachy@lists.linux.dev>; Thu, 06 Jun 2024 16:44:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717717490; x=1718322290; darn=lists.linux.dev;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Jcgbh93vnYAHc6vnLN6+nek2BGC8VoPNOv53hEOb+aQ=;
        b=Z9+e+3MDRa0sJKYVMV1Jah3ybg+Sultjil16lLjOnSEdv9zzexVAVo0dvWzw0lxiWi
         G4lg+axrb6Rbzn3mngs2tgltiDTvce6OpK+tB+lc6E+2H8hFhOx7AJqgBWQlDC950AIc
         Enmek7mSlvs42JCDCGwr5/P0RQKOoAsNr+Vjx9oF01HVc81rEHWR8jDCaJrAFYfwO6c5
         Ji7hitTlydM3V2UXIPd02hXrsZJf0dkHqv8NDa2a3i4yFK6N9OnjRiIRp8+KZJSWinq/
         Q0M39AkzLWa0byMdQJV414KzMlcVP9ee0OQicBzW77RozJjpU8ppnBm5tXdDd85zoKc5
         r0fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717717490; x=1718322290;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Jcgbh93vnYAHc6vnLN6+nek2BGC8VoPNOv53hEOb+aQ=;
        b=PZ/3W6yW/+uyagBdkyULVG2EH9zTHzsecIwkUHKTsgVKHb5GRNNkHLzGQ2waRelGMB
         DjhwFufTiq4guppIrOcCOOO/FVaNh9RU6YrWZcZS5lfzHg/JeRIzd3k5Uv3Q/JlUUQib
         KvfqgVr46U4dsk0XdtHrFW0wKTIOg+asUe7KQQ+0nqgWSvz10Ghedt30YY7jtnT30c6a
         bS0yUHct18Vpo3Aj3NJeYMb9YRVaWXX83Oprl94b6nwvEfXFYzaFRTuE5ZHbrFpuZpEb
         0zVKPITuTcdCm7CUJ3TSVG+8kUTgdkIJR4ZedyIPc7Voq6oZAmoj4HGfkZwRC2nunwmV
         ro1Q==
X-Forwarded-Encrypted: i=1; AJvYcCVPvm3GfNqm0MZhLod9NtV2TYKJ+PxzL/x1k1GtYoFR32St79l0HbZe79iYCjkigRuGIYpSa8ta+6hqY4hwwfrAS9TyjJD3JHko
X-Gm-Message-State: AOJu0YxpXjSfP+bTafEr5hw24DMVWFO4rZgqx6pUF8zts6hTMpYBWy7b
	5vpZeDHTgOYggxKYWIKCySt1u8afkY7+GWmuXxG9o6nyJIspXtbg
X-Google-Smtp-Source: AGHT+IGafla7J4D8SbDeMtxKagI7bixG8s8JsXU2Yf/SswjKIDwe1QjnnKX67kGmkXlOFFijZ56qww==
X-Received: by 2002:a17:90a:8402:b0:2c2:5a29:9bb5 with SMTP id 98e67ed59e1d1-2c2bcacce7cmr964934a91.5.1717717489420;
        Thu, 06 Jun 2024 16:44:49 -0700 (PDT)
Received: from tahera-OptiPlex-5000 ([136.159.49.123])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2c28067a208sm4161906a91.27.2024.06.06.16.44.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jun 2024 16:44:48 -0700 (PDT)
Date: Thu, 6 Jun 2024 17:44:46 -0600
From: Tahera Fahimi <fahimitahera@gmail.com>
To: =?iso-8859-1?Q?Micka=EBl_Sala=FCn?= <mic@digikod.net>,
	=?iso-8859-1?Q?G=FCnther?= Noack <gnoack@google.com>,
	linux-security-module@vger.kernel.org, linux-kernel@vger.kernel.org,
	Paul Moore <paul@paul-moore.com>, James Morris <jmorris@namei.org>,
	"Serge E. Hallyn" <serge@hallyn.com>, outreachy@lists.linux.dev,
	Jann Horn <jannh@google.com>, netdev@vger.kernel.org,
	=?iso-8859-1?Q?Bj=F6rn?= Roy Baron <bjorn3_gh@protonmail.com>
Subject: [PATCH v3] landlock: Add abstract unix socket connect restriction
Message-ID: <ZmJJ7lZdQuQop7e5@tahera-OptiPlex-5000>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Abstract unix sockets are used for local inter-process communications
without on a filesystem. Currently a sandboxed process can connect to a
socket outside of the sandboxed environment, since landlock has no
restriction for connecting to a unix socket in the abstract namespace.
Access to such sockets for a sandboxed process should be scoped the same
way ptrace is limited.

Because of compatibility reasons and since landlock should be flexible,
we extend the user space interface by adding a new "scoped" field. This
field optionally contains a "LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET" to
specify that the ruleset will deny any connection from within the
sandbox to its parents(i.e. any parent sandbox or non-sandbox processes)

Closes: https://github.com/landlock-lsm/linux/issues/7
Signed-off-by: Tahera Fahimi <fahimitahera@gmail.com>

-------
V3: Added "scoped" field to landlock_ruleset_attr
V2: Remove wrapper functions

-------
---
 include/uapi/linux/landlock.h | 28 +++++++++++++++++++++++
 security/landlock/limits.h    |  5 ++++
 security/landlock/ruleset.c   | 15 ++++++++----
 security/landlock/ruleset.h   | 28 +++++++++++++++++++++--
 security/landlock/syscalls.c  | 12 +++++++---
 security/landlock/task.c      | 43 +++++++++++++++++++++++++++++++++++
 6 files changed, 121 insertions(+), 10 deletions(-)

diff --git a/include/uapi/linux/landlock.h b/include/uapi/linux/landlock.h
index 68625e728f43..d887e67dc0ed 100644
--- a/include/uapi/linux/landlock.h
+++ b/include/uapi/linux/landlock.h
@@ -37,6 +37,12 @@ struct landlock_ruleset_attr {
 	 * rule explicitly allow them.
 	 */
 	__u64 handled_access_net;
+	/**
+	 * scoped: Bitmask of actions (cf. `Scope access flags`_)
+	 * that is handled by this ruleset and should be permitted
+	 * by default if no rule explicitly deny them.
+	 */
+	__u64 scoped;
 };
 
 /*
@@ -266,4 +272,26 @@ struct landlock_net_port_attr {
 #define LANDLOCK_ACCESS_NET_BIND_TCP			(1ULL << 0)
 #define LANDLOCK_ACCESS_NET_CONNECT_TCP			(1ULL << 1)
 /* clang-format on */
+
+/**
+ * DOC: scoped
+ *
+ * Scoped handles a set of restrictions on kernel IPCs.
+ *
+ * Scope access flags
+ * ~~~~~~~~~~~~~~~~~~~~
+ * 
+ * These flags enable to restrict a sandboxed process from a set of
+ * inter-process communications actions. Setting a flag in a landlock
+ * domain will isolate the Landlock domain to forbid connections
+ * to resources outside the domain.
+ *
+ * IPCs with scoped actions:
+ * - %LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET: Restrict a sandbox process to
+ *   connect to a process outside of the sandbox domain through abstract
+ *   unix sockets. 
+ */
+/* clang-format off */
+#define LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET		(1ULL << 0)
+/* clang-format on*/
 #endif /* _UAPI_LINUX_LANDLOCK_H */
diff --git a/security/landlock/limits.h b/security/landlock/limits.h
index 20fdb5ff3514..7b794b81ef05 100644
--- a/security/landlock/limits.h
+++ b/security/landlock/limits.h
@@ -28,6 +28,11 @@
 #define LANDLOCK_NUM_ACCESS_NET		__const_hweight64(LANDLOCK_MASK_ACCESS_NET)
 #define LANDLOCK_SHIFT_ACCESS_NET	LANDLOCK_NUM_ACCESS_FS
 
+#define LANDLOCK_LAST_ACCESS_SCOPE       LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET
+#define LANDLOCK_MASK_ACCESS_SCOPE	((LANDLOCK_LAST_ACCESS_SCOPE << 1) - 1)
+#define LANDLOCK_NUM_ACCESS_SCOPE         __const_hweight64(LANDLOCK_MASK_ACCESS_SCOPE)
+#define LANDLOCK_SHIFT_ACCESS_SCOPE      LANDLOCK_SHIFT_ACCESS_NET
+
 /* clang-format on */
 
 #endif /* _SECURITY_LANDLOCK_LIMITS_H */
diff --git a/security/landlock/ruleset.c b/security/landlock/ruleset.c
index e0a5fbf9201a..635d0854be09 100644
--- a/security/landlock/ruleset.c
+++ b/security/landlock/ruleset.c
@@ -52,12 +52,13 @@ static struct landlock_ruleset *create_ruleset(const u32 num_layers)
 
 struct landlock_ruleset *
 landlock_create_ruleset(const access_mask_t fs_access_mask,
-			const access_mask_t net_access_mask)
+			const access_mask_t net_access_mask,
+			const access_mask_t scope_mask)
 {
 	struct landlock_ruleset *new_ruleset;
 
 	/* Informs about useless ruleset. */
-	if (!fs_access_mask && !net_access_mask)
+	if (!fs_access_mask && !net_access_mask && !scope_mask)
 		return ERR_PTR(-ENOMSG);
 	new_ruleset = create_ruleset(1);
 	if (IS_ERR(new_ruleset))
@@ -66,6 +67,8 @@ landlock_create_ruleset(const access_mask_t fs_access_mask,
 		landlock_add_fs_access_mask(new_ruleset, fs_access_mask, 0);
 	if (net_access_mask)
 		landlock_add_net_access_mask(new_ruleset, net_access_mask, 0);
+	if (scope_mask)
+		landlock_add_scope_mask(new_ruleset, scope_mask, 0);
 	return new_ruleset;
 }
 
@@ -173,9 +176,11 @@ static void build_check_ruleset(void)
 
 	BUILD_BUG_ON(ruleset.num_rules < LANDLOCK_MAX_NUM_RULES);
 	BUILD_BUG_ON(ruleset.num_layers < LANDLOCK_MAX_NUM_LAYERS);
-	BUILD_BUG_ON(access_masks <
-		     ((LANDLOCK_MASK_ACCESS_FS << LANDLOCK_SHIFT_ACCESS_FS) |
-		      (LANDLOCK_MASK_ACCESS_NET << LANDLOCK_SHIFT_ACCESS_NET)));
+	BUILD_BUG_ON(
+		access_masks <
+		((LANDLOCK_MASK_ACCESS_FS << LANDLOCK_SHIFT_ACCESS_FS) |
+		 (LANDLOCK_MASK_ACCESS_NET << LANDLOCK_SHIFT_ACCESS_NET) |
+		 (LANDLOCK_MASK_ACCESS_SCOPE << LANDLOCK_SHIFT_ACCESS_SCOPE)));
 }
 
 /**
diff --git a/security/landlock/ruleset.h b/security/landlock/ruleset.h
index c7f1526784fd..b633d1b66452 100644
--- a/security/landlock/ruleset.h
+++ b/security/landlock/ruleset.h
@@ -35,6 +35,8 @@ typedef u16 access_mask_t;
 static_assert(BITS_PER_TYPE(access_mask_t) >= LANDLOCK_NUM_ACCESS_FS);
 /* Makes sure all network access rights can be stored. */
 static_assert(BITS_PER_TYPE(access_mask_t) >= LANDLOCK_NUM_ACCESS_NET);
+/* Makes sure all scoped rights can be stored*/
+static_assert(BITS_PER_TYPE(access_mask_t) >= LANDLOCK_NUM_ACCESS_SCOPE);
 /* Makes sure for_each_set_bit() and for_each_clear_bit() calls are OK. */
 static_assert(sizeof(unsigned long) >= sizeof(access_mask_t));
 
@@ -42,7 +44,8 @@ static_assert(sizeof(unsigned long) >= sizeof(access_mask_t));
 typedef u32 access_masks_t;
 /* Makes sure all ruleset access rights can be stored. */
 static_assert(BITS_PER_TYPE(access_masks_t) >=
-	      LANDLOCK_NUM_ACCESS_FS + LANDLOCK_NUM_ACCESS_NET);
+	      LANDLOCK_NUM_ACCESS_FS + LANDLOCK_NUM_ACCESS_NET +
+		      LANDLOCK_NUM_ACCESS_SCOPE);
 
 typedef u16 layer_mask_t;
 /* Makes sure all layers can be checked. */
@@ -233,7 +236,8 @@ struct landlock_ruleset {
 
 struct landlock_ruleset *
 landlock_create_ruleset(const access_mask_t access_mask_fs,
-			const access_mask_t access_mask_net);
+			const access_mask_t access_mask_net,
+			const access_mask_t scope_mask);
 
 void landlock_put_ruleset(struct landlock_ruleset *const ruleset);
 void landlock_put_ruleset_deferred(struct landlock_ruleset *const ruleset);
@@ -282,6 +286,17 @@ landlock_add_net_access_mask(struct landlock_ruleset *const ruleset,
 		(net_mask << LANDLOCK_SHIFT_ACCESS_NET);
 }
 
+static inline void
+landlock_add_scope_mask(struct landlock_ruleset *const ruleset,
+			const access_mask_t scope_mask, const u16 layer_level)
+{
+	access_mask_t scoped_mask = scope_mask & LANDLOCK_MASK_ACCESS_SCOPE;
+
+	WARN_ON_ONCE(scope_mask != scoped_mask);
+	ruleset->access_masks[layer_level] |=
+		(scoped_mask << LANDLOCK_SHIFT_ACCESS_SCOPE);
+}
+
 static inline access_mask_t
 landlock_get_raw_fs_access_mask(const struct landlock_ruleset *const ruleset,
 				const u16 layer_level)
@@ -309,6 +324,15 @@ landlock_get_net_access_mask(const struct landlock_ruleset *const ruleset,
 	       LANDLOCK_MASK_ACCESS_NET;
 }
 
+static inline access_mask_t
+landlock_get_scope_mask(const struct landlock_ruleset *const ruleset,
+			const u16 layer_level)
+{
+	return (ruleset->access_masks[layer_level] >>
+		LANDLOCK_SHIFT_ACCESS_SCOPE) &
+	       LANDLOCK_MASK_ACCESS_SCOPE;
+}
+
 bool landlock_unmask_layers(const struct landlock_rule *const rule,
 			    const access_mask_t access_request,
 			    layer_mask_t (*const layer_masks)[],
diff --git a/security/landlock/syscalls.c b/security/landlock/syscalls.c
index 03b470f5a85a..e95e79752be0 100644
--- a/security/landlock/syscalls.c
+++ b/security/landlock/syscalls.c
@@ -97,8 +97,9 @@ static void build_check_abi(void)
 	 */
 	ruleset_size = sizeof(ruleset_attr.handled_access_fs);
 	ruleset_size += sizeof(ruleset_attr.handled_access_net);
+	ruleset_size += sizeof(ruleset_attr.scoped);
 	BUILD_BUG_ON(sizeof(ruleset_attr) != ruleset_size);
-	BUILD_BUG_ON(sizeof(ruleset_attr) != 16);
+	BUILD_BUG_ON(sizeof(ruleset_attr) != 24);
 
 	path_beneath_size = sizeof(path_beneath_attr.allowed_access);
 	path_beneath_size += sizeof(path_beneath_attr.parent_fd);
@@ -170,7 +171,7 @@ static const struct file_operations ruleset_fops = {
  * Possible returned errors are:
  *
  * - %EOPNOTSUPP: Landlock is supported by the kernel but disabled at boot time;
- * - %EINVAL: unknown @flags, or unknown access, or too small @size;
+ * - %EINVAL: unknown @flags, or unknown access, or uknown scope, or too small @size;
  * - %E2BIG or %EFAULT: @attr or @size inconsistencies;
  * - %ENOMSG: empty &landlock_ruleset_attr.handled_access_fs.
  */
@@ -212,10 +213,15 @@ SYSCALL_DEFINE3(landlock_create_ruleset,
 	if ((ruleset_attr.handled_access_net | LANDLOCK_MASK_ACCESS_NET) !=
 	    LANDLOCK_MASK_ACCESS_NET)
 		return -EINVAL;
+	/* Checks IPC scoping content (and 32-bits cast). */
+	if ((ruleset_attr.scoped | LANDLOCK_MASK_ACCESS_SCOPE) !=
+	    LANDLOCK_MASK_ACCESS_SCOPE)
+		return -EINVAL;
 
 	/* Checks arguments and transforms to kernel struct. */
 	ruleset = landlock_create_ruleset(ruleset_attr.handled_access_fs,
-					  ruleset_attr.handled_access_net);
+					  ruleset_attr.handled_access_net,
+					  ruleset_attr.scoped);
 	if (IS_ERR(ruleset))
 		return PTR_ERR(ruleset);
 
diff --git a/security/landlock/task.c b/security/landlock/task.c
index 849f5123610b..147c6545ef24 100644
--- a/security/landlock/task.c
+++ b/security/landlock/task.c
@@ -13,6 +13,8 @@
 #include <linux/lsm_hooks.h>
 #include <linux/rcupdate.h>
 #include <linux/sched.h>
+#include <net/sock.h>
+#include <net/af_unix.h>
 
 #include "common.h"
 #include "cred.h"
@@ -108,9 +110,50 @@ static int hook_ptrace_traceme(struct task_struct *const parent)
 	return task_ptrace(parent, current);
 }
 
+static bool sock_is_scoped(struct sock *const other)
+{
+	bool is_scoped = true;
+	const struct landlock_ruleset *dom_other;
+	const struct cred *cred_other;
+
+	const struct landlock_ruleset *const dom =
+		landlock_get_current_domain();
+	if (!dom)
+		return true;
+
+	lockdep_assert_held(&unix_sk(other)->lock);
+	/* the credentials will not change */
+	cred_other = get_cred(other->sk_peer_cred);
+	dom_other = landlock_cred(cred_other)->domain;
+	is_scoped = domain_scope_le(dom, dom_other);
+	put_cred(cred_other);
+	return is_scoped;
+}
+
+static int hook_unix_stream_connect(struct sock *const sock,
+				    struct sock *const other,
+				    struct sock *const newsk)
+{
+	if (sock_is_scoped(other))
+		return 0;
+
+	return -EPERM;
+}
+
+static int hook_unix_may_send(struct socket *const sock,
+			      struct socket *const other)
+{
+	if (sock_is_scoped(other->sk))
+		return 0;
+
+	return -EPERM;
+}
+
 static struct security_hook_list landlock_hooks[] __ro_after_init = {
 	LSM_HOOK_INIT(ptrace_access_check, hook_ptrace_access_check),
 	LSM_HOOK_INIT(ptrace_traceme, hook_ptrace_traceme),
+	LSM_HOOK_INIT(unix_stream_connect, hook_unix_stream_connect),
+	LSM_HOOK_INIT(unix_may_send, hook_unix_may_send),
 };
 
 __init void landlock_add_task_hooks(void)
-- 
2.34.1

