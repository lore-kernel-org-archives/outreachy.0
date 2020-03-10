X-GM-THRID: 6802571997822844928
X-Received: by 2002:adf:e546:: with SMTP id z6mr28527679wrm.423.1583847217524;
        Tue, 10 Mar 2020 06:33:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:c4c6:: with SMTP id g6ls207820wmk.0.canary-gmail; Tue,
 10 Mar 2020 06:33:36 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvavDM06ZNZ3E2lBoWwr21tP3MTK9xKFPAxZBHW8f+jc4s4HklSNz3bltRCpWiOlB96JzHY
X-Received: by 2002:a7b:c3cb:: with SMTP id t11mr2403339wmj.154.1583847216371;
        Tue, 10 Mar 2020 06:33:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583847216; cv=none;
        d=google.com; s=arc-20160816;
        b=TsVhrV4493OPUSbznr2g72JC55yV8tu/tBpGUVY+MFuzN9CCac7hg4er5VltoqWBQM
         qtWaspo9oY8BAdkYdJBm01wYZo8qycm74MRB9Gh6Box+n8bAxXFPQLtC7qetEH5XK6zB
         Z8BEiZhDXcIseNYQxLP0qeE7dt1/oGWTHb23uLaD5ThqYOScEQrD0C7gwhkfYGRm5H76
         GwJiAOi6fGI4IykQNN/1KoFyVzHw7e7ZNMrTk+uPxFxrRLBI43+bn79c/8IXxq7XGD45
         YerVdsaARcXmGYWMbxPJ2MEzsZtmwXn5rDZ5AWhGv+0rwFgb0P7p/+8jtJCmqFHRtwTr
         RDfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=6ijpdpyyfgFVa6yPZsSq3+PkNqFl1t23TpFXB4WcLZg=;
        b=dlSUCLwZtwp1BqLVHYUSvqLGUdBcpX5agenY7JNzfnkDi7Jx31U82I/LEH1LWqlFm4
         VNhzxeCXpU5q7C2DEM486zK6QPbzjRrbGTrwhGtvpx+GI6VaULmOvT2pOi7P0xjkzCux
         EeBp1uCpkhs7DX6cwkmteolf7YWAFbSq4uccjSsQl5goXYeFVeb/VJV2UAZqUZp+yCNa
         2e6tpGg+pXEd8zo9xo+m7u5ykv5QaU+gRGSRE8SNwk5YpemV0UQeO7BYOcCrD/yTjiOc
         ks7pO25BRogaRztc/n9l4+xWcuTe41AAYSZnyEhSJigKYzV7MJTWLSIyrbMoaqGK+5zg
         LVTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=BVoxNfAp;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::42d as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com. [2a00:1450:4864:20::42d])
        by gmr-mx.google.com with ESMTPS id n7si147118wmc.1.2020.03.10.06.33.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 06:33:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::42d as permitted sender) client-ip=2a00:1450:4864:20::42d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=BVoxNfAp;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::42d as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wr1-x42d.google.com with SMTP id s5so11987134wrg.3
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2020 06:33:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=6ijpdpyyfgFVa6yPZsSq3+PkNqFl1t23TpFXB4WcLZg=;
        b=BVoxNfAphlkDsAjEYZPwepFlUqKAVQFIriOnPkUr7VJNVqSEoCld2W7dTka6bpEUks
         FdBOa5eM+38csV0+qom4Vr1x1DptN+60k1LCRtVFaenkzhMJG195+XR/Mu/6GQ1MXYlU
         JgFAOFYZT4xBDmLN2/4JMvU6cynTej7SRExUw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=6ijpdpyyfgFVa6yPZsSq3+PkNqFl1t23TpFXB4WcLZg=;
        b=hO8obuT4ZiISPhy6aJuRm2m1tSFEKWhv4oIIQDRHFRsTTp0FRT5VzNC0g/MOePDA+Z
         FJYl3i3Klz1RYhJIuZhPsGZSeI8j8hPBhHHpvL9us3wCM6JRAUqGmmooL91/tY2hAuk3
         ED4YhDqMvrgSWgHb/PnL6ZmZxgxp8u0b54vEtqU0FQGl3VPuZuptQ7Q2t3i0Xjv+CVNp
         H9M6GZmj+oiMO4qy5L/tvjreJ9IEBppd9MgKHXFThUcZco+fba/8XWsmIUS2BKIFmknN
         kOGA4UPhE0SvvC+De2GQxvnwutEWKGq84iZ58MxEC5QamZ5F55dma0mJe/4p8I2CtGV+
         BTUQ==
X-Gm-Message-State: ANhLgQ1iE67N2MSqc5yN1QougfTwC8EjTSZC2XsEa6F9C0P5tzvW81wB
	Fmymba1lKufdytfLEk1IooAWWmtC0FEaAw==
X-Received: by 2002:adf:e485:: with SMTP id i5mr17163808wrm.81.1583847215778;
        Tue, 10 Mar 2020 06:33:35 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from localhost.localdomain (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id f4sm10462018wrt.24.2020.03.10.06.33.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2020 06:33:35 -0700 (PDT)
From: Lourdes Pedrajas <lu@pplo.net>
To: outreachy-kernel@googlegroups.com
Cc: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org
Subject: [PATCH 1/2] staging: vt6655: power.c: Remove setting ATIM Window in PSvEnablePowerSaving()
Date: Tue, 10 Mar 2020 14:33:08 +0100
Message-Id: <20200310133309.8332-2-lu@pplo.net>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200310133309.8332-1-lu@pplo.net>
References: <20200310133309.8332-1-lu@pplo.net>

Every time priv->op_mode is not NL80211_IFTYPE_ADHOC it sets ATIM Window, but
this feature it is marked TODO in 2014 and did go untouched since 2015.

Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
---
 drivers/staging/vt6655/power.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/staging/vt6655/power.c b/drivers/staging/vt6655/power.c
index bfd598a93b04..a68ec527679a 100644
--- a/drivers/staging/vt6655/power.c
+++ b/drivers/staging/vt6655/power.c
@@ -58,11 +58,6 @@ void PSvEnablePowerSaving(struct vnt_private *priv,
 	if (priv->op_mode != NL80211_IFTYPE_ADHOC) {
 		/* set AID */
 		VNSvOutPortW(priv->PortOffset + MAC_REG_AIDATIM, wAID);
-	} else {
-		/* set ATIM Window */
-#if 0 /* TODO atim window */
-		MACvWriteATIMW(priv->PortOffset, pMgmt->wCurrATIMWindow);
-#endif
 	}
 	/* Set AutoSleep */
 	MACvRegBitsOn(priv->PortOffset, MAC_REG_PSCFG, PSCFG_AUTOSLEEP);
-- 
2.17.1


