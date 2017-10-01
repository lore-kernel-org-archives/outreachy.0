X-GM-THRID: 6471844360857059328
X-Received: by 10.101.77.15 with SMTP id i15mr105235pgt.29.1506843688277;
        Sun, 01 Oct 2017 00:41:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.234.137 with SMTP id n9ls3211751plk.15.gmail; Sun, 01 Oct
 2017 00:41:26 -0700 (PDT)
X-Received: by 10.99.143.69 with SMTP id r5mr1052279pgn.10.1506843686970;
        Sun, 01 Oct 2017 00:41:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506843686; cv=none;
        d=google.com; s=arc-20160816;
        b=hhEO1txnlLSWavU26lCWy1kZPORP/0o1RN0FlwZBWOyxNU52L1fQ/0RgiS+lqLgA7u
         tZZ1tmfOLalr41WEOX8RjcOoSQYx5Os3mMRmEEFDxwYbNaV8T78O5q9hAw6fa62quW2/
         e51T+4CtRkCeuLJf2xEDQtdNR0NP2KyUMCWvMhP8idC+Y9DfZXjIoi/dR4W3DVmestvh
         OYK6XYFuRc7hd2xR1dMaT+U1OKkAztrmuKMNYMldomXrUDAkzw0F5mjYXLav8DqXHkxM
         6ailxBRsUsMX7/gh+T0jgjkTMTD24Ldr3BUFsqx8+ERwYr5wqOiwzVMiHEG7yUxgArIF
         hyoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=xpX+pt/KViJ/b4a9tdkWt9kakIQpiEfZT9YmS7Qe6Os=;
        b=ifR60v8GhqbxbYHwJMwoTLxHJ4QZQ0jRmNYBRNz1XrL/EdvErCoDeJ8/gF8gAQm6j4
         hdOuVfsS8VR7JBcNMeYGoENEkxLGTv3CdGQyYKzH1q+zzgujsp83ikMdQN5rEEDrNE71
         qR1Yf4BvhUGWgKBrQlU4uUNN0+fEWJVSrBOnjToDz6Vq2jXfSwOUOw6Vd3gNzqT1D7aO
         L1VnpYGvuvJ4569AKgiu4R8kQxGzz3i5uXcBAeZrmJsYsxbWBugFq7piTuyFSXP+w6iV
         kHJ1Fd3/avOgABXFgC06b+8uHilJhhzuN6hR8RVUCC4XY4cqH3P2U5Pi4kEk/x0MRsVZ
         atbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QSn1WYrt;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id b6si835818pfm.28.2017.10.01.00.41.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Oct 2017 00:41:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QSn1WYrt;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id d8so2586342pgt.3
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Oct 2017 00:41:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=xpX+pt/KViJ/b4a9tdkWt9kakIQpiEfZT9YmS7Qe6Os=;
        b=QSn1WYrtGxvjFMWNuqTZuwAg45WkaM1eNNdp9Yc7v0x/eRhUWP5z9K4GSq1l7Qd/jE
         n725ZNWHbHvtXo248s5KJnNynmAZrdQD/9Mzc/Q0uwKzmL4uZ3flHkgSleF/R1OH6m8I
         /zYmqTPuK7fVHRPm3zcpHfQkEj04PLPS93QB78OawHZ51r5p23l3wTE+islk+BPSly2Q
         rYr60ECmDVyoIiMGw8QOjUnD1IHrQYL/SD+33Qp9QUseNQl6Cib8I26Q2k0z6VuUdXAi
         9e3cTXmqnTe7Pb9R2iManQCHPv/0AeuVqyom74RxWzS3cX6K6rGy9MQbTAcWgFTRz9Ej
         EjUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=xpX+pt/KViJ/b4a9tdkWt9kakIQpiEfZT9YmS7Qe6Os=;
        b=bFZe85uOSJPujnQZshnZNA3xympkZsQ5SoE+V5eMTwtbges8VX+0JrcjaCHcREHuxl
         kXnfkKeL8FXeVZ3zb5Bt0O1YCTAQdG4vI0wppJ/GCrCF3lyi+9u77TF5IrQfgkrIpK0d
         M1WwVi3Ds50J47IlqDIr3KVtTR8m+vgjZ+d7t4RMiqjpXdcE36U3zJLgJYGI9Kq2BQIP
         yVLp6HyLhPFLaoRUbDv7VmEs8PygS7FQDu39bka4oZ7KxHAFyJJ7aPNWVouojp+fTYdK
         7soTt4prs/OA6fDepvf0WEhkFF4BLUxg3ValLsY2V8q3aUzblUbNPIrLrSFDpDAvT+qs
         wmiQ==
X-Gm-Message-State: AHPjjUhaBPik8uF4GubgouZlgQWTXUnlgijhKK/yuGz6CVgrjFyVNLzn
	BJXaKly7fBpNCCpSWoDwEH8=
X-Google-Smtp-Source: AOwi7QDYqFdYWcNTGFg/F+uzpI5QIL/bXJHtLiNrt08bafidOK8dEzFqviOP0opjVE3sJBxfq8KcjA==
X-Received: by 10.84.242.12 with SMTP id ba12mr10998036plb.69.1506843686668;
        Sun, 01 Oct 2017 00:41:26 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from shreeya-VirtualBox ([45.113.152.61])
        by smtp.gmail.com with ESMTPSA id v22sm12666340pfd.113.2017.10.01.00.41.25
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 01 Oct 2017 00:41:26 -0700 (PDT)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Cc: Shreeya Patel <shreeya.patel23498@gmail.com>
Subject: [PATCH v4] Staging: rtl8723bs: Remove unnecessary comments
Date: Sun,  1 Oct 2017 13:11:20 +0530
Message-Id: <1506843680-2565-1-git-send-email-shreeya.patel23498@gmail.com>
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

Changes in v4:
  -Remove the period from the subject line.


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


