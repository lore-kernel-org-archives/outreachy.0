X-GM-THRID: 6664555567666692096
X-Received: by 2002:adf:e412:: with SMTP id g18mr1010809wrm.9.1551712762562;
        Mon, 04 Mar 2019 07:19:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:e9c6:: with SMTP id l6ls3521936wrn.14.gmail; Mon, 04 Mar
 2019 07:19:21 -0800 (PST)
X-Google-Smtp-Source: APXvYqwpGKS6PYKGjS0lZG+4Qwd1kC9TTB/tb78mh3D34ow4U1PqP1r8xk+A4Fr3Auot8FIf81Hg
X-Received: by 2002:adf:ea81:: with SMTP id s1mr1003278wrm.19.1551712761655;
        Mon, 04 Mar 2019 07:19:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551712761; cv=none;
        d=google.com; s=arc-20160816;
        b=e83aJ7D5Kjze5Lmf+8XNhOkqwL2z+l+08ESLlaqleIfRsF0rJ4HfS5MTVPcGCMQHDd
         0awpWJdzM4NodU2EgpjIl8OezxwJW9Zgtc/MbtzUQnV2egR1gW7y6tmX3Rvov6fvh6sm
         1GMDBKMejXK5syzyw7kEDhw23UO8iNhl76aVyMf5DC6LyVLFoIDj+AhDmG1p7OtyTwUQ
         p4pkV1lo9asw06dikf+m1kv8e6rxyBhYKDb34So4jEhNmHCUOSRwmwCguJM6nsvdSKGf
         cIT1qDamnAMgoGhU/Z1oljUuqC6fwna+iH3+twOw+HJSWdgO+dDHTEbZzSUyj+oXBqg2
         uCQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=cdbkcJ2/1dq8Ouws66riwNi47PlEEjOlzEHNER1CYSs=;
        b=gx/qhLHBKOzoI9dRPFl87r+swMC1kv21gdHsnxa+iX2WmmLRQME2RRFeX6Y80upHD0
         +TrL16KPiifVAz18K8OyDr2fKZc2hXzBVlrIt8SW+hicDpQBED981NtNqQfXo6yMOg/P
         kbFLXFz9RNP0GRBlVHVldLjCTtirxBZE6G49m/XPeDS+AOe7wT7wqX+GvKDcLskl0Y+R
         8OnuGkKu1A4tUBhRuP46BBsG1oNVKpqA2WzLDtrxIb1Oh+sAaZiDCZy5vUJXMUzJnkYB
         AFEV/dbj1dUwvTYVaHiTxZ1LrX/q5JRW62MSC1W2fuT+d/q3uqw5WtaxiQcWtqN4PWdl
         yQYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dTpyF6lJ;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::42a as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <daniela.mormocea@gmail.com>
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com. [2a00:1450:4864:20::42a])
        by gmr-mx.google.com with ESMTPS id b130si249125wmc.0.2019.03.04.07.19.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 07:19:21 -0800 (PST)
Received-SPF: pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::42a as permitted sender) client-ip=2a00:1450:4864:20::42a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dTpyF6lJ;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::42a as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x42a.google.com with SMTP id d17so5964635wre.10
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Mar 2019 07:19:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=cdbkcJ2/1dq8Ouws66riwNi47PlEEjOlzEHNER1CYSs=;
        b=dTpyF6lJkWZolIuEp2uAEpwrC5O6esYxOjM2u3Fij6cH4sMbdFl+9x4m+uMIpLRZxo
         VhIOWrBK1O90eAorO+8alGYD1MZqN1dIMpwykQhLRFyc0I1vGYpuWUKp86OSB5wD4GE8
         NJnqqjCuY8hCa4ScAAwprjVKfIfujzCFqwfWLqwvjmuDS6vBrEWL8gEYlNszaT8U/1nK
         elCil6cntPiucabWZl0sPzUHf6Ex4UdmTV5fCs9+U1OQeYmudtidnFcz+cdpgYcEqoP+
         u3GU+EQ3qrXvLUR1R/SFctzhXlpgJNmJlg7kzJmPk7ki+QHljQC/DOF1D+7+aQR3XlX9
         CD2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=cdbkcJ2/1dq8Ouws66riwNi47PlEEjOlzEHNER1CYSs=;
        b=Glo11d2SDXk0PcJ9FArx9c/SVTwqpWHU5CpkF0BWDTppC0+orSYBFM8jWILbaqnRLt
         XTilrgJTGmUm5PIs485lVfEgpnxTWVBFgoeKCZIz8qhdjfexbQTwPZ1sRsjaYKBi0Sta
         8Z7v9eWw2z6Fj9i1fnJGW+If8vgOBhybQQNCqaT+fbc9+9Eq8WhMkUy47sza6nxAaFQ/
         70HY6JUNna/03qXE7HcJ1FV/3MIBxMu7TAck8IiEYTZlgX2pIrIFSXppn/XsJVyuHn49
         J6X8PwJp2Gt2UMI/dthIWFfi+sXt1dAfDCFkeKf/FXR04IvoXMjYJOkmQ/NZFWQBMe2+
         oHKQ==
X-Gm-Message-State: APjAAAV5V47dijssbujHbKqZYmurjhmUY/mk/t1NpVMW3XRp2SsK5p+q
	lg4bQxgZkoxU4D6+8E7vDFBdsxWJ
X-Received: by 2002:a5d:6107:: with SMTP id v7mr13649145wrt.78.1551712761168;
        Mon, 04 Mar 2019 07:19:21 -0800 (PST)
Return-Path: <daniela.mormocea@gmail.com>
Received: from pthm ([141.85.233.105])
        by smtp.gmail.com with ESMTPSA id m15sm5858510wrx.30.2019.03.04.07.19.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 04 Mar 2019 07:19:20 -0800 (PST)
Date: Mon, 4 Mar 2019 17:19:18 +0200
From: Daniela Mormocea <daniela.mormocea@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: wlan-ng: Fix parenthesis alignment
Message-ID: <20190304151918.GA28670@pthm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix alignment issue with parenthesis.

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


