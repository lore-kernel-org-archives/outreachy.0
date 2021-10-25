X-GM-THRID: 7023011661987446784
X-Received: by 2002:a2e:a4a9:: with SMTP id g9mr18781123ljm.245.1635172333573;
        Mon, 25 Oct 2021 07:32:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:211d:: with SMTP id a29ls1454896ljq.10.gmail; Mon,
 25 Oct 2021 07:32:12 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwTertwp/HQkd6TFXS4XUcJZ1khP3CMSIRmXND3lpjMXHCODb/UEtO0Xe2c179Mrx3iQly5
X-Received: by 2002:a2e:9d2:: with SMTP id 201mr18806901ljj.163.1635172331941;
        Mon, 25 Oct 2021 07:32:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635172331; cv=none;
        d=google.com; s=arc-20160816;
        b=kVGIVVVid2Me0CIXZ/cQf97OhTDfuvZHatY7EuZ9GOAlQcocohIIsGUGssVoa9GUEZ
         zEdFON4y6Jk2i3BokZFp/kkhuAG9bCCYo7YVy3mLyBOcol4TzFL1Sexv61rSp78OQTv5
         rDB6xuGuv3wsbs9z6s9IXP/Gk+F8tY+nKZhDulVSCqoHPVJth31ngUElC6buc4jsVlU7
         7LTyFzmMSPuTn2XVmZNuiAG4Ge3ADoda9WCwiX/5GqcropnZaUwCKlY69aGWfvQCgj9I
         JcaYj0TKxGfVDhAEKN9gEk215FpGp+moSmjm+uk1pZdbjtQbWw4XuGhuiY353ENf/fV1
         KIzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=mzmjJR83Mq8sLxKS+Zvwh2MK6xScKamcoG/v2jZNovs=;
        b=UvDKuICz4kvaGLQknXSyH2yFvY4u9fySpko7d3kS2SFvynRljFeml0E5B9vR7GagTo
         StddAp03JROZxkI7n1SM5pnpfrTSHICvPSqF8Umq8LTfBNnHZJZe7okdwkDwsLIk0d0s
         soVOYUsznyA2JZwBYNlMX56jXr+14w9RC4Jctmz+S2UAzIjHHrZS7vuJwwIWabGzT6Yh
         v6ZE0PS+NcDoBUAvx5fcNEtktaZhJtwee1yI1eR4ilU06Qluy8byf+YSK4MukfzGLD0U
         7mjxw/XGpOtCh8ops5dDoQHhZTDg00IOTwX8aWpmONkfbXmwTXcz+6m16ZLwgdXs+LYF
         sQCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=gqywJxW8;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::335 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com. [2a00:1450:4864:20::335])
        by gmr-mx.google.com with ESMTPS id s16si1258397lfp.6.2021.10.25.07.32.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Oct 2021 07:32:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::335 as permitted sender) client-ip=2a00:1450:4864:20::335;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=gqywJxW8;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::335 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x335.google.com with SMTP id b133-20020a1c808b000000b0032ca4d18aebso9582361wmd.2
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Oct 2021 07:32:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mzmjJR83Mq8sLxKS+Zvwh2MK6xScKamcoG/v2jZNovs=;
        b=gqywJxW8I0uDtenXHo1rguWZX6y7WxufxjY4ch/n3YF/XEO3AilRVywdiSoAAaZHh6
         hL2ufWE+1kiRdFTlJfd/zH7c98cK/3VIwTKXGBis+TG0HnC2InV/5MN/2qPRDb4rMIKP
         TIuZwypt2AFALvuOm/H8mfz7gG1fhxP0hIcZxLqJmoW6a2YG/OdpeyxDVjrBEi5lyzJC
         jszETBk5wYm9SenYM0ayeIKEFOQMV/8kMZqduCRtNQEVCSUjBa/ajUTj3cb6xjqZWDJf
         DQuFqcWZUTJS4JW0lWUX0SLQuGorshxvcur0vwIYxilpyi1S+9Eco2E+bvV7Rp1tr+Q+
         rKpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mzmjJR83Mq8sLxKS+Zvwh2MK6xScKamcoG/v2jZNovs=;
        b=fwyDCXqledNttJvI5J2nZDb2hrmU6Y2Nah+TYKN0sAX2jnJOOnRbJTRPN5G9EENBVX
         kD2koScObRHPJH8amnaWoolXFJtc0HFnWZTgm5qilBoGT7zvoDkSVRYl2heAR5hc6ewz
         Ddmry5jRED3WJhLWGwPsaRdCrlK8rh52gfrO/Lt0cXJ26DcodGdp1y5E9l4pGyRwFPpn
         b60kjwUR0Xz4GNBHF6/eaM638MREd3+Rmppqb8eMwmirkQEdwAR9e9iFGBT07NdBzi11
         l6+UFV47BTTjOeaAjmQfeisPRCoUgLPY4QY7Due4mxHh/og6+bPIjWB08dUvcZYxdZrt
         QVBw==
X-Gm-Message-State: AOAM530TfbgaWgkzSgg5ddkKsEvzqR2i1khjDjTujG/37d2vhZXjVoOW
	zMwgrt2W3kZSzfG0vzxmLBXSefAsPjDO7w==
X-Received: by 2002:a7b:c144:: with SMTP id z4mr21025866wmi.13.1635172331416;
        Mon, 25 Oct 2021 07:32:11 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from localhost.localdomain ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id x8sm13011500wrr.53.2021.10.25.07.32.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Oct 2021 07:32:11 -0700 (PDT)
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Karolina Drobnik <karolinadrobnik@gmail.com>
Subject: [PATCH 1/8] staging: vt6655: Rename `dwAL2230ChannelTable0` array
Date: Mon, 25 Oct 2021 15:31:27 +0100
Message-Id: <6232fd38f5e803dc01d528a76dd16fcce74ff9bd.1635171518.git.karolinadrobnik@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1635171518.git.karolinadrobnik@gmail.com>
References: <cover.1635171518.git.karolinadrobnik@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

To align with the kernel coding style, remove the type from
the variable name and do not use CamelCase.

Fix issue detected by checkpatch.pl:
  CHECK: Avoid CamelCase: <dwAL2230ChannelTable0>

Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
---
 drivers/staging/vt6655/rf.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index 3f57834901a6..bd6927151120 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -51,7 +51,7 @@ static const unsigned long al2230_init_table[CB_AL2230_INIT_SEQ] = {
 	0x00580F00 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW
 };
 
-static const unsigned long dwAL2230ChannelTable0[CB_MAX_CHANNEL] = {
+static const unsigned long al2230_channel_table0[CB_MAX_CHANNEL] = {
 	0x03F79000 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 1, Tf = 2412MHz */
 	0x03F79000 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 2, Tf = 2417MHz */
 	0x03E79000 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 3, Tf = 2422MHz */
@@ -577,7 +577,7 @@ static bool RFbAL2230SelectChannel(struct vnt_private *priv, unsigned char byCha
 
 	ret = true;
 
-	ret &= IFRFbWriteEmbedded(priv, dwAL2230ChannelTable0[byChannel - 1]);
+	ret &= IFRFbWriteEmbedded(priv, al2230_channel_table0[byChannel - 1]);
 	ret &= IFRFbWriteEmbedded(priv, dwAL2230ChannelTable1[byChannel - 1]);
 
 	/* Set Channel[7] = 0 to tell H/W channel is changing now. */
@@ -701,7 +701,7 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char rf_type,
 		for (i = 0; i < CB_AL2230_INIT_SEQ; i++)
 			MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), al2230_init_table[i]);
 
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), dwAL2230ChannelTable0[channel - 1]);
+		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), al2230_channel_table0[channel - 1]);
 		i++;
 		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), dwAL2230ChannelTable1[channel - 1]);
 		break;
-- 
2.30.2


