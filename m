X-GM-THRID: 6256792083376373760
X-Received: by 10.66.145.232 with SMTP id sx8mr17875865pab.13.1456865740618;
        Tue, 01 Mar 2016 12:55:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.78.200 with SMTP id d8ls335584igx.35.gmail; Tue, 01 Mar
 2016 12:55:40 -0800 (PST)
X-Received: by 10.66.102.106 with SMTP id fn10mr18302894pab.36.1456865740167;
        Tue, 01 Mar 2016 12:55:40 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id y20si2698677pfa.2.2016.03.01.12.55.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Mar 2016 12:55:40 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id w128so11545152pfb.2
        for <outreachy-kernel@googlegroups.com>; Tue, 01 Mar 2016 12:55:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=oMEmdidcHvGzkMFQ6UNI9u6nrnrnQTKGdu4vZaYA4sQ=;
        b=XgMGysNejR1jx2QQm5CQVF2qqrwyZNfVvUwcTGrj++SAAk7yRuejlRPL39l603+iEv
         FMPer9uuR8b2RIicGnWKeZ0lChCS+/sZ0pTwSGClgo6q1P8TkSRUqn7U2dufBOwaZM96
         +rGUj22CrEjacDO5sLdA8QhYmEp4fpsNdVSYI6tZGGF8O7+YBAijTyFB9aANtCvj7bzQ
         jUpVk20WWq7fKUlmrBeTx84lhp1FwjPMs86DRVAmaCnRTgel7zk7fRC6dztpj4pyLH8F
         ahZuoVqWNBBsiSejhs3Yn3cnK9o1CfUNF78FyNPrUEiKq2eQdBg90fh45MXENfL/bHQC
         xomg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=oMEmdidcHvGzkMFQ6UNI9u6nrnrnQTKGdu4vZaYA4sQ=;
        b=hcC5+nxAdx6+8syjoARm7VjO7w+N1JWSnpCeymKUfkTcrtplcIrIkD3/VikEQ1hRQu
         OQpgEp73rgWUTz7ZUg29q6N5E9pJDR6WWPridCM8BCxkbFcoQfGL2Fc8CCDcodK2q1PD
         e7AWwI4HpcspM8WaIjwESYdnpFKtIEeDlsJ+//fssX5jbYKqyThN/PptAQxqiO+z8dRk
         mTvpkFs8x+8kWqTy7n7nvkzqxYJe9AY3Lx2u5qGs8Ne0KFvYRPIIuRtkUrC7TJE50eXY
         wu3rK4ty/IAS2lm/2VzOFHTJ1Qzs+4UG2NPRq3/z6uctdryqFVUChXb+K53Cc1rPci/a
         2p+g==
X-Gm-Message-State: AD7BkJKxssNvTPJOauAoZIzyAEjeI4gPZtkT6Do7RyQXhqG+9iWAJkbUC4KvHC5eM48VcQ==
X-Received: by 10.98.14.156 with SMTP id 28mr24203788pfo.1.1456865740044;
        Tue, 01 Mar 2016 12:55:40 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.97])
        by smtp.gmail.com with ESMTPSA id w12sm47545388pfa.79.2016.03.01.12.55.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 01 Mar 2016 12:55:39 -0800 (PST)
Date: Tue, 1 Mar 2016 18:25:46 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 5/5] Staging: media: Remove unnecessary goto.
Message-ID: <49853de534d4affd48d8a78e8f62dd04a3b67853.1456835561.git.bankarsandhya512@gmail.com>
References: <cover.1456835561.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456835561.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove unnecessary goto.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/media/bcm2048/radio-bcm2048.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/media/bcm2048/radio-bcm2048.c b/drivers/staging/media/bcm2048/radio-bcm2048.c
index 8fdf0ac..abf330f 100644
--- a/drivers/staging/media/bcm2048/radio-bcm2048.c
+++ b/drivers/staging/media/bcm2048/radio-bcm2048.c
@@ -1828,17 +1828,14 @@ static int bcm2048_deinit(struct bcm2048_device *bdev)
 
 	err = bcm2048_set_audio_route(bdev, 0);
 	if (err < 0)
-		goto exit;
+		return err;
 
 	err = bcm2048_set_dac_output(bdev, 0);
 	if (err < 0)
-		goto exit;
+		return err;
 
 	err = bcm2048_set_power_state(bdev, BCM2048_POWER_OFF);
-	if (err < 0)
-		goto exit;
 
-exit:
 	return err;
 }
 
-- 
1.8.3.4


