X-GM-THRID: 6211547369470689280
X-Received: by 10.112.173.170 with SMTP id bl10mr3063188lbc.7.1446332228789;
        Sat, 31 Oct 2015 15:57:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.109.199 with SMTP id b68ls372415wmi.49.gmail; Sat, 31 Oct
 2015 15:57:08 -0700 (PDT)
X-Received: by 10.28.51.146 with SMTP id z140mr944698wmz.2.1446332228347;
        Sat, 31 Oct 2015 15:57:08 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from mail-wm0-x22c.google.com (mail-wm0-x22c.google.com. [2a00:1450:400c:c09::22c])
        by gmr-mx.google.com with ESMTPS id t72si281198wme.0.2015.10.31.15.57.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 15:57:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c09::22c as permitted sender) client-ip=2a00:1450:400c:c09::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c09::22c as permitted sender) smtp.mailfrom=brcnakalin@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by wmeg8 with SMTP id g8so34257090wme.0
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2015 15:57:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=U9RYDMXa5dnGinmPcgqFiVuijy8EmxJsISRH7GhuIEQ=;
        b=WqmBj9eLCYLtZDRLxilDILl91hEty4Ysrj68O9VCQp7qpK4OwPNFJ5LbsRhscHAwS8
         y5IWY0wij1FnD9G6obzw6sEwiOd5WxFUQvFrz1B8E4T/DMHHsUQnZVKPU4YA0Px8xyPG
         FYQpwXG6FcOW4u8QLHHGyXcXb68r9/ge/qvcRS1n5OpzOw9M5r+I35ftDbWzatBN3YKs
         tSqi9onyxN9gGbVceKreWm8c2d6GSFdAE0bY9ilK5xLFtGUJSpOpfmIb/idyjxFOlFLy
         4aA05D6o1aRWb2J+Yf+9mwBiWDXiwdX+cbGHFtGo94HLI49shCETSiQidJniFztkKeTT
         vrfA==
X-Received: by 10.28.10.142 with SMTP id 136mr5732444wmk.84.1446332228224;
        Sat, 31 Oct 2015 15:57:08 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from localhost.localdomain ([78.191.81.47])
        by smtp.gmail.com with ESMTPSA id r13sm9981804wmg.12.2015.10.31.15.57.07
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 31 Oct 2015 15:57:07 -0700 (PDT)
From: Burcin Akalin <brcnakalin@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Burcin Akalin <brcnakalin@gmail.com>
Subject: [PATCH 4/5] staging: gdm72xx: Add space around '/'
Date: Sun,  1 Nov 2015 01:56:51 +0300
Message-Id: <1446332212-10079-4-git-send-email-brcnakalin@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1446332212-10079-1-git-send-email-brcnakalin@gmail.com>
References: <1446332212-10079-1-git-send-email-brcnakalin@gmail.com>

Add space around operator '/'. Problem found using
checkpatch.pl
CHECK: spaces preferred around that '/' (ctx:VxV)

Signed-off-by: Burcin Akalin <brcnakalin@gmail.com>
---
 drivers/staging/gdm72xx/gdm_qos.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/gdm72xx/gdm_qos.c b/drivers/staging/gdm72xx/gdm_qos.c
index c7350db..182ffab 100644
--- a/drivers/staging/gdm72xx/gdm_qos.c
+++ b/drivers/staging/gdm72xx/gdm_qos.c
@@ -415,7 +415,7 @@ void gdm_recv_qos_hci_packet(void *nic_ptr, u8 *buf, int size)
 		qcb->csr[index].dstport_hi = ((buf[pos++]<<8) & 0xff00);
 		qcb->csr[index].dstport_hi += buf[pos++];
 
-		qcb->qos_limit_size = 254/qcb->qos_list_cnt;
+		qcb->qos_limit_size = 254 / qcb->qos_list_cnt;
 		spin_unlock_irqrestore(&qcb->qos_lock, flags);
 	} else if (sub_cmd_evt == QOS_CHANGE_DEL) {
 		netdev_dbg(nic->netdev, "QOS_CHANGE_DEL SFID = 0x%x, index=%d\n",
@@ -426,7 +426,7 @@ void gdm_recv_qos_hci_packet(void *nic_ptr, u8 *buf, int size)
 		spin_lock_irqsave(&qcb->qos_lock, flags);
 		qcb->csr[index].enabled = false;
 		qcb->qos_list_cnt--;
-		qcb->qos_limit_size = 254/qcb->qos_list_cnt;
+		qcb->qos_limit_size = 254 / qcb->qos_list_cnt;
 
 		list_for_each_entry_safe(entry, n, &qcb->qos_list[index],
 					 list) {
-- 
1.9.1


