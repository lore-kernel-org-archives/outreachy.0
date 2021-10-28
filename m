X-GM-THRID: 7024064041486123008
X-Received: by 2002:a5d:4291:: with SMTP id k17mr4584631wrq.280.1635417364634;
        Thu, 28 Oct 2021 03:36:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:5111:: with SMTP id o17ls1171401wms.3.gmail; Thu,
 28 Oct 2021 03:36:03 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzD+SdzPmXMRi7/Wdt9TWsY+khPxKzZOccXnzc011WmUWF7Rl3zykdWJazf2St+HwTMFMBP
X-Received: by 2002:a05:600c:1ca7:: with SMTP id k39mr3576328wms.74.1635417363281;
        Thu, 28 Oct 2021 03:36:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635417363; cv=none;
        d=google.com; s=arc-20160816;
        b=mAOlztUfz7izrVH3FFPDYdJLozhry/KqUUUcaXZ7pWDB4qcYVJRoTG69gG/1mB63Rq
         4o8t0zxh735kb4Bl7bt6ejBXQTF3wPGL9e/GVP0u89MmuPpu0zgG4aKymUKv9TjjlPlV
         dX9eWiiEvzitB99ND4x3IThYEHFkRsHs2tvoBbCk+FOlvgFhf5RBzOPyi15wqerprFsb
         jLtykZ6dpc2X2T0IagVw+sFNyDPkjY6flgKTizSwDvGhFx9QKYQcOVFpeu01nuXKB0gT
         6jvtoAiw29aOH0Po1HhNDWfrVUNf/X00vGV9g1quwOhzgAQkIac6VgfOKtm/fBHW7ZDN
         HP2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=QgAukz7mdLKe7ngRgDotUJonIepfmE0m8F5gQ9CbNhY=;
        b=Sjsp6s9MZXTMRyaKy1meIsb8/4meMiUI6LiAxLe/i4giDb/7ugJkI7N/YNx4Bfi1oT
         9WChVCP2iJkn7onjiCsL7hU29xCyy5mKuxiNDX/TucHlToB8o8e7B7fspkbkUOD0D34o
         hg57ZgT7jhoywqTOTA4wXhCh2KY89oIpSuSllQ+Hk3yEZPdeFVw6mBjyyuvkcb6VqjTo
         yur0zadYHTvGpRWdPi1GvaFfL7Z6zVp8ObNNXBBsGvU4OOoEuyHUslLM2kWY7xGgtqz0
         qnPadnnFz8iFRh85Y/9hv53vlPAsne4WYMO2ZTKQIDlzp/vRWEfqRmgQXPBGxqty9yw4
         9YVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=chBgsfcd;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::431 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com. [2a00:1450:4864:20::431])
        by gmr-mx.google.com with ESMTPS id g2si367937wmc.4.2021.10.28.03.36.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Oct 2021 03:36:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::431 as permitted sender) client-ip=2a00:1450:4864:20::431;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=chBgsfcd;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::431 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x431.google.com with SMTP id i5so1631907wrb.2
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Oct 2021 03:36:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=QgAukz7mdLKe7ngRgDotUJonIepfmE0m8F5gQ9CbNhY=;
        b=chBgsfcdjKwZclH5mJf+O52LmQev5S4OPB8RJam/M+za+Wb8MjJxaUI8CGUGPzR5qC
         uIbYu59gxT9jVkwAEN6rAuFXF+1xxg+wxvv9LySoK9gur/l21leKm9SsbJYNeMd4lILT
         IeTsAfsIjcVsHUtLA9+eYaCWFx7ZZ/nhdSIF31KGMjHMmxSj3qETzHCe/NzpFuBa1GkA
         SrSA6Ze6i70RZ7RKSJ0asPZEBgDaoG/QC2f1pDln6cEhrYvAIswFv2BBOXiPrineq+q7
         OrGIR1yTKWF/Ox9IvYggubYuuUdPp7fNxywpkHubsttp48yYxG3LVw89VF9JHQeD1IsZ
         c0EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QgAukz7mdLKe7ngRgDotUJonIepfmE0m8F5gQ9CbNhY=;
        b=6Yc2yBkD4hv2B636wS+n2AIzGx1QX/NfnL7Zu9OYUc7yz7YpvvIbF82P2bZI4pNsoM
         SSYHg7paeEu9ZcB/GaNngnk2hoFYZjssLmICTyOS/afW0cUwPEsMQOUsk36N0d7gMjUB
         CYQr2thYG5Lsm5A0UlEDoX4TfkNbjfyh+nJ2uLZSCf3cjPHSuBVewNO3mLSrV/iLXnd8
         L2QLgesK10ITUho3OkZ8tdsYFNI2LC+4loS2sGwIGFvzzdDfHxem7dDlvDVt0gp7FgQf
         LJu+TLT/smH3yZEWvNtisZu619gCMQgr+SjyEr+IEMf3iiQPk7Ndss6Hd16JAMa30R2s
         LzBQ==
X-Gm-Message-State: AOAM530tviFkcgQ62DCrr6A0xyUFO8W7rRGlEuTnnQAKwwoHg7OHSJdR
	2p+Hk9VvQPBkXLrQt1+TlW03yvt92j8FbQg0
X-Received: by 2002:adf:fccc:: with SMTP id f12mr4437635wrs.64.1635417363015;
        Thu, 28 Oct 2021 03:36:03 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from localhost.localdomain ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id 13sm3768083wrz.38.2021.10.28.03.36.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Oct 2021 03:36:02 -0700 (PDT)
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Karolina Drobnik <karolinadrobnik@gmail.com>
Subject: [PATCH 6/7] staging: vt6655: Rename `RFvWriteWakeProgSyn` function
Date: Thu, 28 Oct 2021 11:35:36 +0100
Message-Id: <04e7c6a432016e247f9c3f6abd74231bbf4a20da.1635415820.git.karolinadrobnik@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1635415820.git.karolinadrobnik@gmail.com>
References: <cover.1635415820.git.karolinadrobnik@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

To align with the kernel coding style, remove the type from
the function name and do not use CamelCase.

Fix issue detected by checkpatch.pl:
  CHECK: Avoid CamelCase: <RFvWriteWakeProgSyn>

Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
---
 drivers/staging/vt6655/channel.c | 2 +-
 drivers/staging/vt6655/rf.c      | 4 ++--
 drivers/staging/vt6655/rf.h      | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vt6655/channel.c b/drivers/staging/vt6655/channel.c
index b550a1a0844e..e37c8e35a45b 100644
--- a/drivers/staging/vt6655/channel.c
+++ b/drivers/staging/vt6655/channel.c
@@ -189,7 +189,7 @@ bool set_channel(struct vnt_private *priv, struct ieee80211_channel *ch)
 
 	/* Init Synthesizer Table */
 	if (priv->bEnablePSMode)
-		RFvWriteWakeProgSyn(priv, priv->byRFType, ch->hw_value);
+		rf_write_wake_prog_syn(priv, priv->byRFType, ch->hw_value);
 
 	bb_software_reset(priv);
 
diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index af4eb7eb8e7d..7caac1b44a68 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -676,8 +676,8 @@ bool RFbSelectChannel(struct vnt_private *priv, unsigned char byRFType,
  * Return Value: None.
  *
  */
-bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char rf_type,
-			 u16 channel)
+bool rf_write_wake_prog_syn(struct vnt_private *priv, unsigned char rf_type,
+			    u16 channel)
 {
 	void __iomem *iobase = priv->port_offset;
 	int i;
diff --git a/drivers/staging/vt6655/rf.h b/drivers/staging/vt6655/rf.h
index 0939937d47a8..9fef81846a9f 100644
--- a/drivers/staging/vt6655/rf.h
+++ b/drivers/staging/vt6655/rf.h
@@ -60,7 +60,7 @@
 bool IFRFbWriteEmbedded(struct vnt_private *priv, unsigned long dwData);
 bool RFbSelectChannel(struct vnt_private *priv, unsigned char byRFType, u16 byChannel);
 bool RFbInit(struct vnt_private *priv);
-bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char rf_type, u16 channel);
+bool rf_write_wake_prog_syn(struct vnt_private *priv, unsigned char rf_type, u16 channel);
 bool RFbSetPower(struct vnt_private *priv, unsigned int rate, u16 uCH);
 bool RFbRawSetPower(struct vnt_private *priv, unsigned char byPwr,
 		    unsigned int rate);
-- 
2.30.2


