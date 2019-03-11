X-GM-THRID: 6666918096348905472
X-Received: by 2002:a1c:1a4a:: with SMTP id a71mr1887579wma.21.1552262833895;
        Sun, 10 Mar 2019 17:07:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:cc03:: with SMTP id f3ls215728wmh.3.canary-gmail; Sun,
 10 Mar 2019 17:07:12 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy2vxF0cKKmqSu5W1W3xUJ1eobPHA+BjtkerLVH3u6o9TR02B1f9mp94sgS7bAk7se/KRFV
X-Received: by 2002:a1c:e3d6:: with SMTP id a205mr1960734wmh.19.1552262832670;
        Sun, 10 Mar 2019 17:07:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552262832; cv=none;
        d=google.com; s=arc-20160816;
        b=1Je7vbAHIoYWJ8EKuFK2Ei+EbEREz3smikGXCiQc6/uYKsXwRkXt302dhOWP4ltK62
         tfZAEReYwotaghDjvXYK+BsoDI0VWRM+Jfy4wg7JrUg13rasZXCdkKtcdPDmENU3ssKn
         pXEoOVW1IIE2HtDGjPsrgKucf5E7Tv8GiQY6PXD9vgJoRCYpH7j9ysW9ocWYNFhaV7tt
         Rv4TQL+PguoMmko8wswKPq65Ct/BXp+pnufAm5kUKMcq4jtH3NgpgPM5dY4ggxPin44a
         yyTNP/7tMdrD5dgJP/EO071rx2/bM5FRe5pF0rnhXcu060J61aNQM4GQuJQWUrj4za3h
         XQuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=8ZXaljBjeePzJy/vGJXeSxRTxqMvQW90UG+tiCBEHr4=;
        b=eq2QyWVAbc7BUKfjDGhd3S9IF31ES4DlWyOaMbMhYpDDG0/r90mGEs0bmdNcliHAIa
         zN6NE/gs/5Vf+FLUm9e3ve/EAV0CeWQ13h/u+F2AMwieQpEbNAN7tBfkicIn3kJgTjbu
         c7TZWUP4YyjwrappeZ29SEO6NOzOLUjr7pxfQY0qFFJ0WKra8BEcAxquQfVKUA+muZ+j
         H99mZI7ccpruinDV3NAa1QOnPFqtZ+GalnZPMCkByAFh79I+yvde6qrNr/5IQWRvO+lI
         sgiI9MhbABaZ/RHMadEd4t4OoSGOqAZXEkaMBEbSZdRVyIv2PuOu8xHhVpUk57GM+77T
         vk0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AhIlsN3q;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id m1si222527wrj.4.2019.03.10.17.07.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Mar 2019 17:07:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AhIlsN3q;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x342.google.com with SMTP id n19so2644096wmi.1
        for <outreachy-kernel@googlegroups.com>; Sun, 10 Mar 2019 17:07:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8ZXaljBjeePzJy/vGJXeSxRTxqMvQW90UG+tiCBEHr4=;
        b=AhIlsN3q/HdXT6p/x4LWnQ50hnZxQS63JEOZYPB5sCx9Aa/RuVmD81kvXkmEnWUSy/
         Qu298I08Nk+6KoijywDCB7feMoDuCbY23m1VDhVn53HBT+5LNHQ3isMosTnwxgUsN66Q
         2vwdR5lQ/oR464c2wK90EoxspnNWRFDqV19jSteQ7CIATQY7Z1A+ji7z4wFnjgN/uNZ+
         Z7bDtTuNvVE1gArvQuq2gIX6CxtxXKODgUk2F9BuXIBDTA4+ki1ce/rXMpZqA1x4k66g
         /DO6NorI34cWRvUrisp6pg6Nc+dN8sf3F4gT5oTRAFJJLr7Lr1zwC0MDaNLaxCTZcJ29
         SQYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8ZXaljBjeePzJy/vGJXeSxRTxqMvQW90UG+tiCBEHr4=;
        b=mBQTk2PaZ1KBNDp3s3KDLcFe2HiH/MkXv7peFFIT4Z0UrMmjkr4YjY/Sg5ocJi9J7o
         2CFMPfYUF1khVGnlsZFYlttFLUPPgwFmUPao45Ue+G1qesBheWXprLzR4Unv+q25Gb1m
         /dtGtSnR7LSGcTkJwYjD9zUxTPI21HivySQdlW05MD/QVHg3/3eGywvSGdGTgwLuUaGL
         23viAYaT+CTElX+y3sw1XwLxpqIYmZCcPB5Ndb+vYJJIZ3p3LR4WPfj65I87X96Vu2nE
         1hJfKN+vRXAy3OHFMWQOIf7BO9/MW7ia6md4gC/IauIBhExxMN0jT4/qCx8/NTZfNYxa
         k/Wg==
X-Gm-Message-State: APjAAAWK4UKZZPbb+r2GRjo+N0eTxq61hL3CNVJejdD0nVazVHCvAEKx
	GcMpUtFwCMh26GgoOPtc2g==
X-Received: by 2002:a1c:9694:: with SMTP id y142mr14892535wmd.98.1552262832068;
        Sun, 10 Mar 2019 17:07:12 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (host86-151-41-196.range86-151.btcentralplus.com. [86.151.41.196])
        by smtp.gmail.com with ESMTPSA id x17sm16313142wrd.95.2019.03.10.17.07.11
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 10 Mar 2019 17:07:11 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v1 3/3] staging: rtl8192e: fix line over 80 characters warning
Date: Mon, 11 Mar 2019 00:07:02 +0000
Message-Id: <20190311000702.12740-4-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190311000702.12740-1-jbi.octave@gmail.com>
References: <20190311000702.12740-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replace dot11d_info with dt1d_inf to fix checkpatch.pl warning
 Issue found by checkpatch.pl:
 "WARNING: line over 80 characters"

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/rtl8192e/dot11d.c | 48 +++++++++++++++----------------
 1 file changed, 24 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/rtl8192e/dot11d.c b/drivers/staging/rtl8192e/dot11d.c
index 721892cef3a7..17738859b197 100644
--- a/drivers/staging/rtl8192e/dot11d.c
+++ b/drivers/staging/rtl8192e/dot11d.c
@@ -37,14 +37,14 @@ static struct channel_list channel_array[] = {
 
 void dot11d_init(struct rtllib_device *ieee)
 {
-	struct rt_dot11d_info *dot11d_info = GET_DOT11D_INFO(ieee);
+	struct rt_dot11d_info *dt1d_inf = GET_DOT11D_INFO(ieee);
 
-	dot11d_info->enabled = false;
+	dt1d_inf->enabled = false;
 
-	dot11d_info->state = DOT11D_STATE_NONE;
-	dot11d_info->country_len = 0;
-	memset(dot11d_info->channel_map, 0, MAX_CHANNEL_NUMBER + 1);
-	memset(dot11d_info->max_tx_power_list, 0xFF, MAX_CHANNEL_NUMBER + 1);
+	dt1d_inf->state = DOT11D_STATE_NONE;
+	dt1d_inf->country_len = 0;
+	memset(dt1d_inf->channel_map, 0, MAX_CHANNEL_NUMBER + 1);
+	memset(dt1d_inf->max_tx_power_list, 0xFF, MAX_CHANNEL_NUMBER + 1);
 	RESET_CIE_WATCHDOG(ieee);
 }
 EXPORT_SYMBOL(dot11d_init);
@@ -93,29 +93,29 @@ EXPORT_SYMBOL(dot11d_channel_map);
 
 void dot11d_reset(struct rtllib_device *ieee)
 {
-	struct rt_dot11d_info *dot11d_info = GET_DOT11D_INFO(ieee);
+	struct rt_dot11d_info *dt1d_inf = GET_DOT11D_INFO(ieee);
 	u32 i;
 
-	memset(dot11d_info->channel_map, 0, MAX_CHANNEL_NUMBER + 1);
-	memset(dot11d_info->max_tx_power_list, 0xFF, MAX_CHANNEL_NUMBER + 1);
+	memset(dt1d_inf->channel_map, 0, MAX_CHANNEL_NUMBER + 1);
+	memset(dt1d_inf->max_tx_power_list, 0xFF, MAX_CHANNEL_NUMBER + 1);
 	for (i = 1; i <= 11; i++)
-		(dot11d_info->channel_map)[i] = 1;
+		(dt1d_inf->channel_map)[i] = 1;
 	for (i = 12; i <= 14; i++)
-		(dot11d_info->channel_map)[i] = 2;
-	dot11d_info->state = DOT11D_STATE_NONE;
-	dot11d_info->country_len = 0;
+		(dt1d_inf->channel_map)[i] = 2;
+	dt1d_inf->state = DOT11D_STATE_NONE;
+	dt1d_inf->country_len = 0;
 	RESET_CIE_WATCHDOG(ieee);
 }
 
 void dot11d_update_country(struct rtllib_device *dev, u8 *address,
 			   u16 country_len, u8 *country)
 {
-	struct rt_dot11d_info *dot11d_info = GET_DOT11D_INFO(dev);
+	struct rt_dot11d_info *dt1d_inf = GET_DOT11D_INFO(dev);
 	u8 i, j, number_of_triples, max_channel_number;
 	struct chnl_txpow_triple *triple;
 
-	memset(dot11d_info->channel_map, 0, MAX_CHANNEL_NUMBER + 1);
-	memset(dot11d_info->max_tx_power_list, 0xFF, MAX_CHANNEL_NUMBER + 1);
+	memset(dt1d_inf->channel_map, 0, MAX_CHANNEL_NUMBER + 1);
+	memset(dt1d_inf->max_tx_power_list, 0xFF, MAX_CHANNEL_NUMBER + 1);
 	max_channel_number = 0;
 	number_of_triples = (country_len - 3) / 3;
 	triple = (struct chnl_txpow_triple *)(country + 3);
@@ -135,8 +135,8 @@ void dot11d_update_country(struct rtllib_device *dev, u8 *address,
 		}
 
 		for (j = 0; j < triple->num_channels; j++) {
-			dot11d_info->channel_map[triple->first_channel + j] = 1;
-			dot11d_info->max_tx_power_list[triple->first_channel + j] =
+			dt1d_inf->channel_map[triple->first_channel + j] = 1;
+			dt1d_inf->max_tx_power_list[triple->first_channel + j] =
 						 triple->max_tx_power;
 			max_channel_number = triple->first_channel + j;
 		}
@@ -146,18 +146,18 @@ void dot11d_update_country(struct rtllib_device *dev, u8 *address,
 
 	UPDATE_CIE_SRC(dev, address);
 
-	dot11d_info->country_len = country_len;
-	memcpy(dot11d_info->country_buffer, country, country_len);
-	dot11d_info->state = DOT11D_STATE_LEARNED;
+	dt1d_inf->country_len = country_len;
+	memcpy(dt1d_inf->country_buffer, country, country_len);
+	dt1d_inf->state = DOT11D_STATE_LEARNED;
 }
 
 void dot11d_scan_complete(struct rtllib_device *dev)
 {
-	struct rt_dot11d_info *dot11d_info = GET_DOT11D_INFO(dev);
+	struct rt_dot11d_info *dt1d_inf = GET_DOT11D_INFO(dev);
 
-	switch (dot11d_info->state) {
+	switch (dt1d_inf->state) {
 	case DOT11D_STATE_LEARNED:
-		dot11d_info->state = DOT11D_STATE_DONE;
+		dt1d_inf->state = DOT11D_STATE_DONE;
 		break;
 	case DOT11D_STATE_DONE:
 		dot11d_reset(dev);
-- 
2.20.1


