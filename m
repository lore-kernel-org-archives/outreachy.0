X-GM-THRID: 6471275503571435520
X-Received: by 10.84.131.163 with SMTP id d32mr912173pld.38.1506758443417;
        Sat, 30 Sep 2017 01:00:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.43.9 with SMTP id r9ls1013179pfr.6.gmail; Sat, 30 Sep 2017
 01:00:42 -0700 (PDT)
X-Received: by 10.101.80.140 with SMTP id r12mr1015498pgp.32.1506758442445;
        Sat, 30 Sep 2017 01:00:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506758442; cv=none;
        d=google.com; s=arc-20160816;
        b=Yz6v7Pd9q9g/UMSEKwWYOcE/mazbVpMBOC/XLIrACWC6ULSEO3gWwWAgOhR5NcKu7F
         T+6dPaYdWmDyr0WglCfpnG2kKJSBRnSBvbWvmrRbrV0diEiP8+G2kGPGRCARl+YaeFDZ
         z+jx9CpPRVpKDAxP863tYxMIMeIrZRediBiDxTD9T2LrB0BtJXOYxgPzRqnDI/G9w+dJ
         bzTo0FNrsdfqbiML9DbvzJy+FPr6VSFSg1toa/6WyIB4y3tuLOoaci1SQF0FaM9duJOx
         /SPTae1OtK1ou9nm1ak/hf7i9/jyoT8URW7m9uSjBmnvdizicgdeNNUnREWAJ7WUuJTQ
         PK1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=jnc/fUjFkVWHh2T9guqnWgELqN24TscpWp3dgVLwylU=;
        b=gUsv+2qNofHR4Tx4/R+vvcq+UKr9BRuUesVVjRhAa24fe+KGcsWOBr+tVRYS13M4al
         EhzLr0apibcvq12HWwushMmB/QP+JtofjE1UwIZwxu7PE2wzn+vHfXlMW3/yc+j+W+yk
         9JotY3V1s+QUWZIuWPAbmBxZJ1qG4+YOMshS7H/oShu0dalDmsU1eG+4UJuKu/kjjqck
         gj8GC6Q/g9pVf9iK6eY9HYKaT4bwrXV7rB2jTZcR9/ZCy1P/LsnlcMpcqFrBTxoeeKMX
         NvpCQ1pdDYT36mqhnzOmFCXejHpqA6hXolN64xAYrW6ddBvfujxiMCHj1Aa4UnUvO7Xr
         DHTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=R4r7IuFT;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id v9si667538pfj.24.2017.09.30.01.00.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Sep 2017 01:00:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=R4r7IuFT;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id a7so1169374pfj.5
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Sep 2017 01:00:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=jnc/fUjFkVWHh2T9guqnWgELqN24TscpWp3dgVLwylU=;
        b=R4r7IuFTkZiuwlEg9YCkZfI5MrIxjXtDgKN7mUk09rseW81Tb2PAvdvdpwnrXWvyYp
         LZ9TIJrx5pULAepf7LtbxBG3kSd9Rv6ekUPl5J3Sz/kgztpqYRVc8Vp9F9/iJvMi1Vdn
         T38l6VOfeuXrQX8e3AoBnplss1YSKwduSIWWSTE7LVUaUyhxTTHB2gGhG492nutiQBcI
         EoImivcTZKdwZUQT2OzLJraalBqpgdPruGPDQfgEsoXMZMCSE9+x1VuS82fDt5O0ca+I
         yRB5kdoLn4KZGz4BQlkUBISxM5gbqEip4TNT/rHMBxz3rfOQicqE1lj6w0KiR4GdXdO4
         PPWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=jnc/fUjFkVWHh2T9guqnWgELqN24TscpWp3dgVLwylU=;
        b=RdaMf35BXWjdS2BKgauMwvQYMtoyar7xZAKi63xcBeUFv5LACIg5uz5ZpXZ0ktAmuX
         Q0LbLlpOcLN67/T8CmxgjyR9go1Ps+jB9lvNo+LQO+mQ2ohMtx8r0TicuABXU1awKouJ
         SMlVFVmwceC8AF4RrcVrtuOyqy/ladZI2/HKXpIAGcooy75UC2qkq5pAC3cronxvpjDK
         NDZU+DwtLNijKF/sQZVXnyl4liVhXdkI/gN/tpZxz8zt6DwYkqLuA22Qm6+NWaBeDAXE
         AWv6g5mQ+YIpBSTQHKn0iCyyQrXVxB+hwIpBr6hyeAjun4UvxLyVjagmpD8ZXArSMHCG
         x53A==
X-Gm-Message-State: AHPjjUhd5BrZFuabYOFEPLFwcwg0oL71nLCgHitl0EhPWZbn7WdKud2V
	SPn6R2GG/3J/ByNauVPMJeY=
X-Google-Smtp-Source: AOwi7QB5MOjq5ibWujQ5mYp/TCUhJYL2wAILtCjfQwfFsFAFjhIICYE0pT7x/eHpRejFXatyEPwx3A==
X-Received: by 10.98.153.67 with SMTP id d64mr9889887pfe.142.1506758441966;
        Sat, 30 Sep 2017 01:00:41 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from shreeya-VirtualBox ([45.113.152.61])
        by smtp.gmail.com with ESMTPSA id c62sm9841746pfl.84.2017.09.30.01.00.40
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 30 Sep 2017 01:00:41 -0700 (PDT)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Cc: Shreeya Patel <shreeya.patel23498@gmail.com>
Subject: [PATCH v2] Staging: rtl8723bs: Remove unnecessary comments.
Date: Sat, 30 Sep 2017 13:30:34 +0530
Message-Id: <1506758434-3193-1-git-send-email-shreeya.patel23498@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch removes unnecessary comments which are there
to explain why call to memset is in comments. Both of the
comments are not needed as they are not very useful.

Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
---

Changes in v2:
  -Remove some more unnecessary comments and make the 
   commit message more appropriate.


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


