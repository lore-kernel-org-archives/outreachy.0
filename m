X-GM-THRID: 6809557952024805376
X-Received: by 2002:aa7:9f4a:: with SMTP id h10mr7840543pfr.234.1585473760171;
        Sun, 29 Mar 2020 02:22:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:86c7:: with SMTP id x190ls9770263pfd.4.gmail; Sun, 29
 Mar 2020 02:22:38 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs7NODTzaTGdS9gjwouvsQtPfN1NTRSO+fAEEN/QRSU/jL6ptIky1wuzBr1RrVPWcCgDZZP
X-Received: by 2002:a63:2cce:: with SMTP id s197mr8091692pgs.184.1585473758626;
        Sun, 29 Mar 2020 02:22:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585473758; cv=none;
        d=google.com; s=arc-20160816;
        b=kyeeIXlp13odaQyPtV0+HgrJJAJURWSPe/uxBU9c+aRz1ltG8tZpOGiVb318hiC0zF
         C3hDufj6+DOaXJk8MpUauKPthg2ZQ471ThcLiowRuKuciy+yRfqx2HAphN2/lExJSXSI
         A1/HehxcMxZdExTpbAK8XwS8BEMt2K75M07SmAcgVjWYhM3KJVXD95ZNqgHftU/VPovT
         vtfeJq/SrLRABEFLjnuSn8CM6vcZCKn5WSWhoXY8SNMJigvR+TjYZ955sLem3EIjsmS6
         IPl1Q2QG1UamiMb50TvGtrqLXRFlqXMik+QB1v32NG9aWoR1YLWWgWEQYeELIIXljSM5
         Nr5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=1hCX0Eu5BSFoHJWyRefAvnMuTN8T0slwSrNK+D8BVUE=;
        b=Y6ALgx3hSB/KA11wZKkUch96LP1MicxTP6a5d3k3HDqVvPCD3IxlG+2z5J0l35mK3O
         4jtx6Li7hXA+drBW8kZT8QBIJdls5cobg3PvrTh39/yf2hyj+/ozPnC8A9mx8o+PXLto
         SOUJW+MM9NBN8PtZASQ2BhyDeWmRxm1nG7SQ+5RhGG20VPYjvEOQ3jE7izzj/NhbVGPW
         nYPrubS40JuKyl3uVxsho1vpvjCekN+BsNfBX6BZwKAVIyrAD4tFW9XbrynJKThmFsBp
         IWOUhY7Z/mWXIVFlLI5dWCDg4KvjWbsIwHW5rZ2PneOlyRYrJ+Z6HRVTX4/LkssCvQLM
         aLZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=seiBEgEW;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbwyatt4@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id ne6si848107pjb.1.2020.03.29.02.22.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Mar 2020 02:22:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=seiBEgEW;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id f206so7000957pfa.10
        for <outreachy-kernel@googlegroups.com>; Sun, 29 Mar 2020 02:22:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1hCX0Eu5BSFoHJWyRefAvnMuTN8T0slwSrNK+D8BVUE=;
        b=seiBEgEWo89G0cm4eLCRBhoG4Ilds9sW/UkUVahSr62V/bc68xt4FSrpnMVkw8BfJn
         SO8C+hWFr7MqBP927XPkgd1v5y+scKb3sdMF15SV9rB60OKms3nLkpWT/7LpeBYmTx8T
         5MZ2mRL/6P8rvgoMzla/a+Wl1XOW4dHDbn0pXPmU/uibNDN+JK2J1blSPVOMMEyPC+py
         NLawegDjyJ203XfGz6tILqTQPOzGBBFiy9IiaXDbsJQFs2cI81MQw9gW6l4zRcpzMFPQ
         K5jmOkIUmQrD0ABHxXfFEG6P+rX2v6oke5jSor4qvAI1G3hOQZ09GYU377NQXRtPDM/e
         a/PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1hCX0Eu5BSFoHJWyRefAvnMuTN8T0slwSrNK+D8BVUE=;
        b=kDUvqhZ44iszCsg668Y2VlbsBEWnso4KcsX8dOcaNPDun4C4Dgn0DN6Jv8e60LumvO
         Pr/x6qWJ9/X+8L0FqOmB+VfQCIBPxoIeiwaR0l+5na/xj3G7DchM8l/J5llF4FZgt602
         Fg58vOywNqIVnvWrIhbZ2PpX6O+BlTwQRi8+AgyWvhqIUna98XDc5wafmwr1i7Kup38U
         AP6HZ+Y0seC28hW4J6NxSNxJEsmz9kFxsc6a8Njsci6lyx4iSc5eOYUqXbLR0t3t4bGe
         UCPbHa0KtIL10etpFKafArb+uI45QtheDGxtJcVclr/RNZfZkZ7VIwtSFP4lI4ANhqz7
         IdnA==
X-Gm-Message-State: ANhLgQ2wDzcP4jqbpI3aAtgwW3tMRIsIYPHonl2RehSdepaRmmeUF+iA
	wz+eghyhE4nCxFa/lQ3Wz18wHt3tupMZxA==
X-Received: by 2002:a65:5a87:: with SMTP id c7mr7664384pgt.237.1585473758132;
        Sun, 29 Mar 2020 02:22:38 -0700 (PDT)
Return-Path: <jbwyatt4@gmail.com>
Received: from OptiPlexFedora.fios-router.home ([47.144.161.84])
        by smtp.gmail.com with ESMTPSA id b3sm7366962pgs.69.2020.03.29.02.22.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Mar 2020 02:22:37 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>,
	dri-devel@lists.freedesktop.org,
	linux-fbdev@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Cc: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Subject: [PATCH] staging: fbtft: Replace udelay with preferred usleep_range
Date: Sun, 29 Mar 2020 02:22:04 -0700
Message-Id: <20200329092204.770405-1-jbwyatt4@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix style issue with usleep_range being reported as preferred over
udelay.

Issue reported by checkpatch.

Please review.

As written in Documentation/timers/timers-howto.rst udelay is the
generally preferred API. hrtimers, as noted in the docs, may be too
expensive for this short timer.

Are the docs out of date, or, is this a checkpatch issue?

Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
---
 drivers/staging/fbtft/fb_agm1264k-fl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/fbtft/fb_agm1264k-fl.c b/drivers/staging/fbtft/fb_agm1264k-fl.c
index eeeeec97ad27..019c8cce6bab 100644
--- a/drivers/staging/fbtft/fb_agm1264k-fl.c
+++ b/drivers/staging/fbtft/fb_agm1264k-fl.c
@@ -85,7 +85,7 @@ static void reset(struct fbtft_par *par)
 	dev_dbg(par->info->device, "%s()\n", __func__);
 
 	gpiod_set_value(par->gpio.reset, 0);
-	udelay(20);
+	usleep_range(20, 20);
 	gpiod_set_value(par->gpio.reset, 1);
 	mdelay(120);
 }
-- 
2.25.1


