X-GM-THRID: 6463324440693309440
X-Received: by 10.176.70.89 with SMTP id z25mr1298786uab.49.1504859989932;
        Fri, 08 Sep 2017 01:39:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.114.14 with SMTP id n14ls2834435ioc.12.gmail; Fri, 08 Sep
 2017 01:39:49 -0700 (PDT)
X-Received: by 10.176.77.154 with SMTP id s26mr618uag.108.1504859989074;
        Fri, 08 Sep 2017 01:39:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504859988; cv=none;
        d=google.com; s=arc-20160816;
        b=AryeNrZg7gUaLTTPeEKwZ7zhQ2QhSNUgkrp3LbI9lJ0Y0pftjUh3KgZnI7xJwoPj5O
         tmtZjBy6S9MulZJM4kt6OrwsfcFijfdHkTMx79BaftrmOISXC6HA7lid62eGvC0nkxW+
         +9+RNoUqjGm9uyWB90rQ3IO5V6+EKKVRRfY1MvakwS1S/doEjIfn5xpQnbU7mIUN2DD7
         nqWjg6fkDWKiftBUN6CTEphHFng/UEPULFg99Xr5thG+n+gekfg+ys6wLlCLGinyz0H7
         vTjrJMYhJGzyw5YuQXRxqkc+R3SwLy7y7plGq8R/CZE0GuhiYBVqLezFm9BGxcLW2iXk
         w9uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=GVZ1b5H4NKWu0APCkIUGqCblGjWlfizvS/dZGsEFxRA=;
        b=GFPAIjvSOICxJwEqN5Yl1/Magl2kMk5StfthKK7n4UQFapU5llhOcTHc9yteKe9kdJ
         UVvwA41qBHWUxrROQgrOvTpLoCSaAUFaM9qw+ZdNXSIo9JvVRAbWEmHuo5M5J4A5RCZj
         Yz0xzj7sPOIJAE7cWhh2eOw1dWv3XgaKdougOTYnm6CIYfbkKV+ptgsstVQYXZJ5kLEy
         daJGTc2xcTWNBOrQR16WDLITkq048t701rDOPMckolWeD6inaHESzkQlgcwIQXVeg6qu
         MNrwhlbUt1vaJd+gytVX8UosVKrhH/UvifRTeQWJmDXwHsqNHlImv6k+F2jMImlSEV4y
         aK2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BX2VHnuJ;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id g19si201255pfd.14.2017.09.08.01.39.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 01:39:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BX2VHnuJ;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id d8so1037876pgt.3
        for <outreachy-kernel@googlegroups.com>; Fri, 08 Sep 2017 01:39:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=GVZ1b5H4NKWu0APCkIUGqCblGjWlfizvS/dZGsEFxRA=;
        b=BX2VHnuJDWZjSaPUm8U61uWz+vV0WbxtOrwPoXRJDr8RQugItNf7NlfdhVzjAZcxlQ
         2R7rQhtyVXa4wRSAkJEN32SeEL/311bBpdOSaiNQzGeW0clI8uJJPyKJL/wnYpAc4vzt
         yCod2Fhi3eoHKvW4xpXA1YGp4dyL1Ph10WitSWJLwG/uW3DPekhjuVS4oFPFJZB6BM8/
         M7dSJDM9dzZASaO+Ah8wCH2ql8S3zYNmT0B/x8vHs6wAG9MrM4FKVCxPijSEvkxIpHNB
         /l7lF5A0URP/1vH2uJn/RHAIFqC82aYMVoHNO9Ufbd5q8FlU09msYBd61l+u1JXldQzj
         Irtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=GVZ1b5H4NKWu0APCkIUGqCblGjWlfizvS/dZGsEFxRA=;
        b=PJtiVqWlWJf+9DKiP4EdMYxj6nDZaiMOyWbVLe96oZJ8TJnB/Vhclb4B7opOPoz/z6
         C3j4zxs1EfdR4gYJS3pUi+blBjQzth/XrPjovCWSKPcqJrux8x5XFnrrfkbyeHCDpFwi
         fisw7o0Cn139WzTNUBkoAcNufBIYn6lXpXnsJDZOHsAK+VtqF2R0rdMlmA68zcHuibsE
         iZnUFnwod4ypiZN+/Pl3owQKrWPvOIfySbtGKeYZlF3aXjLGyIbv1RA/fBTe5NWZCSYA
         +TybJEtCZp/kOuktzNKucT1avKjhPhB1yRhGesK4Dqc8Ax/V/dVoCH8Rujue1CqabO7c
         BVBA==
X-Gm-Message-State: AHPjjUhlW5elyRGB0v1C+/+ENFYRzmL8PfZoRVedSEqE78BUUxcdEOW1
	XVsQdHWnLXddpreT
X-Google-Smtp-Source: ADKCNb78mvgrEgk84JjobyxwySWZOyxctSTPicJJGSrbIJgXLChGDyaU8YyN34LoudgzVYuIM1CgHw==
X-Received: by 10.84.238.204 with SMTP id l12mr2587145pln.196.1504859988542;
        Fri, 08 Sep 2017 01:39:48 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from harryPotter.iitr.ernet.in ([103.37.201.122])
        by smtp.gmail.com with ESMTPSA id t2sm3041716pfe.85.2017.09.08.01.39.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 08 Sep 2017 01:39:48 -0700 (PDT)
From: harsha <harshasharmaiitr@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	harsha <harshasharmaiitr@gmail.com>
Subject: [PATCH] staging: rt8712: xmit_linux: Avoid multiple assignments in a single line
Date: Fri,  8 Sep 2017 14:07:50 +0530
Message-Id: <1504859870-13153-1-git-send-email-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 1.9.1

Fixed coding style issue

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 drivers/staging/rtl8712/xmit_linux.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/xmit_linux.c b/drivers/staging/rtl8712/xmit_linux.c
index d13fd15..03c6b0c 100644
--- a/drivers/staging/rtl8712/xmit_linux.c
+++ b/drivers/staging/rtl8712/xmit_linux.c
@@ -49,8 +49,10 @@ static uint remainder_len(struct pkt_file *pfile)
 void _r8712_open_pktfile(_pkt *pktptr, struct pkt_file *pfile)
 {
 	pfile->pkt = pktptr;
-	pfile->cur_addr = pfile->buf_start = pktptr->data;
-	pfile->pkt_len = pfile->buf_len = pktptr->len;
+	pfile->cur_addr = pktptr->data;
+	pfile->buf_start = pfile->cur_addr;
+	pfile->pkt_len = pktptr->len;
+	pfile->buf_len = pfile->pkt_len;
 	pfile->cur_buffer = pfile->buf_start;
 }
 
-- 
1.9.1


