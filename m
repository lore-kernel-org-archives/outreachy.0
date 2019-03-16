X-GM-THRID: 6668976439860133888
X-Received: by 2002:a63:5117:: with SMTP id f23mr380228pgb.3.1552742079503;
        Sat, 16 Mar 2019 06:14:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:80c6:: with SMTP id a6ls3224711pfn.5.gmail; Sat, 16 Mar
 2019 06:14:38 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxbvp6y837mrXxmiwFhuIoHN9pp4zarbqsBR/s0ElodfoqDmezeCt3EJGVOyG3Od6QfUnX5
X-Received: by 2002:a65:64c4:: with SMTP id t4mr2761282pgv.85.1552742078705;
        Sat, 16 Mar 2019 06:14:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552742078; cv=none;
        d=google.com; s=arc-20160816;
        b=DHZ1650zcvXAAvrb0uP2G94iS9dk2LVplZPbz4yTFVIe/7XVwlOxjWpepnDyH4Rzm5
         iqcxwQKC404Xj1sPRqBNb1MxT9Pg+djWED6Ek0qf+pwaU4jr0BuDEykjQq/uV7lDy4Lw
         kx2YWZ85PGYniN1VZjGs/YtMJhuAL20bfNT2pAGkuyc6ZTXFYpPzkcdZ8IaqmPmDmlWT
         DqFNCBtS/0J5RDOIx/G9a6ZFMr/GWbncAWc54wvssqAxl+bBj092Iqu4Y7gztnHmLT0X
         QUX7uPUOlfKamHYgDkX6uubGbDyX7dCP5gwSVJ+Ssn5juFKJ/k7nZ86jteSJFZZ/y0Sx
         tfTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=b97H/eEPafAD7fhj3gFL+/mWuf+VSw8TRwMovGokh0o=;
        b=a0VUHQ3izEQ5TGHNgV/eQevc00RPb1ipDFNBiuhtuy+GvcLDS9+uCRel/VjOaGRUGg
         Que9Ou4bCXBv+L6X+a2RHKMt5hn2FCQ2rShusc1aggK2CCkqiY7bUkFY/HRSf+Plzr77
         2gvVvflQwPtuJhxxlF4w3cEyGnJB9p/6QA9w14TN4Tg28zCaBuBDCLIwrVaB+2xdBtRJ
         QMuNI1lBuQJFbD/aZ9NUIiXyduz3Vqf2sOGCypHeAzG+bZ7+nFMGAkQLTlskxt0hfFnO
         Sr/sTuM4iZQyLhWMLi84y1CztynZYoAd0nRDVdJkF30F23O9/mPbuzC3khjKYyMUvpck
         tDpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Zxp4+S2k;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id k70si251036pfc.0.2019.03.16.06.14.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 06:14:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Zxp4+S2k;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id i7so5119652pgq.0
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 06:14:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=b97H/eEPafAD7fhj3gFL+/mWuf+VSw8TRwMovGokh0o=;
        b=Zxp4+S2k6SwcOReTCsBja+kMysQJehmHoc9gkdMn+U2Vu448fbpTNsgYHPX4ca1LYZ
         /7mqkpwtDRkHFzIOfeA4Eum4LpHcPOJo5W7ZVrMbhWpP1zth6dYbkYFexHCdBmSX5/5T
         1430nG1tvswopLe3NwKQjxqRhi1XRc2hY1daUJtdxpZUOafUepx3ZdJ2xHkbfXxxdp+l
         MWgfbC3//EaG8EV5kOFs0bCbP4297XFkhdCjVN/rHhMiGJ6hcKuFfYdF2/SjGbshxr+5
         n6/YaLT9Z85SW2hkwc/Z6d/jH8aXSlJCZxGUfriTSom3pXqXCwVpKoMeFq8RsMtv0wGo
         7cQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=b97H/eEPafAD7fhj3gFL+/mWuf+VSw8TRwMovGokh0o=;
        b=j2vM19Ozc2GuhlMqxuYyNawX879sf3sQpv3BtZ4j4ACoWcdZW/pn4yYxFtAVcHfOuT
         UIuC57MXQv1eTutuM9TZk2JpyrlAdBzFhNfDVeBvblcLzFs6Czc+EUeLS3cp+MKnM+YO
         6FZ16/phkM/pHGOEKHnL/LQnOFKo+WQTQnkUo2g1wlRt6P/ZcHuHPHktRvvxZssWTVW1
         gFduDH/Cn6iARojgqb1lQVIvQ8settJgoYCPdNXhcDi9dNvrfebefgQzLPHgVa8Z9MqM
         8mtFPw7SPvNABPdTToVoFyhzI3QkWHkB1pJx4ERNJ6sZVYbwDKMnggvourolBy8NslpC
         +l3Q==
X-Gm-Message-State: APjAAAVrcoqlZWHSH7uRV0GIyYzNCpxvZT1VF9WgRnPXNNKXo0XS6FcV
	HMjmSuszEALv2SOYeIdLi8I=
X-Received: by 2002:a63:1749:: with SMTP id 9mr317355pgx.420.1552742078381;
        Sat, 16 Mar 2019 06:14:38 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from Hyper-V.DAIICT.AC.IN (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.gmail.com with ESMTPSA id k3sm17852578pfc.59.2019.03.16.06.14.36
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 06:14:37 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v2 1/4] staging: rtl8723bs: hal: Remove comparisions to NULL
Date: Sat, 16 Mar 2019 18:02:48 +0530
Message-Id: <20190316123251.24875-2-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190316123251.24875-1-himadri18.07@gmail.com>
References: <20190316123251.24875-1-himadri18.07@gmail.com>

Remove comparision to NULL. Suggested by Coccinelle.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
Changes in V2:
	- Change subject line
---
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c   | 8 ++++----
 drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c | 6 +++---
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
index 9f4a10aaa774..dc2db3b8ffd6 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
@@ -1480,7 +1480,7 @@ static void rtl8723b_set_FwRsvdPagePkt(
 	MaxRsvdPageBufSize = RsvdPageNum*PageSize;
 
 	pcmdframe = rtw_alloc_cmdxmitframe(pxmitpriv);
-	if (pcmdframe == NULL) {
+	if (!pcmdframe) {
 		DBG_871X("%s: alloc ReservedPagePacket fail!\n", __func__);
 		return;
 	}
@@ -2069,7 +2069,7 @@ void rtl8723b_Add_RateATid(
 	u32 mask = bitmap&0x0FFFFFFF;
 
 	psta = pmlmeinfo->FW_sta_info[mac_id].psta;
-	if (psta == NULL)
+	if (!psta)
 		return;
 
 	bw = psta->bw_mode;
@@ -2107,7 +2107,7 @@ static void ConstructBtNullFunctionData(
 	pmlmeext = &padapter->mlmeextpriv;
 	pmlmeinfo = &pmlmeext->mlmext_info;
 
-	if (NULL == StaAddr) {
+	if (!StaAddr) {
 		memcpy(bssid, myid(&padapter->eeprompriv), ETH_ALEN);
 		StaAddr = bssid;
 	}
@@ -2176,7 +2176,7 @@ static void SetFwRsvdPagePkt_BTCoex(struct adapter *padapter)
 	MaxRsvdPageBufSize = RsvdPageNum*PageSize;
 
 	pcmdframe = rtw_alloc_cmdxmitframe(pxmitpriv);
-	if (pcmdframe == NULL) {
+	if (!pcmdframe) {
 		DBG_8192C("%s: alloc ReservedPagePacket fail!\n", __func__);
 		return;
 	}
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c b/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
index 69c4db5b5b0c..c4fb9fe2ae73 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
@@ -63,7 +63,7 @@ static s32 rtl8723_dequeue_writeport(struct adapter *padapter)
 	else
 		pxmitbuf = dequeue_pending_xmitbuf(pxmitpriv);
 
-	if (pxmitbuf == NULL)
+	if (!pxmitbuf)
 		return true;
 
 	deviceId = ffaddr2deviceId(pdvobjpriv, pxmitbuf->ff_hwaddr);
@@ -284,7 +284,7 @@ static s32 xmit_xmitframes(struct adapter *padapter, struct xmit_priv *pxmitpriv
 				/*  check xmit_buf size enough or not */
 				txlen = txdesc_size + rtw_wlan_pkt_size(pxmitframe);
 				if (
-					(NULL == pxmitbuf) ||
+					(!pxmitbuf) ||
 					((_RND(pxmitbuf->len, 8) + txlen) > max_xmit_len) ||
 					(k >= (rtw_hal_sdio_max_txoqt_free_space(padapter)-1))
 				) {
@@ -307,7 +307,7 @@ static s32 xmit_xmitframes(struct adapter *padapter, struct xmit_priv *pxmitpriv
 					}
 
 					pxmitbuf = rtw_alloc_xmitbuf(pxmitpriv);
-					if (pxmitbuf == NULL) {
+					if (!pxmitbuf) {
 #ifdef DBG_XMIT_BUF
 						DBG_871X_LEVEL(_drv_err_, "%s: xmit_buf is not enough!\n", __func__);
 #endif
-- 
2.17.1


