X-GM-THRID: 566645227520
X-Received: by 10.194.239.41 with SMTP id vp9mr321787wjc.5.1424325663108;
        Wed, 18 Feb 2015 22:01:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.14.137 with SMTP id p9ls210468wic.42.gmail; Wed, 18 Feb
 2015 22:01:02 -0800 (PST)
X-Received: by 10.180.104.101 with SMTP id gd5mr774371wib.6.1424325662867;
        Wed, 18 Feb 2015 22:01:02 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wg0-x22e.google.com (mail-wg0-x22e.google.com. [2a00:1450:400c:c00::22e])
        by gmr-mx.google.com with ESMTPS id ta1si6329176wic.1.2015.02.18.22.01.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 22:01:02 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) client-ip=2a00:1450:400c:c00::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-f46.google.com with SMTP id a1so5224664wgh.5
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 22:01:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=eDa9n7x7Z49b5BeydyHgxyYYZfKWUPlzJJH22p9CcJ4=;
        b=cZIUGyXOkAcKJNz53T2WyMlzry94v4Ztp9BhEdWpnJlOxj7kpJnKPnwH8PCtZh2OsC
         REUoLcvAyNheWPNYdC92d50sr/ejI66VgaT/1UoYqhLb4/osCkvZeEYVFwFbuaKNe04X
         qz/Xv9lJvnQxdUQ+R2u3v4XdxZN0EIswjzTi0HtzlNv4sJOQuck4AUeVKlbQSArusaCP
         TrK4NeeeDy9hI/mF6EPHI/aXeFQcVgu1UrX5qpSAMpY4q871wUHtOOZOtOrr6wsBw1Ct
         45j/nc5UFVupwqB6pfhu0RvsGq52EprtG2MiqtpleoNE+76NvXR1J8pr1f7FnA2lfW5g
         Ln6A==
X-Received: by 10.180.89.131 with SMTP id bo3mr3472644wib.89.1424325662799;
        Wed, 18 Feb 2015 22:01:02 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([62.135.96.198])
        by mx.google.com with ESMTPSA id et4sm35814453wjd.15.2015.02.18.22.01.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 18 Feb 2015 22:01:02 -0800 (PST)
Date: Thu, 19 Feb 2015 08:00:56 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 5/5] staging: slicloss: replace init_timer by setup_timer
Message-ID: <34938e1ac4b1f6596482017dd1e2c5e068a1ac8e.1424324574.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1424324574.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1424324574.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch replaces init_timer and the 2 step initialization of function
and data by setup_timer to make the code more concise.

The issue was discovered using the following coccinelle script:

@@
expression ds, e1, e2;
@@

-init_timer (&ds);
+setup_timer (&ds, e1, e2);
...
(
-ds.function = e1; 
...
-ds.data = e2; 
|
-ds.data = e2; 
...
-ds.function = e1; 
)

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/slicoss/slicoss.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/slicoss/slicoss.c b/drivers/staging/slicoss/slicoss.c
index 42d62ef..1248f62 100644
--- a/drivers/staging/slicoss/slicoss.c
+++ b/drivers/staging/slicoss/slicoss.c
@@ -2362,22 +2362,19 @@ static int slic_if_init(struct adapter *adapter)
 
 	adapter->state = ADAPT_UP;
 	if (!card->loadtimerset) {
-		init_timer(&card->loadtimer);
+		setup_timer(&card->loadtimer, &slic_timer_load_check,
+			    (ulong)card);
 		card->loadtimer.expires =
 		    jiffies + (SLIC_LOADTIMER_PERIOD * HZ);
-		card->loadtimer.data = (ulong) card;
-		card->loadtimer.function = &slic_timer_load_check;
 		add_timer(&card->loadtimer);
 
 		card->loadtimerset = 1;
 	}
 
 	if (!adapter->pingtimerset) {
-		init_timer(&adapter->pingtimer);
+		setup_timer(&adapter->pingtimer, &slic_timer_ping, (ulong)dev);
 		adapter->pingtimer.expires =
 		    jiffies + (PING_TIMER_INTERVAL * HZ);
-		adapter->pingtimer.data = (ulong) dev;
-		adapter->pingtimer.function = &slic_timer_ping;
 		add_timer(&adapter->pingtimer);
 		adapter->pingtimerset = 1;
 		adapter->card->pingstatus = ISR_PINGMASK;
-- 
1.9.3


