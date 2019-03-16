X-GM-THRID: 6669057124685840384
X-Received: by 2002:aa7:804a:: with SMTP id y10mr3924798pfm.146.1552760873709;
        Sat, 16 Mar 2019 11:27:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:e393:: with SMTP id ch19ls6472700plb.2.gmail; Sat,
 16 Mar 2019 11:27:52 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx3XiuspTKKgt6kzhjVGPdH+5DXkEwH4ACE7GSffow/MmM4Q6tPTHnDdMFu8IzeMG8FYx29
X-Received: by 2002:a17:902:2f43:: with SMTP id s61mr3317932plb.104.1552760872864;
        Sat, 16 Mar 2019 11:27:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552760872; cv=none;
        d=google.com; s=arc-20160816;
        b=Y9hu7Rdiw74Y9iAelebhPzYDbR2bhwJQ0gZ63nBK7/kjOvO0S7FniiBp1HGTvFeNNa
         xvSG66JU8tLyoA112Xa/MXNfD1GrZ+kFeXNm29cvNzJiZP1zlzICncwDk1gQxBk28NGm
         UQq7eOLDxhbQM+mkjsdn3kMHfgTHlTODPULdRg6mtHIYWFi2J95Rg0TGzcwQW8wfy57R
         21U6KYoSRFNE1Ycaq1WegHxbli6zDumhdfa0nJ2MscOtp3SemHoWC0iKemZKhK1WlKje
         vsVICG1jteWBYvBYNF+kvjIGuOMS7Npyfkyip0Gi+KTf4XSdtd6115W8VnyPsUizsVDq
         goyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=/ybtsc72sqVaweIQYAt5cUyuXIvchDk2tY7d+z/Nm9Q=;
        b=EEDCoai4lZOXujC6W3KUAUwjFB4Up/dBHpJOg1rizL5DNV79UjLjBwhv1EYNvmfAmL
         yDcjHmQ/EWmbtzNSr1JDDGfLhiJ1los4+SZOy1Gkr06AqSpkO8LKovM2KOw5zg0PWVVt
         gGVkLL4lCogCuqwDt4DMy6+filkKtmMQ6cbYym4k0DdJr2lojJwI7xe8o/Ir7P14NytD
         Eg2TXI49fsL5na1lp0K79c3O7kmxsBCMeAPT5Jv2A3XwI2hIQoniw6ycnKoiN3jxRQSS
         jmjgkdTAYNoi8jUvLYUw4o1ljW3gbXqsb4QWP10C6Rd4Dq/TtNISEQnaDhVLcALCXDSz
         v98w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bEamUW7y;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id 192si317177pgc.0.2019.03.16.11.27.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 11:27:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bEamUW7y;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id h8so8616898pgp.6
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 11:27:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=/ybtsc72sqVaweIQYAt5cUyuXIvchDk2tY7d+z/Nm9Q=;
        b=bEamUW7ympukq/PtMZW6SeG4R3+SDPBbZAgsBLtDxaYJVhAabBcxkVQyevGBl04D98
         VBovfiYhFnUC+Ps+uJpgwrsRaK43TNbtlLyA7aBMOa2E2LXZMF7fLmN1oj7TRjJnYILq
         F6Ur46qD4F5VR4zO+FCcm/nxbsHJtXRg7PPisjkZFh8R9jjybWWm/P2JUbIVHCjYjtAk
         qFCJCupHfzaqzBEDg4Z0SHLUGhd8wE90S+bF/vyaB2wM9NNpAcIfDPMcialJc2hI32y5
         RurV5eMOVbab3Q8tzuEMsVtb0p7HgiDhEwt8OJmu20Ll+c3PiLdtkfRp7EveknXU8BIB
         tYKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=/ybtsc72sqVaweIQYAt5cUyuXIvchDk2tY7d+z/Nm9Q=;
        b=Ijtr8KYU2EJJvbeXlAb59jc04m+2RNsKMxKeqbl3qsC/P5JlkViZ2oFUHNztOuFmoc
         yfNZR99TCSekB5j5grFbMrIgcjy9EIdNZGHEMgo01q9N7I2wyeaKiDhNtYEwkhN8zxI2
         232qpnDly8mnDotjoVv1h7+N29tdsfH2dbidpYTpsYT/nPno5upL0bpMcO37WneVeRCG
         qzvoP0r7Bsr2jqXX9Zv2eDpIxRTLuYpIJJYP8ysYuUdN0gKu+l2mN74VDuodnD+2NXZD
         8+DqPa9fTgoilQPX60Z9mG89l65FNBu7pqqGr5Pi6hhmimjB5E7Z6zInJWjvB9i9zOOW
         mWcw==
X-Gm-Message-State: APjAAAXCF2AitzJZgYpWbmiR839fQqIWJ4ZhK1mi1Sl2UUGNS5wnmVPF
	4rd+Za0rkqN2IHBa8vFs//dXzgmaUfE=
X-Received: by 2002:a17:902:1121:: with SMTP id d30mr11048837pla.104.1552760872586;
        Sat, 16 Mar 2019 11:27:52 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from Hyper-V.DAIICT.AC.IN (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.gmail.com with ESMTPSA id z15sm9187221pfn.30.2019.03.16.11.27.50
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 11:27:51 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v3 5/9] staging: rtl8723bs: hal: Modify comparisons in rtl8723bs_xmit.c
Date: Sat, 16 Mar 2019 23:15:39 +0530
Message-Id: <20190316174543.36254-6-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190316174543.36254-1-himadri18.07@gmail.com>
References: <20190316174543.36254-1-himadri18.07@gmail.com>

- Remove comparison to NULL in file rtl8723bs_xmit.c. Suggested by Coccinelle.
- Modify comparison to true in order to follow kernel coding style of
keeping constant to the right side.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
Changes in V2:
	- Change subject line

Changes in V3:
	- Break changes into changes per file
	- Include modification to comparision to true
---
 drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c b/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
index 69c4db5b5b0c..7b06aab04ee6 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
@@ -58,12 +58,12 @@ static s32 rtl8723_dequeue_writeport(struct adapter *padapter)
 
 	ret = ret || check_fwstate(pmlmepriv, _FW_UNDER_SURVEY);
 
-	if (true == ret)
+	if (ret == true)
 		pxmitbuf = dequeue_pending_xmitbuf_under_survey(pxmitpriv);
 	else
 		pxmitbuf = dequeue_pending_xmitbuf(pxmitpriv);
 
-	if (pxmitbuf == NULL)
+	if (!pxmitbuf)
 		return true;
 
 	deviceId = ffaddr2deviceId(pdvobjpriv, pxmitbuf->ff_hwaddr);
@@ -283,8 +283,7 @@ static s32 xmit_xmitframes(struct adapter *padapter, struct xmit_priv *pxmitpriv
 
 				/*  check xmit_buf size enough or not */
 				txlen = txdesc_size + rtw_wlan_pkt_size(pxmitframe);
-				if (
-					(NULL == pxmitbuf) ||
+				if(	!pxmitbuf ||
 					((_RND(pxmitbuf->len, 8) + txlen) > max_xmit_len) ||
 					(k >= (rtw_hal_sdio_max_txoqt_free_space(padapter)-1))
 				) {
@@ -307,7 +306,7 @@ static s32 xmit_xmitframes(struct adapter *padapter, struct xmit_priv *pxmitpriv
 					}
 
 					pxmitbuf = rtw_alloc_xmitbuf(pxmitpriv);
-					if (pxmitbuf == NULL) {
+					if (!pxmitbuf) {
 #ifdef DBG_XMIT_BUF
 						DBG_871X_LEVEL(_drv_err_, "%s: xmit_buf is not enough!\n", __func__);
 #endif
-- 
2.17.1


