X-GM-THRID: 6211547369470689280
X-Received: by 10.28.145.213 with SMTP id t204mr857791wmd.0.1446238572548;
        Fri, 30 Oct 2015 13:56:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.141.205 with SMTP id p196ls215231wmd.45.canary; Fri, 30 Oct
 2015 13:56:12 -0700 (PDT)
X-Received: by 10.28.132.75 with SMTP id g72mr54055wmd.2.1446238572079;
        Fri, 30 Oct 2015 13:56:12 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from mail-wm0-x236.google.com (mail-wm0-x236.google.com. [2a00:1450:400c:c09::236])
        by gmr-mx.google.com with ESMTPS id t18si148877wme.0.2015.10.30.13.56.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 13:56:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c09::236 as permitted sender) client-ip=2a00:1450:400c:c09::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c09::236 as permitted sender) smtp.mailfrom=brcnakalin@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wm0-x236.google.com with SMTP id f134so20637976wmf.0
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Oct 2015 13:56:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=aWUWrkjafRewi2CPv6h2WVbIyS+PLwCZjGU6wVOLrD8=;
        b=g8SsZAC1xilb3u109Lm8BKELbbvy5UHZ4mUGnvSzBCWvyLwsQF6VDkHDC63O1x1d0d
         4uRI8iZ4WMtEDtzLEnHdO3SpKAVSYO4c0Ox14MPU0D4QZHDiMi/PM6P/PZAXaKfHbc4F
         61e1Ow1FT6pc/HvuSwtUpo76Cx8lyuT+6byjuIU+FZRkV+VWDLW69z89NP6gyV24D2WB
         +WLwsleAoCjwVw63XR2BO0RWzgyd4GUR6HWnPoFKN+CuYhX3r0H37WfNd+5/y8P184i8
         bm1hNwtv3iigsq+LbzH2FxfKb5OCd7XMYX/WaeVpaugmtxbOs9SLkeN4Sl1pU+Sx3zVb
         ZemA==
X-Received: by 10.28.170.19 with SMTP id t19mr203781wme.65.1446238571933;
        Fri, 30 Oct 2015 13:56:11 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from localhost.localdomain ([78.182.227.7])
        by smtp.gmail.com with ESMTPSA id 79sm4634972wmf.13.2015.10.30.13.56.10
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 30 Oct 2015 13:56:11 -0700 (PDT)
From: Burcin Akalin <brcnakalin@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Burcin Akalin <brcnakalin@gmail.com>
Subject: [PATCH] staging: gdm72xx: Add space around '&'
Date: Fri, 30 Oct 2015 23:55:05 +0300
Message-Id: <1446238505-4379-1-git-send-email-brcnakalin@gmail.com>
X-Mailer: git-send-email 1.9.1

Add space around operator '&'. Problem found using
checkpatch.pl
CHECK: spaces preferred around that '&' (ctx:VxV)

Signed-off-by: Burcin Akalin <brcnakalin@gmail.com>
---
 drivers/staging/gdm72xx/gdm_qos.c | 40 +++++++++++++++++++--------------------
 1 file changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/gdm72xx/gdm_qos.c b/drivers/staging/gdm72xx/gdm_qos.c
index 72c0f7ef..e7cad02 100644
--- a/drivers/staging/gdm72xx/gdm_qos.c
+++ b/drivers/staging/gdm72xx/gdm_qos.c
@@ -143,18 +143,18 @@ static int chk_ipv4_rule(struct gdm_wimax_csr_s *csr, u8 *stream, u8 *port)
 {
 	int i;
 
-	if (csr->classifier_rule_en&IPTYPEOFSERVICE) {
+	if (csr->classifier_rule_en & IPTYPEOFSERVICE) {
 		if (((stream[1] & csr->ip2s_mask) < csr->ip2s_lo) ||
 		    ((stream[1] & csr->ip2s_mask) > csr->ip2s_hi))
 			return 1;
 	}
 
-	if (csr->classifier_rule_en&PROTOCOL) {
+	if (csr->classifier_rule_en & PROTOCOL) {
 		if (stream[9] != csr->protocol)
 			return 1;
 	}
 
-	if (csr->classifier_rule_en&IPMASKEDSRCADDRESS) {
+	if (csr->classifier_rule_en & IPMASKEDSRCADDRESS) {
 		for (i = 0; i < 4; i++) {
 			if ((stream[12 + i] & csr->ipsrc_addrmask[i]) !=
 			(csr->ipsrc_addr[i] & csr->ipsrc_addrmask[i]))
@@ -162,7 +162,7 @@ static int chk_ipv4_rule(struct gdm_wimax_csr_s *csr, u8 *stream, u8 *port)
 		}
 	}
 
-	if (csr->classifier_rule_en&IPMASKEDDSTADDRESS) {
+	if (csr->classifier_rule_en & IPMASKEDDSTADDRESS) {
 		for (i = 0; i < 4; i++) {
 			if ((stream[16 + i] & csr->ipdst_addrmask[i]) !=
 			(csr->ipdst_addr[i] & csr->ipdst_addrmask[i]))
@@ -170,14 +170,14 @@ static int chk_ipv4_rule(struct gdm_wimax_csr_s *csr, u8 *stream, u8 *port)
 		}
 	}
 
-	if (csr->classifier_rule_en&PROTOCOLSRCPORTRANGE) {
-		i = ((port[0]<<8)&0xff00)+port[1];
+	if (csr->classifier_rule_en & PROTOCOLSRCPORTRANGE) {
+		i = ((port[0]<<8) & 0xff00)+port[1];
 		if ((i < csr->srcport_lo) || (i > csr->srcport_hi))
 			return 1;
 	}
 
-	if (csr->classifier_rule_en&PROTOCOLDSTPORTRANGE) {
-		i = ((port[2]<<8)&0xff00)+port[3];
+	if (csr->classifier_rule_en & PROTOCOLDSTPORTRANGE) {
+		i = ((port[2]<<8) & 0xff00)+port[3];
 		if ((i < csr->dstport_lo) || (i > csr->dstport_hi))
 			return 1;
 	}
@@ -193,7 +193,7 @@ static int get_qos_index(struct nic *nic, u8 *iph, u8 *tcpudph)
 	if (!iph || !tcpudph)
 		return -1;
 
-	ip_ver = (iph[0]>>4)&0xf;
+	ip_ver = (iph[0]>>4) & 0xf;
 
 	if (ip_ver != 4)
 		return -1;
@@ -342,9 +342,9 @@ void gdm_recv_qos_hci_packet(void *nic_ptr, u8 *buf, int size)
 	if (sub_cmd_evt == QOS_REPORT) {
 		spin_lock_irqsave(&qcb->qos_lock, flags);
 		for (i = 0; i < qcb->qos_list_cnt; i++) {
-			sfid = ((buf[(i*5)+6]<<24)&0xff000000);
-			sfid += ((buf[(i*5)+7]<<16)&0xff0000);
-			sfid += ((buf[(i*5)+8]<<8)&0xff00);
+			sfid = ((buf[(i*5)+6]<<24) & 0xff000000);
+			sfid += ((buf[(i*5)+7]<<16) & 0xff0000);
+			sfid += ((buf[(i*5)+8]<<8) & 0xff00);
 			sfid += (buf[(i*5)+9]);
 			index = get_csr(qcb, sfid, 0);
 			if (index == -1) {
@@ -363,9 +363,9 @@ void gdm_recv_qos_hci_packet(void *nic_ptr, u8 *buf, int size)
 
 	/* sub_cmd_evt == QOS_ADD || sub_cmd_evt == QOS_CHANG_DEL */
 	pos = 6;
-	sfid = ((buf[pos++]<<24)&0xff000000);
-	sfid += ((buf[pos++]<<16)&0xff0000);
-	sfid += ((buf[pos++]<<8)&0xff00);
+	sfid = ((buf[pos++]<<24) & 0xff000000);
+	sfid += ((buf[pos++]<<16) & 0xff0000);
+	sfid += ((buf[pos++]<<8) & 0xff00);
 	sfid += (buf[pos++]);
 
 	index = get_csr(qcb, sfid, 1);
@@ -382,7 +382,7 @@ void gdm_recv_qos_hci_packet(void *nic_ptr, u8 *buf, int size)
 
 		spin_lock_irqsave(&qcb->qos_lock, flags);
 		qcb->csr[index].sfid = sfid;
-		qcb->csr[index].classifier_rule_en = ((buf[pos++]<<8)&0xff00);
+		qcb->csr[index].classifier_rule_en = ((buf[pos++]<<8) & 0xff00);
 		qcb->csr[index].classifier_rule_en += buf[pos++];
 		if (qcb->csr[index].classifier_rule_en == 0)
 			qcb->qos_null_idx = index;
@@ -406,13 +406,13 @@ void gdm_recv_qos_hci_packet(void *nic_ptr, u8 *buf, int size)
 		qcb->csr[index].ipdst_addr[1] = buf[pos++];
 		qcb->csr[index].ipdst_addr[2] = buf[pos++];
 		qcb->csr[index].ipdst_addr[3] = buf[pos++];
-		qcb->csr[index].srcport_lo = ((buf[pos++]<<8)&0xff00);
+		qcb->csr[index].srcport_lo = ((buf[pos++]<<8) & 0xff00);
 		qcb->csr[index].srcport_lo += buf[pos++];
-		qcb->csr[index].srcport_hi = ((buf[pos++]<<8)&0xff00);
+		qcb->csr[index].srcport_hi = ((buf[pos++]<<8) & 0xff00);
 		qcb->csr[index].srcport_hi += buf[pos++];
-		qcb->csr[index].dstport_lo = ((buf[pos++]<<8)&0xff00);
+		qcb->csr[index].dstport_lo = ((buf[pos++]<<8) & 0xff00);
 		qcb->csr[index].dstport_lo += buf[pos++];
-		qcb->csr[index].dstport_hi = ((buf[pos++]<<8)&0xff00);
+		qcb->csr[index].dstport_hi = ((buf[pos++]<<8) & 0xff00);
 		qcb->csr[index].dstport_hi += buf[pos++];
 
 		qcb->qos_limit_size = 254/qcb->qos_list_cnt;
-- 
1.9.1


