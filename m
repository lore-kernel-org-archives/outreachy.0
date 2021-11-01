X-GM-THRID: 7025609319157596160
X-Received: by 2002:a05:651c:168b:: with SMTP id bd11mr32053942ljb.63.1635777149215;
        Mon, 01 Nov 2021 07:32:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:178b:: with SMTP id bn11ls2344982ljb.7.gmail; Mon,
 01 Nov 2021 07:32:27 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzIL8tZ+CFZUT9MrNSuhnfmACafJwsTXu9mHqSAtM1A5jJlDBpCPMoIeEubSzOK3fy2IXvr
X-Received: by 2002:a2e:8841:: with SMTP id z1mr30833608ljj.180.1635777147738;
        Mon, 01 Nov 2021 07:32:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635777147; cv=none;
        d=google.com; s=arc-20160816;
        b=PlruD4IejChl25vI/yqlcnbEaaekOkMd4QfrSBIDqRV/6Qszkw1vx/AEsPtfwrv1aw
         Xkgl8XBcHh4yK+Anxw46rCvx+BTvB9Ko89lv8yiqaaHw12aqGUVDJRfxtv9NZdNAcGnx
         S3l6UZ+hrQ2k3rxqadKz6afktz7e2AwAVh3EjOLqHdELOpAg0Mr5N4/p9d/q5I0jLoMR
         iTv0lceN89CgY92CscQ+sVdaWyql31YnasaZ53vuUYxhwo6uXldcPiJhqUH3Tkh5EkrY
         VdElakIg7txkKJfuPEFMDdf3j2mdd1CKKcM4KX4sTPufYrftM47dYadIfEYOWWF6pk2g
         +w6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=3fLhd/zK7hWMVh3pZLUrxWGUTbyUHhKbQ2GfpneTlww=;
        b=YxVXf8SvvID+BolCOQCmBqNqvT9MIa18a3PkDk4z8+NdhBT7PI7te4by66MnBEmVVO
         lKUg+b9Tk3oiqEYmXUHq+DNpqLdAQaRZqEM1kzA9UmuaCGq1NwsXL7Q4QHUXSrHmHyH/
         zBMUMafuZcqVyYRqpUvas7mwXPV3z4dFD7vHoAogkA0nstSEBGoeylDj/FxIiG1Bw7lJ
         HQm9JAf5nIBeBDHp1TPHgzy1Oqy8crO57TEiegKM835mw1hd9m+ebLvfai9bV67qvDRU
         q4dptmzWoYvn4vCsVbOyjx1kSTyrrPiUkVbObLrMM65ZsaOW3m2XV/DcETpnt3ppWai+
         rI4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=qNtfMwyJ;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::32f as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com. [2a00:1450:4864:20::32f])
        by gmr-mx.google.com with ESMTPS id o22si514274lfr.11.2021.11.01.07.32.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Nov 2021 07:32:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::32f as permitted sender) client-ip=2a00:1450:4864:20::32f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=qNtfMwyJ;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::32f as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x32f.google.com with SMTP id b2-20020a1c8002000000b0032fb900951eso9173614wmd.4
        for <outreachy-kernel@googlegroups.com>; Mon, 01 Nov 2021 07:32:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=3fLhd/zK7hWMVh3pZLUrxWGUTbyUHhKbQ2GfpneTlww=;
        b=qNtfMwyJu8u8gcgmxYs1BxeSwmoHGHAm2d6ECgl3x8m48fEZNsy4CB3y4nLqJGwEfp
         eg2ESOqEN2cYsq4fmZ3Dj7tiUJUqwWuBBWoft2DmBFQizRzyOgjIreWQ7oYZQMMIH7+J
         yUEXwjW/xoGNCxTjChwEmsRYYgbPBfEIYlY9SMBj2o9ocibl2bZF7/iGeBgr6do4zXxX
         jZTx+jxMGkDpPe4kBaw6DA9pWdSzN3CmiAuuEtMs/y7nWzn79+m0O2JLbguOWE8W22T7
         O154M5pGKokr50eH1uPoXxRdqg32E/68wpuZPbK23LRnCGeIkYIRzcb5aHtQ0bzN9UHF
         u9CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3fLhd/zK7hWMVh3pZLUrxWGUTbyUHhKbQ2GfpneTlww=;
        b=xg9jn3A/EpaqepGtgC0xmHsFqqQYlPz3HvuGv4U9crdJkDf7HgQwma0ak2gdcep7El
         l9LdsrZ4QGcj2qDp9NZEMpqdRjmTC/mV/YJwLSL9Vr9M4E9i+7rAuMfRD/jX1zNFcEdN
         U+ihj7tO8d8w8RpPzGX2ak9ervYWU7pghnGwZplOHZHQa26VIORfRxGj56X3Tziei55v
         7agtd3EJvvB9jYsgDmTUF1CqgcTkY4htISH0KtpoZOTmESNn8N+ro6U1tmE56+1kwIHX
         Bte7vZ50dtRrTLFr1tbsGOk0i4l0kCec2dNdjxjvPuLcrKwskO9WRa3mtTnSv+4U9KSg
         UBrg==
X-Gm-Message-State: AOAM533LtICmMca2+t9CI+Ub0cEiCzJZgo4vVx4ljE5IRxUu5ciSbCYh
	AFyt2MY4C3qlkScXe11fEulBxFp0ApZ0fw==
X-Received: by 2002:a05:600c:3653:: with SMTP id y19mr12233024wmq.90.1635777147247;
        Mon, 01 Nov 2021 07:32:27 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from localhost.localdomain ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id l8sm17157721wry.43.2021.11.01.07.32.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Nov 2021 07:32:27 -0700 (PDT)
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Karolina Drobnik <karolinadrobnik@gmail.com>
Subject: [PATCH v2 5/8] staging: vt6655: Rename `RFvWriteWakeProgSyn` function
Date: Mon,  1 Nov 2021 14:32:03 +0000
Message-Id: <43108677b74bac35d65798e7bf502010d51c64c3.1635773680.git.karolinadrobnik@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1635773679.git.karolinadrobnik@gmail.com>
References: <cover.1635773679.git.karolinadrobnik@gmail.com>
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
index e7672da39a82..34fa54f7a92d 100644
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


