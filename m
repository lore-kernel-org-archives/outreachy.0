X-GM-THRID: 6669057124685840384
X-Received: by 2002:a24:c1:: with SMTP id 184mr5564944ita.21.1552760869060;
        Sat, 16 Mar 2019 11:27:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:66c5:: with SMTP id k188ls2333864itc.3.gmail; Sat, 16
 Mar 2019 11:27:48 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwSEVMlW24m/8lkOL/e+49SW0QXMsm8fQOHkCYRnh/8T0Z0034A7IncWgebUb1wAMGBf5x9
X-Received: by 2002:a24:2287:: with SMTP id o129mr5841048ito.22.1552760868518;
        Sat, 16 Mar 2019 11:27:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552760868; cv=none;
        d=google.com; s=arc-20160816;
        b=Q6GUnEkFPYPZi/Ckz9EPVMxpfjNWVynGh0M7OKdpJ34ppeqSL9sm15We9+dGAl2bc9
         moscv7la0Dh77F6/cyFR/Kd5nzUAhZKnthqrTU08z6PLLE+4EJsYhLhzthi47N+8uO++
         bmzY8jMxKjSIDixfO7iMnJQTfxETvS3neKYCNYLaKy5N8dQHyAWUZqik6gumg67s5i/R
         ChLk+X1Yn7Qdn6y0Z5odSjOTbH+50K6peyctml2sXzK6i152yzcscBmRC/iytc90Zvdc
         chf2cvByaaqS+gmniXKw+Qx5BWKuzrW4nPbQplVhNGtotuMdq2ySVxygLSU7zgmqtPXc
         2Dpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=klb0jJMGIluY6H9sfFqJ6+mkXU/iQ5QKEojacwGLdiw=;
        b=hp9rou9F96ypGzBlhLBrEORd+hYVavx0XV/RNYwsUt5ZR0l2hKK3+Tnca8/pnTxk18
         g+JeYtT1hEg7z4PZG5vA8OKmv6hIaVap/1i91nFOiUpFnfM7Tb+LGvSw/IT6BibQO4gc
         laKbXDKBAUeFMS9ar0ulWV0W9zDNC22PUgwfSiADiO/HSL/i0gmCxzonOi//ZYRv5Yi0
         rhAiUXVakpanHPZ2uFelFiXAppQm4thv63jEjObNZV/LIwn81aE8HRbQSfurILCLsJRI
         knnGKuYmeYv+HYcaEf3QdSkQTC2ifB8CvdnFRDMPCiTVEjjGvX/tsNERZgac2ltGxSMc
         TKYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rislbrIq;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id e74si345106ite.1.2019.03.16.11.27.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 11:27:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rislbrIq;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id v64so8531433pfb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 11:27:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=klb0jJMGIluY6H9sfFqJ6+mkXU/iQ5QKEojacwGLdiw=;
        b=rislbrIqrtLTYCPANzCm92ToDh4+VDTgUffRnJdLpV7jTkul1FigCB/tbwwJFkGndc
         iQa8oRRhTOiZLJQ19KTd8A0E92Em3YoCg1K0lpdszGfldbipgYR0/4rUOOrS++UOkAZr
         pdrJnVRzxCoowTCCWS2Cco7HdLDDZfi2q28SW/D4ajOs8n3tFmJXhpqwY6/B+mlBA9uB
         sMXHRKnNmj5fdatvDlvdi1CF9lcoxHqx56fcWBq8c2zzmuIygWHD6I8cN35iEeY3rF3i
         7HqJ0QN14q8tn7t6xBN1L/cR4b8eherzOAmiTSZGYgJzeglK/Gbu2IFT8VaCkcgDcpSR
         Mf2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=klb0jJMGIluY6H9sfFqJ6+mkXU/iQ5QKEojacwGLdiw=;
        b=Vm/zSpuCDXcuW8GBVZ8rT6eXnSP7PHNPL4Jv1FVXvS/h1R0u2fkJn+RG6kjuhl+b/O
         cE/GNp14dCpEwpREm8/u4pUHrh+M5iUIQATfNA9/e9wT0bmJ4Z7NVEF8SDzd4xne5Fn5
         ga6Ta39eQT/ygaIyODv6Mgx6Ysc9sV/6nPwt/vZSLVBwuxp+Bcl2aE4gy6sYJILOcCNv
         8LezYLq8gJtVkX+Q3G6jDPbtRksdOzlQE1djccFNPNUhe0xgcHY0dLigxExmNWVWEAC+
         NN0m/hOYPAXskfpSIDtrel9GDYINGr4WeDu3CUoyq0qeTc/P2X+L3dyRXXlEAeMylNCC
         Qc5A==
X-Gm-Message-State: APjAAAW0jPsc8+1dvKRK5GZ8wvx5TfMAkmqdfxHh2KcndbWR0c5B5xHw
	XZ4UQA0c/n74v3UG3qChhns=
X-Received: by 2002:a17:902:fc3:: with SMTP id 61mr10936981plz.83.1552760867842;
        Sat, 16 Mar 2019 11:27:47 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from Hyper-V.DAIICT.AC.IN (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.gmail.com with ESMTPSA id z15sm9187221pfn.30.2019.03.16.11.27.45
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 11:27:47 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v3 3/9] staging: rtl8723bs: hal: Remove comparison to NULL in rtl8723b_hal_init.c
Date: Sat, 16 Mar 2019 23:15:37 +0530
Message-Id: <20190316174543.36254-4-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190316174543.36254-1-himadri18.07@gmail.com>
References: <20190316174543.36254-1-himadri18.07@gmail.com>

Remove comparison to NULL in file rtl8723b_hal_init.c. Suggested by
Coccinelle.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
Changes in V2:
	- Change subject line

Changes in V3:
	- Break changes into changes per file
---
 drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index 85fd12cca4ae..caa8e2f39448 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -883,7 +883,7 @@ static void hal_ReadEFuse_WiFi(
 	}
 
 	efuseTbl = rtw_malloc(EFUSE_MAX_MAP_LEN);
-	if (efuseTbl == NULL) {
+	if (!efuseTbl) {
 		DBG_8192C("%s: alloc efuseTbl fail!\n", __func__);
 		return;
 	}
@@ -1463,7 +1463,7 @@ static s32 Hal_EfusePgPacketRead(
 	s32	ret;
 
 
-	if (data == NULL)
+	if (!data)
 		return false;
 
 	EFUSE_GetEfuseDefinition(padapter, EFUSE_WIFI, TYPE_EFUSE_MAX_SECTION, &max_section, bPseudoTest);
@@ -3664,7 +3664,7 @@ s32 c2h_handler_8723b(struct adapter *padapter, u8 *buf)
 	s32 ret = _SUCCESS;
 	u8 index = 0;
 
-	if (pC2hEvent == NULL) {
+	if (!pC2hEvent) {
 		DBG_8192C("%s(): pC2hEventis NULL\n", __func__);
 		ret = _FAIL;
 		goto exit;
@@ -3714,7 +3714,7 @@ static void process_c2h_event(struct adapter *padapter, PC2H_EVT_HDR pC2hEvent,
 {
 	u8 index = 0;
 
-	if (c2hBuf == NULL) {
+	if (!c2hBuf) {
 		DBG_8192C("%s c2hbuff is NULL\n", __func__);
 		return;
 	}
-- 
2.17.1


