X-GM-THRID: 6669239463558774784
X-Received: by 2002:aa7:92ce:: with SMTP id k14mr4441386pfa.123.1552803331914;
        Sat, 16 Mar 2019 23:15:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:322:: with SMTP id 31ls6964135pld.1.gmail; Sat, 16
 Mar 2019 23:15:31 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxTFMQJyWcqf2K9e/TsIlqsSRRTOix8rZzLd2pwXWP4k2vNFwiJrTr2zpMAHBbu0Pb3uwxn
X-Received: by 2002:a17:902:848c:: with SMTP id c12mr3872326plo.136.1552803330995;
        Sat, 16 Mar 2019 23:15:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552803330; cv=none;
        d=google.com; s=arc-20160816;
        b=BJQi1KLFEYBd1OSDAKx/548XvIVzM6KYUNKV2Hw57Kipdhzz2v1RWCYyu/xw54M2zu
         hGXs9ReJX31FmWzBRDlPeqrFar5zG/cuKDahVFHMsdpkgUhe1r1MRoxK4YzFUKoO71zc
         Y8V9ilVKqMPy8GbvCtjl2LNG6k2zW2RB6+ejME7TKatMLrt5NNG77/WU5oj2fzngw3pm
         j4sK4USJt+VpAc6XzW3UKHCcCUgRSemNKtrZ7mvplSgujXHv9YcOm0DGJD6mtX7CegWO
         sRJHIWEAhPt+WtEw7ykoo5UA4sfFA7428yCGBABVVetcp/9COLj0kWQd9ex/YYvkGfk3
         9OKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=tAAB3ZIL+sls++1GLWBK0VHtjjNAM/V3EM2b0zEnPx4=;
        b=H080/uaWBVG85qGHZY7gqidFe8Xkfbr6+LScovi7w1fUss6KKR4LD3XcxL8SCaVyJ2
         ZVrniX+ZqpIOBNSUwsICtjRe7zJhD4Uzoe6c+dFJuwIcZ0zj/ylQCLN+AWJEoUN7bx1R
         8ImDC626qXmJ9KKQOnjE+nsi53AviD+Qp20uEjlZpl85u9tCCxUOfyzwjTr1awZE9Ghv
         NWbID+7165K54niwg4JESnIfPtQy619aaa3oAl3Sm7oK67yRdE0rQAwwaRuxM6bCc9in
         kOgOOM4IGCGWs10zkb7pklDKJatuJZf8rOk8yGgVkSr2PROxvWXDyr8/zXn2nN9372Sk
         vnbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=S+Z5D5zq;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::c42 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-yw1-xc42.google.com (mail-yw1-xc42.google.com. [2607:f8b0:4864:20::c42])
        by gmr-mx.google.com with ESMTPS id 192si387024pgc.0.2019.03.16.23.15.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 23:15:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::c42 as permitted sender) client-ip=2607:f8b0:4864:20::c42;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=S+Z5D5zq;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::c42 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-yw1-xc42.google.com with SMTP id q128so10499806ywg.8
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 23:15:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=tAAB3ZIL+sls++1GLWBK0VHtjjNAM/V3EM2b0zEnPx4=;
        b=S+Z5D5zqvib2GgqciPt1QGJ0gD8iNyHdZWRWDVRs3FJB9BOmWFmIGNKD+fG2vi2dXA
         B7yGrwX3b5dvujJqO/+OoqcZWyCqFqgC0hkpp0E9lF1lTOYU3nL05p+3LujFv5YtkTw0
         bwj5elxM19WeA+cEnXxJou99hBS5LxiesIKLNsFbgFlYm6j6i4GEgpSf8U26AmCPbCs2
         oaEzKxDj84W4U/nLOu8CCuQKCn4fzbv34AWUV7DusJMFd7NrhrBlOaMqnbhyjn03l8aD
         l1TWSThNeUbdoqLKlXSlfX0+tz6ewYjS5VREqdNj9VsDVBhVS9mUUsdn3hyPpZ+XzOya
         t15g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=tAAB3ZIL+sls++1GLWBK0VHtjjNAM/V3EM2b0zEnPx4=;
        b=A0R7oQQfhw20u24fgGi77GIbwAwp5/2OWXnQ6zrgpdjXzrfAVJ1bzHLsal3TGPH+AT
         0t5kv1xUqIMdHbo5hdH5iDGUrcpAKCi4YHxje2ZhgLGDMiGooZM2+bjiv4RQs+bNj2rK
         TObveWzMiGNXgJm4zqWSGJbRWBpLjxkUT//Ub4b0MXWfQ+iimVZrYDxtkxCL0GiB2ZaL
         e64IXRuAEH28eUy6HDAU52wz1R+DuzsgPEw7UdSksLe+tsUJ03wsLP8oO6nSREqdcyP4
         v6hk3PpwdLe1Yl5YJx8iDya8viCe/KdbocZeHvxR+LBucz2vo/Dtef7pQ23aMN6PF8Xy
         kbkw==
X-Gm-Message-State: APjAAAXDBMBwIoK45jtBps6g4o8yZH25d2zbRU7WDUd7vf11ai9keDg3
	JljkiqhcA+BlC66tOZxh9pE=
X-Received: by 2002:a81:8404:: with SMTP id u4mr9140921ywf.47.1552803330173;
        Sat, 16 Mar 2019 23:15:30 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from Hyper-V.DAIICT.AC.IN (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.gmail.com with ESMTPSA id f131sm2772719ywa.11.2019.03.16.23.15.27
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 23:15:29 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v4 05/11] staging: rtl8723bs: hal:Remove comparison to NULL in rtl8723bs_xmit.c
Date: Sun, 17 Mar 2019 11:44:55 +0530
Message-Id: <20190317061501.85447-6-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190317061501.85447-1-himadri18.07@gmail.com>
References: <20190317061501.85447-1-himadri18.07@gmail.com>

Remove comparison to NULL in file rtl8723bs_xmit.c. Suggested by Coccinelle.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
Changes in V2:
	- Change subject line

Changes in V3:
	- Break changes into changes per file
	- Include modification to comparison to true

Changes in V4:
	- Exclude modification to comparison to true
---
 drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c b/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
index 69c4db5b5b0c..8120f6c85bb3 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
@@ -63,7 +63,7 @@ static s32 rtl8723_dequeue_writeport(struct adapter *padapter)
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


