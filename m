X-GM-THRID: 6392997475785900032
X-Received: by 10.107.24.67 with SMTP id 64mr5002593ioy.52.1488489549991;
        Thu, 02 Mar 2017 13:19:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.9.185 with SMTP id q54ls4151660otd.11.gmail; Thu, 02 Mar
 2017 13:19:09 -0800 (PST)
X-Received: by 10.129.106.70 with SMTP id f67mr5703220ywc.108.1488489549604;
        Thu, 02 Mar 2017 13:19:09 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id h79si1737983pfh.2.2017.03.02.13.19.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 13:19:09 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id s67so10455187pgb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 13:19:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=KtIwk4uq3SEICXanWiMKAGDXPoSN78M1q78Os+Z/V5A=;
        b=psOWCkw3U/raC7d6TxCvRl9BZP7sd4Zpsj+heLcAPq0O5ra4KH4qhmmcrlDvC9GIjT
         frV0kIQJcZjCfeB2Yflkd2Lwy26el0qyvJN/e6aqc5VPtub+c7rBzfB5muTzdrawMwZb
         U3FsxiW9FxR7N7gYWWLErC5vauskY+1H71BhGfjzpA0axwQOVtgsYxrVfTpNGAg2jSuK
         QUd42equQdGj4EZpnZRb/23KGMg4XDXfoluO8ox+RhcMdsZoC7HCN6bFrcqKQlu0i9QD
         Kz8iS/6HflUyo6JgQ2aWr0aKts90ntZgswf2frwWiv/q3aODqOcYCfGUMJXqM/+wUEy3
         mpbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=KtIwk4uq3SEICXanWiMKAGDXPoSN78M1q78Os+Z/V5A=;
        b=hMQQkT787R5G7i7rwOUMZMcaxYq9Ud4wqoct6YoOKzu1SBk8qbugxmcBdNCiZ4t5uM
         7eQDLET98a8nUMlSbie7cdefom4g7q2BZPfxcRJDAh6vPNG5tYnLWcb8DKew+MmCWaYg
         mvn/oUGMM/BcOiYlE5vemkZ+ymgESNDkZQLYKz1zqBU/wTVjJw6+3RNqwRZdUIGqM9bs
         5GmbazQvfjhrYzOSNTEnu0ZT4vUYoGDdg3o/UahWB0SAq3ymdN0AfAv7tELYG7Prj+gN
         4xutZSFYG06sVRpBLDfaPrRMIh92HpmEPv3vkYUNIrIUKNG16E/6XmeX+oQRAJZHON+4
         /7Gg==
X-Gm-Message-State: AMke39mvVABCysX50l+GVTEjE9gIn3mCoZGyHdBkCjqgpqqRfoo8lAgRRWC0eqhu+/dOoA==
X-Received: by 10.99.6.76 with SMTP id 73mr6196483pgg.83.1488489549370;
        Thu, 02 Mar 2017 13:19:09 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id k74sm12995726pfj.27.2017.03.02.13.19.07
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 02 Mar 2017 13:19:08 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: Larry.Finger@lwfinger.net
Cc: florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	oleg.drokin@intel.com,
	marvin24@gmx.de,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 1/5] staging: nvec: Remove unnecessary cast on void pointer
Date: Fri,  3 Mar 2017 02:49:00 +0530
Message-Id: <1488489544-25941-1-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4

The following Coccinelle script was used to detect this:

@r@
expression x;
void* e;
type T;
identifier f;
@@
(
  *((T *)e)
|
  ((T *)x)[...]
|
  ((T*)x)->f
|
- (T*)
  e
)

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/nvec/nvec_kbd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/nvec/nvec_kbd.c b/drivers/staging/nvec/nvec_kbd.c
index e881e6b..a01f486 100644
--- a/drivers/staging/nvec/nvec_kbd.c
+++ b/drivers/staging/nvec/nvec_kbd.c
@@ -58,7 +58,7 @@ static int nvec_keys_notifier(struct notifier_block *nb,
 			      unsigned long event_type, void *data)
 {
 	int code, state;
-	unsigned char *msg = (unsigned char *)data;
+	unsigned char *msg = data;
 
 	if (event_type == NVEC_KB_EVT) {
 		int _size = (msg[0] & (3 << 5)) >> 5;
-- 
2.7.4


