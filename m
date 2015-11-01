X-GM-THRID: 6212138041611386880
X-Received: by 10.112.63.165 with SMTP id h5mr3433804lbs.18.1446376098352;
        Sun, 01 Nov 2015 03:08:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.134.194 with SMTP id i185ls407528wmd.50.canary; Sun, 01 Nov
 2015 03:08:17 -0800 (PST)
X-Received: by 10.28.216.206 with SMTP id p197mr1290759wmg.3.1446376097828;
        Sun, 01 Nov 2015 03:08:17 -0800 (PST)
Return-Path: <brcnakalin@gmail.com>
Received: from mail-wm0-x22a.google.com (mail-wm0-x22a.google.com. [2a00:1450:400c:c09::22a])
        by gmr-mx.google.com with ESMTPS id l1si353596wmb.3.2015.11.01.03.08.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 03:08:17 -0800 (PST)
Received-SPF: pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c09::22a as permitted sender) client-ip=2a00:1450:400c:c09::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c09::22a as permitted sender) smtp.mailfrom=brcnakalin@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wm0-x22a.google.com with SMTP id g8so40209237wme.1
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Nov 2015 03:08:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=KIF0f3l6xyji4nQ8E7k4ixHKdYOwMcVUOujXLOYceeU=;
        b=MukvnjSqKNAuNiHw6P7OvergkfWEbt+A253vEoiBfx4OQqQGtBlI++j528xWQSrPiP
         JrmkZVbaH4flik42LP1p4/Yfn+4fWw52JIN8wVNnvKlb6N6+XZKbdUav45N7lIIsxkos
         FKOkbzRV9sngp3TXm7GfcmyubuajTe46kYpGcOJfJ0haQsmETIMEd4W/hpMPrtW9MmZF
         rgSrGlYtInJEphCpUC5mPpiOECl8vCV4TKyS+Aa8qLKl/7NzdbhdSl7TrCEl8SRHpJCZ
         MIUzBlbqkjClKde9xycqDgEXr80uqzHCNHP5UTyf9C3gPKQeG9sEW85q9movt66qTiVQ
         CUog==
X-Received: by 10.28.146.82 with SMTP id u79mr7232266wmd.96.1446376097697;
        Sun, 01 Nov 2015 03:08:17 -0800 (PST)
Return-Path: <brcnakalin@gmail.com>
Received: from localhost.localdomain ([78.191.81.47])
        by smtp.gmail.com with ESMTPSA id gl4sm16524374wjd.49.2015.11.01.03.08.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 01 Nov 2015 03:08:17 -0800 (PST)
From: Burcin Akalin <brcnakalin@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Burcin Akalin <brcnakalin@gmail.com>
Subject: [PATCH] staging: gdm72xx:Add space around '<<'
Date: Sun,  1 Nov 2015 14:08:08 +0300
Message-Id: <1446376088-9909-1-git-send-email-brcnakalin@gmail.com>
X-Mailer: git-send-email 1.9.1

Add space around operator '<<'. Problem found using
checkpatch.pl
CHECK: spaces preferred around that '<<' (ctx:VxV)

Signed-off-by: Burcin Akalin <brcnakalin@gmail.com>
---
 drivers/staging/gdm72xx/gdm_qos.c | 26 +++++++++++++-------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/gdm72xx/gdm_qos.c b/drivers/staging/gdm72xx/gdm_qos.c
index 6c5fae5..2b4ff58 100644
--- a/drivers/staging/gdm72xx/gdm_qos.c
+++ b/drivers/staging/gdm72xx/gdm_qos.c
@@ -171,13 +171,13 @@ static int chk_ipv4_rule(struct gdm_wimax_csr_s *csr, u8 *stream, u8 *port)
 	}
 
 	if (csr->classifier_rule_en & PROTOCOLSRCPORTRANGE) {
-		i = ((port[0]<<8) & 0xff00) + port[1];
+		i = ((port[0] << 8) & 0xff00) + port[1];
 		if ((i < csr->srcport_lo) || (i > csr->srcport_hi))
 			return 1;
 	}
 
 	if (csr->classifier_rule_en & PROTOCOLDSTPORTRANGE) {
-		i = ((port[2]<<8) & 0xff00) + port[3];
+		i = ((port[2] << 8) & 0xff00) + port[3];
 		if ((i < csr->dstport_lo) || (i > csr->dstport_hi))
 			return 1;
 	}
@@ -342,9 +342,9 @@ void gdm_recv_qos_hci_packet(void *nic_ptr, u8 *buf, int size)
 	if (sub_cmd_evt == QOS_REPORT) {
 		spin_lock_irqsave(&qcb->qos_lock, flags);
 		for (i = 0; i < qcb->qos_list_cnt; i++) {
-			sfid = ((buf[(i*5) + 6]<<24) & 0xff000000);
-			sfid += ((buf[(i*5) + 7]<<16) & 0xff0000);
-			sfid += ((buf[(i*5) + 8]<<8) & 0xff00);
+			sfid = ((buf[(i*5) + 6] << 24) & 0xff000000);
+			sfid += ((buf[(i*5) + 7] << 16) & 0xff0000);
+			sfid += ((buf[(i*5) + 8] << 8) & 0xff00);
 			sfid += (buf[(i*5) + 9]);
 			index = get_csr(qcb, sfid, 0);
 			if (index == -1) {
@@ -363,9 +363,9 @@ void gdm_recv_qos_hci_packet(void *nic_ptr, u8 *buf, int size)
 
 	/* sub_cmd_evt == QOS_ADD || sub_cmd_evt == QOS_CHANG_DEL */
 	pos = 6;
-	sfid = ((buf[pos++]<<24) & 0xff000000);
-	sfid += ((buf[pos++]<<16) & 0xff0000);
-	sfid += ((buf[pos++]<<8) & 0xff00);
+	sfid = ((buf[pos++] << 24) & 0xff000000);
+	sfid += ((buf[pos++] << 16) & 0xff0000);
+	sfid += ((buf[pos++] << 8) & 0xff00);
 	sfid += (buf[pos++]);
 
 	index = get_csr(qcb, sfid, 1);
@@ -382,7 +382,7 @@ void gdm_recv_qos_hci_packet(void *nic_ptr, u8 *buf, int size)
 
 		spin_lock_irqsave(&qcb->qos_lock, flags);
 		qcb->csr[index].sfid = sfid;
-		qcb->csr[index].classifier_rule_en = ((buf[pos++]<<8) & 0xff00);
+		qcb->csr[index].classifier_rule_en = ((buf[pos++] << 8) & 0xff00);
 		qcb->csr[index].classifier_rule_en += buf[pos++];
 		if (qcb->csr[index].classifier_rule_en == 0)
 			qcb->qos_null_idx = index;
@@ -406,13 +406,13 @@ void gdm_recv_qos_hci_packet(void *nic_ptr, u8 *buf, int size)
 		qcb->csr[index].ipdst_addr[1] = buf[pos++];
 		qcb->csr[index].ipdst_addr[2] = buf[pos++];
 		qcb->csr[index].ipdst_addr[3] = buf[pos++];
-		qcb->csr[index].srcport_lo = ((buf[pos++]<<8) & 0xff00);
+		qcb->csr[index].srcport_lo = ((buf[pos++] << 8) & 0xff00);
 		qcb->csr[index].srcport_lo += buf[pos++];
-		qcb->csr[index].srcport_hi = ((buf[pos++]<<8) & 0xff00);
+		qcb->csr[index].srcport_hi = ((buf[pos++] << 8) & 0xff00);
 		qcb->csr[index].srcport_hi += buf[pos++];
-		qcb->csr[index].dstport_lo = ((buf[pos++]<<8) & 0xff00);
+		qcb->csr[index].dstport_lo = ((buf[pos++] << 8) & 0xff00);
 		qcb->csr[index].dstport_lo += buf[pos++];
-		qcb->csr[index].dstport_hi = ((buf[pos++]<<8) & 0xff00);
+		qcb->csr[index].dstport_hi = ((buf[pos++] << 8) & 0xff00);
 		qcb->csr[index].dstport_hi += buf[pos++];
 
 		qcb->qos_limit_size = 254 / qcb->qos_list_cnt;
-- 
1.9.1


