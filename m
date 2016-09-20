X-GM-THRID: 6332301674756964352
X-Received: by 10.157.35.244 with SMTP id t107mr642015otb.2.1474353874345;
        Mon, 19 Sep 2016 23:44:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.35.87 with SMTP id k23ls1216458otd.5.gmail; Mon, 19 Sep
 2016 23:44:34 -0700 (PDT)
X-Received: by 10.237.49.230 with SMTP id 93mr5553246qth.38.1474353873973;
        Mon, 19 Sep 2016 23:44:33 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id e66si2161117pfk.2.2016.09.19.23.44.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 23:44:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id vz6so472294pab.1
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 23:44:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=t/2IpbpHvjKJmE3vz1/sFpsCEW74QyYExe82XIXYUTk=;
        b=SGk7qmOdgIo6gZEShDn2FzZKEHIHWVEK2SotCP1sfLm2mT5HiK1PboLp5OpAHW6mXJ
         ynqyjCxLwEzOZewdTNmUmSR2LqZKaXIaf9E5zDNGNDp+PKNiaLUhWVDDewxkvomYJiX5
         4wyOqAVD5DHb+6rmrfT62ywOVAj7FCNlwFQQuqLWfYR4IrIbT0joHSWVeR7MxVa7/2g9
         xVBxqjPSxbTqb4CgUvPnyXdekXlaIRLA9BEblaQXCHfwoXM1IltWvSfjnOkfeUY8q0sz
         Y7R59jNM07O6iTCoT4IlIIEl31+7OIYmm0EKS9HN0YLDnt+FabhnjHIpY5FZpKLueVO/
         ysnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=t/2IpbpHvjKJmE3vz1/sFpsCEW74QyYExe82XIXYUTk=;
        b=hGQm56GStP48WhTJSqoFoqqO1yktxNN6T2BTcaJXu0SF6OwBL996P5bCBI/JCVZEJA
         Wg3PXDM87fj72DHWnSUJ8lQ47doUo7IRP18hKuX64OegdFv4e4cLTP5MNvDqxOGR38Xf
         w1iEFW5SbwwP+PhMr98+2WCWFrTQM6bWo8RPT5u8A1MvUJFYi/isr9ePczYWm52JGXUu
         xrQyeo0n7RS69KmT8iNr9nlX2st5Tb/nelKAVCBDskKkxN3UdOW4prsk1KE0Emq7VK2W
         u/bEScbVW2onnsY+vO0hjumRqfocLKTmlF0bhDoRxknmPkx6KLx/UR12tie+OVlAip4o
         kANw==
X-Gm-Message-State: AE9vXwPblzIImC2UbEBRPtg6UhTYWS5v/mZNtN1GEgZt9DOPitB8eHQzbQOGUAlvSbRasA==
X-Received: by 10.66.82.42 with SMTP id f10mr53140183pay.17.1474353873771;
        Mon, 19 Sep 2016 23:44:33 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.179.109])
        by smtp.gmail.com with ESMTPSA id p4sm75976535pfp.60.2016.09.19.23.44.31
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 19 Sep 2016 23:44:33 -0700 (PDT)
Date: Tue, 20 Sep 2016 12:15:15 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] Staging: ks7010: Use "foo *bar" instead of "foo * bar"
Message-ID: <20160920064515.GA3082@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

This patch was found by checkpatch.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/ks7010/ks_hostif.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
index eb0192d..cfc32cb 100644
--- a/drivers/staging/ks7010/ks_hostif.c
+++ b/drivers/staging/ks7010/ks_hostif.c
@@ -1769,7 +1769,7 @@ void hostif_sleep_request(struct ks_wlan_private *priv, unsigned long mode)
 
 static
 void hostif_bss_scan_request(struct ks_wlan_private *priv,
-			     unsigned long scan_type, uint8_t * scan_ssid,
+			     unsigned long scan_type, uint8_t *scan_ssid,
 			     uint8_t scan_ssid_len)
 {
 	struct hostif_bss_scan_request_t *pp;
-- 
1.7.1


