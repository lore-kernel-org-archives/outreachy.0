X-GM-THRID: 6802291814363561984
X-Received: by 2002:a05:600c:248:: with SMTP id 8mr395244wmj.182.1583781981095;
        Mon, 09 Mar 2020 12:26:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:a5c6:: with SMTP id o189ls524151wme.2.canary-gmail; Mon,
 09 Mar 2020 12:26:19 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv7Dqqk+8A+c3WGZiA4MBexHGqMSGs9wmEy9ijfDFmG8x4owArK7tHnECxvAU8SlefbV71d
X-Received: by 2002:a1c:5541:: with SMTP id j62mr811718wmb.40.1583781979688;
        Mon, 09 Mar 2020 12:26:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583781979; cv=none;
        d=google.com; s=arc-20160816;
        b=0uYpCyt9PCNk6av7lEl5vqXxVkVlAM3Utg9ZmMnPKy6/9ajy2R8ixi2VmF/G5JLh6l
         5taVxPZsSK//lvmNwNoZrwvr1h04tU/g24OWygiqh/w0exGe5FU3xjvl4AtD86MNDvS0
         HJjzSjS59qFEFTfWeBswVQkE0BVXFwRn9unmc7CVR3SDrbREgYNoJGbm2PNkd/DC0nlP
         qiyEOJg99kSaNUDEtgJUuwmf7GefkdB0iLOgOwNWLRUndAelHBCgzXdmWMFcVvg1a0gv
         iZmOqE5poC0RBtR3E/7LMfF1yd5WqhaPFDcDvqMYON8fnJ831MnIpQLiCL28em+DUdQ7
         c4Xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=9ncFUUH08gg9iNpsrmq703WArQQwtUVrot+IvPSNEbY=;
        b=oyXXrFi/v0kmM7gZFw/o3c72sCqHquA7uXOo1x4Rdm9nibaQ3Kw08lvNEWVYCUqy4T
         SCVWNM63M6sBDpMu3Z2PdA7ezvhlq6q6Ube0B17Cw/SeMqMMFfJOVcuk7LiEtWGPfCsN
         5mfMgX5vCxNGJxErSuQ3QVHjinuVDDqvpIS4x/ZxomsyeYXaFSsuTqtUwkc1XFl4SLwV
         vc9VFlmKHOqFXC5ptOelOPLHrVr+BFHPNvJnBXA/XC3MM2/IlY+nCPbJF06pelw1YLPA
         Q5Ecqgu0gRaNCZ6IlkXxBpu1V71pY7bp51Sp2Xk4L399lKco7sIkfbha4g+MFcUt4dld
         N6MQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=FvEZMUHT;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id w20si40389wmk.0.2020.03.09.12.26.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2020 12:26:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=FvEZMUHT;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wm1-x342.google.com with SMTP id g62so618584wme.1
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2020 12:26:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=9ncFUUH08gg9iNpsrmq703WArQQwtUVrot+IvPSNEbY=;
        b=FvEZMUHTUFA57MewO49nAMESLvaQSrGYHZWdbHY0rRztzqPWkwZ6F8gmI1sBXM6WUP
         1IdEfhRxoW2tGweSFSU51ipouzFfHFPhEUN+EvHvbt1InKD/CrFxSPhY76Srmlc8yfDC
         0GBaPQaejqbkoFJ+vdRXRVwFUlhBQT5xUBu7Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=9ncFUUH08gg9iNpsrmq703WArQQwtUVrot+IvPSNEbY=;
        b=fkwoyYqaaabERQR8HKhSzLjg2AdbKXJGKmyON5osjyf3IKQ3YcA6Cry5OO1bCtvoyS
         Se92JbpwQqVwvcIppBXsnbqmyT5Lmn7jhLyBkJWTGi5Bd9pKGDcAcIo3uEMAhYkWe+pY
         MBZCvxuftKcH2Y0WmDkMJsAYk1mtDzIbGTPHDoFitiX5zsv5bmqVvonnMh5QgKVzbTWZ
         dC3VnOlFTw7Xkxz4lCx5Dod4OSOea6fRB3L7HhzsmYwopIgKPmBPuHgf0L93cCUuQu4z
         DZQw2QYetmHDNE0knrN+1ZvaedtfBC67V3EkMbppv4oQty9VwtWABru5g4CUVwKhcP67
         z1mA==
X-Gm-Message-State: ANhLgQ3Tj2cQcvHeOwmjo0y3zahRY7rkUeLZnwGm3BA+y1ZiRg/n5ZaZ
	4CwSvnYvWhks/dMm1kxWu6EIPBeFfJf7Ng==
X-Received: by 2002:a1c:1b0e:: with SMTP id b14mr770544wmb.8.1583781978677;
        Mon, 09 Mar 2020 12:26:18 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from localhost.localdomain (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id x5sm31855wrv.67.2020.03.09.12.26.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2020 12:26:18 -0700 (PDT)
From: Lourdes Pedrajas <lu@pplo.net>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net
Subject: [PATCH] staging: vt6655: power.c: remove unused code and improve formatting
Date: Mon,  9 Mar 2020 20:26:10 +0100
Message-Id: <20200309192610.23541-1-lu@pplo.net>
X-Mailer: git-send-email 2.17.1

Remove unused code and improve formatting.

Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
---
 drivers/staging/vt6655/power.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/vt6655/power.c b/drivers/staging/vt6655/power.c
index bfd598a93b04..f1c221f5dcd2 100644
--- a/drivers/staging/vt6655/power.c
+++ b/drivers/staging/vt6655/power.c
@@ -58,14 +58,11 @@ void PSvEnablePowerSaving(struct vnt_private *priv,
 	if (priv->op_mode != NL80211_IFTYPE_ADHOC) {
 		/* set AID */
 		VNSvOutPortW(priv->PortOffset + MAC_REG_AIDATIM, wAID);
-	} else {
-		/* set ATIM Window */
-#if 0 /* TODO atim window */
-		MACvWriteATIMW(priv->PortOffset, pMgmt->wCurrATIMWindow);
-#endif
 	}
+
 	/* Set AutoSleep */
 	MACvRegBitsOn(priv->PortOffset, MAC_REG_PSCFG, PSCFG_AUTOSLEEP);
+
 	/* Set HWUTSF */
 	MACvRegBitsOn(priv->PortOffset, MAC_REG_TFTCTL, TFTCTL_HWUTSF);
 
-- 
2.17.1


