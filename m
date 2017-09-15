X-GM-THRID: 6465879632669310976
X-Received: by 10.129.51.194 with SMTP id z185mr14295055ywz.169.1505457528367;
        Thu, 14 Sep 2017 23:38:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.34.6 with SMTP id i6ls1440114ioi.14.gmail; Thu, 14 Sep
 2017 23:38:47 -0700 (PDT)
X-Received: by 10.55.198.139 with SMTP id s11mr12654753qkl.49.1505457527848;
        Thu, 14 Sep 2017 23:38:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505457527; cv=none;
        d=google.com; s=arc-20160816;
        b=epF9m26LNAh1abpX3MYSh/eannkwP3daerCOZUhTTuUMYZtDyLi+IkPA41tfjqqLTL
         7vEAOBa1yGHxw6czkWS1R54p8/DKiXtza3AtN5gJ2ITiqL2KS6qtIBCBxI0Q2XY4ajMt
         cZuo/QYv8fC373kXhPVg8zhXwUxgfvR4Lkg81LdX3b5SIgANY5ieiifNzecH6XVcMYI+
         wQwJArPUfgn7rPfCM0GA3fG9Ba4JqXdpbLHRh1TkY+QJKicrgNy934FZDpIkoy9cQf9E
         xVlz8qJb86usEmH2Cb3XEynOlSJMkeUkjHmNtQVyk6fjng+bumDnWgLqc7EN+O+vZEf9
         xAYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=AMi/MTaqb34EE3nZbzz7jC6ExXJBtfL069lufdH5xqQ=;
        b=DjG7c0wRaUTuPOlrno8QBK8mpjD+l70XuH+9uHAd2FxRGqYYaMIi8zrg7b0OkNkgzo
         LLj+pR+d4Z5jysjHpWAo0skvq0JZWZgYaANuhpLYpOjnOI1HT9LphEznE9zhWHXm5lsB
         23tvgPb42JRnygJht3VuNF+qvEGX1Rtgm1CLx1lcBDWEuzr0MVyow8wKAncBcDWPoWAT
         Tq4wUYoMcBePvJCZ8OeW0IvIKxGjLP/297+TYIMBC0V9LFA0ubwLW2nSOBXSFCPv62QT
         +W5FWcJwe9iYEyCx9Cboivr/ZWIrX7zJuFNPzvuX1S2t4bhzm6VtpYeQk2uTx3Ggfrzd
         f9hw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FLpjZsWQ;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 8si17408pfa.0.2017.09.14.23.38.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 23:38:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FLpjZsWQ;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id e69so817239pfg.4
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 23:38:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=AMi/MTaqb34EE3nZbzz7jC6ExXJBtfL069lufdH5xqQ=;
        b=FLpjZsWQRmPC43y2qGFgnVBfxQCWIzL77n0PFLX+id4YuBgN6JxKY6w8eqKSvK7+fN
         3+FbK4cjpIGqZKsQ9BtkM/gmjVo6xfzd/MTDcLRkQQnZsWCqrrS+hsI5G6olNS7m6L7a
         kjbCr0Oabz3JZmnzWX/bYlmXs8H24bwqKTfNMUcQV87BjP2qeezZA57t8afvP+v8Hk5S
         iU2S7tm7+PQIH8ZMpXCAgdKszBtIU+Jvh3gitrPiQf5RHgYW7my/oqQoFzasgDi4G/fW
         tWM8kGpt71Bih7269hpYKyPiljp8LL1hNvkC06Y9aB6a//aSV7lfaBAgQs+OHe44h8kL
         jZRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=AMi/MTaqb34EE3nZbzz7jC6ExXJBtfL069lufdH5xqQ=;
        b=StrcS7rG990M6AiS6Ida5DhhWzUiWN+opUIQ8HlZhcTPtOuvk1UFDeQWvGs0S/l+tv
         teIRyJvA5kkntIRozlcGZUkYDNJjZy7JuJMVjLq4p2ElVtQq5hFL4o8zw8hJ/YZ+pN7N
         xcQtLmG8O3GeE3i3y3j0mBz3SnsrA90On9qPFkmqv+YjkZk5xuYGPDeDDdl7pN7TKIZB
         HU1uoYY2aD3upwm/gVWf2JhNipRnvPNEtkBiZKCb9DQhS1VXMDOLpaHELVXXuvuiHx8D
         ODf17UUJUvkQ9e4V0dFcezQt7oFeouKkodaeobfNKf6c16Lc5k7BkESDBiVwVCjkzR4N
         AUNg==
X-Gm-Message-State: AHPjjUhNNwwSvbQy/6Af79QawLC1UfIr7pzB5iNPwysSd9NBF9NruuQ2
	qdclhwzC1vvlDg==
X-Google-Smtp-Source: ADKCNb5XJ606ZSWV/R7O4MFpuQdKmte/YGRPUY71+AE81fmi2ZcoNu0rpYiQLI5mGJg0lYZ05O26KA==
X-Received: by 10.84.132.2 with SMTP id 2mr26938659ple.381.1505457527565;
        Thu, 14 Sep 2017 23:38:47 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([171.78.243.118])
        by smtp.gmail.com with ESMTPSA id k195sm671967pgc.4.2017.09.14.23.38.46
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 14 Sep 2017 23:38:47 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v2 4/8] staging: lustre: ldlm: fix lines over 80 characters in ldlm_lock
Date: Fri, 15 Sep 2017 12:08:19 +0530
Message-Id: <ed18845e7c72b6af7630cba04fcfcea5b1d3991b.1505456961.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505456960.git.aastha.gupta4104@gmail.com>
References: <alpine.DEB.2.20.1709150814460.2287@hadrien>
 <cover.1505456960.git.aastha.gupta4104@gmail.com>
In-Reply-To: <cover.1505456960.git.aastha.gupta4104@gmail.com>
References: <cover.1505456960.git.aastha.gupta4104@gmail.com>

This patch fixes checkpatch.pl warning:
WARNING: line over 80 characters

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/lustre/lustre/ldlm/ldlm_lock.c | 33 +++++++++++++++++---------
 1 file changed, 22 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c b/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c
index b5d84f3..adfc0b4 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c
@@ -1035,7 +1035,8 @@ void ldlm_grant_lock(struct ldlm_lock *lock, struct list_head *work_list)
 		ldlm_extent_add_lock(res, lock);
 	} else if (res->lr_type == LDLM_FLOCK) {
 		/*
-		 * We should not add locks to granted list in the following cases:
+		 * We should not add locks to granted list in
+		 * the following cases:
 		 * - this is an UNLOCK but not a real lock;
 		 * - this is a TEST lock;
 		 * - this is a F_CANCELLK lock (async flock has req_mode == 0)
@@ -2051,13 +2052,16 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
 		libcfs_debug_vmsg2(msgdata, fmt, args,
 				   " ns: \?\? lock: %p/%#llx lrc: %d/%d,%d mode: %s/%s res: \?\? rrc=\?\? type: \?\?\? flags: %#llx nid: %s remote: %#llx expref: %d pid: %u timeout: %lu lvb_type: %d\n",
 				   lock,
-				   lock->l_handle.h_cookie, atomic_read(&lock->l_refc),
+				   lock->l_handle.h_cookie,
+				   atomic_read(&lock->l_refc),
 				   lock->l_readers, lock->l_writers,
 				   ldlm_lockname[lock->l_granted_mode],
 				   ldlm_lockname[lock->l_req_mode],
-				   lock->l_flags, nid, lock->l_remote_handle.cookie,
+				   lock->l_flags, nid,
+				   lock->l_remote_handle.cookie,
 				   exp ? atomic_read(&exp->exp_refcount) : -99,
-				   lock->l_pid, lock->l_callback_timeout, lock->l_lvb_type);
+				   lock->l_pid, lock->l_callback_timeout,
+				   lock->l_lvb_type);
 		va_end(args);
 		return;
 	}
@@ -2067,7 +2071,8 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
 		libcfs_debug_vmsg2(msgdata, fmt, args,
 				   " ns: %s lock: %p/%#llx lrc: %d/%d,%d mode: %s/%s res: " DLDLMRES " rrc: %d type: %s [%llu->%llu] (req %llu->%llu) flags: %#llx nid: %s remote: %#llx expref: %d pid: %u timeout: %lu lvb_type: %d\n",
 				   ldlm_lock_to_ns_name(lock), lock,
-				   lock->l_handle.h_cookie, atomic_read(&lock->l_refc),
+				   lock->l_handle.h_cookie,
+				   atomic_read(&lock->l_refc),
 				   lock->l_readers, lock->l_writers,
 				   ldlm_lockname[lock->l_granted_mode],
 				   ldlm_lockname[lock->l_req_mode],
@@ -2076,8 +2081,10 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
 				   ldlm_typename[resource->lr_type],
 				   lock->l_policy_data.l_extent.start,
 				   lock->l_policy_data.l_extent.end,
-				   lock->l_req_extent.start, lock->l_req_extent.end,
-				   lock->l_flags, nid, lock->l_remote_handle.cookie,
+				   lock->l_req_extent.start,
+				   lock->l_req_extent.end,
+				   lock->l_flags, nid,
+				   lock->l_remote_handle.cookie,
 				   exp ? atomic_read(&exp->exp_refcount) : -99,
 				   lock->l_pid, lock->l_callback_timeout,
 				   lock->l_lvb_type);
@@ -2087,7 +2094,8 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
 		libcfs_debug_vmsg2(msgdata, fmt, args,
 				   " ns: %s lock: %p/%#llx lrc: %d/%d,%d mode: %s/%s res: " DLDLMRES " rrc: %d type: %s pid: %d [%llu->%llu] flags: %#llx nid: %s remote: %#llx expref: %d pid: %u timeout: %lu\n",
 				   ldlm_lock_to_ns_name(lock), lock,
-				   lock->l_handle.h_cookie, atomic_read(&lock->l_refc),
+				   lock->l_handle.h_cookie,
+				   atomic_read(&lock->l_refc),
 				   lock->l_readers, lock->l_writers,
 				   ldlm_lockname[lock->l_granted_mode],
 				   ldlm_lockname[lock->l_req_mode],
@@ -2097,7 +2105,8 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
 				   lock->l_policy_data.l_flock.pid,
 				   lock->l_policy_data.l_flock.start,
 				   lock->l_policy_data.l_flock.end,
-				   lock->l_flags, nid, lock->l_remote_handle.cookie,
+				   lock->l_flags, nid,
+				   lock->l_remote_handle.cookie,
 				   exp ? atomic_read(&exp->exp_refcount) : -99,
 				   lock->l_pid, lock->l_callback_timeout);
 		break;
@@ -2115,7 +2124,8 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
 				   lock->l_policy_data.l_inodebits.bits,
 				   atomic_read(&resource->lr_refcount),
 				   ldlm_typename[resource->lr_type],
-				   lock->l_flags, nid, lock->l_remote_handle.cookie,
+				   lock->l_flags, nid,
+				   lock->l_remote_handle.cookie,
 				   exp ? atomic_read(&exp->exp_refcount) : -99,
 				   lock->l_pid, lock->l_callback_timeout,
 				   lock->l_lvb_type);
@@ -2133,7 +2143,8 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
 				   PLDLMRES(resource),
 				   atomic_read(&resource->lr_refcount),
 				   ldlm_typename[resource->lr_type],
-				   lock->l_flags, nid, lock->l_remote_handle.cookie,
+				   lock->l_flags, nid,
+				   lock->l_remote_handle.cookie,
 				   exp ? atomic_read(&exp->exp_refcount) : -99,
 				   lock->l_pid, lock->l_callback_timeout,
 				   lock->l_lvb_type);
-- 
2.7.4


