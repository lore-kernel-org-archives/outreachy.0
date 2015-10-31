X-GM-THRID: 6211547369470689280
X-Received: by 10.112.63.165 with SMTP id h5mr3078432lbs.18.1446332225061;
        Sat, 31 Oct 2015 15:57:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.11.211 with SMTP id 202ls376673wml.29.canary; Sat, 31 Oct
 2015 15:57:04 -0700 (PDT)
X-Received: by 10.28.132.75 with SMTP id g72mr945797wmd.2.1446332224634;
        Sat, 31 Oct 2015 15:57:04 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from mail-wm0-x233.google.com (mail-wm0-x233.google.com. [2a00:1450:400c:c09::233])
        by gmr-mx.google.com with ESMTPS id l1si289267wmb.3.2015.10.31.15.57.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 15:57:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c09::233 as permitted sender) client-ip=2a00:1450:400c:c09::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c09::233 as permitted sender) smtp.mailfrom=brcnakalin@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wm0-x233.google.com with SMTP id c75so35221735wme.1
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2015 15:57:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=nNIid/MVH47gnJqM7ufDlg7+uhcst2F+xgHo90JB2MI=;
        b=S1C+HGHALCFdJwjtN36ZRcz8/FYgWlGHT/YDgIFn/cq/cDFB09PmL9lM+uBZ4USuID
         U9wZTft2/yfcHdTtoF/wxtkovykKiyMAbKPYc6T1OmulE7z4pg1FhCN/lMmrv/MmqRCu
         kpb8Q3A6lPnLFSZwCteidtb+8vbPFvcPz49Cw480mhnPZH8rE4mY2vWBzLc8DQ21aFhp
         6JPkYZk8l6cFQqNWKkvqTSNA4cMTqIwf0R5b2BuQBsh/yDWr6Fv9NpebWxdhxTpMD0Xi
         08QrQn7TUZlVCmvp97QtMpr7WnaypKyrTKqn0UF8u7SmK8gxyf/rr4qXc3nlnigfJr/J
         ynbQ==
X-Received: by 10.28.19.65 with SMTP id 62mr5539492wmt.6.1446332224517;
        Sat, 31 Oct 2015 15:57:04 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from localhost.localdomain ([78.191.81.47])
        by smtp.gmail.com with ESMTPSA id r13sm9981804wmg.12.2015.10.31.15.57.03
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 31 Oct 2015 15:57:03 -0700 (PDT)
From: Burcin Akalin <brcnakalin@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Burcin Akalin <brcnakalin@gmail.com>
Subject: [PATCH 2/5] staging: gdm72xx: Add space around '-'
Date: Sun,  1 Nov 2015 01:56:49 +0300
Message-Id: <1446332212-10079-2-git-send-email-brcnakalin@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1446332212-10079-1-git-send-email-brcnakalin@gmail.com>
References: <1446332212-10079-1-git-send-email-brcnakalin@gmail.com>

Add space around operator '-'. Problem found using
checkpatch.pl
CHECK: spaces preferred around that '-' (ctx:VxV)

Signed-off-by: Burcin Akalin <brcnakalin@gmail.com>
---
 drivers/staging/gdm72xx/gdm_qos.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/gdm72xx/gdm_qos.c b/drivers/staging/gdm72xx/gdm_qos.c
index e7cad02..9e87331 100644
--- a/drivers/staging/gdm72xx/gdm_qos.c
+++ b/drivers/staging/gdm72xx/gdm_qos.c
@@ -101,7 +101,7 @@ void gdm_qos_init(void *nic_ptr)
 	}
 
 	qcb->qos_list_cnt = 0;
-	qcb->qos_null_idx = QOS_MAX-1;
+	qcb->qos_null_idx = QOS_MAX - 1;
 	qcb->qos_limit_size = 255;
 
 	spin_lock_init(&qcb->qos_lock);
@@ -128,7 +128,7 @@ void gdm_qos_release_list(void *nic_ptr)
 	}
 
 	qcb->qos_list_cnt = 0;
-	qcb->qos_null_idx = QOS_MAX-1;
+	qcb->qos_null_idx = QOS_MAX - 1;
 
 	for (i = 0; i < QOS_MAX; i++) {
 		list_for_each_entry_safe(entry, n, &qcb->qos_list[i], list) {
-- 
1.9.1


