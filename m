X-GM-THRID: 6885771919120924672
X-Received: by 2002:a05:651c:1b6:: with SMTP id c22mr1788237ljn.447.1603218707136;
        Tue, 20 Oct 2020 11:31:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8848:: with SMTP id z8ls549560ljj.5.gmail; Tue, 20 Oct
 2020 11:31:45 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwLSFn07Of2ZyfAB4/MfRRuGDjwhJRoy1KWhQ+In9MRJuU67ZfgxzshYBUWeI88P65PB1AV
X-Received: by 2002:a2e:b610:: with SMTP id r16mr1649575ljn.145.1603218704953;
        Tue, 20 Oct 2020 11:31:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603218704; cv=none;
        d=google.com; s=arc-20160816;
        b=Stji21t2CxnUGyDW1FcOtVjs/tLCyTKUAJV+FGoRxn+4TqkihaEtBXe12VLLd5jVmH
         z98qXPn6FyAhqgxT3P0De6br4nCKtQA+o54thji9a8sXM/6saWXhgwmAiCRCj5su5Wnn
         rzunWYthmmI5DB18bdHTS4jeCSl4j6DSQXA2gpooByqsIxvu/Iid9UScWBlMXuZTgEan
         3nl0vYTUQNjPOoobPVSkaicQYVbxshOi9jyXSI0w4lvQUAmOdr0gLPgS+Y85eh6jDWuX
         FpEe6JZCrTmk1jy/gUm7EThjx4FfzVCh4Ta2Rr/R2hkom67VsMJZqWBL8u9975/nOaeW
         wk3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=8uZmMWoxJ+ESOx4QO8U31N91sDEtXFM9L3dNKelT0yI=;
        b=JlSDxGwk1ogoe1xqbYbtIHd0Yy36zThMTHpji+sEfV+5sRsP2PBzFBquxRnFlPoROn
         0I7ReyhcCbxGDJHJe5Dt4cJqxphiX/SOmqgKXYkc4+g5P5m1ZgCmIXi5kAbxUBUgEL0V
         hQXi22Z/+nREmSPOvmsuG40MnSHRuAmk39ks73MyXmAQNTjG9i5/dRqzvL2x2xNUwgWF
         lxMU3YwNeA+KIbQPzUVYyTmRZq8dkOcGwAVx0ydMOTrgr5atMv+4GKo+S3N6cMH7JnjT
         da8fW2tGWgzo0WScM+yqIpCzg5HuT9nd6mcaxXfaGKa4vQs/ccjbkVfX2qUywIeJCk5K
         /0ww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KtIM9Wy1;
       spf=pass (google.com: domain of eafanasova@gmail.com designates 2a00:1450:4864:20::12a as permitted sender) smtp.mailfrom=eafanasova@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <eafanasova@gmail.com>
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com. [2a00:1450:4864:20::12a])
        by gmr-mx.google.com with ESMTPS id q11si51886lfo.8.2020.10.20.11.31.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Oct 2020 11:31:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of eafanasova@gmail.com designates 2a00:1450:4864:20::12a as permitted sender) client-ip=2a00:1450:4864:20::12a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KtIM9Wy1;
       spf=pass (google.com: domain of eafanasova@gmail.com designates 2a00:1450:4864:20::12a as permitted sender) smtp.mailfrom=eafanasova@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x12a.google.com with SMTP id a7so3311879lfk.9
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Oct 2020 11:31:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8uZmMWoxJ+ESOx4QO8U31N91sDEtXFM9L3dNKelT0yI=;
        b=KtIM9Wy1lTzehPSYtqklxSeSWtKgEabSZyuf5GRRcqzedm1qDTWSPXM7lExb0kxZCo
         WN5oV+SUT9dxiDmntyU6W/sCaMuvOOvBCdKvn925Hc8+HTv3Ruz5by0B6BHC2o28uZr7
         DmMjTBujTcvuS4T+2Hk3MakN0lrKJR6WeXSyjn/qbrdl0ZnjNh9gFFiCFNgZmMhZX1ZX
         wmBFx+zjLh22r7D9xfUBEXIkW6m21O55cuexoEliqNa1Tk94UBYCSZ9HAdd1qZhPWvbA
         jpml1PwYWvc4ooFjZN5/XbxeyiR3FedTAZ/+rbN2YFrtNeN8sZ8yLzOOCqiOWywosXWY
         2FOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8uZmMWoxJ+ESOx4QO8U31N91sDEtXFM9L3dNKelT0yI=;
        b=iVC11HbGi+LhyWuqjcc21AfvB4uJ9juUKs1jho2yKcJQ/k7audev1+X68Plac0JbMS
         hnlyDwXQv4mir9uaMuwPo09fw7u+hsHiyEI4PoUYxdaq1AQeEAhK9z9RURI7yjASRahj
         xPviQwZloFAJJX6yvgXAN4dC9iUeKhgj3CpgiRSZASOUucUUbWIN4eAVJN3vl8dEzR7J
         cKjlWHui0EDZKuIfmSirZUc1CDKoDJCqBPY/sasaz44SgCY2cRyx9+Bl78qFnv7/4O2R
         y0ayvY6M79ovZm8EdGBkGZoUzli2rRNFOhcAeE3xFs1XE3ZUU3Fc/GctdTb6sc3VQAlm
         nJug==
X-Gm-Message-State: AOAM5314vczvZrDseD7rf+tYa3LlZveNBtq8Ul4uBaLeuEVQD2g/Y4GF
	mKk8q11Spb7COKidipS9nAE=
X-Received: by 2002:ac2:505a:: with SMTP id a26mr1384781lfm.300.1603218704681;
        Tue, 20 Oct 2020 11:31:44 -0700 (PDT)
Return-Path: <eafanasova@gmail.com>
Received: from localhost.localdomain (37-145-186-126.broadband.corbina.ru. [37.145.186.126])
        by smtp.gmail.com with ESMTPSA id a24sm424497lfg.282.2020.10.20.11.31.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 11:31:44 -0700 (PDT)
From: Elena Afanasova <eafanasova@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	outreachy-kernel@googlegroups.com,
	Elena Afanasova <eafanasova@gmail.com>
Subject: [PATCH 1/3] staging/rtl8712: remove extra blank lines; fix code alignment
Date: Tue, 20 Oct 2020 11:24:37 -0700
Message-Id: <20201020182439.43314-1-eafanasova@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Reported by checkpatch.pl

Signed-off-by: Elena Afanasova <eafanasova@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_recv.h | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_recv.h b/drivers/staging/rtl8712/rtl871x_recv.h
index e83c256e1474..57a965b9839b 100644
--- a/drivers/staging/rtl8712/rtl871x_recv.h
+++ b/drivers/staging/rtl8712/rtl871x_recv.h
@@ -29,7 +29,6 @@ struct	stainfo_rxcache	{
 #define		PHY_RSSI_SLID_WIN_MAX			100
 #define		PHY_LINKQUALITY_SLID_WIN_MAX		20
 
-
 struct smooth_rssi_data {
 	u32	elements[100];	/* array to store values */
 	u32	index;		/* index to current array to store */
@@ -38,7 +37,6 @@ struct smooth_rssi_data {
 };
 
 struct rx_pkt_attrib {
-
 	u8	amsdu;
 	u8	order;
 	u8	qos;
@@ -129,7 +127,7 @@ union recv_frame *r8712_alloc_recvframe(struct  __queue *pfree_recv_queue);
 void r8712_free_recvframe(union recv_frame *precvframe,
 			  struct  __queue *pfree_recv_queue);
 void r8712_free_recvframe_queue(struct  __queue *pframequeue,
-				 struct  __queue *pfree_recv_queue);
+				struct  __queue *pfree_recv_queue);
 int r8712_wlanhdr_to_ethhdr(union recv_frame *precvframe);
 int recv_func(struct _adapter *padapter, void *pcontext);
 
-- 
2.25.1


