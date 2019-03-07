X-GM-THRID: 6665631422157422592
X-Received: by 2002:a2e:290:: with SMTP id y16mr662647lje.20.1551963254073;
        Thu, 07 Mar 2019 04:54:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:5c06:: with SMTP id q6ls687681ljb.9.gmail; Thu, 07 Mar
 2019 04:54:13 -0800 (PST)
X-Google-Smtp-Source: APXvYqysFUE8Mo1mMnPBZt8Unnh0wJfTnRO2EqaDaK1e8zRuVlXz2zRC/n4Gp4X+ejzWR+Azuq4j
X-Received: by 2002:a2e:253:: with SMTP id 80mr636158ljc.27.1551963253093;
        Thu, 07 Mar 2019 04:54:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551963253; cv=none;
        d=google.com; s=arc-20160816;
        b=ErDE09eDX5XAi/JmDLQmkvO6/PumEWHUvEXLHJGPG9IfwV3EopkN9J5fK5n5HD/3x7
         lcg5WP25Mh9XKAV47dANqw/1aDTnuSEjVadzIOOzhDHD4XGKUfNUHF6MJeSHhOZXyuXZ
         2/dfvAtmOk6j7+2Ja1KTcvq6zF1QVJAkU7SIrLlhTkEYKGQhwOEeHVqfs9KqgGCbL46J
         vfls0FBCaiLz+egguG93X/M6yA843XWBnOjOU8AaTUI5wWTLkArJEiBmDAtuli45iK+V
         Il9eFRP9cdV97dilJQJZ71gP6OUxscJGyXMGE+Z72Ex41ZNUO4oukDrfbMjp+UPl/C6f
         pMsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=MuO9eHI8YenwXSUKj/2AsQX7DJXtC576W3kRmLj4bpA=;
        b=BAvlcHKwkWj69TPYRos9Eh7h5WaeJPfA59smhKocr0L+WU4hyDKXyS/xkNaOQ/ccpd
         NYWMxfSh3CfiyOVyvoHUm5p0xMHaAswhhtLfxzQx+lCUmnVT2ZS2/2RFi+Hz8m32NWGA
         4UakVjpECcfBSBBe7pMrqssrSsICCCV9p3u8QJuq+peH0cmKfDEwQ+G7gMIUCly9igsR
         xBEkKB9aBslz7fe8LCmrB8fXVIANQt13dzNGrORYLZQqQ4t8GLSLUo3DqMy3623ZbsfO
         8NRaKN5mXrNkFceoH2VDPjVs3ZMMynrbqpe0m/l/9C44MZJHLaXnyrIGrSH5qPsdGep5
         +eQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MpvS78fZ;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::32e as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <daniela.mormocea@gmail.com>
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com. [2a00:1450:4864:20::32e])
        by gmr-mx.google.com with ESMTPS id m65si151973lfm.1.2019.03.07.04.54.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 04:54:13 -0800 (PST)
Received-SPF: pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::32e as permitted sender) client-ip=2a00:1450:4864:20::32e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MpvS78fZ;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::32e as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x32e.google.com with SMTP id y15so9166002wma.0
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Mar 2019 04:54:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=MuO9eHI8YenwXSUKj/2AsQX7DJXtC576W3kRmLj4bpA=;
        b=MpvS78fZ3ubKsYD9ysXHUU1Ja/KvoTfHG/y0GQAy4LBhl+kP7+lHDPY9NQnjtEqsC2
         jXonRp0YKiy7xwIy1c2HDGKp7KHBKalo/5CKVqX733zyeYn5pIwFdvpLjtwtmOfEj+Ii
         //rYSTOpgZeEZbyOoO0niFhEVK75Nr8htE6jXNRHqbRIYAxMJqW44Z2VUGAodvLN1S+s
         fyUASnkFObIJZ+6dP1ANG4f4tGAvrHMrpUt1g2MGURsURgvKdPRgv7feUY6ZQdUgr/xk
         82nzsqHYlLktPIIiQhQR7Pl6zCebiXlVNlkmjI+71XA4nKR6+5Bv8PvmvU179wrwKxNx
         rWFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=MuO9eHI8YenwXSUKj/2AsQX7DJXtC576W3kRmLj4bpA=;
        b=A4z7o9anMKUQniYq5YDesrdPvsm70PENOT6PO9UBGmWBPpzaljvaUg8IASimjGWOpm
         BXVbaLzRt3gsPWN0y0jTfJevdaeD7h/fKp7QpFxRUrXdnVVqlwhGktv2qBg9jNG3rFns
         AWvszOqDilVx+PLgLHFpQyU7S6EcxcaS5X3Ekk6brbU+WYPxXvUXZeiLENz1/eEiTMGr
         5dEgGThhstbZShYEBjTANW3D3NVhADwbe3RtZPyfTfuSKj2NjQtyeVt8FROGbK+e3UTV
         oviJvFmY96S5m1Ahnzk5ebN45w0I3apzsqHgd12dkqs14RQUcFAstOdL4jCJ94QYi7iD
         ykPQ==
X-Gm-Message-State: APjAAAVR3b2cSfVivPcL+MIPLKeZYPezgj6WucBopojqVoYqo2o42qT5
	hFAfed4lfECXhrHOb/LmsUg=
X-Received: by 2002:a7b:c8d8:: with SMTP id f24mr5786704wml.15.1551963252714;
        Thu, 07 Mar 2019 04:54:12 -0800 (PST)
Return-Path: <daniela.mormocea@gmail.com>
Received: from pthm ([141.85.233.104])
        by smtp.gmail.com with ESMTPSA id 93sm14171206wrh.15.2019.03.07.04.54.11
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 07 Mar 2019 04:54:12 -0800 (PST)
From: Daniela Mormocea <daniela.mormocea@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Daniela Mormocea <daniela.mormocea@gmail.com>
Subject: [PATCH] staging: rtl8712: Replace NULL comparisons
Date: Thu,  7 Mar 2019 14:54:09 +0200
Message-Id: <1551963249-12892-1-git-send-email-daniela.mormocea@gmail.com>
X-Mailer: git-send-email 2.7.4

Replace all NULL comparisons in the file
to get rid of checkpatch warnings

Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_recv.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index 5bf9070..4c3103e 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.c
+++ b/drivers/staging/rtl8712/rtl8712_recv.c
@@ -135,7 +135,7 @@ int r8712_free_recvframe(union recv_frame *precvframe,
 	spin_lock_irqsave(&pfree_recv_queue->lock, irqL);
 	list_del_init(&(precvframe->u.hdr.list));
 	list_add_tail(&(precvframe->u.hdr.list), &pfree_recv_queue->queue);
-	if (padapter != NULL) {
+	if (padapter) {
 		if (pfree_recv_queue == &precvpriv->free_recv_queue)
 			precvpriv->free_recvframe_cnt++;
 	}
@@ -273,7 +273,7 @@ union recv_frame *r8712_recvframe_chk_defrag(struct _adapter *padapter,
 		/* 0~(n-1) fragment frame
 		 * enqueue to defraf_g
 		 */
-		if (pdefrag_q != NULL) {
+		if (pdefrag_q) {
 			if (fragnum == 0) {
 				/*the first fragment*/
 				if (!list_empty(&pdefrag_q->queue)) {
@@ -299,7 +299,7 @@ union recv_frame *r8712_recvframe_chk_defrag(struct _adapter *padapter,
 		/* the last fragment frame
 		 * enqueue the last fragment
 		 */
-		if (pdefrag_q != NULL) {
+		if (pdefrag_q) {
 			phead = &pdefrag_q->queue;
 			list_add_tail(&pfhdr->list, phead);
 			/*call recvframe_defrag to defrag*/
@@ -313,7 +313,7 @@ union recv_frame *r8712_recvframe_chk_defrag(struct _adapter *padapter,
 			prtnframe = NULL;
 		}
 	}
-	if ((prtnframe != NULL) && (prtnframe->u.hdr.attrib.privacy)) {
+	if ((prtnframe) && (prtnframe->u.hdr.attrib.privacy)) {
 		/* after defrag we must check tkip mic code */
 		if (r8712_recvframe_chkmic(padapter, prtnframe) == _FAIL) {
 			r8712_free_recvframe(prtnframe, pfree_recv_queue);
@@ -889,7 +889,7 @@ static void process_link_qual(struct _adapter *padapter,
 	struct rx_pkt_attrib *pattrib;
 	struct smooth_rssi_data *sqd = &padapter->recvpriv.signal_qual_data;
 
-	if (prframe == NULL || padapter == NULL)
+	if (!prframe || !padapter)
 		return;
 	pattrib = &prframe->u.hdr.attrib;
 	if (pattrib->signal_qual != 0) {
-- 
2.7.4


