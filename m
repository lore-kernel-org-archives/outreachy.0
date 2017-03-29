X-GM-THRID: 6402799563919327232
X-Received: by 10.36.36.71 with SMTP id f68mr1298081ita.5.1490767943790;
        Tue, 28 Mar 2017 23:12:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.33.39 with SMTP id i36ls2150911otb.35.gmail; Tue, 28 Mar
 2017 23:12:23 -0700 (PDT)
X-Received: by 10.200.49.238 with SMTP id i43mr10139030qte.21.1490767943439;
        Tue, 28 Mar 2017 23:12:23 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id 2si961529pfz.1.2017.03.28.23.12.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Mar 2017 23:12:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 79so1376985pgf.0
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Mar 2017 23:12:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=+OvmMHjNLOsVc5obYGfl1HRt9uLMFD445MrxOQl2tO8=;
        b=aPP+sAI28NR4nba9xyjL2DbKPZDA45ORoShIG8GrHI3SaoKauwvA2HAelH6Y4bGiGC
         W53fzykgM86UEBmvLyB1Ox0sDs3uzql89/sdDKpcJRaVVEFZIUIQQkwfKj93sy/WkB+h
         r+NOqmb34eyPIibjo31kf9e5/ohWoLu6X/CMPzgj6MeTv9buKTGvhFP2UQNbqVgXOPH6
         HpVNFQgEyRYlz8sRKqm7nbDz7AHae1QYy//+Du8U2drr2hxembIxP34S6G11rcUUHBn0
         g1rF97jubOklBCyCdu+HbX3wdDD4C6QM14EriGsvv/84sJt+H7lVQFLMuEC7QH5bFtRV
         Zxdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=+OvmMHjNLOsVc5obYGfl1HRt9uLMFD445MrxOQl2tO8=;
        b=WMfJNgzKHaleF+cqqh5CCHixQB40iS4XDWgjGYhhs+Krz9RKDqoW4MGJAIA+GDFLE+
         VAgCWOpzV27xqWJdQVqP3HHoQz29NTGTA5eZmVX566SCtBik0AfhHectDk9tConSZZtj
         htXoZD11/Qdp7FuSmz9zTRepvLsYp+7gYyusKhCx5m/hLvwOS2eI1awCrX1LlueFHNZ9
         Jo5MqC/RNiZVlQ4GJzT188pO6QFB98AsN7EIjU4TIPQqMYGMWOco1znhY6jUnOUtCA1Y
         Shvhfljz3iwlv/gi523zAw52OpuXB/ba6rJ3rvEpjRC6FZbAUzkzaT3xEotic6mVq9G/
         S1Hw==
X-Gm-Message-State: AFeK/H2dDL0VFcSxnsuUy2MydTKf46svyE7xACg0nrUwK1M1pWf1+OQUJjYLOy5hpHZhow==
X-Received: by 10.98.90.66 with SMTP id o63mr13906431pfb.54.1490767943020;
        Tue, 28 Mar 2017 23:12:23 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id z19sm10843907pfd.81.2017.03.28.23.12.21
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Mar 2017 23:12:22 -0700 (PDT)
Date: Wed, 29 Mar 2017 11:42:19 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: netfilter-devel@vger.kernel.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] iptables: libiptc: Use list_{next/prev}_entry instead of
 list_entry
Message-ID: <20170329061219.GA6036@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch replace list_entry with list_{next/prev}_entry as it makes
the code more clear to read.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 libiptc/libiptc.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/libiptc/libiptc.c b/libiptc/libiptc.c
index a6e7057..5590cb8 100644
--- a/libiptc/libiptc.c
+++ b/libiptc/libiptc.c
@@ -1452,7 +1452,7 @@ static void iptcc_chain_iterator_advance(struct xtc_handle *handle)
 		handle->chain_iterator_cur = NULL;
 	else
 		handle->chain_iterator_cur =
-			list_entry(c->list.next, struct chain_head, list);
+			list_next_entry(c, list);
 }
 
 /* Iterator functions to run through the chains. */
@@ -1540,8 +1540,7 @@ TC_NEXT_RULE(const STRUCT_ENTRY *prev, struct xtc_handle *handle)
 		return NULL;
 	}
 
-	r = list_entry(handle->rule_iterator_cur->list.next,
-			struct rule_head, list);
+	r = list_next_entry(handle->rule_iterator_cur, list);
 
 	iptc_fn = TC_NEXT_RULE;
 
@@ -2013,8 +2012,8 @@ static int delete_entry(const IPT_CHAINLABEL chain, const STRUCT_ENTRY *origfw,
 		 * pointer will then point to real next node */
 		if (i == handle->rule_iterator_cur) {
 			handle->rule_iterator_cur =
-				list_entry(handle->rule_iterator_cur->list.prev,
-					   struct rule_head, list);
+				list_prev_entry(handle->rule_iterator_cur,
+						list);
 		}
 
 		c->num_rules--;
@@ -2078,8 +2077,7 @@ TC_DELETE_NUM_ENTRY(const IPT_CHAINLABEL chain,
 	 * point to real next node */
 	if (r == handle->rule_iterator_cur) {
 		handle->rule_iterator_cur =
-			list_entry(handle->rule_iterator_cur->list.prev,
-				   struct rule_head, list);
+			list_prev_entry(handle->rule_iterator_cur, list);
 	}
 
 	c->num_rules--;
-- 
2.7.4


