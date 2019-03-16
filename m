X-GM-THRID: 6668944264527872000
X-Received: by 2002:ac8:76d7:: with SMTP id q23mr4730194qtr.60.1552734588230;
        Sat, 16 Mar 2019 04:09:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:b5dc:: with SMTP id o28ls4539347qvf.0.gmail; Sat, 16 Mar
 2019 04:09:47 -0700 (PDT)
X-Google-Smtp-Source: APXvYqybaWuk1yNma3BXjFEUFDFbcV3kxRGS6jfaxqXhfQHgZUH13H85CpGxp6YhsxCUfBSFR616
X-Received: by 2002:a0c:a94b:: with SMTP id z11mr4092481qva.46.1552734587468;
        Sat, 16 Mar 2019 04:09:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552734587; cv=none;
        d=google.com; s=arc-20160816;
        b=OgD20brz6n/N6ox2uXnvRfrU2VFlVFTHQFWEnjy+j9oyt0Dj3e3ru7YXrBLiLZEBRM
         MqS5GG9TSTAOicQEjLYEu29RFv1phgqwpBEVGhHDujs1HoipTuuie5feG9vKudXulmk8
         uL1Kaun2JqRseltw7hfmL0ZiFnLlt5JqAbOE08SPue1uG7qsu1gEXcu77QRWp+PKKC2t
         BMPm8zjoAXcKrR6qhgG+2yYzLQ6MLlV5bB3TWzSAn9OqkxtY42Jdqa2R1b8M9+DE/boG
         OGN8qT8HOwQpI/OczAZHM5HNKni61DMx5N+wPyP/TfcGRyYR+bxbcaDuAQwYNaf9lCvw
         jXMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=v2UEsoNe8fDkTz+AtIarP5UlDUAf/6oFieg48lOx/VA=;
        b=Fuv6UzsXkvgGFN0A4hNpnyt5xKOBSQvhIG4tkBnxm4f1/xT+GCielhiA6w4sYtcGgC
         +HVwWONwpOco+2dWBwsg0Uvtq7g9y3cjSp3tSbs2ynSiBKHHbrewoyH+25XXohddSiDE
         sYKNmp7N424TRI+nPoKVFlrXGzJiu09gNKVqEvNAdN3jzUGWaCFyoG4hS3v2OUr/HkDi
         nbr0KSK6yQlBheN4JEI1ITYzS0Jv8QYJ34cvsyoH+4oyVCjPvf0PoAin++hH8obWK3lW
         zIpXLWsbmvXH6Uo0ECIBfVbgK7MDfnNs75/F94vhIbVJdOmuSRJpydzpcXtPRsF++Svp
         iHfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sg3rng8Q;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id u65si186454qkc.5.2019.03.16.04.09.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 04:09:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sg3rng8Q;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id y124so8093487pfy.7
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 04:09:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=v2UEsoNe8fDkTz+AtIarP5UlDUAf/6oFieg48lOx/VA=;
        b=sg3rng8QQuAInD26MvFIRU/l7ylicni4klY29bp2xy0iqYzu4ndhMJbUSGtMxMZSjV
         C8pLrvWX2iPC+f0mTzOqg9tbOOcw1iWteMlwvRohT4xi7IpsPNbWFxRzVN27hxVhFtMG
         R7Aeqx0nnC0SaHDXVSdXfhiHoMiNEheCUSB2fh2DFmLBHOrbOu9tJFHwksnHxKRpUT1M
         23YzAxid8I9Ah6tPOPY5WC4nJ6WUpxBcIf++L99Rs0OGouyIxZ+G4MiVMKnwWokCEzVt
         W+95ihqtDjNaz7In8yETYVH44wp5W6MyjFaTAzQhEzjmzy1ytjMgsJ+YXOfBUfC2UFN9
         C4/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=v2UEsoNe8fDkTz+AtIarP5UlDUAf/6oFieg48lOx/VA=;
        b=INNhS4ifW/BG3gnnKd6iabyJOARnAsJNtpH9EYHQ2VuVezY4GjQUGh3/3Bu0fPagUI
         +jhf56AjBIN11loAw01pYWzpmPYd661t18uQhwXpVEM5pu6iqhy7gxQ2hw2ZXIFZu77b
         LgCcwMEcJs7in/y8GTj9bEcWcLqF3D7fQLI0luxEoWfWoSRCGKBltIxXBBDl/z2B36Pc
         z59qBYNRwRsszie/WIaiC0ODWdF0pUk+nct6QzePJqKmLeCazOVtIzGWUzvwBL9+vF5u
         y3oexuyYhFYMMle6G+X0HdauZsKcsW0tAGF9rDbG06Zji+f1VINoAc+fZ1B9L/dieIgq
         P3yQ==
X-Gm-Message-State: APjAAAXUMLBY9xFExQH5o2CD9rEfuGMB8FUew4dsW9BSjS4u874iSuYH
	Q2V3AurLF0IloRwyqGoRthU=
X-Received: by 2002:a17:902:1125:: with SMTP id d34mr9294793pla.75.1552734586546;
        Sat, 16 Mar 2019 04:09:46 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from Hyper-V.DAIICT.AC.IN (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.gmail.com with ESMTPSA id d11sm12097156pfh.29.2019.03.16.04.09.44
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 04:09:45 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH 1/3] staging: rtl8723bs: hal: Remove comparision to NULL
Date: Sat, 16 Mar 2019 15:57:57 +0530
Message-Id: <20190316102759.20272-2-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190316102759.20272-1-himadri18.07@gmail.com>
References: <20190316102759.20272-1-himadri18.07@gmail.com>

Remove comparision to NULL. Suggested by Coccinelle.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
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


