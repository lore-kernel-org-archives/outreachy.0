X-GM-THRID: 7023011661987446784
X-Received: by 2002:a17:907:9727:: with SMTP id jg39mr22716081ejc.271.1635172341370;
        Mon, 25 Oct 2021 07:32:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:907:d29:: with SMTP id gn41ls7823761ejc.3.gmail; Mon, 25
 Oct 2021 07:32:19 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzSTr/t45UzPboiIpYaKMKkTwe4tcTs+Jj25x4mfv9clJcKPDVD4SW7ucziDjnEJFjVMDlN
X-Received: by 2002:a17:906:1d07:: with SMTP id n7mr20731439ejh.474.1635172339711;
        Mon, 25 Oct 2021 07:32:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635172339; cv=none;
        d=google.com; s=arc-20160816;
        b=NlPLBR9iCARSN/RZQl7FBgnMI8HAGNf9Q5hm1QAVCNsvxODwmRBJawaBJAmuUvnO1K
         sJJexMwXEYYY2OwpSnUsGPTzufRHy1ZOUrQ6E2PFzXsV+3iVSm8woSNTUJG+4BGdFMTc
         n+hX0SLLDof+H/PTfDe0dzMWDzPKbc48XQr95Dy/t736NRAR13PA1Qg+2zf4XFJ5/vmy
         ZEYgh2W3ilCqrjNXmQk+wB7V9DfYYspmZJIpuxvH4GZE+T1+BfGoZfk/8tmJFLx0IrSq
         qRKcH6vAb8Z3v9o28ILwNOR7OmcBoET7qgd/wmG+vjL8MYybhmWOMtzqNQzYxmJkm1LX
         NWrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=XGtxyy1pN4unr3M65/WvnaFnyZFrXOocHdC+iYb/z6A=;
        b=N1q3Qw0m5OsZPKi42c+Pt1n2y7GUg26n5KPVUuy34n/kkihUI0HQKzzpMRMgqqJDgm
         3Gag9tEZ0iCaaG08MBsItwtUW2dGDwZSVqeLB1RAGBlIxfLgWaOZhWsIP9eX4gucWlTi
         9QLq5mFR8h4biOObyMrOKVs+12PP5HRu38iHGSgtBFYe4iTefNZskLXY+2jRScaOxSdg
         lCmLSJhhg6FP9HX+lQFClQ6kqWF3XckhnSkgyFJ5o/jmqdD71Fyhls2tnpochGs29U8M
         OMFJfDrYFflvG2lkDSNQbhBVOJjI8yEoJtKO1w53F9K/dH667nMciMWRGfQGFAoNNeOG
         +5xw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=ag3x72nA;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::332 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com. [2a00:1450:4864:20::332])
        by gmr-mx.google.com with ESMTPS id bi21si781452edb.0.2021.10.25.07.32.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Oct 2021 07:32:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::332 as permitted sender) client-ip=2a00:1450:4864:20::332;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=ag3x72nA;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::332 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x332.google.com with SMTP id 5so1220189wmb.1
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Oct 2021 07:32:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XGtxyy1pN4unr3M65/WvnaFnyZFrXOocHdC+iYb/z6A=;
        b=ag3x72nA4X0o/9gwNUHbCN5j8c3ZYNXAvesojnLHExkVbhtg7fzOLwWEfmSzu0T4s5
         tbl1l55Yax40MhQ+lSOJAEjJOQYMQwSMeRa18BKT2vbHCy1WTACH2AmF07Ut7wGc9IVt
         QAZavIWJ/VWIXG+dUWJrx2grUMERV+coV7G/G5swYNczt+Q+Wwa+bRXVzHzN2FUAZ7o5
         OCaPXgF8nQeHyhDqlYELQ0/ME2sjHasl3F7KD+dBifooUfGRGOsrxgFWROOoURNjjdj2
         7mDeF4p4pks8KR/L+vyXliut7e5+TWBhWzbXNg1gKO66wrQT7nQLXZ6vW/CyT6JKQm5D
         +wwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XGtxyy1pN4unr3M65/WvnaFnyZFrXOocHdC+iYb/z6A=;
        b=4gniQ8+XyEC/NNHn370KMtVnYFK2+wTK5n6obsVvQgAldhG1s+jbl6U4ymwUFvNylC
         Wtm0ma4qYCYCZFFiel2V6hMX3vNVOQmVdTkDURf9y3PmOQabXYRBE6vmIgTJmJG6N49r
         4jhfSQmXD7AU5P0TC9swCt6TimPxqMAVyHo27CjtpDi8xS0qDQ07xAEjn8Z3jy8QkSW8
         l4ndPhn8Yu+tTW8Mn8orqCu7HaUJFf4MqWo8b+T43UAAYDlV3UiOrnVv3R56uFsPuoc1
         MV1/wTK6J0B8mOBnqVwVMkqgyk3ur+NUZ2kgrJDpSx9kBPX9mAQ1gaDvuyZahNNI0SFj
         7Oww==
X-Gm-Message-State: AOAM532YrUT2EICTRoKmBEEwyhImRtE/+Q9kHVYmMehVkPjZWpFfixAA
	BQE1a2bvMtmQMJfy6tVYZx4d6lBEHuOVfQ==
X-Received: by 2002:a1c:8002:: with SMTP id b2mr2687618wmd.124.1635172339495;
        Mon, 25 Oct 2021 07:32:19 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from localhost.localdomain ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id x8sm13011500wrr.53.2021.10.25.07.32.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Oct 2021 07:32:19 -0700 (PDT)
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Karolina Drobnik <karolinadrobnik@gmail.com>
Subject: [PATCH 4/8] staging: vt6655: Rename `dwAL7230ChannelTable1` array
Date: Mon, 25 Oct 2021 15:31:30 +0100
Message-Id: <bd3e987e975add4a4c1ce6f679d2b0c2b8ff05d9.1635171519.git.karolinadrobnik@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1635171518.git.karolinadrobnik@gmail.com>
References: <cover.1635171518.git.karolinadrobnik@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

To align with the kernel coding style, remove the type from
the variable name and do not use CamelCase.

Fix issue detected by checkpatch.pl:
  CHECK: Avoid CamelCase: <dwAL7230ChannelTable1>

Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
---
 drivers/staging/vt6655/rf.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index 3235585a67bd..4dac3ad1abbe 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -262,7 +262,7 @@ static const unsigned long al7230_channel_table0[CB_MAX_CHANNEL] = {
 	0x0FF61000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW  /* channel = 165, Tf = 5825MHz (56) */
 };
 
-static const unsigned long dwAL7230ChannelTable1[CB_MAX_CHANNEL] = {
+static const unsigned long al7230_channel_table1[CB_MAX_CHANNEL] = {
 	0x13333100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  1, Tf = 2412MHz */
 	0x1B333100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  2, Tf = 2417MHz */
 	0x03333100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  3, Tf = 2422MHz */
@@ -464,7 +464,7 @@ static bool s_bAL7230SelectChannel(struct vnt_private *priv, unsigned char byCha
 	MACvWordRegBitsOff(iobase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
 
 	ret &= IFRFbWriteEmbedded(priv, al7230_channel_table0[byChannel - 1]);
-	ret &= IFRFbWriteEmbedded(priv, dwAL7230ChannelTable1[byChannel - 1]);
+	ret &= IFRFbWriteEmbedded(priv, al7230_channel_table1[byChannel - 1]);
 	ret &= IFRFbWriteEmbedded(priv, dwAL7230ChannelTable2[byChannel - 1]);
 
 	/* PLLOn On */
@@ -724,7 +724,7 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char rf_type,
 
 		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), al7230_channel_table0[channel - 1]);
 		i++;
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), dwAL7230ChannelTable1[channel - 1]);
+		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), al7230_channel_table1[channel - 1]);
 		i++;
 		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), dwAL7230ChannelTable2[channel - 1]);
 		break;
-- 
2.30.2


