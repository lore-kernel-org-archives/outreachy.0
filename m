X-GM-THRID: 6471275503571435520
X-Received: by 10.101.76.1 with SMTP id u1mr1083504pgq.79.1506780679122;
        Sat, 30 Sep 2017 07:11:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.233.14 with SMTP id j14ls35338pfh.0.gmail; Sat, 30 Sep 2017
 07:11:18 -0700 (PDT)
X-Received: by 10.84.160.227 with SMTP id v32mr936393plg.29.1506780678018;
        Sat, 30 Sep 2017 07:11:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506780677; cv=none;
        d=google.com; s=arc-20160816;
        b=Y8OO0wFrpQegPI41xUm9uxVpfBQ4m24yWukeXhecUxlotvVD1iVzAslPfu4zC8Yxds
         oDggSytRlXj1FohmLKB2PmfjBh3wNbr8igH4bXcHugxJdH5+YDbH6dQfIFMaghh6Qhmk
         xpZTxGCWsBwqcleZ4WOv1/UelfgtA0xtl4oFYqfwaIivkaQPcXCki6EQAGq7v3SXl/zo
         CRIv1rfhGrZl9QutKATc0hrg8sEbtdyfgPqVxQOKmtzdK1R/T9bBhCXgcl2/YXj9O5Hk
         WQYklCS7jCvr2fyW4INKL4Zc9CQHa6CbhwFcZyoAL6wMCh+G7z+KKS0lPkRkB+gmXIhK
         NvEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=rtTUt06K9pctys7QxN9g4U6nBW5PFd3ijKPajFYzg5c=;
        b=z40gM8elCLfSnrnVJM9s3RbvmQUao+Lj8MwYmet4cbrJHQYumoyeiVyc57039hNhIx
         cOUYd0pdygBDkAcma84mk6JIU7nvM/Fs2EX8NVsaTmJgfg/dEcDlIbeKYdBxRgCbvG0A
         wjNrzmOfdc11p2kYhwxP8f1FfvnvitM3jOvbVNxpXAidiSRCF8JRZgYX1fWB6i+64FJ3
         Z/kHFathlNNhJrk6YzgSz1OJneEna4dlR7bSw9+U4ByHGwdAJDSse9D+bBvVLwAe0nc6
         26MfZFsvRORA08z6y3Z0QeiXCPpFw0dT+GLVqVKNNtcNl8lbgfwjAOoCaQjpcs7iFUHD
         Zb2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=q19pBYDl;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 88si681480pfm.20.2017.09.30.07.11.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Sep 2017 07:11:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=q19pBYDl;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id e69so1555539pfg.4
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Sep 2017 07:11:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=rtTUt06K9pctys7QxN9g4U6nBW5PFd3ijKPajFYzg5c=;
        b=q19pBYDlBmCmw6gJVTlpW/Gj4nRaaGG0m3OyKICz4xiu+zkIg4hv+AbUKlXaPpbSW9
         U1PQzP9Vl+GUdiqrLb+uVOLrJidm08Ly+89eq/wA409Mslw1F7JqFMQ3zfCj7MnxYWLA
         CiDBJE7vVqPw4U0jueZ7qBpCdQkbAGmaXNv/65x7KMYkLLv9K7uq57yeOaYt9tiDJxjW
         VysMfo8O/xpiHuYxknexJ+HxCWXk5uEhIIGpz8ymIfAeFhvPpZkQv9vVCSSRRITgVdRh
         azmoZxOwJAVHuSjQwt67uu6OnP2HFXlIWA9FQgsYIDd3uG1xWqzItzcrFGJzC134BBxM
         AONQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=rtTUt06K9pctys7QxN9g4U6nBW5PFd3ijKPajFYzg5c=;
        b=oZIycnVt8BdwXW8PJHQzrQqX508dOhAsk3g9Z8kIfCt+OYRLdq1DLFU9njE0mdZyMN
         48Nrjmy1MpeoO8lPu91o9x9FKPpnFu/k/OUBnJPKY3fn5xy5x7hRLbIuYnXPf5cO8xlB
         ovCMSwQoZvQLyckb0Cdz3toWhhOUUfOzp9Jd1yL5LlVMwNxqIZ3a1bPkl38SmMW+/mk4
         /8gqxyyZ7I9yi5Aj2cm3xY/qEJsvXpvsAEFUP6SX7rwVGJCFfy6M7Sj/9Co2SRQQuni2
         WV41iQ8RlvTkDoDu2JEMTDA48KcaMGl67NgGgmXYwy4/hd3sUc8N1bk1rJm2tCedaEEk
         oq/A==
X-Gm-Message-State: AMCzsaUb+gWFLiJGUbKlDClgCmcA86padjY6uPNdoziU9Fp97FZNcOBm
	ul1nx3EvOVoTV6uTzgpgYjeir20z
X-Google-Smtp-Source: AOwi7QB0TlwuXRkD4JHkKosZWCcaYiH4ynReWJnSIFuZ7mk/uGp0PCoUVrRA5TcbF569f5QU/2K2hw==
X-Received: by 10.159.245.149 with SMTP id a21mr129327pls.334.1506780677738;
        Sat, 30 Sep 2017 07:11:17 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from shreeya-VirtualBox ([45.113.152.61])
        by smtp.gmail.com with ESMTPSA id d124sm10783417pfc.42.2017.09.30.07.11.16
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 30 Sep 2017 07:11:17 -0700 (PDT)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Cc: Shreeya Patel <shreeya.patel23498@gmail.com>
Subject: [PATCH v3] Staging: rtl8723bs: Remove unnecessary comments.
Date: Sat, 30 Sep 2017 19:41:11 +0530
Message-Id: <1506780671-2209-1-git-send-email-shreeya.patel23498@gmail.com>
X-Mailer: git-send-email 2.7.4

Remove unnecessary comments which are there
to explain why call to memset is in comments. Both of the
comments are not needed as they are not very useful.


Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
---
Changes in v2:
  -Remove some more unnecessary comments and make the
   commit message more appropriate.

Changes in v3:
  -Make the commit message in imperative form.


 drivers/staging/rtl8723bs/core/rtw_mlme.c     | 3 ---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 3 ---
 drivers/staging/rtl8723bs/core/rtw_pwrctrl.c  | 2 --
 drivers/staging/rtl8723bs/core/rtw_recv.c     | 4 ----
 drivers/staging/rtl8723bs/core/rtw_xmit.c     | 3 ---
 5 files changed, 15 deletions(-)

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
diff --git a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
index aabdaaf..820a061 100644
--- a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
+++ b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
@@ -1193,8 +1193,6 @@ void rtw_init_pwrctrl_priv(struct adapter *padapter)
 
 void rtw_free_pwrctrl_priv(struct adapter *adapter)
 {
-	/* memset((unsigned char *)pwrctrlpriv, 0, sizeof(struct pwrctrl_priv)); */
-
 #ifdef CONFIG_PNO_SUPPORT
 	if (pwrctrlpriv->pnlo_info != NULL)
 		printk("****** pnlo_info memory leak********\n");
diff --git a/drivers/staging/rtl8723bs/core/rtw_recv.c b/drivers/staging/rtl8723bs/core/rtw_recv.c
index 68a6303..73e6e41 100644
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
@@ -65,7 +62,6 @@ sint _rtw_init_recv_priv(struct recv_priv *precvpriv, struct adapter *padapter)
 		res = _FAIL;
 		goto exit;
 	}
-	/* memset(precvpriv->pallocated_frame_buf, 0, NR_RECVFRAME * sizeof(union recv_frame) + RXFRAME_ALIGN_SZ); */
 
 	precvpriv->precv_frame_buf = (u8 *)N_BYTE_ALIGMENT((SIZE_PTR)(precvpriv->pallocated_frame_buf), RXFRAME_ALIGN_SZ);
 	/* precvpriv->precv_frame_buf = precvpriv->pallocated_frame_buf + RXFRAME_ALIGN_SZ - */
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


