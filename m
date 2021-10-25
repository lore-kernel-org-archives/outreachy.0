X-GM-THRID: 7023011661987446784
X-Received: by 2002:a05:6512:510:: with SMTP id o16mr7804733lfb.410.1635172343669;
        Mon, 25 Oct 2021 07:32:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:2204:: with SMTP id i4ls2899137lji.4.gmail; Mon, 25 Oct
 2021 07:32:22 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwDLxcdDV9M9wmUY5IEM9YRfGU/CVstr0aG6PUM4UkEDAjP33ebwXgJ9W4auFF156vteL9W
X-Received: by 2002:a05:651c:324:: with SMTP id b4mr18913858ljp.498.1635172342104;
        Mon, 25 Oct 2021 07:32:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635172342; cv=none;
        d=google.com; s=arc-20160816;
        b=fmdt8x5hYF9giCVL6zNC0nhHuZAKFUcDWHQ95rPmVgwbONt7PgnQm0tnxT4SMcsBXZ
         rFiio7XiPikTdFY2X2AHhIbo//o8wOcdNVXseT6Yn/OOyXVkcwJmvjkQ/k+F1AkkfvPR
         OSBWUqi1Ybs8zvC+rX2m7xGO9CyPkTQyv0ajM9qwELgpcXKfDwZBt5g9/DPyPkfGBBvu
         xmyJCb9gWQKb2h6zZMyYPd/+SQBU71+BMTveI5jvM4FCDR//wEhdI8BgCCLoHBJQCl8Q
         hSNUBWSFL52bye11VjGPHmCqoROFFoCbS1W0hlzD9oBFRxVnkrqso4ck9n+A27wQJ7uy
         tB5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=bFyJ2L3s6j7dSuTLK7kekavdGRbGtq40Furx3B47yQg=;
        b=x+kDXBntQfDJO2zoAVMe/xv48qoo1XoP1mgsoCrqF1CFMffMoyRnnncs0AMe/U92+K
         w6Ky0k4YFU3WaA8QcDLnjwf8z3JVSdb3cYOzUHgAjIdD0RcZx6kyafhOuZmIoe8MxP6A
         9LTF2me6gD7L8K5+AMn9IOBLP6gMxtdFBlw+punsumK4qzLrg42fQQvRKO49MDEMN3UJ
         640GRz7wizpKVGcvbN9DgFKUPR0BqoFHxQFOaQ+NAymgR194CUeEVQOIP5ajSYr3C7Xc
         Exwr3iOi34VnWbRqgW0pS8bWuxAKgjXZFXrEFcUM/AyCBAHbdfYgrxWtkR8rVgSwFXQo
         NXIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=UtZQS3f3;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::435 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com. [2a00:1450:4864:20::435])
        by gmr-mx.google.com with ESMTPS id c11si965612ljr.8.2021.10.25.07.32.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Oct 2021 07:32:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::435 as permitted sender) client-ip=2a00:1450:4864:20::435;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=UtZQS3f3;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::435 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x435.google.com with SMTP id k7so8594921wrd.13
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Oct 2021 07:32:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=bFyJ2L3s6j7dSuTLK7kekavdGRbGtq40Furx3B47yQg=;
        b=UtZQS3f3IVHe1e63LYR2ja/AvtuqYK9Q8AEv3iq0yzUkJqwqCqlsMbuvZcIR2ejLOp
         vqJpp6tjw4w6PWCPCup4eGDsScsvalZurSDM9+ABMfZhGgiOC79e7xbfBwynZuzDPwtl
         CrF4boMvWDPGYo2HTR49jP1OWBLeEa3z5CX7RnKxIkKTDFctNe2xQb+csYt1g46/wdiE
         LJMrLBKMsS78cECFAXzTXraYPuG0rsROyPy1ZHeGbTklnPiPRH6LH2Ajh4RTlKNcFYdR
         4/LwJlR/Zi1tam2514viwf849X/9e1ry/zQI2WHRni5fKVazNa3X7EM20QX3lFlcbIQ6
         Sx1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=bFyJ2L3s6j7dSuTLK7kekavdGRbGtq40Furx3B47yQg=;
        b=RKCunH4kkmM0LKehYEGVgEDppuT+MVQGd6Z+F+DQ02nYtsUwrp8cdAQLWL6wXvc5Ih
         OT+YAIOb5UeDC0sw7UY2Yx9Cienxl+McuHYWMCNFqRBSaOsVPw9BvvuXuWPHeUnIbpSP
         PFKuiuHABGNMgPooLENStP/ZSxkTccLI30YUsVunIUakiNAfWyZhW+IqPO/vg2Rt/ouH
         q2G7jEJxHkFwGNY7s1aeDqqoIxjnNi8JJvQgs1FzVg6wWUqcVRBqkC/Rovzr9fGqX02u
         lRn58FeesJhk57r1zY8QwCuAJHcaJ3p3JZV/CWpcFSwfTAxj2wnQlQkaWVr3fV/hzEr3
         ELUA==
X-Gm-Message-State: AOAM530VSer6uZ9Nh/OOI0EUUdzI0BQhpAbrlH5f2OrI2fLTK1K0R3gj
	xxsMWm7OYTpb0btJMdKpbt4hMrs7vLD/SA==
X-Received: by 2002:adf:eece:: with SMTP id a14mr20768403wrp.79.1635172341816;
        Mon, 25 Oct 2021 07:32:21 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from localhost.localdomain ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id x8sm13011500wrr.53.2021.10.25.07.32.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Oct 2021 07:32:21 -0700 (PDT)
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Karolina Drobnik <karolinadrobnik@gmail.com>
Subject: [PATCH 5/8] staging: vt6655: Rename `dwAL7230ChannelTable2` array
Date: Mon, 25 Oct 2021 15:31:31 +0100
Message-Id: <055bde0a3206573209b757a22ab150c02f50f007.1635171519.git.karolinadrobnik@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1635171518.git.karolinadrobnik@gmail.com>
References: <cover.1635171518.git.karolinadrobnik@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

To align with the kernel coding style, remove the type from
the variable name and do not use CamelCase.

Fix issue detected by checkpatch.pl:
  CHECK: Avoid CamelCase: <dwAL7230ChannelTable2>

Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
---
 drivers/staging/vt6655/rf.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index 4dac3ad1abbe..a5c8dc5875eb 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -327,7 +327,7 @@ static const unsigned long al7230_channel_table1[CB_MAX_CHANNEL] = {
 	0x02AAA100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW  /* channel = 165, Tf = 5825MHz (56) */
 };
 
-static const unsigned long dwAL7230ChannelTable2[CB_MAX_CHANNEL] = {
+static const unsigned long al7230_channel_table2[CB_MAX_CHANNEL] = {
 	0x7FD78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  1, Tf = 2412MHz */
 	0x7FD78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  2, Tf = 2417MHz */
 	0x7FD78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  3, Tf = 2422MHz */
@@ -465,7 +465,7 @@ static bool s_bAL7230SelectChannel(struct vnt_private *priv, unsigned char byCha
 
 	ret &= IFRFbWriteEmbedded(priv, al7230_channel_table0[byChannel - 1]);
 	ret &= IFRFbWriteEmbedded(priv, al7230_channel_table1[byChannel - 1]);
-	ret &= IFRFbWriteEmbedded(priv, dwAL7230ChannelTable2[byChannel - 1]);
+	ret &= IFRFbWriteEmbedded(priv, al7230_channel_table2[byChannel - 1]);
 
 	/* PLLOn On */
 	MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
@@ -726,7 +726,7 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char rf_type,
 		i++;
 		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), al7230_channel_table1[channel - 1]);
 		i++;
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), dwAL7230ChannelTable2[channel - 1]);
+		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), al7230_channel_table2[channel - 1]);
 		break;
 
 	case RF_NOTHING:
-- 
2.30.2


