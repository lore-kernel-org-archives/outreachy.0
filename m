X-GM-THRID: 6465879632669310976
X-Received: by 10.176.94.151 with SMTP id y23mr14851659uag.80.1505454935619;
        Thu, 14 Sep 2017 22:55:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.37.2 with SMTP id l2ls5940426iol.33.gmail; Thu, 14 Sep
 2017 22:55:35 -0700 (PDT)
X-Received: by 10.129.166.81 with SMTP id d78mr15180366ywh.181.1505454935088;
        Thu, 14 Sep 2017 22:55:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505454935; cv=none;
        d=google.com; s=arc-20160816;
        b=dSbl/VAuI4XvZ/LCg7vodKLGYduZZAbi/oyk0jJGjkJsev8hrv+EwAvtH2A07OXYuC
         hmbiPppLtiheN4Ci/nBVUeAl0NPiubgMOCAnY8P8d/y/BGVqM2k1SUwSmI3gMCCiRQsR
         95YASocmUxlNf/A/AXaTI/1aDTVW4IUrpw7q3OiSJKY6dFe+PRAEoYbyS0i0xUeIjzEJ
         suFs5kZkPPVUiDNoCsgS+jaJ+l01QGZ9K46EuG3L+HMvp2Z//RJWGiV1df3GGdB/Jc5K
         zkMSRPqtwMKh+bSTxG2hShgyCdDNuJimWyfzBIX/tDDxiu6ZBlW3AEOauJ0uIc5KxTJV
         +uaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=AMi/MTaqb34EE3nZbzz7jC6ExXJBtfL069lufdH5xqQ=;
        b=kBC4PSAzhqC/i0JlsDUegkPSbXBzxYV0IkAtEFGn89RRy5pTrEnKaLTSfORSr/cNYO
         kuRCjx8moF2VZCQ8a2M4htE8osoQZrZerscPQpeC5Xso9nr7Q0lVPYiWGxOViRd86ee4
         D7/IZXZcXT4qbYI7F7uLstUoZuM6aHj86NNnc8owbQz8CBHOOrhsZwOo+9Vvs2uCt9F+
         UpBPW4X7q/xO0YBLgz6qoEh+KvUmH5tMNMp0XGoaXONcAVfDGAODHj20pOkQmB99fkge
         l2l1ioDIz4sYP7bEsFGqMifHbMtr4vyhV35Fh8DxZzVKNaoeqpqkje1X8vt6NMoSGeWD
         i/Ew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dzhvSPfU;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id g27si16403pfa.2.2017.09.14.22.55.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 22:55:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dzhvSPfU;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id g65so781138pfe.1
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 22:55:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=AMi/MTaqb34EE3nZbzz7jC6ExXJBtfL069lufdH5xqQ=;
        b=dzhvSPfU3S0J6uivY8rh5iqx+bHB1NXvcLZXbByjC7DJexNfoCVSNLPgAmIkoVg6Vu
         ORdTNZ8kLE3wv8LXpbvcuXc+d3yhQySOoUrRiSmyuCNW3lQ62Ix+tSfCFHabFJVszEPS
         gIrpXIkRafsvPGLDAI68Q4Fesv6Pr/fn+MJhO3NTv8VO0PyVMS6Frv81jlOxB8e8/oCC
         qNFLC/RP2EUfKD6kPGC2zUM5X8zEMGjouTWQIFI4tBLPmaYbFdto/nqOA1RsqpuaVLJy
         sdpVzOmeMUJQ6eek/A5drFyLIMW2DF1xaBONt7EB2a+AqikG8KXH4ffchxTrV4QIrDdc
         ihrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=AMi/MTaqb34EE3nZbzz7jC6ExXJBtfL069lufdH5xqQ=;
        b=TGI9aawwZgPWq39z0TcrimoGDY7XzogNVpb9yBQTdOU8rU1aQwu+bOAPdrxMu/+aQi
         TNbXrcKeTYKZAr7Cx7AfTyTxBHwLkFALDWAS6Vdu2ROYN0vFaimPmLU7z/PwSqYl/NnS
         gFqpJFWbtVXOhv6m7aTcXHhdcJBOsgom0WjG1n65CzBkz+S+la7Xym9st9s1zCR0kiNa
         5wNfl5uA7wKe5M7KybFq81fI+V7b5PSLLSibsQgyTS0YpKwcTTgQHZ5t5mYFMRiH4t6b
         YhDmOWjeD+J86rnsAC4VxF8MODRwcA+Wz/KpYxsNy5aCVMhHMFeQszM8TF7ny7j1fY7B
         9OfA==
X-Gm-Message-State: AHPjjUgh7Eghz9ffPVAwHlPc+Rnc/D/HJjNMbtPk8I/NxOUxsjeD6TY9
	+BcbVEgVeFugabTx1UQjqg==
X-Google-Smtp-Source: ADKCNb7lS0dx8VWGBAvSnIAnkWE6aThpowU27wLdZYanrWgn5ciuPRJIIkT+rwI3tveRIs6g0vasEg==
X-Received: by 10.98.67.134 with SMTP id l6mr23711333pfi.165.1505454934710;
        Thu, 14 Sep 2017 22:55:34 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([171.78.243.118])
        by smtp.gmail.com with ESMTPSA id x28sm368710pgc.91.2017.09.14.22.55.33
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 14 Sep 2017 22:55:34 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 4/8] staging: lustre: ldlm: fix lines over 80 characters
Date: Fri, 15 Sep 2017 11:25:04 +0530
Message-Id: <f135e603cfbbe87b7d4a3fdc7c50636849aa652d.1505454643.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505454643.git.aastha.gupta4104@gmail.com>
References: <cover.1505454643.git.aastha.gupta4104@gmail.com>
In-Reply-To: <cover.1505454643.git.aastha.gupta4104@gmail.com>
References: <cover.1505454643.git.aastha.gupta4104@gmail.com>

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


