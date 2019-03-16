X-GM-THRID: 6669057124685840384
X-Received: by 2002:a24:1991:: with SMTP id b139mr5619641itb.38.1552760880674;
        Sat, 16 Mar 2019 11:28:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:6f44:: with SMTP id x65ls2338726itb.1.gmail; Sat, 16 Mar
 2019 11:28:00 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxPZvACS3z5YYt1jjOy4iNgvfE8MtJE2keA8+H256FqoZ4qdSi2OjTAwrbv28zxvimakckP
X-Received: by 2002:a24:4754:: with SMTP id t81mr5597489itb.38.1552760880191;
        Sat, 16 Mar 2019 11:28:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552760880; cv=none;
        d=google.com; s=arc-20160816;
        b=DYoBf7cT6HuvadHzujyKzatvm2s9UC6rQDiMmME1uIJfmH/LruzvnbRUMATBBvgaaq
         dy5wRFz9ruCq0mx0KxEbCrOMeFnbM8UnKap2TkTEXnmdoOIW0dZHundWZnJZzpoZ3ooT
         7CmnTSXL4LSVF7XI7ZrBY1eXm6bXDwkdWHchA+ZPD+xHl4Cnv1ciPhh6Ypj51+Ue5Yyj
         TeCLXSqKwv3p4h05LcF6I9E2Ny88U9xWaQTtYGVN7xgbPWxioIYRpholGO3Yag2q700a
         CS9pGeBATa4+9A56EgeHEpQDi9qF4TdTyodmeqpQRBzgKdoUanGNorswAjfTSqyjXxrO
         vqmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=DxqWrs//4ch57KOh70+YFxTQ2UsqT7jmHYx4zDlm260=;
        b=Gu+SPUeoN3DpL8crI3eTSfjVUu+HqS6y1akFhM8IAQDriJqfHijWlDYCPcMFD0jrqw
         q/ALFtT2279IuyLEHvb5tPbS3+ozDBSknwmmCg2RdsnzPCLA5Te+oEH9Jsd9FTaqSoPo
         aiGSKSh/I3ke5q9RjzD7+iXLgssil8raAh5ZhPZSgGubqjSyEbN+aAmAlUfSePdEr298
         y5caKhRefEtLHy+DtoySV/4tbx5jspS3ZrWh9KgMb1VtiQiiVuKth5nYA5NXaERu98Jh
         h0tbEBRs73mn3kmCPkSEF4mT+FX/rczJ9yZ6hNE1OkfC6CJXOryJzeSqZJP9aRjMvbbX
         o26w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=t6l53vEt;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id 65si612211itx.1.2019.03.16.11.28.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 11:28:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=t6l53vEt;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id e17so8629017pgd.2
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 11:28:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=DxqWrs//4ch57KOh70+YFxTQ2UsqT7jmHYx4zDlm260=;
        b=t6l53vEtt5Mt8Prdt42KBwid+FaumzC648UXJ3yL2oKbxC2ZnKSYaT89sYVYDruV8l
         7/jzo5T9+zFtXcCwbBuN/slb7vUdUhuC6aQnnmpSXMwtiUXIFT0lON8QiM/4X8BysKke
         8WFAexQGZ3ks4FztoRoG5TAx5arcyq7u1+jQDvtTmY2CG+WhdQ6oFoZtG7rxbh0Asgt5
         2x1Hd9fZNvq95PPogIwjwGezKJfgFyfguIGRRKQhdba/DyTMvgOLaND8SLbnH3UN/cuH
         At5f122EfIekRsV8YwwG4jjT2V//lL2kz6EA2REfeJDjiuA5/dLgH7AbsaTx/7DJQzq2
         9aog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=DxqWrs//4ch57KOh70+YFxTQ2UsqT7jmHYx4zDlm260=;
        b=oSKhJWfmXdZlZsTqxJqwzZQ+v02jXuPrDuge9Fh0L6ltrcJM/atcH/iLhTczvxRrsi
         mhRh85G4vutX5WT8YtudPDBGS4+4VEfhlDUkt1Ex+ILFJfTNsmpa5+ZmWO55/uFfiEui
         tL5xkFKcsld5at2PLkwBw41I9EVlN6WVSti1kaZoKXwMtuOtug83/gdoMm/eXWNrCHEI
         3eR62T4GNeAkuO9uPh3npvNisN7W3H8QiSC3lDuJF1j0Dee85bLI1b91g2RoGeiqphWH
         DGcgtcghiFu5nKumuTW052vBeAcnBZBNCGl7CmpWjGDzbX8SaHFp8F/0+UVqS4+xL2hc
         aptg==
X-Gm-Message-State: APjAAAWVVXA1wT0m2+hXVIgkODh6ZIhpmsG2zvl0sLymRCQ/fFLCcsoU
	bZTbWOHpYmvPcqkZA4jv0qo=
X-Received: by 2002:aa7:81ce:: with SMTP id c14mr10309641pfn.51.1552760879524;
        Sat, 16 Mar 2019 11:27:59 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from Hyper-V.DAIICT.AC.IN (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.gmail.com with ESMTPSA id z15sm9187221pfn.30.2019.03.16.11.27.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 11:27:58 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v3 8/9] staging: rtl8723bs: hal: Remove comparison to NULL in hal_com.c
Date: Sat, 16 Mar 2019 23:15:42 +0530
Message-Id: <20190316174543.36254-9-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190316174543.36254-1-himadri18.07@gmail.com>
References: <20190316174543.36254-1-himadri18.07@gmail.com>

Remove comparison to NULL in file hal_com.c. Suggested by Coccinelle.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
Changes in V2:
	- Change subject line

Changes in V3:
	- Break changes into changes per file
---
 drivers/staging/rtl8723bs/hal/hal_com.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_com.c b/drivers/staging/rtl8723bs/hal/hal_com.c
index 7f8ec55b08f1..b97b53c34449 100644
--- a/drivers/staging/rtl8723bs/hal/hal_com.c
+++ b/drivers/staging/rtl8723bs/hal/hal_com.c
@@ -18,7 +18,7 @@ u8 rtw_hal_data_init(struct adapter *padapter)
 	if (is_primary_adapter(padapter)) {	/* if (padapter->isprimary) */
 		padapter->hal_data_sz = sizeof(struct hal_com_data);
 		padapter->HalData = vzalloc(padapter->hal_data_sz);
-		if (padapter->HalData == NULL) {
+		if (!padapter->HalData) {
 			DBG_8192C("cannot alloc memory for HAL DATA\n");
 			return _FAIL;
 		}
@@ -909,7 +909,7 @@ s32 c2h_evt_read_88xx(struct adapter *adapter, u8 *buf)
 	int i;
 	u8 trigger;
 
-	if (buf == NULL)
+	if (!buf)
 		goto exit;
 
 	trigger = rtw_read8(adapter, REG_C2HEVT_CLEAR);
@@ -982,7 +982,7 @@ void rtw_hal_update_sta_rate_mask(struct adapter *padapter, struct sta_info *pst
 	u8 i, rf_type, limit;
 	u32 tx_ra_bitmap;
 
-	if (psta == NULL)
+	if (!psta)
 		return;
 
 	tx_ra_bitmap = 0;
@@ -1407,7 +1407,7 @@ bool GetHexValueFromString(char *szStr, u32 *pu4bVal, u32 *pu4bMove)
 	char *szScan = szStr;
 
 	/*  Check input parameter. */
-	if (szStr == NULL || pu4bVal == NULL || pu4bMove == NULL) {
+	if (!szStr || !pu4bVal || !pu4bMove) {
 		DBG_871X("GetHexValueFromString(): Invalid input arguments! szStr: %p, pu4bVal: %p, pu4bMove: %p\n",
 			 szStr, pu4bVal, pu4bMove);
 		return false;
-- 
2.17.1


