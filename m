X-GM-THRID: 6669239463558774784
X-Received: by 2002:aca:3ed4:: with SMTP id l203mr6830371oia.47.1552803334058;
        Sat, 16 Mar 2019 23:15:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:ee6:: with SMTP id 93ls1775084otj.5.gmail; Sat, 16 Mar
 2019 23:15:33 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz6HB4uSFgl5ICpYJn9BiqwZoETfeVGrgM1keIMvDD+9kiktZE77/D62aW9a3VnIAHX0GUw
X-Received: by 2002:a9d:4913:: with SMTP id e19mr6720296otf.67.1552803333570;
        Sat, 16 Mar 2019 23:15:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552803333; cv=none;
        d=google.com; s=arc-20160816;
        b=ZsgNxkFXtEVl9LPyDXyLurT8nUZQLnaam3LnddF85oF+JZhcfVC4WCKC9eBLuXA0Dw
         oaxQ527a0eSVGbntTB9X4oVIPzBDVL2uIjvPMJhyLVZ0cktyiIbQTzkLlmYolIEjXnkF
         IDKHJz9gSwmuZVgNWJya6xrwBkK5iJUYWSEz4mZs3Vx9IifcGfgMhWf2X6PnQLNNwl7p
         xJ1jclDnL6ZTTQRCzl172U9e3kvWFfX+7/lluZGEvjQRpsQK5gz+eGSialGcU3LxXInf
         8T7ltK14uAciNt34Bkj+SNbPXHKaUlyn5b55oxucsYC/98IAVGKyrJ/uVZ6KTZBMOJu5
         AWkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=cr0OAsQ1ZyFiswrR1lSWyaUjBVEWjIl4Aj7e9ep03YA=;
        b=Uy3Ou1ZbEwXz2K2R07iwuoBGHVq0fgrVON68FEUSzV6uqKSVTYAnnSdd2/7Mv/7dH3
         iyhPUVzh4IyaLqEoYURXzeTnOXCQc8EW/jmuE4DaMKd/R6XpbF8Hez/dEzD67+FZCRp/
         MWsy88hpWuLRnE6z9uh6eR9cXGz14CkH9aMpPuqlAwMcqypW3PzKEh7YNOndob1OSz1a
         0eHCe5cRTngjkkebQVMksTrWmvO8+tuq7n9bYx6IXmi/sTZD3yc5iAm8eQJ6TofjVIBv
         rC0EZ8Ze+ZK9r5wWtAa9EZKUU2qwYdSY5lZSklzmmieIMXEI3I9qVVGpd8Z19Cn8ocd2
         vGYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="i/vxyYCz";
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::c42 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-yw1-xc42.google.com (mail-yw1-xc42.google.com. [2607:f8b0:4864:20::c42])
        by gmr-mx.google.com with ESMTPS id l26si326980otf.0.2019.03.16.23.15.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 23:15:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::c42 as permitted sender) client-ip=2607:f8b0:4864:20::c42;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="i/vxyYCz";
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::c42 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-yw1-xc42.google.com with SMTP id p64so7212255ywg.7
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 23:15:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=cr0OAsQ1ZyFiswrR1lSWyaUjBVEWjIl4Aj7e9ep03YA=;
        b=i/vxyYCzM0kEgtXvUlLUK5kLmaStKEqwhhpDQwvU5MdFe6HPcKKBueLvhafOpy+UQS
         XPi1tT6sxUYdRXxoKxHHb80nYGuxAgotfDGUK9t4PsYrVT4GdHRtoFzSUNfOmmU/IX+Z
         1PNwOtx0Qbbd7RKn6E2PFs4FXDxrFSsHSSQ7hHoI0ua+4gliz3hx9NQWSm9EpT4qHCR7
         9LHFQtlHrDvWo0HC0bOSYEp/AZb/vqkgaZIRMD02Nct2/nUsqKZteS/STihKbDvJEAzh
         sNS29EYnMyPZFFjlb5lCiwDilHMYbMjur5xUB43GmkCRf9+pVKPi5GbTdkZ2l8gYWHmP
         gDeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=cr0OAsQ1ZyFiswrR1lSWyaUjBVEWjIl4Aj7e9ep03YA=;
        b=qEUcsL84OqUfgPF/X2xiE6Sy6ziRSkODPpYg1GZtHes85HXH9VGkYH9YxsnurCkfvr
         ASJCfIEbkDV3GeRVb5ZNJkovLp9AZjTwoxQWn55rdbIO9SGNzgSmKlAXmdnLpG/WnBQW
         +NtZRfVQaPZQHdoJRDlFBp0s6kfpsR1peYsoOYJfWnd9rdQbMNPi77iOdIvR6jMHUTNP
         GEOEqX2hU2hhXINhlYMRNT5Tuhlc+BYeH+GrHulSeIsHa+WmGmlqnuKtfHjxiFxY80To
         hLh2N5Nu9DRur+e8I8wQjlwEIagEtecoDVMSp2A4j9+taqHIT6c022PFtjX3z2EzIqog
         Ndww==
X-Gm-Message-State: APjAAAVzKriM6n/ibrtJhOff1Y94a8XqM3/h1ja85y2xteCQ1Ir/NZiN
	ydK3v1ZW8mKd+v1y1WvWEKU=
X-Received: by 2002:a25:be92:: with SMTP id i18mr9898757ybk.426.1552803333084;
        Sat, 16 Mar 2019 23:15:33 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from Hyper-V.DAIICT.AC.IN (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.gmail.com with ESMTPSA id f131sm2772719ywa.11.2019.03.16.23.15.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 23:15:32 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v4 06/11] staging: rtl8723bs: hal: Remove comparison to NULL in rtl8723b_cmd.c
Date: Sun, 17 Mar 2019 11:44:56 +0530
Message-Id: <20190317061501.85447-7-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190317061501.85447-1-himadri18.07@gmail.com>
References: <20190317061501.85447-1-himadri18.07@gmail.com>

Remove comparison to NULL in file rtl8723b_cmd.c. Suggested by
Coccinelle.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
Changes in V2:
	- Change subject line

Changes in V3:
	- Break changes into changes per file
---
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
index 9f4a10aaa774..fe3891106a6d 100644
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
@@ -1620,7 +1620,7 @@ static void rtl8723b_set_FwRsvdPagePkt(
 
 	/* if the ap staion info. exists, get the kek, kck from staion info. */
 	psta = rtw_get_stainfo(pstapriv, get_bssid(pmlmepriv));
-	if (psta == NULL) {
+	if (!psta) {
 		memset(kek, 0, RTW_KEK_LEN);
 		memset(kck, 0, RTW_KCK_LEN);
 		DBG_8192C("%s, KEK, KCK download rsvd page all zero\n", __func__);
@@ -1856,7 +1856,7 @@ static void rtl8723b_set_AP_FwRsvdPagePkt(
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
-- 
2.17.1


