X-GM-THRID: 7023011661987446784
X-Received: by 2002:adf:ce8c:: with SMTP id r12mr12702608wrn.176.1635172339380;
        Mon, 25 Oct 2021 07:32:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:5111:: with SMTP id o17ls5275905wms.3.gmail; Mon,
 25 Oct 2021 07:32:17 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyQ6ot8Q/4QyUel57Z+y9bXcoiLHcWv8DuWRdC3xTRJCr3D7yXFvZ7vH+SPICp1g5yyhpSP
X-Received: by 2002:a1c:4b05:: with SMTP id y5mr20454246wma.106.1635172337903;
        Mon, 25 Oct 2021 07:32:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635172337; cv=none;
        d=google.com; s=arc-20160816;
        b=RLaSg+OD65ycyNvmoTwxY+Y5s+8u4HjYHJfrcV6UopmWALxIGpC0Z528HJWnGYV2Hq
         6+R+DOzsQW5e6vntOajmtCiR8vAFEF6pJUkj6wkQ2/QVegbMe0ukDee9o3VZ1lpwojCB
         iuPigYcji1/JTGaWRZu+YLWVu1rRzRcN19bQNrhbRakko0JNOBDV3x6fGyX23rwy5xB0
         q/19P/QYMJTP8PxCcPkr89H+poYk57UhuEjO8ur8yL0VOPwcOj0G3DeANUhTBCeVX8mp
         8cInwEXcIV8yhi12A6WKjPQzrQ524W93qhGSJwNs93cBeiimjCg5KbAjCKhMIy8XqvaQ
         3dGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=/+z/ZcoReYlIJ2lw4E6zEFrJlcdgWlKqR/PEXpbV0jM=;
        b=TmfAPWKd8sQ/Jo4FVj+Lx8ouhOQUtRiZ1Ga6Qk2eyiLY8LzsjAP9SUxhw75zFWk9yb
         UFVAWFctVuYZLzq6J2L35CDbLGv+pD89NFtIBkh731YzIE8rfQAOCspZNEQeWdtCeANh
         ieb8gA6Z+jD7mg7AYz6WxkVyYkwPhpYrENE5kNeOLredA7Bj3GamuSzKuSUv/f4EuNhk
         5g+k2czSaS/KpuAwv+rJQKI02mpCTiZV9MLjyxOmKbvUWQ3PX1UUz82wzUeMKfdZ4c9G
         sSOnw8aq+xHid0A/TNl4GmKznQYsh3EpAFKgV40QieTJdiO2tDU5oFufU3ftnIreWhA4
         kqvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=c5N5lccc;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::333 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com. [2a00:1450:4864:20::333])
        by gmr-mx.google.com with ESMTPS id j23si851685wms.0.2021.10.25.07.32.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Oct 2021 07:32:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::333 as permitted sender) client-ip=2a00:1450:4864:20::333;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=c5N5lccc;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::333 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x333.google.com with SMTP id j205so10235637wmj.3
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Oct 2021 07:32:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/+z/ZcoReYlIJ2lw4E6zEFrJlcdgWlKqR/PEXpbV0jM=;
        b=c5N5lccctg9plGihtX+N67paNhze1WZdjP2QwnI5NzwvGbFDif6mEOJhif7BQjNDPk
         t8WXA1LwbIiYV/aUPog/YZ4+zOelQO7sElg7hckVd9/eVKJ1MmZ4RGYVX3Q5kx2/VUeY
         QrH+a1dlA8xAc+p9zWXpyGIVdDzwXMKxygwDWfxU5j3g0opYLC3T12jnxQUHC9M3Tp7m
         NySuBuiUZVdWUoisLwvKEBJ/6zm5CfIJhcqN2LDW2c3gNHltPGdtGLcmxcT5AI6Bu6Wk
         VKlmDvsda04hFtJGr1z7Xpu6s/jW6OPLQDaWseJ75q0f3/6XQFmR7qkhKYI4A8AudLDO
         NYTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/+z/ZcoReYlIJ2lw4E6zEFrJlcdgWlKqR/PEXpbV0jM=;
        b=YgiZOYwUtPrQF4JqnCGO/nb6hO3jJ3b0BvMjNAHlTGAQjE8GpEZHTPYQMxrilp1/6x
         0JNtvGe0ln0g9QT/4iQbjeDpAah8JruBZAAb1+kHW+yb1pb5ELVQYec9mTtWeR+pPBbX
         O5Vc9Rny13mSqjrq3L764bsJTgdHuQo6P36vCuqycGD1UyEmO8UO7cIuGx80IEmbMM2B
         BR777f4eQn9f6RA9rzNj6R43Gg8/KthApppRI6M3YhastDvMv0mnAfV4BozTS7mf9dK6
         D0zrWt4nx9Wa21dkqiTMjvdBVvQlKYXHVIigz1084gf1RGkEePP3WUEwQrYdAAe9T8gN
         AeAQ==
X-Gm-Message-State: AOAM5312Y9NJLb53QOeqwZoRqEuRwmf+LoyDYgSWQTDfn9S2FjjS5oMQ
	uFe6UqtXq8m5TBoa5IvAPYxabJ9aOiPV0w==
X-Received: by 2002:a7b:cb82:: with SMTP id m2mr14762190wmi.11.1635172337582;
        Mon, 25 Oct 2021 07:32:17 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from localhost.localdomain ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id x8sm13011500wrr.53.2021.10.25.07.32.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Oct 2021 07:32:17 -0700 (PDT)
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Karolina Drobnik <karolinadrobnik@gmail.com>
Subject: [PATCH 3/8] staging: vt6655: Rename `dwAL7230ChannelTable0` array
Date: Mon, 25 Oct 2021 15:31:29 +0100
Message-Id: <c05a9a1928e84cbbf375f1bfb2dd2ba31438c842.1635171518.git.karolinadrobnik@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1635171518.git.karolinadrobnik@gmail.com>
References: <cover.1635171518.git.karolinadrobnik@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

To align with the kernel coding style, remove the type from
the variable name and do not use CamelCase.

Fix issue detected by checkpatch.pl:
  CHECK: Avoid CamelCase: <dwAL7230ChannelTable0>

Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
---
 drivers/staging/vt6655/rf.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index 866734ce6195..3235585a67bd 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -195,7 +195,7 @@ static const unsigned long dwAL7230InitTableAMode[CB_AL7230_INIT_SEQ] = {
 	0x12BACF00 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW  /* Need modify for 11b/g */
 };
 
-static const unsigned long dwAL7230ChannelTable0[CB_MAX_CHANNEL] = {
+static const unsigned long al7230_channel_table0[CB_MAX_CHANNEL] = {
 	0x00379000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  1, Tf = 2412MHz */
 	0x00379000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  2, Tf = 2417MHz */
 	0x00379000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  3, Tf = 2422MHz */
@@ -463,7 +463,7 @@ static bool s_bAL7230SelectChannel(struct vnt_private *priv, unsigned char byCha
 	/* PLLON Off */
 	MACvWordRegBitsOff(iobase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
 
-	ret &= IFRFbWriteEmbedded(priv, dwAL7230ChannelTable0[byChannel - 1]);
+	ret &= IFRFbWriteEmbedded(priv, al7230_channel_table0[byChannel - 1]);
 	ret &= IFRFbWriteEmbedded(priv, dwAL7230ChannelTable1[byChannel - 1]);
 	ret &= IFRFbWriteEmbedded(priv, dwAL7230ChannelTable2[byChannel - 1]);
 
@@ -722,7 +722,7 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char rf_type,
 				MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), dwAL7230InitTableAMode[i]);
 		}
 
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), dwAL7230ChannelTable0[channel - 1]);
+		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), al7230_channel_table0[channel - 1]);
 		i++;
 		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), dwAL7230ChannelTable1[channel - 1]);
 		i++;
-- 
2.30.2


