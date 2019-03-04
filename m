X-GM-THRID: 6664550081215070208
X-Received: by 2002:a17:906:228b:: with SMTP id p11mr2183224eja.1.1551711485287;
        Mon, 04 Mar 2019 06:58:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:32c1:: with SMTP id k1ls3512888ejk.9.gmail; Mon, 04
 Mar 2019 06:58:04 -0800 (PST)
X-Google-Smtp-Source: APXvYqwJUscJNlRu9/wrxUTEj5LeODg6jEZZoHPJ1xeYQ+IYYTI7vJkgn526ZGKcDcB8V2sx5nMN
X-Received: by 2002:a17:906:4312:: with SMTP id j18mr1343206ejm.12.1551711484369;
        Mon, 04 Mar 2019 06:58:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551711484; cv=none;
        d=google.com; s=arc-20160816;
        b=alRIWpzaovrJg54TqxIiFTQ8suWaSL14b5eRDKOZ/QAhSzhfwP1ePZWfWVN534cboe
         9qUvOPH/6jwfBAa6KBPySdRuN6wWwLbMGnK5p12zTymyD4qnwpu7Fiq1pYejX99SEXmu
         Cw+M2mYZQT/qwkvPmTAsvr7DmmWWaWZyEHD/f5TRPOG2DMWysVllaE3zA1R+GsCK4l55
         8UMdxcEOIocTdO2yjhD9IdTy+E/xo8LfPERJKvStT1aMS2iN0HHnBh/8zlTDqVWAtIiw
         KmWu/2j9s32wI9xx3cb24Yt9zffBYsyRF7z9TqZmy6/pFG8BJRvj233tBPHU/UUs4CDM
         nbYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=PTa8eRjMJbKegBf8yuyKu6db+wnziVeStSBazYzkDW8=;
        b=mObM0FtuXv6MfHchI81ZSLn3C0sRTYh/PukIxBse/G3yFUpNXGwSBctnXP4J34w5jA
         JJcrFxUwqBYrpA8/W/WoZ1k4xEiZd/p6w9bNuWvGSu73JPcZn4m/2BsdGJgtjhIAije4
         VK3A/mKNFmfUjKYAcnYc7LvLO31lY3DxDj9PCj6Fr/yKIISUdguia+MVjqz5iQ1AKr+n
         lG/7KZW3/wegFwwFIOr6VyjPglRb3093R4eXDhYtNRMch44OvWeL7jTAeDawp4mZm1iv
         sF5H47/v75nTeGpyHSlUNoCXdyXlzJoGe/uyKKh3oHbP5yylPLY9FRlCAruKDtLR4for
         4OzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gSA6nPhv;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <daniela.mormocea@gmail.com>
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id i16si358950ede.0.2019.03.04.06.58.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 06:58:04 -0800 (PST)
Received-SPF: pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gSA6nPhv;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x443.google.com with SMTP id i12so5892144wrw.0
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Mar 2019 06:58:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=PTa8eRjMJbKegBf8yuyKu6db+wnziVeStSBazYzkDW8=;
        b=gSA6nPhvEnS/ck2QCh0X7bjKr8H1Sz/h/VZfxh+D4UQtP1YJtUtyp5vo3DpoEQGjY/
         OtALoKH0ecIuuOeCX6dReo7SyV78UBSeVFMOIeqB+c4Qgwmp6BcKbCLlaL7dc+CzI8kW
         ZAyb7bX3M1arkbfn9XmlO2Cm7zDlLFoCbc/c59fTwE+gQR6cu5mhRWERChNQwFQI4jpF
         BDYoBUkysTxOfAikYrCnC2u0u8UBvek+AHdBOJAhUqKjzyGHCXDfzwNsd2rudtomTx16
         23wQ+mtXVSbJ5QBw8pUeeNh+HoBkRL7UySsEv3goa4FXKcEbNcnnlyzrQoViZJQMfLYH
         1sZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=PTa8eRjMJbKegBf8yuyKu6db+wnziVeStSBazYzkDW8=;
        b=f5xkIHyva6KZQfaZ6bjMWBI7yl2O7aW0p4TtAQNrkLYltBtNUGV8aZndpTgC/nONpB
         mh93UrWYWwLfR65fkuIy5eCmkbBvPmrdpzF/72+Zd1T36vdlbkrIuPWc3Si1OyAV4OXx
         yBbXi+XyFAwOYWFEzUQoJ5eBZFNhmW1uoVRvgJV2zchsKlk0LIPaXgPL5Ts25Hx7cbs0
         NoIQE55S9cag7evxCUWxxi9+dEmkC29G9zxhNhhVygp5r1UQmT+b98FOPiD7G4n5+mlJ
         wh2PLiVWU49IiF3y+kE0U+yMQjuhSNBqC22AXrsD0ei+ReNUg9RULLSPdqmSVn2GhvQ1
         8MUQ==
X-Gm-Message-State: APjAAAUzKhBrptf7H8n2SRVfjJbC1wIGREh+rt0GAQCYVsUyPFGFeWkj
	TPcafCdNCJQACCo+4Qq8w5z+GhEE
X-Received: by 2002:adf:ff81:: with SMTP id j1mr13252697wrr.261.1551711483825;
        Mon, 04 Mar 2019 06:58:03 -0800 (PST)
Return-Path: <daniela.mormocea@gmail.com>
Received: from pthm ([141.85.233.103])
        by smtp.gmail.com with ESMTPSA id d21sm22780043wrc.44.2019.03.04.06.58.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 04 Mar 2019 06:58:03 -0800 (PST)
Date: Mon, 4 Mar 2019 16:58:01 +0200
From: Daniela Mormocea <daniela.mormocea@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [Outreachy Kernel][PATCH] First clean-up patch
Message-ID: <20190304145801.GA28407@pthm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fixed alignment issue with parenthesis.

Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>
---
 drivers/staging/wlan-ng/cfg80211.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
index 8a862f7..7c4e8f1f8 100644
--- a/drivers/staging/wlan-ng/cfg80211.c
+++ b/drivers/staging/wlan-ng/cfg80211.c
@@ -332,8 +332,7 @@ static int prism2_scan(struct wiphy *wiphy,
 		(i < request->n_channels) && i < ARRAY_SIZE(prism2_channels);
 		i++)
 		msg1.channellist.data.data[i] =
-			ieee80211_frequency_to_channel(
-				request->channels[i]->center_freq);
+			ieee80211_frequency_to_channel(request->channels[i]->center_freq);
 	msg1.channellist.data.len = request->n_channels;
 
 	msg1.maxchanneltime.data = 250;
@@ -372,11 +371,9 @@ static int prism2_scan(struct wiphy *wiphy,
 			(const u8 *)&msg2.bssid.data.data,
 			msg2.timestamp.data, msg2.capinfo.data,
 			msg2.beaconperiod.data,
-			ie_buf,
-			ie_len,
+			ie_buf, ie_len,
 			(msg2.signal.data - 65536) * 100, /* Conversion to signed type */
-			GFP_KERNEL
-		);
+			GFP_KERNEL);
 
 		if (!bss) {
 			err = -ENOMEM;
-- 
2.7.4


