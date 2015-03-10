X-GM-THRID: 7460820615168
X-Received: by 10.112.224.12 with SMTP id qy12mr4790208lbc.10.1426007324890;
        Tue, 10 Mar 2015 10:08:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.100.225 with SMTP id fb1ls218772wib.38.canary; Tue, 10 Mar
 2015 10:08:44 -0700 (PDT)
X-Received: by 10.181.29.66 with SMTP id ju2mr8045947wid.1.1426007324605;
        Tue, 10 Mar 2015 10:08:44 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wg0-x229.google.com (mail-wg0-x229.google.com. [2a00:1450:400c:c00::229])
        by gmr-mx.google.com with ESMTPS id l8si1112775wia.0.2015.03.10.10.08.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 10:08:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::229 as permitted sender) client-ip=2a00:1450:400c:c00::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::229 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x229.google.com with SMTP id y19so3347092wgg.2
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 10:08:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=7iCWY4xN2q6YKxKVD0hzqk8QMOWmUfyOMwo2A1Q1YvA=;
        b=cnwuONE2070aPxSw2bjWRkKgV8C566FSRwj0Pe7cO+kkz/aFFODt1IhZ5HF6Myu98g
         iQ+Ns89TYpM5IUkczXjSJbBJWcnS0BafpdZB2QoD6NUqBLEgZ8SImCsN1siQrSUjvvbk
         eNpeS95GV5yzMusUvLQPAkAnNtNUQeNnIzmyn+4zGLFG/oFmQxhUnbMkvKp+8572MjIl
         k1DWIMgtXoVANuUYdejFAo1Mf5Safe3yJ+I3EmJzBs3aLhNvM87RWIh+LeM/pATiFRrI
         BnxDRCjoq6fFkFd+SvSs/T94cUn01ARbGq1jabULpE1aSHK5lVlo1fnrUEPEPFMZE84c
         li+w==
X-Received: by 10.180.105.136 with SMTP id gm8mr34277206wib.13.1426007324510;
        Tue, 10 Mar 2015 10:08:44 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.233.194])
        by mx.google.com with ESMTPSA id l9sm2413898wij.16.2015.03.10.10.08.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 10 Mar 2015 10:08:43 -0700 (PDT)
Date: Tue, 10 Mar 2015 19:08:40 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 19/20] staging: fbtft: fbtft_device.c: remove extra
 parentheses around function arguments
Message-ID: <9fec5ab2195eb3dabd1fcc7ae3315633af4b02cc.1426004643.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1426004643.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426004643.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Removes extra parentheses around function arguments. Issue
detected and resolved using the following coccinelle script:

@@
expression e;
identifier f;
@@

f(...,
-(
e
-)
,...)

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/fbtft/fbtft_device.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/fbtft/fbtft_device.c b/drivers/staging/fbtft/fbtft_device.c
index dc48bcc..1afeebb 100644
--- a/drivers/staging/fbtft/fbtft_device.c
+++ b/drivers/staging/fbtft/fbtft_device.c
@@ -1126,14 +1126,14 @@ static int write_gpio16_wr_slow(struct fbtft_par *par, void *buf, size_t len)
 			for (i = 0; i < 16; i++) {
 				if ((data & 1) != (prev_data & 1))
 					gpio_set_value(par->gpio.db[i],
-								(data & 1));
+								data & 1);
 				data >>= 1;
 				prev_data >>= 1;
 			}
 		}
 #else
 		for (i = 0; i < 16; i++) {
-			gpio_set_value(par->gpio.db[i], (data & 1));
+			gpio_set_value(par->gpio.db[i], data & 1);
 			data >>= 1;
 		}
 #endif
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

