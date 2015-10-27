X-GM-THRID: 6210380525285146624
X-Received: by 10.182.24.170 with SMTP id v10mr33870782obf.17.1445966895997;
        Tue, 27 Oct 2015 10:28:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.32.35 with SMTP id f3ls2035153obi.94.gmail; Tue, 27 Oct
 2015 10:28:15 -0700 (PDT)
X-Received: by 10.182.250.233 with SMTP id zf9mr36401749obc.7.1445966895504;
        Tue, 27 Oct 2015 10:28:15 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id el2si4331788pbb.0.2015.10.27.10.28.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 10:28:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id hk11so228648133pad.1
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2015 10:28:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=LQMml+i2TZZTCfdWdS2tZKBHInMg0XOoDPxcI8IcItc=;
        b=UMip5vuc0RU38zmnN7kKxfsnmFXSPoLVfmz/z+n0ATqEfJQ/fwTFdae8pPBARrhvNZ
         L7M9HaI+c/CqpSKJ4Kd/Sn04Zu8hEUSllC64qxvKNwvYdoYoVnzmCyyAafpiFu1H0fG1
         FHpOteXAVxgGUsyYnZFqRMcwF+1NwEbF21hsdIyt0+1/ebD8k+3Q5vmjQkncSnqjTyaq
         bsb7yj7suPi0mic93VdvAYRgPJsk3DSTUIM3hfdU1uzF/VlI6mz4xIPqAdyLjL1XG4Eh
         Q7yHrPdgbBhlTSyUqUZAl7rWHRyfzWSEIOy6eTayr2BRJGXh9rNS4Eu78rRvHmHXQKSB
         EDAQ==
X-Received: by 10.67.4.133 with SMTP id ce5mr28967511pad.38.1445966895348;
        Tue, 27 Oct 2015 10:28:15 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id pq1sm40703599pbb.91.2015.10.27.10.28.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 10:28:13 -0700 (PDT)
Date: Tue, 27 Oct 2015 22:58:06 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: wilc1000: coreconfigurator: Remove trailing
 whitespace
Message-ID: <20151027172806.GA2634@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

In block comments, trailing whitespaces should be removed.
Fix checkpatch ERROR: trailing whitespace

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/wilc1000/coreconfigurator.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wilc1000/coreconfigurator.c b/drivers/staging/wilc1000/coreconfigurator.c
index d002cfb..e10c6ff 100644
--- a/drivers/staging/wilc1000/coreconfigurator.c
+++ b/drivers/staging/wilc1000/coreconfigurator.c
@@ -418,9 +418,9 @@ s32 parse_network_info(u8 *pu8MsgBuffer, tstrNetworkInfo **ppstrNetworkInfo)
 		/* Get BSSID */
 		get_BSSID(pu8msa, pstrNetworkInfo->au8bssid);
 
-		/* 
+		/*
 		 * Extract current channel information from
-		 * the beacon/probe response frame          
+		 * the beacon/probe response frame
 		 */
 		pstrNetworkInfo->u8channel = get_current_channel_802_11n(pu8msa,
 							u16RxLen + FCS_LEN);
-- 
2.1.0


