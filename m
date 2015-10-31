X-GM-THRID: 6211547369470689280
X-Received: by 10.112.151.9 with SMTP id um9mr3029174lbb.19.1446332222979;
        Sat, 31 Oct 2015 15:57:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.212.17 with SMTP id l17ls350439wmg.47.gmail; Sat, 31 Oct
 2015 15:57:02 -0700 (PDT)
X-Received: by 10.194.248.131 with SMTP id ym3mr3031515wjc.7.1446332222389;
        Sat, 31 Oct 2015 15:57:02 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from mail-wm0-x22a.google.com (mail-wm0-x22a.google.com. [2a00:1450:400c:c09::22a])
        by gmr-mx.google.com with ESMTPS id g9si286074wmd.2.2015.10.31.15.57.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 15:57:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c09::22a as permitted sender) client-ip=2a00:1450:400c:c09::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c09::22a as permitted sender) smtp.mailfrom=brcnakalin@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wm0-x22a.google.com with SMTP id g8so34993653wme.1
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2015 15:57:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=aWUWrkjafRewi2CPv6h2WVbIyS+PLwCZjGU6wVOLrD8=;
        b=chvdbdpqAwes4BsSKuxKAUQsRbjJAzYZPByhqO9/RWoqwDDQk2biY2E6dMzQCh17h+
         f5oaAwd/EEkCJoavrtJWKc8Cekfp5uCupz44XQ/ZJXi4ehhLmx8PtW7wD8S6zSrHy1VI
         bP0NTpOzOuQWPGqhQAulFkYSLaHumEaufKTeLIv1pEPtBIJEhHhFIoeloNvY4MoseVgQ
         iTtwrM3+uTkPQB0EoJLB1To1A7MIlCVf/AQwKd558TkTvQXXMcyURNgOUG6j/03OM8GC
         /1YRMVayWmRtAaMbCGJe1sjqX6a0+aQ0iBRtpVVeXMOIj0shHKzkiTE1e/ZR7bp1nuIb
         DDRA==
X-Received: by 10.28.212.18 with SMTP id l18mr5895618wmg.93.1446332222266;
        Sat, 31 Oct 2015 15:57:02 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from localhost.localdomain ([78.191.81.47])
        by smtp.gmail.com with ESMTPSA id r13sm9981804wmg.12.2015.10.31.15.57.00
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 31 Oct 2015 15:57:01 -0700 (PDT)
From: Burcin Akalin <brcnakalin@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Burcin Akalin <brcnakalin@gmail.com>
Subject: [PATCH 1/5] staging: gdm72xx: Add space around '&'
Date: Sun,  1 Nov 2015 01:56:48 +0300
Message-Id: <1446332212-10079-1-git-send-email-brcnakalin@gmail.com>
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


