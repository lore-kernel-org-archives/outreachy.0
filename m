X-GM-THRID: 6258991526241632256
X-Received: by 10.140.159.7 with SMTP id f7mr13579457qhf.3.1457285025611;
        Sun, 06 Mar 2016 09:23:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.38.69 with SMTP id m66ls763442iom.89.gmail; Sun, 06 Mar
 2016 09:23:45 -0800 (PST)
X-Received: by 10.107.135.209 with SMTP id r78mr13695771ioi.19.1457285025270;
        Sun, 06 Mar 2016 09:23:45 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 12si2426859pfb.1.2016.03.06.09.23.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Mar 2016 09:23:45 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id x188so4399369pfb.2
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Mar 2016 09:23:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=VMZxZ8rQLEkTI+TYf2qThwlCUT84RecyRZVgcByk04E=;
        b=HHq+XsU2BwOzhR7043PSBzfORwa0SbHulGV7M0drbwHfteUKO09+4MuGECBwEfLKrT
         mcaXKtbs6pamNybDYs3aIFUsJDmpfeIK2s7WkL/NBfVz2/D4hdBnI5PXCPy7hYSnabIn
         i0rwqK5V6LaJTOwAaquPTysbl8orgR0z5YYLcxMVc75kf4l8vlJf+Ne+cs/jiBwwjta2
         RHW/c/qeVhwSUMJfZ5QWTzSlvr3d/c0jhMEz0d+nBcFx+UftE7K3+LhjA925bcc4gwmc
         TLFhrFya5Ddi1pDQsBHP1/ix2rfwpg/lIQq50Yjwk6+jLzN4H8iGJCNrq3xeMg4PZOkN
         aeQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=VMZxZ8rQLEkTI+TYf2qThwlCUT84RecyRZVgcByk04E=;
        b=f0AjqWtGMYQvu2RBlPRGfI7hXu0XZ3Gk9jbyR59WUPPY84TPfyPN8yBOeySycrtmnV
         65QzXvKyiMY3Kohgvzd+AjKfeFpdyMr3I6pob4zue30NYNiJkB1fXzFbrG+q1Pv4gsHY
         dGYll06L31g74Q1xYAq3arPjFfgeD1JHsfsXk863J7noZwSBeQGf12qn6KsL7haysu7I
         6bLQVfasTWjfvy4eqgV0I4dvDroY0Ka2Dnh+02J5JvoW25l+2ktrrmhEgYEtLwNs8nAx
         eG/wejj3BvINjdTJKvQFksnTvNw35J/jwc0yaly9c4sRkzZKzeR2NqDLoGbhL2M0Ce9c
         MX5A==
X-Gm-Message-State: AD7BkJJiCmADloU4SpmLMsDHoApbEHeeGClWk5Pzg/XkjwZ42MtKHrPA1JFTpBqbXPmTDg==
X-Received: by 10.98.44.73 with SMTP id s70mr27763348pfs.2.1457285025126;
        Sun, 06 Mar 2016 09:23:45 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.154])
        by smtp.gmail.com with ESMTPSA id vy6sm18819452pac.38.2016.03.06.09.23.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 06 Mar 2016 09:23:44 -0800 (PST)
Date: Sun, 6 Mar 2016 14:53:56 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: vt6655: Remove unnecessary blank lines.
Message-ID: <20160306092356.GA2606@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove unnecessary blank lines.this problem is captured by checkpatch.pl script.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
Changes in v2:
* No change.
*Compile this patch to check nothing is broken.

 drivers/staging/vt6655/card.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
index 6c1b973..3d33812 100644
--- a/drivers/staging/vt6655/card.c
+++ b/drivers/staging/vt6655/card.c
@@ -443,7 +443,6 @@ bool CARDbRadioPowerOff(struct vnt_private *priv)
 		MACvWordRegBitsOff(priv->PortOffset, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE2);
 		MACvWordRegBitsOff(priv->PortOffset, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
 		break;
-
 	}
 
 	MACvRegBitsOff(priv->PortOffset, MAC_REG_HOSTCR, HOSTCR_RXON);
@@ -499,7 +498,6 @@ bool CARDbRadioPowerOn(struct vnt_private *priv)
 		MACvWordRegBitsOn(priv->PortOffset, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPE2 |
 									    SOFTPWRCTL_SWPE3));
 		break;
-
 	}
 
 	priv->bRadioOff = false;
@@ -812,7 +810,6 @@ bool CARDbIsOFDMinBasicRate(struct vnt_private *priv)
 
 unsigned char CARDbyGetPktType(struct vnt_private *priv)
 {
-
 	if (priv->byBBType == BB_TYPE_11A || priv->byBBType == BB_TYPE_11B)
 		return (unsigned char)priv->byBBType;
 	else if (CARDbIsOFDMinBasicRate((void *)priv))
@@ -861,7 +858,6 @@ void CARDvSetLoopbackMode(struct vnt_private *priv, unsigned short wLoopbackMode
  */
 bool CARDbSoftwareReset(struct vnt_private *priv)
 {
-
 	/* reset MAC */
 	if (!MACbSafeSoftwareReset(priv))
 		return false;
-- 
1.8.3.4


