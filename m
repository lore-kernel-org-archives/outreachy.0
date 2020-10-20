X-GM-THRID: 6885722277770428416
X-Received: by 2002:a37:448c:: with SMTP id r134mr3335567qka.357.1603207560461;
        Tue, 20 Oct 2020 08:26:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:a8c5:: with SMTP id h5ls636327qvc.0.gmail; Tue, 20 Oct
 2020 08:25:59 -0700 (PDT)
X-Received: by 2002:a0c:b21b:: with SMTP id x27mr3956977qvd.12.1603207559404;
        Tue, 20 Oct 2020 08:25:59 -0700 (PDT)
Received: by 2002:a05:620a:6a7:b029:f9:71db:3eb4 with SMTP id i7-20020a05620a06a7b02900f971db3eb4msqkh;
        Tue, 20 Oct 2020 08:09:48 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxrvruUgiESZQsTTqqnoyX/4ajcLjANLu7D+yfzWmJ0uG0ZHxuxlgGbJsJc7Ow8dXVb5Io1
X-Received: by 2002:a2e:8ecc:: with SMTP id e12mr1437108ljl.98.1603206587396;
        Tue, 20 Oct 2020 08:09:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603206587; cv=none;
        d=google.com; s=arc-20160816;
        b=LPZQo9THjTLCxWg0v7hXbUPO/UmUq/y47sQcx7/nk98e14lcgMe282GCgAgvGMgrW4
         Na5KRSmXfu8zZnp6UYe8/a0OmDg0MoI/oZDcJktrcAj0nes534Q7b+sEOfmY674N8gbt
         mqTPWGoZ+nFET7O/xd98JGPsv37zxWHS/Dhu8qzhK47Q8aCgSudqoyTG9CjueFniGoBg
         99Dh4tGXagLY0jZ4nBsiDRBWZI1Y8n0Z9jPSvY28eWnShHXHTRDf5yGs5HGlnN6XZfGD
         W8OnSpzO5PKzV1u5t5ysOvS7nai1e/aeFKUdcsozIQLBEBFwm+44ENoN12vFB6XfYu/X
         lgRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=ECKLYi4zrKN47fHOYr430dA8CasNwXAsAUTrlCAnQIs=;
        b=jR7DJq9I8hpaFKtIuiDrg4X3r3PviGUZrrhrfu49ITlnc+OeytvhSBpTl6otSYg58Z
         OlqkdnpQnM6s3wtVEjcAjKLaEImYShX2vOip57OlkDLDUYPJSYPkzAEkAImGxdVK+qBs
         uPEKyq8y0h5oIYQc13KbvUEVeyUPizUL0rAJsJWx4oh7ebY55M9MRneIjIOocoiJao/3
         ReD6WrS1ntVgOJP5MHb1O30bCzp38Arl9QaEjDSSorHdcIffN2nDTa43/+YBevuo5hmy
         E6LEXcc395ph+pwAVSV9gxtqa6yNPp173T8eAcr8kBWvrMhxS02U6pyxCJMNiWz1gD0g
         B0xQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Sgulk7Xd;
       spf=pass (google.com: domain of eafanasova@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=eafanasova@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <eafanasova@gmail.com>
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com. [2a00:1450:4864:20::241])
        by gmr-mx.google.com with ESMTPS id a1si76599lff.2.2020.10.20.08.09.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Oct 2020 08:09:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of eafanasova@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) client-ip=2a00:1450:4864:20::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Sgulk7Xd;
       spf=pass (google.com: domain of eafanasova@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=eafanasova@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x241.google.com with SMTP id 23so2393956ljv.7
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Oct 2020 08:09:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ECKLYi4zrKN47fHOYr430dA8CasNwXAsAUTrlCAnQIs=;
        b=Sgulk7Xdcn5+frMmUuoCLMXRGGAFzGuMk/+5akpfZLDIEsrtlp5Lq+qIxGGMdiWWzj
         xesjQi6+Sr98X0iodS3dm8KYSWYQRFQSvcemvIRrm206qknfAHtviWM9wP2O/mg7nyLu
         rkQRtwE5oBLae7n70GTTAXuygwVA+luA0kL2p50wSaWhJLponohoX/UvWiI16bj8OuiC
         UelVEgh1LaUVuT7OEjnMFXkFlEhD9K84M0/N1zGli1rbWzYM67FBd/hj4mRh+wizOobI
         ZFhwWhBK2QTx0dTfNzr6/Qj9M7JpUkSSkFpE7w/AepelrXI9FZ9RxWZzjJQf4JEw+iZZ
         emsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ECKLYi4zrKN47fHOYr430dA8CasNwXAsAUTrlCAnQIs=;
        b=Waa8hy/BaBPQzw65hNf1B5EFizppz1e712lgXou+9W/WO+G46Qg2D8Zylav4bopDOz
         MegQ1A1b3t5APAaWK8Hlyt+ah8bHx9qnhpcUGM2YVvBqcVNPvUstIckuNaE6xIMofCRN
         aTXLBDIiWJnYDwxW2ndD0yGrtJK3CtnRgLVUosxYVAjXF/4T8YaO379lkrhua9rxXkir
         HJY+H5fSLuGKMqvRIU7lMtKo77psBn9dQ/pX3jxpKfx2+7hrp5moQuHk0H8hqyFiqreC
         94f3q7zqijLS15PWXXv+InTPJ09nSB8BKHiZ9hTG0EU4kUcaf5tZfJVYDas3dVnQNMCQ
         zgrw==
X-Gm-Message-State: AOAM532yfCiJRdgmAN4rAigLaQp28lPO3898uJdagw3OnK3W2mhdZoSy
	TkZ/6UAWnxk0cuOfWJINApM=
X-Received: by 2002:a2e:b5c7:: with SMTP id g7mr1259974ljn.373.1603206587117;
        Tue, 20 Oct 2020 08:09:47 -0700 (PDT)
Return-Path: <eafanasova@gmail.com>
Received: from localhost.localdomain (37-145-186-126.broadband.corbina.ru. [37.145.186.126])
        by smtp.gmail.com with ESMTPSA id c23sm345585lfd.231.2020.10.20.08.09.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 08:09:46 -0700 (PDT)
From: Elena Afanasova <eafanasova@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	outreachy-kernel@googlegroups.com,
	Elena Afanasova <eafanasova@gmail.com>
Subject: [PATCH] staging/rtl8192u/ieee80211: use __func__ macro
Date: Tue, 20 Oct 2020 08:08:23 -0700
Message-Id: <20201020150823.35734-1-eafanasova@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replace function names with __func__ macro.
Remove unnecessary characters in error messages.
Reported by checkpatch.pl.

Signed-off-by: Elena Afanasova <eafanasova@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/dot11d.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/dot11d.c b/drivers/staging/rtl8192u/ieee80211/dot11d.c
index bc642076b96f..f972edcde8a0 100644
--- a/drivers/staging/rtl8192u/ieee80211/dot11d.c
+++ b/drivers/staging/rtl8192u/ieee80211/dot11d.c
@@ -15,7 +15,7 @@ void rtl8192u_dot11d_init(struct ieee80211_device *ieee)
 	memset(dot11d_info->max_tx_pwr_dbm_list, 0xFF, MAX_CHANNEL_NUMBER + 1);
 	RESET_CIE_WATCHDOG(ieee);
 
-	netdev_info(ieee->dev, "rtl8192u_dot11d_init()\n");
+	netdev_info(ieee->dev, "%s\n", __func__);
 }
 EXPORT_SYMBOL(rtl8192u_dot11d_init);
 
@@ -66,14 +66,14 @@ void dot11d_update_country_ie(struct ieee80211_device *dev, u8 *pTaddr,
 			/* It is not in a monotonically increasing order, so
 			 * stop processing.
 			 */
-			netdev_err(dev->dev, "dot11d_update_country_ie(): Invalid country IE, skip it........1\n");
+			netdev_err(dev->dev, "%s: Invalid country IE, skip it 1\n", __func__);
 			return;
 		}
 		if (MAX_CHANNEL_NUMBER < (pTriple->first_channel + pTriple->num_channels)) {
 			/* It is not a valid set of channel id, so stop
 			 * processing.
 			 */
-			netdev_err(dev->dev, "dot11d_update_country_ie(): Invalid country IE, skip it........2\n");
+			netdev_err(dev->dev, "%s: Invalid country IE, skip it 2\n", __func__);
 			return;
 		}
 
@@ -105,7 +105,7 @@ u8 dot11d_get_max_tx_pwr_in_dbm(struct ieee80211_device *dev, u8 Channel)
 	u8 MaxTxPwrInDbm = 255;
 
 	if (Channel > MAX_CHANNEL_NUMBER) {
-		netdev_err(dev->dev, "dot11d_get_max_tx_pwr_in_dbm(): Invalid Channel\n");
+		netdev_err(dev->dev, "%s: Invalid Channel\n", __func__);
 		return MaxTxPwrInDbm;
 	}
 	if (dot11d_info->channel_map[Channel])
@@ -141,7 +141,7 @@ int is_legal_channel(struct ieee80211_device *dev, u8 channel)
 	struct rt_dot11d_info *dot11d_info = GET_DOT11D_INFO(dev);
 
 	if (channel > MAX_CHANNEL_NUMBER) {
-		netdev_err(dev->dev, "is_legal_channel(): Invalid Channel\n");
+		netdev_err(dev->dev, "%s: Invalid Channel\n", __func__);
 		return 0;
 	}
 	if (dot11d_info->channel_map[channel] > 0)
@@ -164,7 +164,7 @@ int to_legal_channel(struct ieee80211_device *dev, u8 channel)
 	}
 
 	if (channel > MAX_CHANNEL_NUMBER) {
-		netdev_err(dev->dev, "is_legal_channel(): Invalid Channel\n");
+		netdev_err(dev->dev, "%s: Invalid Channel\n", __func__);
 		return default_chn;
 	}
 
-- 
2.25.1


