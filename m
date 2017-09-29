X-GM-THRID: 6471275503571435520
X-Received: by 10.98.190.26 with SMTP id l26mr715213pff.7.1506711240173;
        Fri, 29 Sep 2017 11:54:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.88.193 with SMTP id m184ls51652pfb.4.gmail; Fri, 29 Sep
 2017 11:53:59 -0700 (PDT)
X-Received: by 10.98.32.81 with SMTP id g78mr747010pfg.53.1506711239136;
        Fri, 29 Sep 2017 11:53:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506711239; cv=none;
        d=google.com; s=arc-20160816;
        b=McaS4wUESjRZmnE9k8XBvxqOf/UIviF2/f+aBpN581eHP7SZJo9hYeTV1SmdzoPuz4
         wEFbIVObXcroH5MQ3eQ7R3o8WLKB+SFidslhUCYYvYPdi+VPmwKK8IRHlp0zDtbgjdvd
         lG79ABMIYxzyAwOUJtT6k8WauqvCSkgi57pOTRxIpMdVCKaexB8CXTVxnpPVcTcqcd8g
         x3V1L65xzbeGqn175K+vlS7pJS3q9L9q8vY09QQbJinqtJEftMt21IPeoWAtHpzflzQq
         kpLFA18UA8pYDnPMQzJk5N/KITuKZ0DBMNSjUwf+1iH8q9G3AJwtXX/uYrcQ+5BGhD7p
         oeMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=NaXAzLe17ZzjKN8egAPJRo58WjEXtB+r4cfRXuX55uo=;
        b=Ov64InME+rIoU+7A5qPnhEPr4Z6n04vvgS6b9ai3elvYUVE3b8LcwDxlAzTkwSLT6T
         YEi9ln7ln9Gkk/BSLZ/Awjr5pkE6Pb/LJADAGB64nTa+aRoQCVqIMObJfdpE4S42JBsu
         M3N9yPbfEmhwDGL45+njuCcBk3d1lsD3Na/UxyPpbqsvQl2BC0k5vPcKLUqAOCpQaAVU
         pQ4Sp8K9JykKCPaRYOWazBB215Qp9a1X7IIj1TpBGBObvbJK7l/Pmw4D8/EuWVcXaTkp
         RHFUYjqAJD/QdYm6LMICUz33xcXQiTkLOzUm0lKP/dOQeIOHeA228rPJ6Tgz5R/qveFj
         uCUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aRb0N7LT;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id m186si556731pfm.2.2017.09.29.11.53.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Sep 2017 11:53:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aRb0N7LT;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id y192so299409pgd.5
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Sep 2017 11:53:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=NaXAzLe17ZzjKN8egAPJRo58WjEXtB+r4cfRXuX55uo=;
        b=aRb0N7LTJQuvL2mKds5iJqHZZgmnGeBVor395dWro7SgYpd+Hvb0Dy3JzNKmZXLyqw
         sZ8MB5gEVTvhVW0iqqXofgnKEoXx8jKp4M4V96taJ9hFAzwQSEst9mLkWEOnYvM4Ei49
         wnc8gRffEPRZ0rF+qqJMxOUwhBJ/ivkLvjobQbpEkgx5C5I7oDtFpLkuKtYa+Vl6zo0L
         cCiwk98Veyi2Qnv0/6dBwqq4Z7brDVPV6A5bMjj+/v0WoU7gQoeP9JDPFmcoJjMqZSyW
         a6F1xtF0LA8uckHuZxe1v8HksDXVF2FgyYoki31Dnh8pTDy4JqQWnpVqKO/cwRt5Okuf
         acHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=NaXAzLe17ZzjKN8egAPJRo58WjEXtB+r4cfRXuX55uo=;
        b=R32tdErjGTh+nQF7kfy+VK5/9X35ZOBwhYnvicx5cjaRPdEHKM3ois1N83ziHLfPsU
         GvUoGVyy7Cw7knNgxt/PQss9df7qTc7S+xBby5B0xjzSac6oyxEDOeWJ3wzytm2N7RZ3
         WONL9c19hvtMEwrj8iM/bXW55xuKXuB2wavK01R3wQZyZgy7sqYJSL6j7qh7517Ep/ax
         zEkxto38Pj1ueJiLAgulRRdlin4qZnRo5VG7bZtEZg5U9bTFXxU9m4YXHt9EWivXVB+t
         2nTyKWZHT7KnmxLPg8rP+k5rPBaHHN1At94NfOZ5ex5e1mfjiAZnNiYbEH0igOZFoxqu
         g/Tg==
X-Gm-Message-State: AHPjjUhILh3ZYAgnmC3thpr4Dkc2UZQw0ZA7BdcHus5cG83Nbgx09geD
	fjmEtDMKPShm+f3OFC7GlNE=
X-Google-Smtp-Source: AOwi7QDKVDFYh4VWVj7tG/hl/Hi63D+pHPDZObVTgdZqk19hSekWF8+8wsdwgfJHoURNeGN+gLpCiQ==
X-Received: by 10.98.59.66 with SMTP id i63mr8655361pfa.31.1506711238741;
        Fri, 29 Sep 2017 11:53:58 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from shreeya-VirtualBox ([45.113.152.61])
        by smtp.gmail.com with ESMTPSA id 20sm8750918pft.109.2017.09.29.11.53.56
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 29 Sep 2017 11:53:57 -0700 (PDT)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Cc: Shreeya Patel <shreeya.patel23498@gmail.com>
Subject: [PATCH] Staging: rtl8723bs: Remove unnecessary comments.
Date: Sat, 30 Sep 2017 00:23:52 +0530
Message-Id: <1506711232-19670-1-git-send-email-shreeya.patel23498@gmail.com>
X-Mailer: git-send-email 2.7.4

The comments regarding memset are not needed in the
files which have been modified since the necessary changes
are already there in the files.

Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme.c     | 3 ---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 3 ---
 drivers/staging/rtl8723bs/core/rtw_recv.c     | 3 ---
 drivers/staging/rtl8723bs/core/rtw_xmit.c     | 3 ---
 4 files changed, 12 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index 6b77820..5b583f7 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -28,9 +28,6 @@ sint	_rtw_init_mlme_priv(struct adapter *padapter)
 	struct mlme_priv 	*pmlmepriv = &padapter->mlmepriv;
 	sint	res = _SUCCESS;
 
-	/*  We don't need to memset padapter->XXX to zero, because adapter is allocated by vzalloc(). */
-	/* memset((u8 *)pmlmepriv, 0, sizeof(struct mlme_priv)); */
-
 	pmlmepriv->nic_hdl = (u8 *)padapter;
 
 	pmlmepriv->pscanned = NULL;
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index b6d137f..ca35c1c 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -474,9 +474,6 @@ int	init_mlme_ext_priv(struct adapter *padapter)
 	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
 
-	/*  We don't need to memset padapter->XXX to zero, because adapter is allocated by vzalloc(). */
-	/* memset((u8 *)pmlmeext, 0, sizeof(struct mlme_ext_priv)); */
-
 	pmlmeext->padapter = padapter;
 
 	/* fill_fwpriv(padapter, &(pmlmeext->fwpriv)); */
diff --git a/drivers/staging/rtl8723bs/core/rtw_recv.c b/drivers/staging/rtl8723bs/core/rtw_recv.c
index 68a6303..9c08307 100644
--- a/drivers/staging/rtl8723bs/core/rtw_recv.c
+++ b/drivers/staging/rtl8723bs/core/rtw_recv.c
@@ -46,9 +46,6 @@ sint _rtw_init_recv_priv(struct recv_priv *precvpriv, struct adapter *padapter)
 	union recv_frame *precvframe;
 	sint	res = _SUCCESS;
 
-	/*  We don't need to memset padapter->XXX to zero, because adapter is allocated by vzalloc(). */
-	/* memset((unsigned char *)precvpriv, 0, sizeof (struct  recv_priv)); */
-
 	spin_lock_init(&precvpriv->lock);
 
 	_rtw_init_queue(&precvpriv->free_recv_queue);
diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index 022f654..8cd05f8 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -51,9 +51,6 @@ s32	_rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 	struct xmit_frame *pxframe;
 	sint	res = _SUCCESS;
 
-	/*  We don't need to memset padapter->XXX to zero, because adapter is allocated by vzalloc(). */
-	/* memset((unsigned char *)pxmitpriv, 0, sizeof(struct xmit_priv)); */
-
 	spin_lock_init(&pxmitpriv->lock);
 	spin_lock_init(&pxmitpriv->lock_sctx);
 	sema_init(&pxmitpriv->xmit_sema, 0);
-- 
2.7.4


