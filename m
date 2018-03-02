X-GM-THRID: 6528334297317769216
X-Received: by 10.80.202.69 with SMTP id e5mr1891868edi.9.1519996397740;
        Fri, 02 Mar 2018 05:13:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.205.208 with SMTP id h16ls4933729edj.5.gmail; Fri, 02 Mar
 2018 05:13:16 -0800 (PST)
X-Google-Smtp-Source: AG47ELsiNxQg1sF79zOqX9fUIhyTbAAE31aV8t0X0k76/tVcaFWYKeXYixZynzih7ysr+l9qeI/E
X-Received: by 10.80.149.230 with SMTP id x35mr1888623eda.3.1519996396875;
        Fri, 02 Mar 2018 05:13:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519996396; cv=none;
        d=google.com; s=arc-20160816;
        b=OwFHsyfXOn/WKePS+FKO3Lc9RluHMIrrBKITOzP5YrgyDpzkk44etkF+vk42HkIg2l
         tSQ+OlNauKqTSB1dZDNYSHGlBVNEyvM8e3MQ8nJV7ibagKmMVZMfnO+hdkSbYeKsh+6f
         8Y3vry0cv/3fHQiA3En3x8ELdsowzDQqcDBOOSaPNsA5X3+OZGE2QMpDOuvm3bn43YrU
         pvZxXcz0MZ49Q89sVidFvcO2LkPY4KNABxWzhV7gSuFJ5MSsSSkvUB7m2Y/JKINsmDMN
         CvYedbzbqi9Iwsj6HfrXrYnEpS/alAu/wLiGY4JMvBPqOXNZHK+upjl9IA6pkz66a/Xs
         yhfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=MI0mYY5nrU1PE10IL8y6m8G05chdoPamCCCF+KdR/wU=;
        b=n3pHc8DD1HUgv54pLg3c6ifYtYo9wnYQhTnm2FWqCPD9jRxHDe7wZnMQpwaNFZSnOc
         Db57hJ8ptQ0gGiNd0SYaB3e6CDQVxT7xjytYWeT8TDKd9JT9UsUGrddu8T8sb3IR4oyF
         ArSiJmVVzZd+jP/f6jb6Lcf+5D+g/dBTDGt3Uc0JkctdjYAxf2Yupm/PPS2qUimJTRsK
         eHStbng0LXquB6NvLDim3BNHT3Z1Yf3F2hScRmaZ8ycFgxRJ5fK73SsUJ9HIwbhfReWb
         GYBAKoYOFyEQxVocM5AVtNmH0ULexyS++sq5jwm6hzb00QJoNiLY6xhk4dAjYMBtM3aw
         9gWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a8ES+Cvb;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::22d as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wm0-x22d.google.com (mail-wm0-x22d.google.com. [2a00:1450:400c:c09::22d])
        by gmr-mx.google.com with ESMTPS id f24si347736edc.0.2018.03.02.05.13.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Mar 2018 05:13:16 -0800 (PST)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::22d as permitted sender) client-ip=2a00:1450:400c:c09::22d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a8ES+Cvb;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::22d as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22d.google.com with SMTP id q83so3068201wme.5
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Mar 2018 05:13:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=MI0mYY5nrU1PE10IL8y6m8G05chdoPamCCCF+KdR/wU=;
        b=a8ES+CvbY7X5kHUFCaNKGOhrWY+BkEi+jJgsCMhvmNLwsvvYnWQANXPavoy3CYMNQR
         43dZ76IQarO/Rzx3LajZrr+TbZEz9FuMimuv6fGprZ1pfS/hfBKh/4DA4rkP9hQkJIQZ
         0c8ROm/8glmFcxAz1QRVJJGEoBMPem7COAJMl2+6XYVChhj8l87DYjdssnc9S+5ZLtY+
         +8Q2JG5SNusJPDEwwpaSgGknrrt9ehDQlhPKxoxMlip9kdN5CNtEQh8RD16uIoXgJ4eW
         WmT94iBRxW6Ep1uvryx/9aB+9y1PckMPcN0VwzG39fk4hO0+n+MRAu6mm12/lCslvXa1
         ZzTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=MI0mYY5nrU1PE10IL8y6m8G05chdoPamCCCF+KdR/wU=;
        b=jcevD2y7Wm4KQO5TcXCSOp1MY+AvhlemYnE/6XjMPBIM4WnwW0vSpZ2s53Uve8wKIY
         Fwnj9tcpfORiOhw/2YeZlARuN4ZIORD3DpfT37l/VzBm9dni/hYdijZ5HFZA7xYe0lXO
         uaBCZuU6VYB1ttiWyck8DRQ2lrP2aySHbJ5tXX+bPyTP/ZRLT+uqN5dFpYjVRYY0Gp0V
         eutO+BRycnWpyP9oKGVw5Qu9Tx3lCwqtbfVBSZkqZq9S0YFxtUVFee4eO27QSmfYxG40
         sqQsU1DJnZ50/qyJNc4dYCx/5GZcNWTSqD0n9Y6GsROCPRCdltc5rRX7xAZBUuWF8Tpx
         0b/g==
X-Gm-Message-State: AElRT7GshP1GH2HxGkrccu1WAyUYK0SKsGSxdlMBJemL7nIra+bwyrvI
	yPyrYRhqDtBozl7bHKn+PqI=
X-Received: by 10.28.212.13 with SMTP id l13mr1610604wmg.123.1519996396606;
        Fri, 02 Mar 2018 05:13:16 -0800 (PST)
Return-Path: <dafna3@gmail.com>
Received: from guri.home (IGLD-84-229-54-107.inter.net.il. [84.229.54.107])
        by smtp.gmail.com with ESMTPSA id 47sm5896815wrb.48.2018.03.02.05.13.15
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Mar 2018 05:13:15 -0800 (PST)
From: Dafna Hirschfeld <dafna3@gmail.com>
To: gregkh@linuxfoundation.org
Cc: Dafna Hirschfeld <dafna3@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 3/3] staging: rtl8192e: Add spaces around operators.
Date: Fri,  2 Mar 2018 15:09:58 +0200
Message-Id: <727cd7623b85d96d11495705f52406c7ad182dfb.1519995327.git.dafna3@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1519995327.git.dafna3@gmail.com>
References: <cover.1519995327.git.dafna3@gmail.com>
In-Reply-To: <cover.1519995327.git.dafna3@gmail.com>
References: <cover.1519995327.git.dafna3@gmail.com>

Add spaces around arithmetic and bitwise operators to improve
readability of the code.
Issues found with checkpatch.pl

Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
---
 drivers/staging/rtl8192e/rtl8192e/rtl_wx.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c b/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c
index a9192e8..843e874 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c
@@ -243,7 +243,7 @@ static int _rtl92e_wx_set_debug(struct net_device *dev,
 	netdev_info(dev, "=====>%s(), *extra:%x, debugflag:%x\n", __func__,
 		    *extra, rt_global_debug_component);
 	if (c > 0)
-		rt_global_debug_component |= (1<<c);
+		rt_global_debug_component |= (1 << c);
 	else
 		rt_global_debug_component &= BIT31;
 	return 0;
@@ -352,7 +352,7 @@ static int _rtl92e_wx_get_range(struct net_device *dev,
 	range->min_pmp = 0;
 	range->max_pmp = 5000000;
 	range->min_pmt = 0;
-	range->max_pmt = 65535*1000;
+	range->max_pmt = 65535 * 1000;
 	range->pmp_flags = IW_POWER_PERIOD;
 	range->pmt_flags = IW_POWER_TIMEOUT;
 	range->pm_capa = IW_POWER_PERIOD | IW_POWER_TIMEOUT | IW_POWER_ALL_R;
@@ -360,7 +360,7 @@ static int _rtl92e_wx_get_range(struct net_device *dev,
 	range->we_version_source = 18;
 
 	for (i = 0, val = 0; i < 14; i++) {
-		if ((priv->rtllib->active_channel_map)[i+1]) {
+		if ((priv->rtllib->active_channel_map)[i + 1]) {
 			range->freq[val].i = i + 1;
 			range->freq[val].m = rtllib_wlan_frequencies[i] *
 					     100000;
@@ -373,8 +373,8 @@ static int _rtl92e_wx_get_range(struct net_device *dev,
 	}
 	range->num_frequency = val;
 	range->num_channels = val;
-	range->enc_capa = IW_ENC_CAPA_WPA|IW_ENC_CAPA_WPA2|
-			  IW_ENC_CAPA_CIPHER_TKIP|IW_ENC_CAPA_CIPHER_CCMP;
+	range->enc_capa = IW_ENC_CAPA_WPA | IW_ENC_CAPA_WPA2 |
+			  IW_ENC_CAPA_CIPHER_TKIP | IW_ENC_CAPA_CIPHER_CCMP;
 	range->scan_capa = IW_SCAN_CAPA_ESSID | IW_SCAN_CAPA_TYPE;
 
 	/* Event capability (kernel + driver) */
@@ -702,7 +702,7 @@ static int _rtl92e_wx_set_enc(struct net_device *dev,
 	}
 	if (wrqu->encoding.length != 0) {
 		for (i = 0; i < 4; i++) {
-			hwkey[i] |=  key[4*i+0]&mask;
+			hwkey[i] |=  key[4 * i + 0] & mask;
 			if (i == 1 && (4 * i + 1) == wrqu->encoding.length)
 				mask = 0x00;
 			if (i == 3 && (4 * i + 1) == wrqu->encoding.length)
@@ -1139,15 +1139,15 @@ static const struct iw_priv_args r8192_private_args[] = {
 		IW_PRIV_TYPE_INT | IW_PRIV_SIZE_FIXED | 1, 0, "forcereset"
 	}, {
 		SIOCIWFIRSTPRIV + 0x6,
-		IW_PRIV_TYPE_INT | IW_PRIV_SIZE_FIXED|1, IW_PRIV_TYPE_NONE,
+		IW_PRIV_TYPE_INT | IW_PRIV_SIZE_FIXED | 1, IW_PRIV_TYPE_NONE,
 		"set_power"
 	}, {
 		SIOCIWFIRSTPRIV + 0xa,
-		IW_PRIV_TYPE_INT | IW_PRIV_SIZE_FIXED|1, IW_PRIV_TYPE_NONE,
+		IW_PRIV_TYPE_INT | IW_PRIV_SIZE_FIXED | 1, IW_PRIV_TYPE_NONE,
 		"lps_interv"
 	}, {
 		SIOCIWFIRSTPRIV + 0xb,
-		IW_PRIV_TYPE_INT | IW_PRIV_SIZE_FIXED|1, IW_PRIV_TYPE_NONE,
+		IW_PRIV_TYPE_INT | IW_PRIV_SIZE_FIXED | 1, IW_PRIV_TYPE_NONE,
 		"lps_force"
 	}, {
 		SIOCIWFIRSTPRIV + 0x16,
-- 
2.7.4


