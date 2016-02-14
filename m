X-GM-THRID: 6250900299193516032
X-Received: by 10.67.30.161 with SMTP id kf1mr8802120pad.21.1455401140842;
        Sat, 13 Feb 2016 14:05:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.136.84 with SMTP id k81ls1208495iod.108.gmail; Sat, 13 Feb
 2016 14:05:40 -0800 (PST)
X-Received: by 10.66.63.104 with SMTP id f8mr8856709pas.4.1455401140534;
        Sat, 13 Feb 2016 14:05:40 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qg0-x230.google.com (mail-qg0-x230.google.com. [2607:f8b0:400d:c04::230])
        by gmr-mx.google.com with ESMTPS id t198si1540144ywe.3.2016.02.13.14.05.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 14:05:40 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::230 as permitted sender) client-ip=2607:f8b0:400d:c04::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::230 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x230.google.com with SMTP id y89so87377612qge.2
        for <outreachy-kernel@googlegroups.com>; Sat, 13 Feb 2016 14:05:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=TE2rH8SFVscLsg7MEBXVtBZ5V5arwf+WBYuAxw+Ra3Y=;
        b=AgRWeEqCCYdm/8FQ88kcVs8TwkNc+S9mMt2MyF2jUB+mzwzzgYqGUN0/9/5LF+Cs0b
         P8K9Z/fJCqdVdcxSWhb/hx+i9/SaBzGrpsFGghT9xGCh4j6ZAYLgXJj1WYs868liZgPA
         JUHLmjmcgNWpvqqvtG46OiEE7Bu2rDiUdQUBxBpwGOjzIhj6JIO6ZCAPSJ/74cirz3vo
         X9DcLxKv0nzb3jEikWzYk0GmLvq/BbjvTUrmWwH00oUpu2dFgwRM6uRwIETSdKH6H5/U
         cX3khr4IiRMmgojXyaMkVJefPP2dJTH8CgKZr2puTIIDrDAcUwsWS1WpmLQ9FyAj1baj
         Pe+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=TE2rH8SFVscLsg7MEBXVtBZ5V5arwf+WBYuAxw+Ra3Y=;
        b=lo+BU0kQL9iBoD1Q/uWsWnULs7OuvxSMW6upSQe9N1kBgK8wSkh/thJ6ToRWcwIno3
         3fXPQHs+zSElcXWyhZyJFlkcJ90AlKznsN5K7m1tNHOY9vcg9lif9xQ094Aud6YpDopL
         vJEjuvPc/4ez1ARmnPcSFZf775rOwjKwHK4A5D+x92JszvJ/ZODEQs8B/uPFFK0QTfzW
         63V3qITaQXYalTV1oitqlkZXsfciaa6XG1+SftBuRcYM9GjA5TAx9gpIZ+NNmbeMWgU8
         wg//brL0lC/vd9+dmd1caiqivWAAhmKhA0GV2Wwrm3XseSLgBi3IHEWpuoL2ELWNSGB5
         qM3w==
X-Gm-Message-State: AG10YORamf0PayLI6pPaXrP3VliEL46/3y6omXfNY3T6fMmItUbbAtBXTGjg4DcxxUpN5A==
X-Received: by 10.140.218.149 with SMTP id o143mr2554074qhb.101.1455401140379;
        Sat, 13 Feb 2016 14:05:40 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 ([2620:cc:8000:212:5635:30ff:fe6b:610b])
        by smtp.gmail.com with ESMTPSA id 197sm2564396qhr.36.2016.02.13.14.05.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 14:05:39 -0800 (PST)
Date: Sat, 13 Feb 2016 22:05:01 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: speakup: Fix block comment style
Message-ID: <20160214030500.GA24482@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Use trailing */ on a separate line when it is a block comment.
This patch fixes the last of the checkpatch warnings for the file.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/speakup/serialio.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/serialio.c b/drivers/staging/speakup/serialio.c
index 3615457..c2c435c 100644
--- a/drivers/staging/speakup/serialio.c
+++ b/drivers/staging/speakup/serialio.c
@@ -8,7 +8,8 @@
 
 #include <linux/serial_core.h>
 /* WARNING:  Do not change this to <linux/serial.h> without testing that
- * SERIAL_PORT_DFNS does get defined to the appropriate value. */
+ * SERIAL_PORT_DFNS does get defined to the appropriate value.
+ */
 #include <asm/serial.h>
 
 #ifndef SERIAL_PORT_DFNS
-- 
2.5.0


