X-GM-THRID: 7460820615168
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,95d5e58ffe370867
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.90.169 with SMTP id bx9mr2084948wib.6.1426007299587;
        Tue, 10 Mar 2015 10:08:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.73.103 with SMTP id k7ls125874wiv.5.gmail; Tue, 10 Mar
 2015 10:08:19 -0700 (PDT)
X-Received: by 10.180.75.232 with SMTP id f8mr8056016wiw.0.1426007299259;
        Tue, 10 Mar 2015 10:08:19 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id el6si668680wib.0.2015.03.10.10.08.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 10:08:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22d.google.com with SMTP id l15so30308143wiw.1
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 10:08:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=dua5meRy1j8v1om55s3mZ6qbaQ9xGLw3pzcNxBUnhMc=;
        b=tH9NSloIZg4/MfTxSq1n0IgWu6ojJRvMqtbjwyFM5ZPcHashsWEOAGLss/ityetwKM
         XRROMoPPpzdM7yTTSSeG57+ZBzBKJSgPl65txkWdnB68nv8YU8a88bmDWSd4iHt1pCOG
         Etsy7hHpHJ0QJ3rOh3Y0ixApDp14nvbY9Ldp35dCXKe+qIHiWOSXGiBfQDWqRP9+/KcR
         T5sXgDaxUwKfIiLHVGif7yazZ+DABdkBozlE+apwHg9BD0wWNhe5fcKIima+/+KWFR2S
         uk7gZMBUvk+iDK95ndE2EFkfBbIhndtxNGKabv4oz4ZnUk/vMAUr2tvNz9SwTwRmRS31
         zr/Q==
X-Received: by 10.194.157.39 with SMTP id wj7mr32237365wjb.57.1426007299174;
        Tue, 10 Mar 2015 10:08:19 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.233.194])
        by mx.google.com with ESMTPSA id dq1sm4833135wib.20.2015.03.10.10.08.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 10 Mar 2015 10:08:18 -0700 (PDT)
Date: Tue, 10 Mar 2015 19:08:15 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 18/20] staging: fbtft: fbtft-io.c: remove extra parentheses
 around function arguments
Message-ID: <63ef7a3e400049f3e93493e8fa0d7ff7c3bddac4.1426004643.git.mahfouz.saif.elyazal@gmail.com>
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
 drivers/staging/fbtft/fbtft-io.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/fbtft/fbtft-io.c b/drivers/staging/fbtft/fbtft-io.c
index e19b814..a6f091f 100644
--- a/drivers/staging/fbtft/fbtft-io.c
+++ b/drivers/staging/fbtft/fbtft-io.c
@@ -154,14 +154,14 @@ int fbtft_write_gpio8_wr(struct fbtft_par *par, void *buf, size_t len)
 			for (i = 0; i < 8; i++) {
 				if ((data & 1) != (prev_data & 1))
 					gpio_set_value(par->gpio.db[i],
-								(data & 1));
+								data & 1);
 				data >>= 1;
 				prev_data >>= 1;
 			}
 		}
 #else
 		for (i = 0; i < 8; i++) {
-			gpio_set_value(par->gpio.db[i], (data & 1));
+			gpio_set_value(par->gpio.db[i], data & 1);
 			data >>= 1;
 		}
 #endif
@@ -204,14 +204,14 @@ int fbtft_write_gpio16_wr(struct fbtft_par *par, void *buf, size_t len)
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

