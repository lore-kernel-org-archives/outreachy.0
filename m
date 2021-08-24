X-GM-THRID: 6999830140356132864
X-Received: by 2002:ac2:4c2f:: with SMTP id u15mr26685413lfq.294.1629774957699;
        Mon, 23 Aug 2021 20:15:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:ea5:: with SMTP id bi37ls1540404lfb.3.gmail; Mon,
 23 Aug 2021 20:15:55 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyZ+H7SxH7YcsS49UNCmUGklOSj0zpju1m+SP4ijeGCc8wFuURY028EULPCKchQ/B/Ww6Wr
X-Received: by 2002:a05:6512:783:: with SMTP id x3mr28435106lfr.584.1629774955747;
        Mon, 23 Aug 2021 20:15:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629774955; cv=none;
        d=google.com; s=arc-20160816;
        b=puNeVHw7mxsoHjk0o1NG0WcyZqQax6Sfg2E8HGeTktAe/8QYmE4zypEagPpv66CWS4
         98s8pwG39L1JggQ5U2ejHw68HQzn7Vk2hXDDqc4ruFFHRvb/PxK/5Fky5nhDO6uati/9
         EOUgT8ZxlJmR+DBKL9iNr24WT1IoNPRs/RAI6zddhsaZc6u0yl0/YVOxUZKD2m/s5iGy
         QsmtLF+mKlXiEqwkP1dgmixXVD24w9DV8pKGnpw8bVuuyQzLYKNwgefLCzhBNj45SXks
         hrFlbeDtkEls8/51DR/18YWl8u0fFQkzCA+OXLLC/aDLZNzqeIq6Izq26JL1E4yvQaYU
         R8yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=wuM0gA0s+nDzBm/WicqvsRzRgPoz6c0JvPzwtgzpwzs=;
        b=G1IhEIQvddWsfeGu9EXqjhdRNsswf5+SAQeNPFo7yPrCxg16bd0q+CqxykhiVHD2jB
         xenWn0lcVgr8aeLpZOQ2ttinOVZOZFKzQ8ZJVcDBD3sUvqf3VEP3U9/XPfo8u57tfINj
         p3shs0kGAe2NC/NYmOTWAvsJYrO6LiiRFxzvurOVdJDyMIonf4aAsnfMQC+nlKBS9bb2
         sxPLq9e7hfdGrgUqb80woNx20ZPfvSfgSFuat/oBdTSb05N+ZWqaw7JX+shywhO2To9F
         rgPdVwW1WlHeGILqUb48QVzPW4JnAtC0ockJG3M4yoV5StACo4cbhvDEdkwt1B49uc2O
         tzyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dhiCTlFp;
       spf=pass (google.com: domain of tawahpeggy98@gmail.com designates 2a00:1450:4864:20::436 as permitted sender) smtp.mailfrom=tawahpeggy98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <tawahpeggy98@gmail.com>
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com. [2a00:1450:4864:20::436])
        by gmr-mx.google.com with ESMTPS id h2si993840lft.5.2021.08.23.20.15.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Aug 2021 20:15:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of tawahpeggy98@gmail.com designates 2a00:1450:4864:20::436 as permitted sender) client-ip=2a00:1450:4864:20::436;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dhiCTlFp;
       spf=pass (google.com: domain of tawahpeggy98@gmail.com designates 2a00:1450:4864:20::436 as permitted sender) smtp.mailfrom=tawahpeggy98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x436.google.com with SMTP id v10so17846733wrd.4
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Aug 2021 20:15:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=wuM0gA0s+nDzBm/WicqvsRzRgPoz6c0JvPzwtgzpwzs=;
        b=dhiCTlFpvC0RxZGfroAQApGRaLM1BStb7fHgbT4mNbVa5kccQOdrKTKelWfZujPzq/
         rn72MBN3gpAs2jDUumOUQ2wMri/JonGYFn7tsrN8WANCI1QkyY+fXhZWuEOcLiCCYfCw
         vVszDFW9LU9A5XWIHV3zBlqtKARsLwnKLJrEruvFUOIC0Caxif4Eg4UfSAcFt4p30BlV
         DzjbZlBspzqTMgzcQnvTwINhKEsASGcAKJEmtGt1oGYcK5fimHm613iry/AL5Jev76g8
         yBAvXBpThe7HV7BABv2AYRbU+mEb6cTSeW4Mww14dasK8m5+WNlEV5t86XFgMwAxoohK
         KlQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=wuM0gA0s+nDzBm/WicqvsRzRgPoz6c0JvPzwtgzpwzs=;
        b=QtrzQ7FBySkozncu0EnDr/fyVkRf17EYlcvkwpt7MWh0+YsYg1pV0V53ZuyJpUsxTH
         zREtDDmVF9yvQh7cQcBMmcUb+SP5xiCV5QChCDJsrklEqGSnrWjAkINXQoh6ub63aC6C
         LDnnmr7aYVczzB9ZY3ZsBfJDBGKYzQ4TkGGGXXFDrdBD9OVkwfa90GQbWxmj/ex/a+mQ
         WykyI8uXiq1l4jYjommAT5LxsqWjzbYTN4/9GAIYQhgILrvcns5ws0iTZXP8tVwOuq5H
         rSb7Lg0yriYGcsMCb/ycKJmGwYSkXxrSYQfz0ktkpHCrZYqvz9n3vXp3IwAzHKGHHgjU
         tCyQ==
X-Gm-Message-State: AOAM533Tt4wwBj8bV0CXcBU/EIXrfs91HWZKJlIuYb91URGusKRtZ1sr
	zOgG3jKvMujQllx3FqosQcY=
X-Received: by 2002:a5d:6052:: with SMTP id j18mr17167292wrt.348.1629774955396;
        Mon, 23 Aug 2021 20:15:55 -0700 (PDT)
Return-Path: <tawahpeggy98@gmail.com>
Received: from peggy-InsydeH2O-EFI-BIOS ([154.72.153.223])
        by smtp.gmail.com with ESMTPSA id h12sm938117wmm.29.2021.08.23.20.15.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Aug 2021 20:15:54 -0700 (PDT)
Date: Tue, 24 Aug 2021 04:15:51 +0100
From: Tawah Peggy <tawahpeggy98@gmail.com>
To: Kroah-Hartman <greg@kroah.com>
Cc: outreachy-kernel@googlegroups.com, linux-kernel@vger.kernel.org
Subject: [PATCH] [Outreachy Kernel] Staging: wlan-ng: cfg80211: Fix Lines
 should not end with a '('
Message-ID: <20210824031551.GA80985@peggy-InsydeH2O-EFI-BIOS>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This patch fixes the checkpatch.pl warning:

CHECK: Lines should not end with a '(' .

Signed-off-by: Tawah Peggy <tawahpeggy98@gmail.com>
---
 drivers/staging/wlan-ng/cfg80211.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
index 7951bd63816f..8d044e3fc2e8 100644
--- a/drivers/staging/wlan-ng/cfg80211.c
+++ b/drivers/staging/wlan-ng/cfg80211.c
@@ -328,8 +328,8 @@ static int prism2_scan(struct wiphy *wiphy,
 		(i < request->n_channels) && i < ARRAY_SIZE(prism2_channels);
 		i++)
 		msg1.channellist.data.data[i] =
-			ieee80211_frequency_to_channel(
-				request->channels[i]->center_freq);
+			ieee80211_frequency_to_channel
+				(request->channels[i]->center_freq);
 	msg1.channellist.data.len = request->n_channels;
 
 	msg1.maxchanneltime.data = 250;
-- 
2.25.1


