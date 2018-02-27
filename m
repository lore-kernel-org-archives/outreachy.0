X-GM-THRID: 6527315033715638272
X-Received: by 10.99.183.69 with SMTP id w5mr3244095pgt.123.1519758960976;
        Tue, 27 Feb 2018 11:16:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.101.101.12 with SMTP id x12ls405080pgv.13.gmail; Tue, 27 Feb
 2018 11:15:59 -0800 (PST)
X-Google-Smtp-Source: AH8x224BgistY04rqC3NCnZoxXg6uZj73fnjGZeJbdy2JgQ3jUQBOF0fj90e0Ph8EJfXUOsKe6Ij
X-Received: by 10.98.251.4 with SMTP id x4mr3556600pfm.58.1519758959667;
        Tue, 27 Feb 2018 11:15:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519758959; cv=none;
        d=google.com; s=arc-20160816;
        b=Usnt58R9TbimNJryODpaEeaVth9vFeI6HE1RMx7/830XWxR+hyjY8WXIpAJ+b1dTlf
         GQ8IcTCZJZIINMWDbYE2Rcz6EEaWcy8wvwfk4tjxxCSGrL4MZqqqHfa+YSxDnUZLkriW
         luRkV/zWrEOZWx8RL2ypdLt/2K9d8eGr+m12ylUVhE8BacF7Izkif7aR1qHmzA+J8js1
         1e9/Eosipab/U6hO9j5tmkv6W5XIGROkujI55GYOcsa2bPR67agO1hRCk0Vkf8Phoilp
         9953QsoZHj4B4Rm/J22oEAfzyRHuSaoWV3QBNlbmbAaw2kPw3YcMtkCBQHFAZadS8kmS
         K6KQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=PzuQtfqtfWDtV+GGo0Oh8xwHswrQ+0zunvoEmBv/6Gk=;
        b=pYPAc1JHHWl9fdk19uaz9pkRy2O1jxjOFDww+qSb7uFVAm2xAslG6gdqbc2dShyh8C
         ViXeockq0iAmlGZWIppD/5AEL5EqU1ih8zgGEbYLJ83PLAHU6BYVG6mPBy3kuivr6/Ib
         LD7kWzEtG34NUs0ks9MEx1Dh3fgXQUFzZ6/2xSytJVw02uB5BXP2fxOCjhNWU/GZNFmE
         J8EWUVP4xHcCoZanqaB3Jasx01AH2+4j3ESzyGgh3YwzqzRs1XMiRlmP8PfvXuFpfCv0
         IpYEkoxbbIKibTQtdLNGaSgj9Uag3T9tdVF7HDGZszIZTvObnVY0WaEaGYYxHBHgtaQg
         oDAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=JRVqxV09;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::235 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pf0-x235.google.com (mail-pf0-x235.google.com. [2607:f8b0:400e:c00::235])
        by gmr-mx.google.com with ESMTPS id q12si166121pgn.2.2018.02.27.11.15.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Feb 2018 11:15:59 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::235 as permitted sender) client-ip=2607:f8b0:400e:c00::235;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=JRVqxV09;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::235 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pf0-x235.google.com with SMTP id j24so8348790pff.12
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Feb 2018 11:15:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=PzuQtfqtfWDtV+GGo0Oh8xwHswrQ+0zunvoEmBv/6Gk=;
        b=JRVqxV09h9P8r3JqI2MDQ5a7PzmLHGD3XiKvt11oTLe9g+uYRxI0eIHOb0qnGqyCtS
         +cakbZus2MDrDMBJMmHKtkn38BONTWthXGjd62h0S84imfINcl+Z/HwrYoT1v05lC/VZ
         SpPG+93vSMcFfaAjU8/DMQNxG/jyva5HM/iAs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=PzuQtfqtfWDtV+GGo0Oh8xwHswrQ+0zunvoEmBv/6Gk=;
        b=NmKHMgnXi75GCUxw7aLE2Ui7qEIX6PSOeFEQydaLb5Ypk5JDx2kfJ3RNHXbt16jUtb
         POzBL5G9Zlgda+KWtb/UHnfL/e+u4VCHD1ttNF3LvYfCkTbPz7wIVXknGP/hie7dOjLS
         ern8tKUk+onjYvn6OGersTIw/CUJPoWzSctYD9xzNZfEERn+0l+3x5esN7e6EUSJ/ML3
         7usJxohhReqHQJknWe0a2WE4i6aW3fuLdxgy8E98fiIVSH44rn3+q/zfPmCTM68PtT6y
         mqVKxWRnwr/7ajL235AXcaBQX3n7nzO2zQOkDQXEOxgclv4IsEitfTOOBr6AorQVUnVl
         EBLA==
X-Gm-Message-State: APf1xPB4qbQgiHpPGXJHbXOVOVj6dlioKJ0CbFwJR9od1P9Hw1M/Zpci
	V5PVObIwYFghNN1qqymvpJFlzQ==
X-Received: by 10.98.223.93 with SMTP id u90mr15112596pfg.13.1519758959068;
        Tue, 27 Feb 2018 11:15:59 -0800 (PST)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from ashoka-ThinkCentre-E73z.internal.ashoka.edu.in ([125.22.40.140])
        by smtp.gmail.com with ESMTPSA id w63sm21619671pgb.80.2018.02.27.11.15.55
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 27 Feb 2018 11:15:58 -0800 (PST)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: eric@anholt.net,
	stefan.wahren@i2se.com,
	gregkh@linuxfoundation.org,
	f.fainelli@gmail.com,
	rjui@broadcom.com,
	sbranden@broadcom.com,
	bcm-kernel-feedback-list@broadcom.com,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH] staging:vc04_services:bcm2835-camera Added blank line after declaration
Date: Wed, 28 Feb 2018 00:45:41 +0530
Message-Id: <1519758941-25173-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 1.9.1

Added blank line after declaration (line 1273). Issue found with checkpatch.
Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
 drivers/staging/vc04_services/bcm2835-camera/controls.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index 0736214..cff7b1e 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -1270,6 +1270,7 @@ int bm2835_mmal_init_controls(struct bm2835_mmal_dev *dev,
 				 * mismatches.
 				 */
 				int i;
+
 				mask = 1 << V4L2_SCENE_MODE_NONE;
 				for (i = 0;
 				     i < ARRAY_SIZE(scene_configs);
-- 
1.9.1


