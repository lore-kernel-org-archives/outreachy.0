X-GM-THRID: 6665631422157422592
X-Received: by 2002:a19:da19:: with SMTP id r25mr925873lfg.4.1551985472481;
        Thu, 07 Mar 2019 11:04:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:51b4:: with SMTP id f20ls651425lfk.3.gmail; Thu, 07 Mar
 2019 11:04:31 -0800 (PST)
X-Google-Smtp-Source: APXvYqw7x6A+PeipUt+TbFaXc2Nt8u9bGV0uUW3GPS9+iKvktp0+jU6tvPKs4E6UU+Mv0kkPH1FP
X-Received: by 2002:ac2:515d:: with SMTP id q29mr926076lfd.10.1551985471288;
        Thu, 07 Mar 2019 11:04:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551985471; cv=none;
        d=google.com; s=arc-20160816;
        b=HTTCmueRoB4G6p2i3ZPwfP/ABII8FiI6RV7cpJMTcl1CeRfhEHltVU4+QMzgOVpup6
         94S2WLIagd5TvWaq286jzxBxshaa2wWCq+fgp9xZcsuEmCJewTYhnzBTLG2lhVAS7z6A
         dhlF12NxhruDF7xuYn4nCBwW8tw0uWJIrKe7XIdNL+/WbPegBHOn6uX9HTs08aNso+Hn
         jbaUgxWKBqoLlLPaHrRhDpYvC6Yyd587r3PLpML4nVuaz7KpSA0/0Xbsj+dPYHrU3XKS
         UJ10Pc40pPfzvLJwbSyDGA4WfciazQOyFu+yTjWxCvSWemBZuRhvoCz+ZyqTcSwYDtcg
         MT5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=sQFaHC1+MFt6aWNF/UwwHdJ6JK+K9MAlp5IRbSGQifE=;
        b=IcfNr0gaGTUmz38fs6sxcqxCUGa2Lh6o2Cyzv6L7tqMXZVs1lxSfXLUazRSR9wsTZW
         zqwiSHffkksY0l0STlgr0mVBRsMGFlwMkAKlqYzH78WYpoFX06pAoQ0jyZe/8KbQjwpN
         49PsRJ+lO1yHwxsaX7br0YAmoLibiIfkA+GJuGltsP7elmn+gXGPXcrWhhN3xYKSGtEg
         BJl7VhmYimuvM5BWSUDyXPqo1Vw5OEBbds7fV8/y25ofX1VqZVm4YyYZdgoaVW03GMp7
         uxtF4T9UE8NTmGxrvdKFYv6Q1b9Z3WWyrLxruP6ML2bevQKCnhox8kEVs7LAvWyR9lNA
         ySaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nDlZpOVI;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <daniela.mormocea@gmail.com>
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id h25si347343lja.3.2019.03.07.11.04.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 11:04:31 -0800 (PST)
Received-SPF: pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nDlZpOVI;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x343.google.com with SMTP id q187so10429667wme.5
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Mar 2019 11:04:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=sQFaHC1+MFt6aWNF/UwwHdJ6JK+K9MAlp5IRbSGQifE=;
        b=nDlZpOVI+cjxhGxqTDtZKRneoJINFdnyXsaLzFLF6+SSUh5wRf3vlv2lHM/zFIBQhN
         CFVhkrpmZwEJct2GlSIOnNtfLqL5oG0VnNippJBnr9dTiyjQqvTqHCh4Fp69qAGa/qrp
         sXnh73Ye2dJ33P+zWCLUyKO8nsWbjFO66ZGd2ASqaOQA+mkB0HuRFRDTTRHlKY/bulk1
         uNXRQSE35KlVfFmJWLMiY0aGvON2u8g5O5wxZDgLx1gq18KHCtraMnn2HnNcw1e4cDsJ
         fP8uhnBVhBTs4ROzwvXoBkrpzuoWopOdnGMRjoEXQrfJ11AhMDQ7FBfWM7zsHtBHHkqF
         jLHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=sQFaHC1+MFt6aWNF/UwwHdJ6JK+K9MAlp5IRbSGQifE=;
        b=YCR5J+Dty4rdXtnDjYUOd17fdaseAz1uVfO17KZGj96U1hH3K7fgBF0XJjqZJbzQp6
         N6SK3tYY2BM3qnWsoTNDPIQMKpjuCStLgxZHpbsaIhfN/jKrUR9wY7UUTXPhwhXx0r3m
         ISeaUEduS9Q0iymTpspzept9927pM6JaBxqwjb8IyYvwB2llU6cRkMS7kZLxVBbooosf
         7LtTS/wI/a4lvpl8APRXH4HJ/lWZ14FXyo20cgKRq0ct4jA13RPG7vNziwqxzalOSnWf
         xE/VEDVvP9VkVmMb5xfP3+l72mal+5peswXEPmFp3OBwHL/pEog2a1hsizWRds7ansM5
         2/qQ==
X-Gm-Message-State: APjAAAXr4BsrDy9g9AbpgdY1abBHQTUtRz3Vy8FWOCzuqfFVLNymkh1U
	iTKwJlTyOxAwOQuJpWZ6rAotQjcCIgo=
X-Received: by 2002:a1c:a986:: with SMTP id s128mr7141021wme.44.1551985470536;
        Thu, 07 Mar 2019 11:04:30 -0800 (PST)
Return-Path: <daniela.mormocea@gmail.com>
Received: from pthm ([2a02:2f0a:b600:4700:9c19:34c6:5e3b:e162])
        by smtp.gmail.com with ESMTPSA id k20sm5677340wre.41.2019.03.07.11.04.29
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 07 Mar 2019 11:04:29 -0800 (PST)
From: Daniela Mormocea <daniela.mormocea@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Daniela Mormocea <daniela.mormocea@gmail.com>
Subject: [PATCH v2] staging: rtl8712:  Replace NULL comparisons
Date: Thu,  7 Mar 2019 21:04:26 +0200
Message-Id: <1551985466-16940-1-git-send-email-daniela.mormocea@gmail.com>
X-Mailer: git-send-email 2.7.4

Replace all NULL comparisons in the file
to get rid of checkpatch warnings

Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>
---

Changes in v2:
-remove unnecessary parenthesis around a variable

 drivers/staging/rtl8712/rtl8712_recv.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index 5bf9070..754436e 100644
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
+	if (prtnframe && (prtnframe->u.hdr.attrib.privacy)) {
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


