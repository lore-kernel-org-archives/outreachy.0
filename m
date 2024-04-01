Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3E405490C
	for <outreachy@lists.linux.dev>; Mon,  1 Apr 2024 20:15:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712002555; cv=none; b=YBZobIeHQYnyPHVaworOF6ecxnD1d3T70bKgQLSnY9HHbKuiHTKFRuHtor9Hcst5jDUup37EtgVbXtRUjoTTDu6NZ6UhwDmqxRMTzLr077xyW4yLCPSK1g6IysI+iTsXZlcYkge1vi/wZLrG9o0RxhqlvYNiY9TTsvHAXYNg+BQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712002555; c=relaxed/simple;
	bh=Ttp6HDtuJdCvQVWNwPlua9wZJguDphgClBqkOD6FMlY=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=Ulv+jvAuAN2aBLwKljslxKlWadLoewrgFMbjT0CHP4PCZAlFFQSzFUHYtUn87uTeZEyqMpUB7v4hhVyeCWyu8VL0kOVYmI+X7LBqSuiA117rM2HkQ4RDp0h2/Q1Jw+7RNMzyFbtKjE/Y6WBy7uVZMvtAscww6VQYsXgy9K/9Z0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jtqxqu4x; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jtqxqu4x"
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-6e6ca2ac094so3998510b3a.0
        for <outreachy@lists.linux.dev>; Mon, 01 Apr 2024 13:15:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712002542; x=1712607342; darn=lists.linux.dev;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=m0mZE1Qz4uRWYwvIOjJ+HtSCn/ealgFF+V09O3RNHQU=;
        b=jtqxqu4x2Weo74NKAXlQB7vMGvE5iVwo1W3RgWwHt4amvd7WBmiJ71MQka/LRZ1xzg
         qWxBGsOlFsYo+NLIARPNArOeLnkFfTvIlElxlZXmNRxvxKHmpMokdGaYxXMrHmxJysZR
         bcbu2xh6qMgGXjFkgTbghSZT0NEffFg111RUbWzf5L4n1JLRpaDvi5kjnKWeSCU/1S3K
         6pdejHuBjfXkDbxQogjrxXLRSNaCcOy89I/8TfowXnBxzoHwu06WH+NQfcIa7Mfm6CSK
         /BIId94ni7bT85bm+DjS9N59WXIIiP+y2SMKX3E9GHm7IqUSS+FUZ9r4VP8XqsxI67hi
         sjXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712002542; x=1712607342;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=m0mZE1Qz4uRWYwvIOjJ+HtSCn/ealgFF+V09O3RNHQU=;
        b=Rmo63SrJhvmD2DqIrtfex+WMIpaotjn8y+MzZAbtbnFDxdo5ied+EWIMOLHpzg7WrL
         6IxxO8VWBKr8pzKsTAdIo/eIT4FqZja7WP6fRMBmEkEkD5u5q2MuLaycfkV8QhC+w3nX
         H+qQerh3BjvY98bl23S3Zhtkk6kIrqu5EOIy1uzFRJe/2b9h6eyQ6W3/FXVQ4yclVNxN
         p64dL+zWdNI2cBvLcFg/pjG77l5+iIFe4Hib9sw1EO1bsbU8teZkGcNQlxV2yikCsQZy
         qfuoG32aSPRbufzsoUR3Le94FT3rxTNbcKkhtPgZosToFDZF/fWneWP4WAY8+soUf70e
         Bggg==
X-Gm-Message-State: AOJu0YwJGxFVpe27jzupiMIjzEm3BMzptdMTUAmLKxt4JqPkVyjtCkmL
	6cZ4vKivPj+4kVMdhyfkDI2qZ3Ti78rO7AiDznrFyVZAe0yNP3LW
X-Google-Smtp-Source: AGHT+IGBNe8NFchxXaUZPkrD8mNxkNXOpjHF7nQt7Y2T8RYqtTwMGMHzo2rlsJSXjXBlIN1AD9eU3A==
X-Received: by 2002:a05:6a00:23ca:b0:6e7:117:c5d5 with SMTP id g10-20020a056a0023ca00b006e70117c5d5mr10588955pfc.23.1712002541865;
        Mon, 01 Apr 2024 13:15:41 -0700 (PDT)
Received: from ayush-HP-Pavilion-Gaming-Laptop-15-ec0xxx ([2409:40e3:10:ea9b:96f8:7cd5:d274:f9f1])
        by smtp.gmail.com with ESMTPSA id c2-20020a056a000ac200b006eaf3057352sm5207180pfl.85.2024.04.01.13.15.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Apr 2024 13:15:41 -0700 (PDT)
Date: Tue, 2 Apr 2024 01:45:33 +0530
From: Ayush Tiwari <ayushtiw0110@gmail.com>
To: alison.schofield@intel.com, paul@paul-moore.com, mic@digikod.net,
	fabio.maria.de.francesco@linux.intel.com,
	linux-kernel@vger.kernel.org, gregkh@linuxfoundation.org
Cc: outreachy@lists.linux.dev, linux-security-module@vger.kernel.org
Subject: [PATCH] landlock: Use kmem for object, rule, and hierarchy structures
Message-ID: <ZgsV5RuwsiM3WwXG@ayush-HP-Pavilion-Gaming-Laptop-15-ec0xxx>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Use kmem_cache to replace kzalloc() calls with kmem_cache_zalloc() for
structs landlock_object, landlock_rule and landlock_hierarchy and
update the related dependencies to improve memory allocation and
deallocation performance. This patch does not change kfree() and
kfree_rcu() calls because according to kernel commit
ae65a5211d90("mm/slab: document kfree() as allowed for
kmem_cache_alloc() objects"), starting from kernel 6.4, kfree() is
safe to use for such objects. Use clang-format to format the code
to the kernel style. /proc/slabinfo shows decrease in
'ext4_inode_cache' and 'dentry' usage suggesting a significant
reduction in file system related object and memory allocations and
increase in kmem_cache and kmalloc usage also indicates more cache
allocation for objects for efficient memory handling.

Signed-off-by: Ayush Tiwari <ayushtiw0110@gmail.com>
---
 security/landlock/object.c  | 12 +++++++++++-
 security/landlock/object.h  |  2 ++
 security/landlock/ruleset.c | 18 +++++++++++++++---
 security/landlock/ruleset.h |  2 ++
 security/landlock/setup.c   |  4 ++++
 5 files changed, 34 insertions(+), 4 deletions(-)

diff --git a/security/landlock/object.c b/security/landlock/object.c
index 1f50612f0185..cfc367725624 100644
--- a/security/landlock/object.c
+++ b/security/landlock/object.c
@@ -17,6 +17,15 @@
 
 #include "object.h"
 
+static struct kmem_cache *landlock_object_cache;
+
+void __init landlock_object_cache_init(void)
+{
+	landlock_object_cache = kmem_cache_create(
+		"landlock_object_cache", sizeof(struct landlock_object), 0,
+		SLAB_PANIC, NULL);
+}
+
 struct landlock_object *
 landlock_create_object(const struct landlock_object_underops *const underops,
 		       void *const underobj)
@@ -25,7 +34,8 @@ landlock_create_object(const struct landlock_object_underops *const underops,
 
 	if (WARN_ON_ONCE(!underops || !underobj))
 		return ERR_PTR(-ENOENT);
-	new_object = kzalloc(sizeof(*new_object), GFP_KERNEL_ACCOUNT);
+	new_object =
+		kmem_cache_zalloc(landlock_object_cache, GFP_KERNEL_ACCOUNT);
 	if (!new_object)
 		return ERR_PTR(-ENOMEM);
 	refcount_set(&new_object->usage, 1);
diff --git a/security/landlock/object.h b/security/landlock/object.h
index 5f28c35e8aa8..d9967ef16ec1 100644
--- a/security/landlock/object.h
+++ b/security/landlock/object.h
@@ -15,6 +15,8 @@
 
 struct landlock_object;
 
+void __init landlock_object_cache_init(void);
+
 /**
  * struct landlock_object_underops - Operations on an underlying object
  */
diff --git a/security/landlock/ruleset.c b/security/landlock/ruleset.c
index e0a5fbf9201a..0f8a9994f5fa 100644
--- a/security/landlock/ruleset.c
+++ b/security/landlock/ruleset.c
@@ -24,6 +24,19 @@
 #include "object.h"
 #include "ruleset.h"
 
+static struct kmem_cache *landlock_hierarchy_cache;
+static struct kmem_cache *landlock_rule_cache;
+
+void __init landlock_ruleset_cache_init(void)
+{
+	landlock_hierarchy_cache = kmem_cache_create(
+		"landlock_hierarchy_cache", sizeof(struct landlock_hierarchy),
+		0, SLAB_PANIC, NULL);
+	landlock_rule_cache = kmem_cache_create("landlock_rule_cache",
+						sizeof(struct landlock_rule), 0,
+						SLAB_PANIC, NULL);
+}
+
 static struct landlock_ruleset *create_ruleset(const u32 num_layers)
 {
 	struct landlock_ruleset *new_ruleset;
@@ -112,8 +125,7 @@ create_rule(const struct landlock_id id,
 	} else {
 		new_num_layers = num_layers;
 	}
-	new_rule = kzalloc(struct_size(new_rule, layers, new_num_layers),
-			   GFP_KERNEL_ACCOUNT);
+	new_rule = kmem_cache_zalloc(landlock_rule_cache, GFP_KERNEL_ACCOUNT);
 	if (!new_rule)
 		return ERR_PTR(-ENOMEM);
 	RB_CLEAR_NODE(&new_rule->node);
@@ -559,7 +571,7 @@ landlock_merge_ruleset(struct landlock_ruleset *const parent,
 	if (IS_ERR(new_dom))
 		return new_dom;
 	new_dom->hierarchy =
-		kzalloc(sizeof(*new_dom->hierarchy), GFP_KERNEL_ACCOUNT);
+		kmem_cache_zalloc(landlock_hierarchy_cache, GFP_KERNEL_ACCOUNT);
 	if (!new_dom->hierarchy) {
 		err = -ENOMEM;
 		goto out_put_dom;
diff --git a/security/landlock/ruleset.h b/security/landlock/ruleset.h
index c7f1526784fd..f738e8b0cf9b 100644
--- a/security/landlock/ruleset.h
+++ b/security/landlock/ruleset.h
@@ -30,6 +30,8 @@
 	LANDLOCK_ACCESS_FS_REFER)
 /* clang-format on */
 
+void __init landlock_ruleset_cache_init(void);
+
 typedef u16 access_mask_t;
 /* Makes sure all filesystem access rights can be stored. */
 static_assert(BITS_PER_TYPE(access_mask_t) >= LANDLOCK_NUM_ACCESS_FS);
diff --git a/security/landlock/setup.c b/security/landlock/setup.c
index f6dd33143b7f..a4904d00cbe6 100644
--- a/security/landlock/setup.c
+++ b/security/landlock/setup.c
@@ -16,6 +16,8 @@
 #include "net.h"
 #include "ptrace.h"
 #include "setup.h"
+#include "object.h"
+#include "ruleset.h"
 
 bool landlock_initialized __ro_after_init = false;
 
@@ -33,6 +35,8 @@ const struct lsm_id landlock_lsmid = {
 
 static int __init landlock_init(void)
 {
+	landlock_object_cache_init();
+	landlock_ruleset_cache_init();
 	landlock_add_cred_hooks();
 	landlock_add_ptrace_hooks();
 	landlock_add_fs_hooks();
-- 
2.40.1

