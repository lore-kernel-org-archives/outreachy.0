Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 266136BFC7
	for <outreachy@lists.linux.dev>; Thu, 15 Aug 2024 18:29:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723746586; cv=none; b=u/1qUHm0m4GOc1fRzJptQIZ07Sy8cewVdQSwdOwbhAuWaalnY+ak4AnFSCfqgkgjRO+L6kf2De9W7pAtN2OpkJReGwTYPqcHhTt/1uJ8+fCK5LQO2YyAP3lP7Tznzm4CFBCbamGyzZZdOdWmyyIeitliMXHRHybjdOk1CGBnhXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723746586; c=relaxed/simple;
	bh=A2aiDFJBCz+Igr9+z2XqOoy+j8LXtHFbekDDJh4b2fU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=CprzTSJPBDe4i8JnoaBomLAIQ0lT91aLyZZ5f0UcaDf5htUyIZGvHCIZXfa9qBaZh2PtAUQ/sX5eMLsUCQr2RygUk4YEdJEgaWHSG0+cddl9gq1AH6b5MwgVqvO3FlCTil6uBIgEPMGGgY++nqMfqBCzVaoJvJ/YQ9d9G3WJFzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZdApATZN; arc=none smtp.client-ip=209.85.215.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZdApATZN"
Received: by mail-pg1-f178.google.com with SMTP id 41be03b00d2f7-7c3e0a3c444so837188a12.1
        for <outreachy@lists.linux.dev>; Thu, 15 Aug 2024 11:29:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723746583; x=1724351383; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KTRi9u6lzzp3CcKgXjdJ7Pl1+/P+bIf7Xr8YwF05Hyg=;
        b=ZdApATZNAkG+MafeKTNCqv33toIK6EqdUu6hymEnZvGjM9Ow302UtMvRykbMivd5UA
         fUyTuZvcu/TiiMQ7Z6axZJs8SlweYEsvU5Pu5AnN4Z/9n255QegwYFjmCwnMihVoULbB
         7Op/c8ly0g8VLUjDCN+MtToIxDzYfYMHdcRQa/GCufcN5QCsCnVkj/OLQtCctHgVlvjn
         F9pXKajQ4JDIOMPzfD4iRsxQ/69FAC0ADhByb1e5wlU91pmPYkctlgyfjLwSKyK2lamv
         qieusRT/Zz9GmBrW2Fw0iAvI4RpNik++wzPfAUrpR9UPlKI5TzqzvINqd6z4wPLy/kIf
         bZmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723746584; x=1724351384;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KTRi9u6lzzp3CcKgXjdJ7Pl1+/P+bIf7Xr8YwF05Hyg=;
        b=RhaQbE2TtmBLh7aNu48JpSQ5bd/eWS2Y9YiuyR2Odw9/MUZ0ajXBZ89BTpk8OZVhJR
         s+RZd5ZjWWs0Uwd0gbSP7FEGjfo4kTwQlWjK7/OrKEKPvxI7p+eODkdHo6n/dIn77Kqn
         kBY4/bQ83xPFZSmh4XM4dLcRRrb8TL80T1Fg8r8jaQLfxhK9l0TpmID9jQ2UGinr/meg
         LCzq3Q+uXU+dNGQcBks7ooIYbizGSWcT+lKwe9vzMxabAiyNM7hRZ3z90vQ0ud/CvLOG
         hocAZyrqBXj1cAllqVfUIqeeMqQNlzaPF4qabpjdDSAf9aK7v3P0nBEJUkI8UsMk+bgs
         hVaA==
X-Gm-Message-State: AOJu0YyRhUAyRRbtAhbTEVbG1TjPdiqpOaVuJ1GDtTe+2YGmIJ6VDkbp
	BmnWIWnd3Wt3663A7/3uD1PvqZIQubmp2KEmO/cGXkkyqcOL0rKDqpLE1IXf
X-Google-Smtp-Source: AGHT+IFYCp1JDy5Z9IIFHhkqmHtvBLsSWU+M8+vrme56OJrY4/aJa9V17cZqgB/QjNT77eF+WbDRPQ==
X-Received: by 2002:a05:6a21:8cc5:b0:1c8:ef0b:fcd7 with SMTP id adf61e73a8af0-1c9a2aeff30mr183007637.1.1723746583478;
        Thu, 15 Aug 2024 11:29:43 -0700 (PDT)
Received: from tahera-OptiPlex-5000.uc.ucalgary.ca ([136.159.49.123])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7c6b6356c76sm1431683a12.62.2024.08.15.11.29.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Aug 2024 11:29:43 -0700 (PDT)
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
Subject: [PATCH v3 2/6] Landlock: Adding file_send_sigiotask signal scoping support
Date: Thu, 15 Aug 2024 12:29:21 -0600
Message-Id: <d04bc943e8d275e8d00bb7742bcdbabc7913abbe.1723680305.git.fahimitahera@gmail.com>
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

This patch adds two new hooks "hook_file_set_fowner" and
"hook_file_free_security" to set and release a pointer to the
domain of the file owner. This pointer "fown_domain" in
"landlock_file_security" will be used in "file_send_sigiotask"
to check if the process can send a signal.

Signed-off-by: Tahera Fahimi <fahimitahera@gmail.com>
---
 security/landlock/fs.c   | 18 ++++++++++++++++++
 security/landlock/fs.h   |  6 ++++++
 security/landlock/task.c | 27 +++++++++++++++++++++++++++
 3 files changed, 51 insertions(+)

diff --git a/security/landlock/fs.c b/security/landlock/fs.c
index 7877a64cc6b8..d05f0e9c5e54 100644
--- a/security/landlock/fs.c
+++ b/security/landlock/fs.c
@@ -1636,6 +1636,21 @@ static int hook_file_ioctl_compat(struct file *file, unsigned int cmd,
 	return -EACCES;
 }
 
+static void hook_file_set_fowner(struct file *file)
+{
+	write_lock_irq(&file->f_owner.lock);
+	landlock_file(file)->fown_domain = landlock_get_current_domain();
+	landlock_get_ruleset(landlock_file(file)->fown_domain);
+	write_unlock_irq(&file->f_owner.lock);
+}
+
+static void hook_file_free_security(struct file *file)
+{
+	write_lock_irq(&file->f_owner.lock);
+	landlock_put_ruleset(landlock_file(file)->fown_domain);
+	write_unlock_irq(&file->f_owner.lock);
+}
+
 static struct security_hook_list landlock_hooks[] __ro_after_init = {
 	LSM_HOOK_INIT(inode_free_security, hook_inode_free_security),
 
@@ -1660,6 +1675,9 @@ static struct security_hook_list landlock_hooks[] __ro_after_init = {
 	LSM_HOOK_INIT(file_truncate, hook_file_truncate),
 	LSM_HOOK_INIT(file_ioctl, hook_file_ioctl),
 	LSM_HOOK_INIT(file_ioctl_compat, hook_file_ioctl_compat),
+
+	LSM_HOOK_INIT(file_set_fowner, hook_file_set_fowner),
+	LSM_HOOK_INIT(file_free_security, hook_file_free_security),
 };
 
 __init void landlock_add_fs_hooks(void)
diff --git a/security/landlock/fs.h b/security/landlock/fs.h
index 488e4813680a..6054563295d8 100644
--- a/security/landlock/fs.h
+++ b/security/landlock/fs.h
@@ -52,6 +52,12 @@ struct landlock_file_security {
 	 * needed to authorize later operations on the open file.
 	 */
 	access_mask_t allowed_access;
+	/**
+	 * @fown_domain: A pointer to a &landlock_ruleset of the process own
+	 * the file. This ruleset is protected by fowner_struct.lock same as
+	 * pid, uid, euid fields in fown_struct.
+	 */
+	struct landlock_ruleset *fown_domain;
 };
 
 /**
diff --git a/security/landlock/task.c b/security/landlock/task.c
index 9de96a5005c4..568292dbfe7d 100644
--- a/security/landlock/task.c
+++ b/security/landlock/task.c
@@ -18,6 +18,7 @@
 
 #include "common.h"
 #include "cred.h"
+#include "fs.h"
 #include "ruleset.h"
 #include "setup.h"
 #include "task.h"
@@ -261,12 +262,38 @@ static int hook_task_kill(struct task_struct *const p,
 	return 0;
 }
 
+static int hook_file_send_sigiotask(struct task_struct *tsk,
+				    struct fown_struct *fown, int signum)
+{
+	struct file *file;
+	bool is_scoped;
+	const struct landlock_ruleset *dom, *target_dom;
+
+	/* struct fown_struct is never outside the context of a struct file */
+	file = container_of(fown, struct file, f_owner);
+
+	read_lock_irq(&file->f_owner.lock);
+	dom = landlock_file(file)->fown_domain;
+	read_unlock_irq(&file->f_owner.lock);
+	if (!dom)
+		return 0;
+
+	rcu_read_lock();
+	target_dom = landlock_get_task_domain(tsk);
+	is_scoped = domain_is_scoped(dom, target_dom, LANDLOCK_SCOPED_SIGNAL);
+	rcu_read_unlock();
+	if (is_scoped)
+		return -EPERM;
+	return 0;
+}
+
 static struct security_hook_list landlock_hooks[] __ro_after_init = {
 	LSM_HOOK_INIT(ptrace_access_check, hook_ptrace_access_check),
 	LSM_HOOK_INIT(ptrace_traceme, hook_ptrace_traceme),
 	LSM_HOOK_INIT(unix_stream_connect, hook_unix_stream_connect),
 	LSM_HOOK_INIT(unix_may_send, hook_unix_may_send),
 	LSM_HOOK_INIT(task_kill, hook_task_kill),
+	LSM_HOOK_INIT(file_send_sigiotask, hook_file_send_sigiotask),
 };
 
 __init void landlock_add_task_hooks(void)
-- 
2.34.1

