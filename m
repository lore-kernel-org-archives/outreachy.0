X-GM-THRID: 6392835608825298944
X-Received: by 10.107.200.83 with SMTP id y80mr4186577iof.8.1488448036572;
        Thu, 02 Mar 2017 01:47:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.167.6 with SMTP id q6ls1509821ioe.4.gmail; Thu, 02 Mar
 2017 01:47:16 -0800 (PST)
X-Received: by 10.36.36.199 with SMTP id f190mr1811664ita.28.1488448036043;
        Thu, 02 Mar 2017 01:47:16 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id h79si1332046pfh.2.2017.03.02.01.47.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 01:47:16 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id s67so8827141pgb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 01:47:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=e0EqJ5QPGT3zWJDv5rcCvq/lHvnjOph7IY/1cqCgPwQ=;
        b=FEdLoHS7ef7oPUCmrA7VWBnbGx+3n3izli7e5FvXwGQhBsMgT3Db7Lf5GZCZ96uDom
         CWY814x9tLUyPDDYL2xcY0bH8ijBPna8Nc8w5nCBFj3/Qt41+Viwj6qfwo49x3KRQg5H
         74n+j/IeCis+NB/US6x5pMvIpXWcUM5bgMBaItod9EdzMdnucGc4NsYKxdMWzIME9MTs
         Dwo6OONux9uSvxj4hDrOgbSeXPRgeYTTBNSuX9eYXWIaGQ/MihZOR7IxnzgDc0ns2mVf
         PPRO4EbL+YhA0BLD2qWlKBJGEXmXKzzcUnpRiAzhiyTaCD7mLoQk86UL/52hHsMtjY09
         RbYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=e0EqJ5QPGT3zWJDv5rcCvq/lHvnjOph7IY/1cqCgPwQ=;
        b=fmjac+qeFiJ7YMfrv7oueOEuWS98O5s4lUgAR6aQbmIcz/FHJy8ddMdCNAHJp0sjnu
         74/oT5RWp2h3JS4dR/be2fzVSW4WWEzNHNB21YcPypISi4sK5Q3fKEdAxTw9EI8k2HtC
         XnjikbWp91/Pp2DkmPIbNYwhLFXYQ+2GdX9YEdQV7WcCsFlTPMq8zB2ywup9dKWx4jtl
         Gt0nPd55cUbMBAydZ1UFi2zy7cceDI5787W+n1cA4wJzs7DlRh7ExDlY9SInRJTP+1/t
         4PW7k/G3235hW69W7Yw/xvR6zjzbDpOLPYsQKvYKcgYFyWWfXhFAfZeGqgnMzxAUIcpX
         5dEQ==
X-Gm-Message-State: AMke39loWcB/UBP9/XuoGSG8flWq3NnKinlM2RmzaFqglKGkBMtp7YSos+N42LEuSab80w==
X-Received: by 10.98.222.2 with SMTP id h2mr14662601pfg.113.1488448035821;
        Thu, 02 Mar 2017 01:47:15 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id v8sm15882794pgo.14.2017.03.02.01.47.13
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 02 Mar 2017 01:47:14 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	sergio.paracuellos@gmail.com,
	juliana.orod@gmail.com,
	thomas.petazzoni@free-electrons.com,
	noralf@tronnes.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 3/6] staging: wlan-ng: Fix sparse warnings in hfa384x_usb.c
Date: Thu,  2 Mar 2017 15:19:03 +0530
Message-Id: <1488448146-29452-3-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488448146-29452-1-git-send-email-singhalsimran0@gmail.com>
References: <1488448146-29452-1-git-send-email-singhalsimran0@gmail.com>

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


