X-GM-THRID: 6476695783848542208
X-Received: by 10.28.238.220 with SMTP id j89mr534086wmi.6.1508015315607;
        Sat, 14 Oct 2017 14:08:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.157.208 with SMTP id q16ls2011282wre.6.gmail; Sat, 14 Oct
 2017 14:08:34 -0700 (PDT)
X-Received: by 10.28.184.78 with SMTP id i75mr587903wmf.30.1508015314750;
        Sat, 14 Oct 2017 14:08:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508015314; cv=none;
        d=google.com; s=arc-20160816;
        b=b1EjQ0updXJ74GUmVy3kFiqGmSU9V1i6somgtOKSFHzAPPiaFXVTz4B5LA1IuY3bTB
         ivvT/mMczGgqX0gSRbEef873XEB8CbYtZ3Vfha55iyvAQXLROnSeYe62K8YFlLS7Wtgh
         UDww5WpcFNlHEglIlRB+vmC/4KhHElLrHRK2KCpEiErTfImC0SC75WZlcPNcX2+YVWi4
         qEg7j/UuSDvqReFWxE4HL8pS3larh3K7OVF+YHPS33exwLG21NARMNNul+IdmkYU8FZU
         pYvH+iDkmivODhXz/Mwmf90qSDlsBZ/OJuynhRJ38Uo++6n1YrVRZtvczD5J2lnaBMzF
         H1dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=z335sum1aSix/NClEq+k3I2RdcTm16nunp8XeJbahog=;
        b=0CR4GPyG+sO/rr7yaMC+Whck5OT/vzYdwk3Z+rIutV8vPTwdYWP/j10TdKZxQ0XjIb
         IHWIdN+5DC6B3bRe9vMtrgFfOXttmPYWKrwBu9074IQt8gP/dT/gI9GtJXDXKmSfmMkf
         Sre3zt1GgQKsY8McaWQuOQGcuZLt/eHn1yn14QaHA4HvU04pjJPv8vsMkV7gJCxit6FO
         vJ01ilRE3Cs799exiY/wwNikNPhqx8jRaEzqWuYgAdLBKEy+ZPj2/G0Paomtc+VbfXnP
         8I3eWxUWdhUfdDev9g/yPi5BWr5z2sOLsRqZz+e3hC8EojmZ3GxlBTA5BFi4lKlQmUL6
         HZ7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PzG8xOgT;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::233 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x233.google.com (mail-wm0-x233.google.com. [2a00:1450:400c:c09::233])
        by gmr-mx.google.com with ESMTPS id j31si14250wre.3.2017.10.14.14.08.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Oct 2017 14:08:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::233 as permitted sender) client-ip=2a00:1450:400c:c09::233;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PzG8xOgT;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::233 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x233.google.com with SMTP id f4so27345988wme.0
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Oct 2017 14:08:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=z335sum1aSix/NClEq+k3I2RdcTm16nunp8XeJbahog=;
        b=PzG8xOgTBboEniv1UBuRio4KUynC2cvoiILCs+oEac6BCYX1zlPRmHucchy4UOeMgd
         5NDiXeAJ/0g6dtZI79gyPCooq13dztJi7nAoiCtXjcnqC0ZOg8EVfvh6h8J/svPEUdQv
         DHaAikrmkQYL1LwAAMI2Pcb7fsci4EVz8X+1nsSY1EQ8W8iN/RxjcKoLcLHZ9t9yGPiw
         pScF9RTbussBfkqlgMR3tcOIwWfdT9t1smumk3Z2QIuZlpwBLe/HsQ2qEVM1L/SsyCeM
         bxcFxpfZLSsdFpVtH0CjrQAyrl07SUMinCkpmnbgox64Dp4yFHw52xtmXPjF1r+phC+l
         xqeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=z335sum1aSix/NClEq+k3I2RdcTm16nunp8XeJbahog=;
        b=DAzEn3tEACAsaS31QarvfrfiecL3TjvZnQ/wLQJLOQ8QHFUUCpP/wyeYTvDILly9JK
         1RHqIf7LxuhVlrDVeW3hkDWi8MSWxqi9FyUaOao/M8rLcbgS7e/DXTPPRu+01HEposB7
         w7jpaTQsVUFYtL0+OKPRtL1S7RnLDh48lPKcW5JlJhf4M4urf33WJeVmEKp8AiHhoKPG
         SuO97aGkv3irlv2EWfeqXwYBQBjljPnJcJk3yvToTmSlErOOTyUSTQzbLeRwWdkCxWjp
         NxulpuVnaM5v4mDFucfjSj07fjajfKzRrLuAiyYrNo1tyIKjOtIJfwGvQUTns6W6aCOa
         jILw==
X-Gm-Message-State: AMCzsaUW4sCqu8jLbu/EbLN8mL/nChgJdmXmsvJ3FurUzYTchi8cuNy1
	F9UMID0+LytjxNAiTofRCme/3g==
X-Google-Smtp-Source: ABhQp+SvpXfCqugQPXRFYXAzqqI/7e/0UIyXE8f2HP3uQTJpux82AWdhwB7eV1aoRuI56OzgsoTGlg==
X-Received: by 10.28.57.4 with SMTP id g4mr3692648wma.92.1508015314481;
        Sat, 14 Oct 2017 14:08:34 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.83.158.26])
        by smtp.gmail.com with ESMTPSA id h5sm6239345wrb.89.2017.10.14.14.08.33
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 14 Oct 2017 14:08:33 -0700 (PDT)
Date: Sun, 15 Oct 2017 00:08:32 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eric Anholt <eric@anholt.net>, Stefan Wahren <stefan.wahren@i2se.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] staging: vc04_services: Use __func__ instead of function
 name
Message-ID: <20171014210832.GA6858@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Use identifier __func__ instead of the name of the function.

Issue found by checkpatch.pl.

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
---
Changes in v2:
	-arrange the modified code to be in line with the coding
	style used by linux kernel organization.

 .../staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c   | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
index a96bae0..08619b3 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
@@ -420,8 +420,8 @@ create_pagelist(char __user *buf, size_t count, unsigned short type,
 				       &dma_addr,
 				       GFP_KERNEL);
 
-	vchiq_log_trace(vchiq_arm_log_level, "create_pagelist - %pK",
-			pagelist);
+	vchiq_log_trace(vchiq_arm_log_level, "%s - %pK", __func__, pagelist);
+
 	if (!pagelist)
 		return NULL;
 
@@ -481,9 +481,8 @@ create_pagelist(char __user *buf, size_t count, unsigned short type,
 
 		if (actual_pages != num_pages) {
 			vchiq_log_info(vchiq_arm_log_level,
-				       "create_pagelist - only %d/%d pages locked",
-				       actual_pages,
-				       num_pages);
+				       "%s - only %d/%d pages locked",
+				       __func__, actual_pages, num_pages);
 
 			/* This is probably due to the process being killed */
 			while (actual_pages > 0)
-- 
2.7.4


