X-GM-THRID: 6392835608825298944
X-Received: by 10.157.32.138 with SMTP id x10mr1953022ota.65.1488459656488;
        Thu, 02 Mar 2017 05:00:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.9.185 with SMTP id q54ls2857950otd.11.gmail; Thu, 02 Mar
 2017 05:00:56 -0800 (PST)
X-Received: by 10.129.103.134 with SMTP id b128mr5055521ywc.14.1488459655973;
        Thu, 02 Mar 2017 05:00:55 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id f7si1421100pfk.5.2017.03.02.05.00.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 05:00:55 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 67so2349622pfg.2
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 05:00:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=2dnl88BdZZRJYgDbmvt77xWbJrCYnSH5JL1xLJS/eQU=;
        b=q4InWHbURBa6fHWuIMhb8J7MVQue9MXhx+nLBTE07PwWnD7PrtnPSZy8JYlXc5kBE8
         ogTjIYyt85fm8Hjz57svPj3p2dNkkQ2eHk90oY4H2dky8VjR33rZWJEDmEEROhKU9AE7
         zXrudfrhDnxMEC3RIuitwXaaBsLnzxcVLNF2MEgUF8QX2XYVTPSgoC++RyoQ0c3Tf2pX
         FrjVMPGsEMVgdqR0E13uiTuYP7L3S6qt6FLJU2cZpGNA5pMvtJI1Ks0/cT4Ox9tuXoKZ
         LmrOLuvSp5xoFbtq9Es7aON8IMjxozjY2/lMd5rBk4LjAchIXEe2JQR3iQ45QIdr6EyM
         wVTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=2dnl88BdZZRJYgDbmvt77xWbJrCYnSH5JL1xLJS/eQU=;
        b=l3vugeQAwhiynsqkBsrG+Eh+TyAlQhnOMUGlFCe1Wf6abSZuKCzYQw0KvEVST2tK6/
         hsuAu+1w513ISHieXuQN8iMFL7kqOvnkmxXp79vzzR9J1nsKBhr6yyDxf8WNlefCOG8V
         gf/184eyOQcu+5JJo4OGoIktDay3YzfzfPfOfAkLzyhcRQSeh6Wo5+cg3cz37UFJz7vm
         5HxFzLPOmHHLOQmNx36Kgbh63yU0GxEpZUSaIaQDYVbRP2nDnLmg+QXVvqfSP9S+Ucnv
         FOqoPFHPCCxK3Kxmqyqa0IzwvixALSUlScGykTqZVut8H3hTNmd/0u5sWLUQd75sk39d
         +11g==
X-Gm-Message-State: AMke39mHujEAXpHs14JXjTloTTiJnDDClUjjxO2BigLUn323k8K4uH+m90k7MK5fGTnaig==
X-Received: by 10.98.82.216 with SMTP id g207mr15501676pfb.139.1488459655706;
        Thu, 02 Mar 2017 05:00:55 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([183.82.106.99])
        by smtp.gmail.com with ESMTPSA id 75sm17109782pfp.80.2017.03.02.05.00.53
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 02 Mar 2017 05:00:54 -0800 (PST)
Date: Thu, 2 Mar 2017 18:30:50 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	sergio.paracuellos@gmail.com, juliana.orod@gmail.com,
	thomas.petazzoni@free-electrons.com, noralf@tronnes.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/6] staging: wlan-ng: Fix sparse warnings in hfa384x_usb.c
Message-ID: <20170302130050.GA28609@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes the following sparse warnings:

drivers/staging/wlan-ng/hfa384x_usb.c:3520:34: warning: incorrect type in assignment (different base types)
drivers/staging/wlan-ng/hfa384x_usb.c:3520:34:    expected unsigned int [unsigned] [usertype] datarate
drivers/staging/wlan-ng/hfa384x_usb.c:3520:34:    got restricted __be32 [usertype] <noident>
drivers/staging/wlan-ng/hfa384x_usb.c:3521:33: warning: incorrect type in assignment (different base types)
drivers/staging/wlan-ng/hfa384x_usb.c:3521:33:    expected unsigned int [unsigned] [usertype] antenna
drivers/staging/wlan-ng/hfa384x_usb.c:3521:33:    got restricted __be32 [usertype] <noident>
drivers/staging/wlan-ng/hfa384x_usb.c:3522:34: warning: incorrect type in assignment (different base types)
drivers/staging/wlan-ng/hfa384x_usb.c:3522:34:    expected unsigned int [unsigned] [usertype] priority
drivers/staging/wlan-ng/hfa384x_usb.c:3522:34:    got restricted __be32 [usertype] <noident>
drivers/staging/wlan-ng/hfa384x_usb.c:3523:34: warning: incorrect type in assignment (different base types)
drivers/staging/wlan-ng/hfa384x_usb.c:3523:34:    expected unsigned int [unsigned] [usertype] ssi_type
drivers/staging/wlan-ng/hfa384x_usb.c:3523:34:    got restricted __be32 [usertype] <noident>
drivers/staging/wlan-ng/hfa384x_usb.c:3524:36: warning: incorrect type in assignment (different base types)
drivers/staging/wlan-ng/hfa384x_usb.c:3524:36:    expected signed int [signed] [usertype] [explicitly-signed] ssi_signal
drivers/staging/wlan-ng/hfa384x_usb.c:3524:36:    got restricted __be32 [usertype] <noident>
drivers/staging/wlan-ng/hfa384x_usb.c:3525:35: warning: incorrect type in assignment (different base types)
drivers/staging/wlan-ng/hfa384x_usb.c:3525:35:    expected signed int [signed] [usertype] [explicitly-signed] ssi_noise
drivers/staging/wlan-ng/hfa384x_usb.c:3525:35:    got restricted __be32 [usertype] <noident>
drivers/staging/wlan-ng/hfa384x_usb.c:3526:34: warning: incorrect type in assignment (different base types)
drivers/staging/wlan-ng/hfa384x_usb.c:3526:34:    expected unsigned int [unsigned] [usertype] preamble
drivers/staging/wlan-ng/hfa384x_usb.c:3526:34:    got restricted __be32 [usertype] <noident>
drivers/staging/wlan-ng/hfa384x_usb.c:3527:34: warning: incorrect type in assignment (different base types)
drivers/staging/wlan-ng/hfa384x_usb.c:3527:34:    expected unsigned int [unsigned] [usertype] encoding
drivers/staging/wlan-ng/hfa384x_usb.c:3527:34:    got restricted __be32 [usertype] <noident>

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
  
 v2:
   -changed commit message

 drivers/staging/wlan-ng/hfa384x_usb.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
index a7ff572..cdf987b 100644
--- a/drivers/staging/wlan-ng/hfa384x_usb.c
+++ b/drivers/staging/wlan-ng/hfa384x_usb.c
@@ -3517,14 +3517,14 @@ static void hfa384x_int_rxmonitor(struct wlandevice *wlandev,
 		caphdr->hosttime = __cpu_to_be64(jiffies);
 		caphdr->phytype = htonl(4);	/* dss_dot11_b */
 		caphdr->channel = htonl(hw->sniff_channel);
-		caphdr->datarate = htonl(rxdesc->rate);
-		caphdr->antenna = htonl(0);	/* unknown */
-		caphdr->priority = htonl(0);	/* unknown */
-		caphdr->ssi_type = htonl(3);	/* rssi_raw */
-		caphdr->ssi_signal = htonl(rxdesc->signal);
-		caphdr->ssi_noise = htonl(rxdesc->silence);
-		caphdr->preamble = htonl(0);	/* unknown */
-		caphdr->encoding = htonl(1);	/* cck */
+		caphdr->datarate = be32_to_cpu(htonl(rxdesc->rate));
+		caphdr->antenna = be32_to_cpu(htonl(0));	/* unknown */
+		caphdr->priority = be32_to_cpu(htonl(0));	/* unknown */
+		caphdr->ssi_type = be32_to_cpu(htonl(3));	/* rssi_raw */
+		caphdr->ssi_signal = be32_to_cpu(htonl(rxdesc->signal));
+		caphdr->ssi_noise = be32_to_cpu(htonl(rxdesc->silence));
+		caphdr->preamble = be32_to_cpu(htonl(0));	/* unknown */
+		caphdr->encoding = be32_to_cpu(htonl(1));	/* cck */
 	}
 
 	/* Copy the 802.11 header to the skb
-- 
2.7.4


