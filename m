X-GM-THRID: 6389629700764860416
X-Received: by 10.157.60.11 with SMTP id q11mr8299641otc.3.1487701595997;
        Tue, 21 Feb 2017 10:26:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.63.11 with SMTP id m11ls12986749otc.20.gmail; Tue, 21 Feb
 2017 10:26:35 -0800 (PST)
X-Received: by 10.129.70.133 with SMTP id t127mr10143036ywa.146.1487701595585;
        Tue, 21 Feb 2017 10:26:35 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id u12si3387886pfd.3.2017.02.21.10.26.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Feb 2017 10:26:35 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 1so12238417pgz.2
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Feb 2017 10:26:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=mZPDidN1Hg7GRRNHCodmC7xlOWIA0oXWkAES6qYoig4=;
        b=fQb+3pjRrZC1XtyLCK6L/NAYLkxR52bos7jCiKumL4danRF+ll7QnSJ1p0xnvGlJTc
         sOfp+CfzR5EgxuAlM+pVk5Ag7PEURTNL9IcNHVXEKYSxi4A/CZVKaNOr0LuClPMdd05h
         pXqVzz3GW6wp1777Ti/sO16SLFCJtOpD8n8OYMVj2dkaPg6SEid47OF5p1KnKQrRC0x8
         RQbAlQHKW2iANrOUbksHomGJqbMUybZUjCNUOBEcze0l8QcAcoiDGOC5JqfJojh6cRu6
         OtYnfh0u7sGK8/ZbrbfzOqQkJ8yLdegPECRKEIfZUXIDxouoQqveue5/Gd5WuNtqTd4I
         mOPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=mZPDidN1Hg7GRRNHCodmC7xlOWIA0oXWkAES6qYoig4=;
        b=a3ZlMa72SpK06ZGz//ZK4ujhARH3Prb+kQVP7M4hYXbbRKZlcGvPYAworpI3QazRNc
         Cyaej1N5fXBX1CREHK9f+HchRAj2vwmaSd5DFUowt7v3Gl5BndP7q/zqaiQacJP6hirE
         9THq3/MlESKMa/k3XNaFYrZ44B7+T1lw+yfRQLQ+ANiTZphppOf/rWNv9DmVltcpG59F
         VxncrzvXyKCG1Kw2KEAdoGBUKbuY8vy/011mp2TATADfnghhaqpXNURUInok/PXURBQ1
         kIM51bdDqdl9Rk+eBqZzvIVMOfvxH4fsVq6XlpnA7VvBbLjMZd0GpisyMfH5Lu7TbAbS
         bLvA==
X-Gm-Message-State: AMke39kw4Li+C0TjGDuFmiy1FYB7p82fPhH0jtsXd5XwluBcNH/B6BjBUZOLw+1rWqfFgg==
X-Received: by 10.98.210.3 with SMTP id c3mr34738506pfg.7.1487701595350;
        Tue, 21 Feb 2017 10:26:35 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id c2sm42364101pfl.61.2017.02.21.10.26.32
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Feb 2017 10:26:33 -0800 (PST)
Date: Tue, 21 Feb 2017 23:58:26 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: abbotti@mev.co.uk
Cc: hsweeten@visionengravers.com, gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 6/6] staging: comedi: Using macro DIV_ROUND_UP
Message-ID: <20170221182826.GA31819@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The macro DIV_ROUND_UP performs the computation (((n) + (d) - 1) /(d)).
It clarifies the divisor calculations. This occurence was detected using
the coccinelle script:

@@
expression e1;
expression e2;
@@
(
- ((e1) + e2 - 1) / (e2)
+ DIV_ROUND_UP(e1,e2)
|
- ((e1) + (e2 - 1)) / (e2)
+ DIV_ROUND_UP(e1,e2)
)

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/comedi/drivers/addi_apci_3xxx.c | 2 +-
 drivers/staging/comedi/drivers/cb_pcidas64.c    | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/comedi/drivers/addi_apci_3xxx.c b/drivers/staging/comedi/drivers/addi_apci_3xxx.c
index b6af3eb..82c2211 100644
--- a/drivers/staging/comedi/drivers/addi_apci_3xxx.c
+++ b/drivers/staging/comedi/drivers/addi_apci_3xxx.c
@@ -502,7 +502,7 @@ static int apci3xxx_ai_ns_to_timer(struct comedi_device *dev,
 			timer = *ns / base;
 			break;
 		case CMDF_ROUND_UP:
-			timer = (*ns + base - 1) / base;
+			timer = DIV_ROUND_UP(*ns, base);
 			break;
 		}
 
diff --git a/drivers/staging/comedi/drivers/cb_pcidas64.c b/drivers/staging/comedi/drivers/cb_pcidas64.c
index efbf277..3b98193 100644
--- a/drivers/staging/comedi/drivers/cb_pcidas64.c
+++ b/drivers/staging/comedi/drivers/cb_pcidas64.c
@@ -2007,7 +2007,7 @@ static unsigned int get_divisor(unsigned int ns, unsigned int flags)
 
 	switch (flags & CMDF_ROUND_MASK) {
 	case CMDF_ROUND_UP:
-		divisor = (ns + TIMER_BASE - 1) / TIMER_BASE;
+		divisor = DIV_ROUND_UP(ns, TIMER_BASE);
 		break;
 	case CMDF_ROUND_DOWN:
 		divisor = ns / TIMER_BASE;
-- 
2.7.4


