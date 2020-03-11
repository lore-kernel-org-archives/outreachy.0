X-GM-THRID: 6803040600121671680
X-Received: by 2002:a5b:9ce:: with SMTP id y14mr4472944ybq.522.1583956321692;
        Wed, 11 Mar 2020 12:52:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5b:883:: with SMTP id e3ls805057ybq.11.gmail; Wed, 11 Mar
 2020 12:52:00 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuRxKfCMUrv3nwJ/H6lGF9njsOR/FaCItxiDw6Tpaafb62y3ERWrbG6HU8AFgSdR+UXdCC3
X-Received: by 2002:a25:bd47:: with SMTP id p7mr4808663ybm.313.1583956320341;
        Wed, 11 Mar 2020 12:52:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583956320; cv=none;
        d=google.com; s=arc-20160816;
        b=xcWvwda1fKaD45jmyWlvurLmFvZ3bOV6PQ94fIhSt4LMZgzOgnFbSb3EyYwV/xcLGZ
         fROgNs+aRpl+nb2odzrIK8a2sIOMl5yswVjs9FGwp3U9uKRZ1VDSlVaYPZubnImsx5R3
         B+rbw4QHJOsvluu95CMj2negnzCy2RKq8ZbrZlVMEOVsSduK1tcJ72glhipEGJqbAudU
         FoVDN6InfYsDYPIyX2On+DH37333tMjQndCjDpV1c1RRh2AxRGDblNuiAVvrpdXh+zik
         WFDQT1G0Hht/6RMrBnt3XIGgmk1Q2PF17vU5j0aE/oA7PJcT0IOWRo94EqvwqlJpzNU+
         BFVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=NywvUS+KLKJGSiGL+Vu5zQt431tiBqJdMP+a4EDwGTQ=;
        b=GT+RH/pt95e3nqSgi+XDU5rCw2dxKIvasT8WCnd1642iAdajsEehJ3ZHqsSYQ8lnfM
         vdAG9IXNGc0Fc75spCH5nK2xJQtDDyl1R80J1tP74oXmMqm0C8qyHI29Cnu/8zQOMN8O
         9nrFS0a/kLbGnKyL2ro+/1w0joHW/DU3x0KGFJ8u8ILm1ggkfxtN8biKG7Bjp3Qf6ZOA
         E1dT4AmUNgvLHrTYqpuKBDmA9k6TV+OwimLy+E/KvHvHjZ3MlCpS85bOfLCYz6luzYI1
         lbNmuVsSheqMss0Fx8XkqggpRpqh9n1Is3BbUjyhwWwjNJJP+cHJL7/b/wzFOlXggGvB
         D8xA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=khd+LSD+;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id u202si192950ywe.5.2020.03.11.12.52.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2020 12:52:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=khd+LSD+;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id h8so1750556pgs.9
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2020 12:52:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=NywvUS+KLKJGSiGL+Vu5zQt431tiBqJdMP+a4EDwGTQ=;
        b=khd+LSD+O08asYFcwYKn6KPzuBGLH5V0ZCVyPGTo3LRLUIApXwXVOZ0J7yL0Eiwfj8
         9jGEclK2HOYr6VrnNyzTaRxRaB+4TaAg1C8LrZm/tqjviZasW4/5qYyrEf1Hzp6DV7E4
         sc+4H8wd4XWhmnRFiitRnGNL+Y8AlgGy2kSPR6V3S/ZiWej3CL5zLPDHvzDczYOtoOgI
         4QMEI+pqwwMXJ3rtKksUJ2ue+ZRRuEApw4eGK+CtHKiK3xUS2Oyc4YMf9E6SH/syozBr
         DxM4aQG75P8nvJzRHzFfAD6zpsB5jSEKE929yLghBGLPCpViC/EcE745MGUhx3Z0Fj18
         9k4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=NywvUS+KLKJGSiGL+Vu5zQt431tiBqJdMP+a4EDwGTQ=;
        b=BfARK0d4cvvdsyXgU5pWPim+19a4vHhNfRVlXmS+TRCnq06JKi9uXBk8IFJ1KAoDO/
         gcP09j2hvG+v692toW75zSz8sZeeWr9GlwYbEVqPkkmD52jjSsCT9Qev+pMucFOE7kAA
         IghUY+5Nnb8unu6PSxEPVUgXs2LxhmHWXbR8CxRoWVK7lVDzG33szPXBIhHOfky0OIB8
         cvHvFjiD+g25vR06DExIETh3Wc9l8fuEJ2vcQYvZoSaYCb8KOXvP2WP4FyfqRVrtmlns
         XmK7IBraFAHpH6S88kaqXKw7fNR9pAVeoArJbnMYPoyq6c+wdVVM0NOLugHbbNXceo9P
         Fy5g==
X-Gm-Message-State: ANhLgQ3fZQznCk3uRwOo/4YXShPBapLWXfuE9nK/LMgZFN9ZoHTOkXl6
	e6UrjpzMMjVK8q8epWLabEH4Nyil
X-Received: by 2002:a63:214c:: with SMTP id s12mr3533078pgm.296.1583956319339;
        Wed, 11 Mar 2020 12:51:59 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.240.207.69])
        by smtp.gmail.com with ESMTPSA id x3sm10659364pfp.167.2020.03.11.12.51.57
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 11 Mar 2020 12:51:58 -0700 (PDT)
Date: Thu, 12 Mar 2020 01:21:55 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, daniel.baluta@gmail.com
Subject: [PATCH] staging: fbtft: Reformat line over 80 characters
Message-ID: <20200311195150.GA4783@deeUbuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

A long variable name beyond 80 characters gets exended into the next
line. Reformating the line makes it more readable. Also adding an extra
line for the next instruction following current if block helps
understand it better.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
 drivers/staging/fbtft/fbtft-core.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/fbtft/fbtft-core.c b/drivers/staging/fbtft/fbtft-core.c
index d3e098b41b1a..4f362dad4436 100644
--- a/drivers/staging/fbtft/fbtft-core.c
+++ b/drivers/staging/fbtft/fbtft-core.c
@@ -1186,7 +1186,9 @@ static struct fbtft_platform_data *fbtft_properties_read(struct device *dev)
 	if (device_property_present(dev, "led-gpios"))
 		pdata->display.backlight = 1;
 	if (device_property_present(dev, "init"))
-		pdata->display.fbtftops.init_display = fbtft_init_display_from_property;
+		pdata->display.fbtftops.init_display =
+			fbtft_init_display_from_property;
+
 	pdata->display.fbtftops.request_gpios = fbtft_request_gpios;
 
 	return pdata;
-- 
2.17.1


