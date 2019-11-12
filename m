X-GM-THRID: 6758464167600979968
X-Received: by 2002:a25:c511:: with SMTP id v17mr25632086ybe.138.1573577788999;
        Tue, 12 Nov 2019 08:56:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:1445:: with SMTP id 66ls862175ybu.5.gmail; Tue, 12 Nov
 2019 08:56:28 -0800 (PST)
X-Google-Smtp-Source: APXvYqwyc2xgg/V6Jx+Ua8ErAYjtOoKEDgChJyy+Pf34OaoZbeUhXOkFWj5d0/JVJNayxf5vb4oA
X-Received: by 2002:a25:3410:: with SMTP id b16mr25285940yba.84.1573577788084;
        Tue, 12 Nov 2019 08:56:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573577788; cv=none;
        d=google.com; s=arc-20160816;
        b=vIMBuiyyE/VDVc0Cb0DjqNycMiz/xPcboHymukkp53stUrxf47kmD6WKpBrdMDqdnF
         ycmu9APiN3wVaVWYN7SyBWBIxyj0EmJATHUOikAxV6LO9yChbsDnunC1F/r+1QImNU8W
         udMsi3N8bn4l/SA6hheOJu8novWoJ3xjJH83qITRFMYR/2B7GTEcjrU2j05Eu6gOo1Sa
         wekfwAIAV0A02rhFxeHQkgEkke1TtVEpkXgs4eQ6n5N5mnTSlnXsP5E8PmVPHzJUpoK2
         yBhAz5tqiRbm/k/6FjL86qcjMooYAGheCmgmIRSMIp1Z+VBUdTH34UvS6fSnc60k2iJZ
         rVqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=er/wmmeDT/FC3WYdMLpILfV6MFzVIjn8Uisf7I5rS/4=;
        b=q60ux7r0ffrliTuZ6JLmDcEV69Cubg7MxEk5gooK/wKJNhRzqFL7yJ+L+VDH8m+l/u
         1Fr8n7XgKeT7ZzqgLUp94p4S3bQ3bqwFT4wW8xh9KzL6I8wcx8d1+FRLoUYcNOngms3t
         g/F9iqR046e+V5ZVD6cstXav0qs7xzWQtBXjHUoVuF03VwvEUAqoZrfJn7iW7sE1RlMC
         amgAf+0Sh7lLlYx9wKmON/Yym/K2Db7esxX6xj+QBgUd9ctYvTy65xgprJYuGoOT6sQ7
         LWSBr7TJbvb3VfX+gBsKkfKwAXwtCHYJ+kgh2tabo6VdZkF6Q2z9xkK3jAMMudoW+CrE
         bQ3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="U7/GnzSK";
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id v135si1299489ywa.0.2019.11.12.08.56.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Nov 2019 08:56:28 -0800 (PST)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="U7/GnzSK";
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x844.google.com with SMTP id g50so20477391qtb.4
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Nov 2019 08:56:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to;
        bh=er/wmmeDT/FC3WYdMLpILfV6MFzVIjn8Uisf7I5rS/4=;
        b=U7/GnzSK7a4tnxHCGdoWdfHK2Z3wQAzDYNeGO/33AvU3nvcSg30RqlkvuhDfs58kMV
         ASareLic8/lM1n6aqa03u4NIMGuH9wIlyU8m+SoiLh4MlqBclJ77M1TjMWVUyGwOLDFi
         4tlkQBBKCAJwyEGFRXVIOqjs0YKC/u9icMeC1BVNtscZPqN+rAGONDSm/4WT4YibjRL/
         qmaaTM6CqDd/RqQ8e+bQiUl+zuRc8K00AdkFTdK/21kGmloOfYrX7UVdepXxBKtS9N8A
         Bs5WY4/2FT9ktA7zj17qiTN+ttA71O1cRBJViNAM4OQzy9Ps0qI61Bt5daxulY8I/3L+
         OIDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to;
        bh=er/wmmeDT/FC3WYdMLpILfV6MFzVIjn8Uisf7I5rS/4=;
        b=lJT8LiWLPbhLtBP0oe9+6G5ct8G0JcNCPUDP1f46JO4wcyLc7hy+UFQr8NbQUTpOQw
         nXdhrJcqK3KYYUcNzoTz1Fb71oiHwKipG1XobERgGZFU6mNeeGjsEdI+MftLkEmq5Jm0
         74chhEehuJ0M3dC4CKErtJpfV1tde3+EE1Rq9TBRt1VRouh8wg5+RrPWZp1U8vXA0DFl
         0jXfVRf7EKdruofD5yOiEbR6uiycLzHE+K/pcvxgBjHhQ02zFCF/msHFOUgvpG9AJHvd
         esH8PlVycPpLUTKriJMQmel9VfLvM9no6IBWPEVYzZo3Auo9qGWhbFx8INlu62AEqMQ4
         NGLQ==
X-Gm-Message-State: APjAAAWGjdWkEVFIPQk+UxTbEuZg+p2yRCOqIvkDvHtmsKeQ1dy05aBE
	AAQ/b2eHhhxS0FXMa8SQIx0=
X-Received: by 2002:ac8:5412:: with SMTP id b18mr32561063qtq.34.1573577787752;
        Tue, 12 Nov 2019 08:56:27 -0800 (PST)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-186-154-98-65.dynamic.etb.net.co. [186.154.98.65])
        by smtp.gmail.com with ESMTPSA id e10sm11430326qte.51.2019.11.12.08.56.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Nov 2019 08:56:27 -0800 (PST)
Date: Tue, 12 Nov 2019 11:56:25 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 9/9] staging: rtl8723bs: Rename variable
Message-ID: <92695d6d57a3c8acc009d33337cd0aa9cfff3a61.1573577309.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
References: <cover.1573577309.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1573577309.git.jarias.linux@gmail.com>

This patch renames a variable name previously defined in uppercase.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_xmit.c | 24 +++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index be0d83280e1c..1f5fe218fc0e 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -1243,7 +1243,7 @@ s32 rtw_mgmt_xmitframe_coalesce(struct adapter *padapter, _pkt *pkt, struct xmit
 	struct sta_info 	*psta = NULL;
 	struct pkt_attrib	*pattrib = &pxmitframe->attrib;
 	s32 bmcst = IS_MCAST(pattrib->ra);
-	u8 *BIP_AAD = NULL;
+	u8 *bip_aad = NULL;
 	u8 *MGMT_body = NULL;
 
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
@@ -1255,10 +1255,10 @@ s32 rtw_mgmt_xmitframe_coalesce(struct adapter *padapter, _pkt *pkt, struct xmit
 	pwlanhdr = (struct ieee80211_hdr *)pframe;
 
 	ori_len = BIP_AAD_SIZE+pattrib->pktlen;
-	tmp_buf = BIP_AAD = rtw_zmalloc(ori_len);
+	tmp_buf = bip_aad = rtw_zmalloc(ori_len);
 	subtype = GetFrameSubType(pframe); /* bit(7)~bit(2) */
 
-	if (!BIP_AAD)
+	if (!bip_aad)
 		return _FAIL;
 
 	spin_lock_bh(&padapter->security_key_mutex);
@@ -1301,17 +1301,17 @@ s32 rtw_mgmt_xmitframe_coalesce(struct adapter *padapter, _pkt *pkt, struct xmit
 		frame_body_len = pattrib->pktlen - sizeof(struct ieee80211_hdr_3addr);
 
 		/* conscruct AAD, copy frame control field */
-		memcpy(BIP_AAD, &pwlanhdr->frame_control, 2);
-		ClearRetry(BIP_AAD);
-		ClearPwrMgt(BIP_AAD);
-		ClearMData(BIP_AAD);
+		memcpy(bip_aad, &pwlanhdr->frame_control, 2);
+		ClearRetry(bip_aad);
+		ClearPwrMgt(bip_aad);
+		ClearMData(bip_aad);
 		/* conscruct AAD, copy address 1 to address 3 */
-		memcpy(BIP_AAD+2, pwlanhdr->addr1, 18);
+		memcpy(bip_aad+2, pwlanhdr->addr1, 18);
 		/* copy management fram body */
-		memcpy(BIP_AAD+BIP_AAD_SIZE, MGMT_body, frame_body_len);
+		memcpy(bip_aad+BIP_AAD_SIZE, MGMT_body, frame_body_len);
 		/* calculate mic */
 		if (omac1_aes_128(padapter->securitypriv.dot11wBIPKey[padapter->securitypriv.dot11wBIPKeyid].skey
-			, BIP_AAD, BIP_AAD_SIZE+frame_body_len, mic))
+			, bip_aad, BIP_AAD_SIZE+frame_body_len, mic))
 			goto xmitframe_coalesce_fail;
 
 		/* copy right BIP mic value, total is 128bits, we use the 0~63 bits */
@@ -1391,12 +1391,12 @@ s32 rtw_mgmt_xmitframe_coalesce(struct adapter *padapter, _pkt *pkt, struct xmit
 
 xmitframe_coalesce_success:
 	spin_unlock_bh(&padapter->security_key_mutex);
-	kfree(BIP_AAD);
+	kfree(bip_aad);
 	return _SUCCESS;
 
 xmitframe_coalesce_fail:
 	spin_unlock_bh(&padapter->security_key_mutex);
-	kfree(BIP_AAD);
+	kfree(bip_aad);
 	return _FAIL;
 }
 
-- 
2.20.1


