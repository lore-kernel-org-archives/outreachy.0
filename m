X-GM-THRID: 6211547369470689280
X-Received: by 10.28.170.75 with SMTP id t72mr936416wme.5.1446332227424;
        Sat, 31 Oct 2015 15:57:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.31.8 with SMTP id f8ls336008lff.31.gmail; Sat, 31 Oct 2015
 15:57:06 -0700 (PDT)
X-Received: by 10.112.147.7 with SMTP id tg7mr3075030lbb.16.1446332226576;
        Sat, 31 Oct 2015 15:57:06 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from mail-wm0-x229.google.com (mail-wm0-x229.google.com. [2a00:1450:400c:c09::229])
        by gmr-mx.google.com with ESMTPS id l1si276140wmb.1.2015.10.31.15.57.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 15:57:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c09::229 as permitted sender) client-ip=2a00:1450:400c:c09::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c09::229 as permitted sender) smtp.mailfrom=brcnakalin@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wm0-x229.google.com with SMTP id l128so35462238wml.0
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2015 15:57:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Ry4IdTypgIySMHBw/3M/vTIPhe2v3HjSSBJBBNUB/3U=;
        b=pNvSR3POwwelcR/3qUCOpFIp6aB6s2G3D6AgUBOj6mzsi/fS3UrmtHJTw/PGZ76O0m
         vSpLgYNFhPUGAUbEXa9FXcs69PF3cL3gpzcSr6vSzPkHSDSKWU+vP++qhEtTsbOuy1+/
         z0FAYAf9OpO8wNmk0icy8MuOWMVPuOKw1ybvJpxU4CM7pSBJVlwAZgtBCD33T5Z6A5+W
         HTT2LGwAaKdFEpfDV3E10wPutHEfzlqNc1tUiYrhoxmKi8Ico3tLIR3dQNPS1kFiOvPJ
         xEJXhkpQmg4dutX/x71muzNS3gFshw7INjmfIVt1DvRT89wAwpg7dSEHPrDiIvsfNf14
         DIww==
X-Received: by 10.28.145.134 with SMTP id t128mr5124133wmd.64.1446332226437;
        Sat, 31 Oct 2015 15:57:06 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from localhost.localdomain ([78.191.81.47])
        by smtp.gmail.com with ESMTPSA id r13sm9981804wmg.12.2015.10.31.15.57.05
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 31 Oct 2015 15:57:06 -0700 (PDT)
From: Burcin Akalin <brcnakalin@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Burcin Akalin <brcnakalin@gmail.com>
Subject: [PATCH 3/5] staging: gdm72xx: Add space around '+'
Date: Sun,  1 Nov 2015 01:56:50 +0300
Message-Id: <1446332212-10079-3-git-send-email-brcnakalin@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1446332212-10079-1-git-send-email-brcnakalin@gmail.com>
References: <1446332212-10079-1-git-send-email-brcnakalin@gmail.com>

Add space around operator '+'. Problem found using
checkpatch.pl
CHECK: spaces preferred around that '+' (ctx:VxV)

Signed-off-by: Burcin Akalin <brcnakalin@gmail.com>
---
 drivers/staging/gdm72xx/gdm_qos.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/gdm72xx/gdm_qos.c b/drivers/staging/gdm72xx/gdm_qos.c
index 9e87331..c7350db 100644
--- a/drivers/staging/gdm72xx/gdm_qos.c
+++ b/drivers/staging/gdm72xx/gdm_qos.c
@@ -171,13 +171,13 @@ static int chk_ipv4_rule(struct gdm_wimax_csr_s *csr, u8 *stream, u8 *port)
 	}
 
 	if (csr->classifier_rule_en & PROTOCOLSRCPORTRANGE) {
-		i = ((port[0]<<8) & 0xff00)+port[1];
+		i = ((port[0]<<8) & 0xff00) + port[1];
 		if ((i < csr->srcport_lo) || (i > csr->srcport_hi))
 			return 1;
 	}
 
 	if (csr->classifier_rule_en & PROTOCOLDSTPORTRANGE) {
-		i = ((port[2]<<8) & 0xff00)+port[3];
+		i = ((port[2]<<8) & 0xff00) + port[3];
 		if ((i < csr->dstport_lo) || (i > csr->dstport_hi))
 			return 1;
 	}
@@ -342,17 +342,17 @@ void gdm_recv_qos_hci_packet(void *nic_ptr, u8 *buf, int size)
 	if (sub_cmd_evt == QOS_REPORT) {
 		spin_lock_irqsave(&qcb->qos_lock, flags);
 		for (i = 0; i < qcb->qos_list_cnt; i++) {
-			sfid = ((buf[(i*5)+6]<<24) & 0xff000000);
-			sfid += ((buf[(i*5)+7]<<16) & 0xff0000);
-			sfid += ((buf[(i*5)+8]<<8) & 0xff00);
-			sfid += (buf[(i*5)+9]);
+			sfid = ((buf[(i*5) + 6]<<24) & 0xff000000);
+			sfid += ((buf[(i*5) + 7]<<16) & 0xff0000);
+			sfid += ((buf[(i*5) + 8]<<8) & 0xff00);
+			sfid += (buf[(i*5) + 9]);
 			index = get_csr(qcb, sfid, 0);
 			if (index == -1) {
 				spin_unlock_irqrestore(&qcb->qos_lock, flags);
 				netdev_err(nic->netdev, "QoS ERROR: No SF\n");
 				return;
 			}
-			qcb->csr[index].qos_buf_count = buf[(i*5)+10];
+			qcb->csr[index].qos_buf_count = buf[(i*5) + 10];
 		}
 
 		extract_qos_list(nic, &send_list);
-- 
1.9.1


