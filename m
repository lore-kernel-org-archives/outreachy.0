X-GM-THRID: 6802570683700215808
X-Received: by 2002:a2e:88cc:: with SMTP id a12mr12160756ljk.15.1583846913204;
        Tue, 10 Mar 2020 06:28:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:a58b:: with SMTP id m11ls2452476ljp.0.gmail; Tue, 10 Mar
 2020 06:28:31 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtEa01O+m52HtLyXkTHoteAdsXmvPa7reT+FOFJl6jzss6KpTtPeZ8ufAj8OCEijZTaJtDQ
X-Received: by 2002:a2e:a584:: with SMTP id m4mr12992248ljp.46.1583846910978;
        Tue, 10 Mar 2020 06:28:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583846910; cv=none;
        d=google.com; s=arc-20160816;
        b=qmm8YmRs4QkVWV0edMpI7WUd3T/oSI/CO6wvBtSlwle5BE+DsIDB6i5zEldfgaFnRz
         1QYzbzR+iywcecVgmH0EZ1kJT9j6Ze9K9SxIcgX6ixfwwD17u1rDkRHbTQPYWFn3I30m
         3+lgV878B3xSSPnFDB2JXssRBVPgpWzneQb/FwkMzY0FfnMT3yEE4rDdS+DogsLSR2A9
         8DFN7mPBBByXkHuCEAtlLBE6X8bWwRmWmns9wLEMHenV3I2e2SUOMnv8qzQt6QnmID8e
         l/tYSH1qsH+9oX6k7aLOcyBC3cw7gBredJQ09ByZGD0W+FgoUAFysOZs39dJZv33SRc/
         tUNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=4LUrmGstzTweMklgAelu4ljhBa90Xh/HUDk8h/5M5B8=;
        b=If8KD87890afHqxxAL8Fr99fbh+4YQRWw8dMeqzwAXSvUCG34GLF0ph5D/9ipi9abl
         F3djZaSq2XuqjcrjiJeqxqohDWScA3T+47x22jMmTneCnCSaTxSWH4W1zaaqhs3+tPun
         ohdrw729rVdxm7rOF0rp4XyGLEjiqWaSOkfKpHtB3Ycwx0at3Go2UqHWF87ALsQ51Nrb
         bUIG6gOkSJGnL8pSFXc3HE4oQkAs6sPPpFX/qhcvHN60AZoqQJPkQ4o7eWdt++Cbbebg
         ZcKwQbDdLbIuR5Bm+Z/C6bWiOKn3W2bBcgSS3UMTYpoX4uBZsG2ee3ZirelOc+X/k5Mu
         B1RA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=Ax8Q3cLb;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id p14si380757lfo.0.2020.03.10.06.28.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 06:28:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=Ax8Q3cLb;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wr1-x443.google.com with SMTP id 6so15887502wre.4
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2020 06:28:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=4LUrmGstzTweMklgAelu4ljhBa90Xh/HUDk8h/5M5B8=;
        b=Ax8Q3cLbkoRDExIucWr5Q3QD1+CR1PLZZqhP7+1iHGbVPd58F9L0PS4vDUnO35FtHY
         ilMBYX7whM/LiNnhUWKSZE1gALa20PuoxOe/Q3qDzyax3AZbKEJxDTN066P380WgKWV+
         sesJ0GkShS9fpyLs7NhpbVHWkRAVApwXAKzF8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=4LUrmGstzTweMklgAelu4ljhBa90Xh/HUDk8h/5M5B8=;
        b=KU19EnMNGXRkFug8dsOgG58y1QiXW+WylmwfOlvVdI2f0ybA6OaMaJuvbkBgg3xjaE
         iW72K1EX1qbHN79n8sBzZ7wktbm8+dDA3mUGPA2l4RBw4N6YuKzBjk4qumpSvQOKjfMD
         YDJDWmVEXpRxFLSIeC+IJwHuf3/0u43bLFUgbp0l+hcT7279zOYFPV31rCGsh92o6Ed8
         a8bdai0BWpRB0YvPz9GsZ81Lxio5NVSXDxtP7W94dyvI31sawpoBNLhpR69DTv3Rp0w2
         bTuzcUWzchy7XKo3xFOkhZCXlNKtLJcWZRNnJsrw9bsPwOPwYbXddUsyPeyihLwto2Eo
         s6Tg==
X-Gm-Message-State: ANhLgQ3tGqXx2qVXzsIfjHvPaBWL6x8DsNVLhTWSut93bGPhKxzTKOvD
	SdE6oNs8DAcIH1XxRgXykgxdjFFTXm8VmQ==
X-Received: by 2002:a5d:6782:: with SMTP id v2mr9132497wru.218.1583846910188;
        Tue, 10 Mar 2020 06:28:30 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from localhost.localdomain (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id u17sm3871275wmj.47.2020.03.10.06.28.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2020 06:28:29 -0700 (PDT)
From: Lourdes Pedrajas <lu@pplo.net>
To: outreachy-kernel@googlegroups.com
Cc: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org
Subject: [PATCH 2/2] staging: exfat: exfat_super.c: code reformatting for improved readability
Date: Tue, 10 Mar 2020 14:28:14 +0100
Message-Id: <20200310132814.8269-3-lu@pplo.net>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200310132814.8269-1-lu@pplo.net>
References: <20200310132814.8269-1-lu@pplo.net>

Improve line grouping for better understanding the course of action and where
every comment belongs to.

Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
---
 drivers/staging/vt6655/power.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/staging/vt6655/power.c b/drivers/staging/vt6655/power.c
index a68ec527679a..6b0407694e54 100644
--- a/drivers/staging/vt6655/power.c
+++ b/drivers/staging/vt6655/power.c
@@ -59,8 +59,10 @@ void PSvEnablePowerSaving(struct vnt_private *priv,
 		/* set AID */
 		VNSvOutPortW(priv->PortOffset + MAC_REG_AIDATIM, wAID);
 	}
+
 	/* Set AutoSleep */
 	MACvRegBitsOn(priv->PortOffset, MAC_REG_PSCFG, PSCFG_AUTOSLEEP);
+
 	/* Set HWUTSF */
 	MACvRegBitsOn(priv->PortOffset, MAC_REG_TFTCTL, TFTCTL_HWUTSF);
 
@@ -96,10 +98,13 @@ void PSvDisablePowerSaving(struct vnt_private *priv)
 {
 	/* disable power saving hw function */
 	MACbPSWakeup(priv);
+
 	/* clear AutoSleep */
 	MACvRegBitsOff(priv->PortOffset, MAC_REG_PSCFG, PSCFG_AUTOSLEEP);
+
 	/* clear HWUTSF */
 	MACvRegBitsOff(priv->PortOffset, MAC_REG_TFTCTL, TFTCTL_HWUTSF);
+
 	/* set always listen beacon */
 	MACvRegBitsOn(priv->PortOffset, MAC_REG_PSCTL, PSCTL_ALBCN);
 
-- 
2.17.1


