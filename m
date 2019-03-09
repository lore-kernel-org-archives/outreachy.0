X-GM-THRID: 6666274038276423680
X-Received: by 2002:a37:5b05:: with SMTP id p5mr12725568qkb.11.1552112875235;
        Fri, 08 Mar 2019 22:27:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:aa9d:: with SMTP id f29ls1766649qvb.4.gmail; Fri, 08 Mar
 2019 22:27:54 -0800 (PST)
X-Received: by 2002:a0c:ba1a:: with SMTP id w26mr12613566qvf.23.1552112874793;
        Fri, 08 Mar 2019 22:27:54 -0800 (PST)
Received: by 2002:a37:e30a:0:0:0:0:0 with SMTP id y10msqki;
        Fri, 8 Mar 2019 19:17:20 -0800 (PST)
X-Google-Smtp-Source: APXvYqwta4iWrTrZON4drSfY/X16dQ5z9x1aVW64tWCfVbNpBQfSQi/nxzYfe5Q+iRuYaPhf8wxD
X-Received: by 2002:a0c:b08f:: with SMTP id o15mr12634691qvc.36.1552101440799;
        Fri, 08 Mar 2019 19:17:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552101440; cv=none;
        d=google.com; s=arc-20160816;
        b=DG2Q9Ou9hKXvd8Yf/umsVW2wD1wGj2GI8mv4VPsp1ly8AAuPR/aIW5h98+yMNQiRny
         zAcaszzYPgx5anaewIG4grt6fh8nlsRzRLs7+nEHJqxeh64qSbl3ooBzrgePtCAwihI9
         mSJsNxttwlROJijuBpDA7NUYY6Yq25MF24NJK/wa6b4n42RvOaquHhUu1T/IE7620ECa
         MXYeqGIwD8lsQLa4HKwuoXkbWCabwfv4QpPQBi6akiCcxUAqU4WQ43yrlchNwPPLkrFR
         9r42UipjIY/pGHnY/hqlBTwDlinQsxJLZ3dzMjHxNe+TPptimAWp0kB6y5kSDOVwK7FQ
         m8jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=FNBCclCBXUHm5IhH+2Wz9lD/Xjt747rSaeOlD+C9ieE=;
        b=g2/s10k5IWIS0G19xGaM/1Jzx2oUAHktW+SuETn3YbUZi1WUP1qg+Epsz5pkZw5z+x
         QHqvEPAx1RT7HMOpwPd5jnyKULkAE02LhBbueGv3ArCDRSZlhfiSqH+mUj8P/QI1wj2B
         gcIVFrVzeMgA7HT7Ln0ht2jsbHHFcq+P3J1A/uB+SrJbUolYKH0OH5Iv1F2x/qZjLlN6
         lgY7P7YqjZBXTZqrm0OA7iogX9hDDtEALgexSXhr0W4UdznlcC3cauyCqt0HE+ioJuZf
         zRCo8le7ipvhxwDcFLxpgS43Y82F8IIFw+SovJIADUHe6S04Douzyq+hi267GT8zLTsu
         isvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HwxgOdXx;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::134 as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <brandonbonaby94@gmail.com>
Received: from mail-it1-x134.google.com (mail-it1-x134.google.com. [2607:f8b0:4864:20::134])
        by gmr-mx.google.com with ESMTPS id y202si500060qka.2.2019.03.08.19.17.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Mar 2019 19:17:20 -0800 (PST)
Received-SPF: pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::134 as permitted sender) client-ip=2607:f8b0:4864:20::134;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HwxgOdXx;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::134 as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-it1-x134.google.com with SMTP id l139so24320574ita.5
        for <outreachy-kernel@googlegroups.com>; Fri, 08 Mar 2019 19:17:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=FNBCclCBXUHm5IhH+2Wz9lD/Xjt747rSaeOlD+C9ieE=;
        b=HwxgOdXxbVcmpPNYjeEtF/A5EHeTuLjEX+S8ReAwEiNkaTcyTwvNbdAA7f2ii+OMbo
         bbRQuezSNWO61mj2HmxJB5EO8affHVcVyJlIFAP6cac2A+fMfNQSda6LfI9q6kjbrWjU
         ihGUz9bwvSL2Ink/2ix3+hH6WhYWZkHEABewR8i8tPaJ04z+lrU2E3NOSAz/tOQMlfcf
         lxMkoAg+9QUD141sOGFyhUdv8q+KHv7G9cdBRh3dfttOACpiXT0+6FhX7gEMoHdgHeR9
         7LE6bTLVx8NhEkEDylajgz8Z6fXWJPg6qhyCTazrakGAhNSyu4gnMsD7vr//KyYEjUxd
         8tlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=FNBCclCBXUHm5IhH+2Wz9lD/Xjt747rSaeOlD+C9ieE=;
        b=DVfORoZJ4k9F1sjZaxDafJcl3LA8V7TJpgZzJHUVz+zsT74uFPCAwNUt2AgBa5RG8c
         Arcp3zu9F4ft/EvohyGCDgrr2Z/lQvy+Os4NW3bugvCRFrMGEYypknd/IAk0/u+1SBIb
         0TXn14v/gXd+DNxoVolBqZOxFbjD+qvwoT/FLtdFTWTUuzOSlRcp1zkuO/QOfcfeYwEk
         C/9ztlLtZn4vgZLInfG2TWXVIJgXfdGyNlsCSoi5tLJ7AcNk426pt6TUsMjspf93Hvaj
         eZ+SfgDrY2bQlbVQAiyhJXvP63QHAxxCRierN0IRjd86V87P0BsOlPF0n8aM3NmRPMtv
         NAng==
X-Gm-Message-State: APjAAAWncL0gZCP5fU2lBgiLdAncs2y6RjAZOUl3SpsVrjk3dA8VoCWy
	vG9rTl2eFkzL1ylg3dI15fUezLHz4qSu
X-Received: by 2002:a05:660c:485:: with SMTP id a5mr10527123itk.29.1552101440384;
        Fri, 08 Mar 2019 19:17:20 -0800 (PST)
Return-Path: <brandonbonaby94@gmail.com>
Received: from branx011-Vostro-430 ([2607:fea8:29a0:ff5:ac12:25e5:5e18:5976])
        by smtp.gmail.com with ESMTPSA id s26sm4096178iol.41.2019.03.08.19.17.19
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 08 Mar 2019 19:17:19 -0800 (PST)
Date: Fri, 8 Mar 2019 22:17:19 -0500
From: Branden Bonaby <brandonbonaby94@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wlan-ng: Fix assignment operator alignment
Message-ID: <20190309031718.GA18429@branx011-Vostro-430>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Fixes confusing assignment operator alignment as highlighted by checkpath

Signed-off-by: Branden Bonaby <brandonbonaby94@gmail.com>
---
 drivers/staging/wlan-ng/cfg80211.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
index 8a862f718d5c..95105e597160 100644
--- a/drivers/staging/wlan-ng/cfg80211.c
+++ b/drivers/staging/wlan-ng/cfg80211.c
@@ -331,9 +331,8 @@ static int prism2_scan(struct wiphy *wiphy,
 	for (i = 0;
 		(i < request->n_channels) && i < ARRAY_SIZE(prism2_channels);
 		i++)
-		msg1.channellist.data.data[i] =
-			ieee80211_frequency_to_channel(
-				request->channels[i]->center_freq);
+		msg1.channellist.data.data[i] = ieee80211_frequency_to_channel(
+						request->channels[i]->center_freq);
 	msg1.channellist.data.len = request->n_channels;
 
 	msg1.maxchanneltime.data = 250;
-- 
2.17.1


