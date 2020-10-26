X-GM-THRID: 6887932318725439488
X-Received: by 2002:a4a:e1bc:: with SMTP id 28mr14408041ooy.53.1603721715802;
        Mon, 26 Oct 2020 07:15:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:53cb:: with SMTP id h194ls2175112oib.4.gmail; Mon, 26
 Oct 2020 07:15:14 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzl+HyZIHkqfrjqbntkPCxXp5YvQ386VKsVIQmAbB3+VoecOJYRHr3OoIF4Svwddy4C5HsE
X-Received: by 2002:aca:c490:: with SMTP id u138mr13108026oif.54.1603721714548;
        Mon, 26 Oct 2020 07:15:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603721714; cv=none;
        d=google.com; s=arc-20160816;
        b=jnruHCtbotBA/1inCT89WbN0D7cQ33yfM21xEB9q6w3e3NvwuWRiuj27AlHXlTdkpT
         qz3EgDm3PwNW+X1/TLtThrfnyX2jdVsZiuUbNUwaBXavbROSrIeXO5vzZxxXsQwCG/Sa
         Bb2UDJfwlMpaBO7NITzp9hnlzlbqYX7bIl4iVy0Pg+YVFnNkmQ+hgKsBKoR4GuN0BGCa
         wkvYAGVFbrvpBRWI0mzn4gMAPCjY+KVFIsRrGTlb/I4DbBrk5nW6BBf8VAk8Hk9XJOZc
         wgeSGppBCvTyn4Q+AQZ8osb7OYlIovesWlapsqWR0bbx5koL+aD3BN25uxwZeeBwR7ok
         yBCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :dkim-signature;
        bh=kHzaab5rOrQcGnTeT+HYKXsDvvc2VVFqNT1CkmKibCk=;
        b=m8BLoVJw/mIBuiwWmR7xq8XljdDH+VfNDS3gW225bZzgNgaBjMH8Ibe5qfSlqmXziL
         6H9gcGELAURf0TCNmyn8Hp0CT/MaijFG5hsp4K7+00HoZF0aCswjf8zkDAqlBVUE+k0B
         ifVkA4MNeQr//eedXiNz1iMbJbk9+G8ixAKP5zeB3MZFVujuEcN7Agih6gTMmbJmOuXw
         RYBPavQ9YJn1DMiH0rzWQC5TOuxcud4MmFxxDJbvk+3TOI2CkQeoIhqGoE8dRpNzo6QX
         XKCUbBe3zHau1my/NdwKUfRII9kXG+S3olWfFNxjXV1kIdqKmLTM/NrphmJCUjnEJ4VQ
         67bg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fnm3FY8d;
       spf=pass (google.com: domain of amarjargal16@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=amarjargal16@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <amarjargal16@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id i23si922712otk.5.2020.10.26.07.15.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Oct 2020 07:15:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of amarjargal16@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fnm3FY8d;
       spf=pass (google.com: domain of amarjargal16@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=amarjargal16@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id b3so2925774pfo.2
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2020 07:15:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition;
        bh=kHzaab5rOrQcGnTeT+HYKXsDvvc2VVFqNT1CkmKibCk=;
        b=fnm3FY8d79HSZzUEJv3YSeQ03Vsi6aEZUzb3lLhCOhMD+pA0X3NMdTv3X6qG/wdcz8
         wf/ofBtx/YTY7jN2IpqRs8x3mQdwL5RImmbT7V9SNupemwXqKt5aR6SaMtleGLVQPU0O
         oulPXG8iLYs77gNSLVdUeQyvkOuokWhcEnN8gCm7Ktgi+3PFci2wbNfA8FgLNEUu3PMX
         bXoI6fHDFlBbjrxc2FuNrJ1ZYI3K8QBwuHZkol0mxqjtqSblBp17MuUhba46jeLwI7oR
         Z7kgABnf+QJ8br6DdEv9hif0fPYrKoVvruneT0AavXjlc4IeW+chd21dLEqP7qavbK+P
         mNkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition;
        bh=kHzaab5rOrQcGnTeT+HYKXsDvvc2VVFqNT1CkmKibCk=;
        b=QNmoue4XLug8S/ov1O372e8uEZBT1jWF68SiCmwybswX83Bg+PFXke5g0b3LVko/cG
         m8jbdaIoLyoeohDtawKeXmC3WfMraHem8y7s5aL+fs9L0hp+eJRmm1MhOwPMXbzirLQA
         pw5xGsFF14Nre0wgwU3TVeyF/RLUc3nB4ANBffW6PBid89GggGL7xJAQFeqj11dfDybK
         C746cpq7mokIOB8AG++ItG2XOkQSp6wknj9K9PIxqEipX8rKWwmWDXYVD+IYH1G8Mxix
         h/ARYiTy0hcOpj6RST98rdLaWR0i/8l4YnFRq3iXBTAfKwj0YnPXzwyMkIyvwpZQWir3
         W0Mw==
X-Gm-Message-State: AOAM530EjetrqQte3keWOAtW6mf5Uyv/KcvkLyhBXR94oTtqNgrZhB4Q
	89neHd4BGcTRsO04Pv25OoJVHLKTvNehMg==
X-Received: by 2002:a62:7942:0:b029:162:bf9f:6457 with SMTP id u63-20020a6279420000b0290162bf9f6457mr6844818pfc.59.1603721713963;
        Mon, 26 Oct 2020 07:15:13 -0700 (PDT)
Return-Path: <amarjargal16@gmail.com>
Received: from AJ-T14 ([122.201.22.243])
        by smtp.gmail.com with ESMTPSA id i17sm11985937pfa.183.2020.10.26.07.15.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2020 07:15:13 -0700 (PDT)
Date: Mon, 26 Oct 2020 22:15:10 +0800
From: Amarjargal Gundjalam <amarjargal16@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8723bs: cleanup NULL check before vfree
Message-ID: <20201026141510.GA21791@AJ-T14>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Remove redundant NULL pointer check before vfree() since vfree() does
its own NULL check. Reported by coccinelle.

Signed-off-by: Amarjargal Gundjalam <amarjargal16@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme.c    |  3 +--
 drivers/staging/rtl8723bs/core/rtw_recv.c    |  3 +--
 drivers/staging/rtl8723bs/core/rtw_sta_mgt.c |  3 +--
 drivers/staging/rtl8723bs/core/rtw_xmit.c    | 14 +++++---------
 4 files changed, 8 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index 9531ba54e95b..263f132cafdc 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -112,8 +112,7 @@ void _rtw_free_mlme_priv(struct mlme_priv *pmlmepriv)
 {
 	if (pmlmepriv) {
 		rtw_free_mlme_priv_ie_data(pmlmepriv);
-		if (pmlmepriv->free_bss_buf)
-			vfree(pmlmepriv->free_bss_buf);
+		vfree(pmlmepriv->free_bss_buf);
 	}
 }
 
diff --git a/drivers/staging/rtl8723bs/core/rtw_recv.c b/drivers/staging/rtl8723bs/core/rtw_recv.c
index 6979f8dbccb8..560c188f0309 100644
--- a/drivers/staging/rtl8723bs/core/rtw_recv.c
+++ b/drivers/staging/rtl8723bs/core/rtw_recv.c
@@ -95,8 +95,7 @@ void _rtw_free_recv_priv(struct recv_priv *precvpriv)
 
 	rtw_os_recv_resource_free(precvpriv);
 
-	if (precvpriv->pallocated_frame_buf)
-		vfree(precvpriv->pallocated_frame_buf);
+	vfree(precvpriv->pallocated_frame_buf);
 
 	rtw_hal_free_recv_priv(padapter);
 }
diff --git a/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c b/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
index e3f56c6cc882..dad982ed4ecf 100644
--- a/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
+++ b/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
@@ -177,8 +177,7 @@ u32 _rtw_free_sta_priv(struct	sta_priv *pstapriv)
 
 		kfree_sta_priv_lock(pstapriv);
 
-		if (pstapriv->pallocated_stainfo_buf)
-			vfree(pstapriv->pallocated_stainfo_buf);
+		vfree(pstapriv->pallocated_stainfo_buf);
 
 	}
 	return _SUCCESS;
diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index 6ecaff9728fd..10a34bce1f67 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -290,11 +290,8 @@ void _rtw_free_xmit_priv(struct xmit_priv *pxmitpriv)
 		pxmitbuf++;
 	}
 
-	if (pxmitpriv->pallocated_frame_buf)
-		vfree(pxmitpriv->pallocated_frame_buf);
-
-	if (pxmitpriv->pallocated_xmitbuf)
-		vfree(pxmitpriv->pallocated_xmitbuf);
+	vfree(pxmitpriv->pallocated_frame_buf);
+	vfree(pxmitpriv->pallocated_xmitbuf);
 
 	/* free xframe_ext queue,  the same count as extbuf  */
 	pxmitframe = (struct xmit_frame *)pxmitpriv->xframe_ext;
@@ -304,8 +301,8 @@ void _rtw_free_xmit_priv(struct xmit_priv *pxmitpriv)
 			pxmitframe++;
 		}
 	}
-	if (pxmitpriv->xframe_ext_alloc_addr)
-		vfree(pxmitpriv->xframe_ext_alloc_addr);
+
+	vfree(pxmitpriv->xframe_ext_alloc_addr);
 
 	/*  free xmit extension buff */
 	pxmitbuf = (struct xmit_buf *)pxmitpriv->pxmit_extbuf;
@@ -315,8 +312,7 @@ void _rtw_free_xmit_priv(struct xmit_priv *pxmitpriv)
 		pxmitbuf++;
 	}
 
-	if (pxmitpriv->pallocated_xmit_extbuf)
-		vfree(pxmitpriv->pallocated_xmit_extbuf);
+	vfree(pxmitpriv->pallocated_xmit_extbuf);
 
 	for (i = 0; i < CMDBUF_MAX; i++) {
 		pxmitbuf = &pxmitpriv->pcmd_xmitbuf[i];
-- 
2.25.1


