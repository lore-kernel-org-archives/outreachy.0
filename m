X-GM-THRID: 4525053181952
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,253b09dbad964a54
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.182.201 with SMTP id eg9mr829278wic.3.1425081521420;
        Fri, 27 Feb 2015 15:58:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.88.84 with SMTP id be20ls259765lab.89.gmail; Fri, 27 Feb
 2015 15:58:40 -0800 (PST)
X-Received: by 10.112.131.106 with SMTP id ol10mr2458381lbb.20.1425081520633;
        Fri, 27 Feb 2015 15:58:40 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-we0-x22c.google.com (mail-we0-x22c.google.com. [2a00:1450:400c:c03::22c])
        by gmr-mx.google.com with ESMTPS id ta1si213994wic.1.2015.02.27.15.58.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 15:58:40 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c03::22c as permitted sender) client-ip=2a00:1450:400c:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c03::22c as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesp10 with SMTP id p10so21106179wes.12
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 15:58:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=cZFA07MArLL1ypuMokxUrRmfLcfA++abxnPm9dOk2WI=;
        b=MBwpjfk0lGxhU7q+8X0Qo4gM5maOzsNl9cmlMwlYfy6BhGC8ZWOUibkIeDo9V9BpbU
         BFcRpTgG2VHVMI8ptDF+47ccXW4iIkrgwKTTN9fJnTJ4vWHi3Gdxt6lzd6pS47b3emXp
         7bxjUsYZJvg1I2QBMEg5kIEC8yvqH8aJxA1MmnnQT+QB39RGmfCN0ld8DHv8msz70/kS
         0tj1gVSajuRf6h40HTWAnU+9sIQrf2sj966i1iQ4llWJuhL/j55B+qvC6aevQmWpFDy+
         k2ldwky8f3Ms5mvyFCXDl+bjjn1+jAn4RhjzBUSmlxsZIClkSVVi1kr+E4YsBQeQu+q8
         VuDw==
X-Received: by 10.194.110.69 with SMTP id hy5mr33561792wjb.121.1425081520524;
        Fri, 27 Feb 2015 15:58:40 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([78.178.131.202])
        by mx.google.com with ESMTPSA id dn7sm4870379wid.12.2015.02.27.15.58.39
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 27 Feb 2015 15:58:39 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: lustre: Add blank line after declarations
Date: Sat, 28 Feb 2015 01:58:32 +0200
Message-Id: <1425081512-4852-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

The following patch fixes the checkpatch.pl warning:
drivers/staging/lustre/lustre/ptlrpc/pinger.c WARNING: Missing a
blank line after declarations

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/lustre/lustre/ptlrpc/pinger.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/pinger.c b/drivers/staging/lustre/lustre/ptlrpc/pinger.c
index 340d98a..5a459c2 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/pinger.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/pinger.c
@@ -113,6 +113,7 @@ int ptlrpc_ping(struct obd_import *imp)
 void ptlrpc_update_next_ping(struct obd_import *imp, int soon)
 {
 	int time = soon ? PING_INTERVAL_SHORT : PING_INTERVAL;
+
 	if (imp->imp_state == LUSTRE_IMP_DISCON) {
 		int dtime = max_t(int, CONNECTION_SWITCH_MIN,
 				  AT_OFF ? 0 :
@@ -150,6 +151,7 @@ long pinger_check_timeout(unsigned long time)
 	mutex_lock(&pinger_mutex);
 	list_for_each_entry(item, &timeout_list, ti_chain) {
 		int ti_timeout = item->ti_timeout;
+
 		if (timeout > ti_timeout)
 			timeout = ti_timeout;
 		break;
-- 
1.9.1


