X-GM-THRID: 6527353314179284992
X-Received: by 10.223.157.196 with SMTP id q4mr1464284wre.23.1519767873318;
        Tue, 27 Feb 2018 13:44:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.139.138 with SMTP id o10ls711068wra.1.gmail; Tue, 27 Feb
 2018 13:44:31 -0800 (PST)
X-Google-Smtp-Source: AH8x2277oE1JsNJCdY20jxAQ53kuLaXYUnEoPy/Od6ptWtXar+n09n/1mM4/3DuoMLiSgKrzPxKd
X-Received: by 10.223.182.142 with SMTP id j14mr1445848wre.15.1519767871565;
        Tue, 27 Feb 2018 13:44:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519767871; cv=none;
        d=google.com; s=arc-20160816;
        b=oX2PkZyoOGua9PVri4ftn/SdglM/kQxPBTlXoWOeP+4/rSM7greDPdz19hFJ0m60tI
         ktnqfusbtiSimKJ8ob+rJHHcZgJstEUN2O0m8+0DHrQycxhxU8uYP5Q7hImmYiEbA36p
         R2R1n68AmXILYIblkl2A37XPMUJ62bqdqlq5tiDQjzKrYciwOvkJVoE3ptPHMwiIVVuR
         IFtfAcgur4aVnVTDSknqlHYo6Sku+3O6GBadvfG4Wx987ScMYw3tLcURFQqdZQKFXKLX
         m3Y4OMmAx6yRcPpeMEZnYS9aZUVKLJGq+0yQPeA3GRbZt0E9c7A5qrEKMAtgNSS41BrM
         ohZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=uBWCE2Vd1xS3jxQcRqXki37cdweVA1wqDiMDedZqYts=;
        b=p2Sd4yquQ+U0yLBBIvTmqnysdG+YbDr1xt5ikp4aVeDHFJnczbDUCLPMWFQjNMhZEj
         F2DkZAdonBtn+ZA5vthRhGcWoHqSW/MAzK/gy/XvksKix6Ul0QcaP0qtUQWBaYAa+r5+
         Fl+YezD8/aep/Dvg3UIcZM643Dp1/9710yWgv23bKPetpDdVxxGZi/9CaS/BCIninNv8
         sXen8N/VY5Dzb5xAJTBBZFk2FCZ0YN6khgVSuicEOQ8JCK4h5cFtuM8B47Vo5KwEKAAE
         XsoV3jC9wDy5XJsCnYPoEZevfK19JrSlsr/VrwZGXP62+jjfgO6UDZ3SF2e9AWUU/j4B
         pofQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N+bFi2SN;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c0c::235 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wr0-x235.google.com (mail-wr0-x235.google.com. [2a00:1450:400c:c0c::235])
        by gmr-mx.google.com with ESMTPS id v8si6908wrg.2.2018.02.27.13.44.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Feb 2018 13:44:31 -0800 (PST)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c0c::235 as permitted sender) client-ip=2a00:1450:400c:c0c::235;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N+bFi2SN;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c0c::235 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x235.google.com with SMTP id l43so307313wrc.2
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Feb 2018 13:44:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=uBWCE2Vd1xS3jxQcRqXki37cdweVA1wqDiMDedZqYts=;
        b=N+bFi2SN0lgtCpFdSod7MQ3MfB+4yZyOXCYE2t1srFb2i9PmWZIgte7FGz+oew/8ig
         5NO8ycxrvc6VA5WrhieTEeNSqf5iiXlMbDakubNf2gXbajOQStjxZwzc+ldHhtUWEhBj
         KMyknqwllgrBGGtKmMNFuULBR87Yi5OxNNB+Pt+vHU0Ua4LP7w5sSo5TJzHzQxdp1s5Z
         OlB8OqQZMuBJzPP3xDiLehhgS3Q763McMGWbd7iyGGnhOCALPG/UaOktBOw+oRKzlupX
         fwMsbNzIwHercjyAqFEqhkTNXQFF77fZlcIO+DN3E0Ouj2GAd6GCeVEed2APPmVsU/G5
         E1Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=uBWCE2Vd1xS3jxQcRqXki37cdweVA1wqDiMDedZqYts=;
        b=d3PSZIeKB1F/u/L4FCnYRyWhHRXtUPkMPUGTTqXJsH0TOz+oLT4EQN6ADuzn3TkTFO
         +MoRkDLGtOyqJrtPttfgBj+CZlghZNNF+jeobbRWfZaS3pvDegbdC+bKpjN1oQoY+6Gq
         Y8fLZnQuv1YyQiVuAVf33RWJb+6cxpygHSYKbPPNYuQ14ryi5VC2FStgjK8A3QheT3TQ
         0oABfkfpgsgeZabRGJgNCaQHXDdj2Lar6moOPYZWdDf6qqo/5cGBvdyhQRmHJQAzczL5
         CyL+0SNm9wGzoS/khAle8IXi3ElRLkLufqOKriZNfO2/DxtwJL21j5IH1DjOUw3p1Kf1
         rm+w==
X-Gm-Message-State: APf1xPAcvWl3BudBfFNkSUPJaF4hdrzl/NTf2+KVYJpb9JmM9JQe8/40
	y60s8kNlj3dYrwdn//R84cj93g==
X-Received: by 10.223.150.102 with SMTP id c35mr14170345wra.225.1519767871139;
        Tue, 27 Feb 2018 13:44:31 -0800 (PST)
Return-Path: <dafna3@gmail.com>
Received: from gmail.com (IGLD-84-229-54-107.inter.net.il. [84.229.54.107])
        by smtp.gmail.com with ESMTPSA id z73sm568643wmc.3.2018.02.27.13.44.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Feb 2018 13:44:30 -0800 (PST)
Date: Tue, 27 Feb 2018 23:44:27 +0200
From: Dafna Hirschfeld <dafna3@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8723bs: use kmemdup for allocation and copy
Message-ID: <20180227214423.GA3771@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Use kmemdup instead of kzalloc and memcpy to simplify the code.
Issue found with coccicheck.

Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index d6cef9e..0ce9b47 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -433,13 +433,12 @@ s32 rtl8723b_FirmwareDownload(struct adapter *padapter, bool  bUsedWoWLANFw)
 		goto exit;
 	}
 
-	pFirmware->szFwBuffer = kzalloc(fw->size, GFP_KERNEL);
+	pFirmware->szFwBuffer = kmemdup(fw->data, fw->size, GFP_KERNEL);
 	if (!pFirmware->szFwBuffer) {
 		rtStatus = _FAIL;
 		goto exit;
 	}
 
-	memcpy(pFirmware->szFwBuffer, fw->data, fw->size);
 	pFirmware->ulFwLength = fw->size;
 	release_firmware(fw);
 	if (pFirmware->ulFwLength > FW_8723B_SIZE) {
-- 
2.7.4


