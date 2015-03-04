X-GM-THRID: 6406607470592
X-Received: by 10.194.161.194 with SMTP id xu2mr342109wjb.1.1425447086719;
        Tue, 03 Mar 2015 21:31:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.37.194 with SMTP id a2ls119386lak.88.gmail; Tue, 03 Mar
 2015 21:31:25 -0800 (PST)
X-Received: by 10.112.41.131 with SMTP id f3mr351765lbl.20.1425447085099;
        Tue, 03 Mar 2015 21:31:25 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wg0-x22b.google.com (mail-wg0-x22b.google.com. [2a00:1450:400c:c00::22b])
        by gmr-mx.google.com with ESMTPS id i7si1025470wif.0.2015.03.03.21.31.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 21:31:25 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22b as permitted sender) client-ip=2a00:1450:400c:c00::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22b as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wghl2 with SMTP id l2so424732wgh.8
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 21:31:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=QfVhzhsveurmWVJ8h7tw9mUWa3DtTpdQndW0Ebpvm5o=;
        b=U87gsbfTwoKktm67hScggSOih3aCvG4hVs3EiG/npA4PnzD/vqeH/cF1egUM36aJSJ
         II9Z8QkH15mGkQpsK6cI/KmH3rOsFyick3mhO0YKXjjG+nn2ap6jMrQmR7fo9BwIEB9X
         v9URfiC+Muu1py01Y3MXtxmrxvIgdMzc11Vf3dXBcrWZNRYWQclOrkvTQO43NBrNCmvh
         V1fx1o7oYvrY4zuV+ZNV8pS4QI0wtM8DzbGe4LyeGnVu6G+o8aozo5VD9F5kYtd4QZx2
         bcjLn9oluwzrE8za1ujdOzL1pTUu4vgh4yfW0HAGyT+hiXlXUARbIMnfDW78s6uhfDsM
         6Txg==
X-Received: by 10.180.9.111 with SMTP id y15mr9217277wia.86.1425447085016;
        Tue, 03 Mar 2015 21:31:25 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([62.135.96.219])
        by mx.google.com with ESMTPSA id e2sm4221062wjy.46.2015.03.03.21.31.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 03 Mar 2015 21:31:24 -0800 (PST)
Date: Wed, 4 Mar 2015 07:31:19 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 05/13] staging: media: lirc: remove extra parentheses around
 right bit shift operation
Message-ID: <e182e8750eb04a664e0362405f18921170529135.1425446659.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1425446659.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425446659.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Removes extra parentheses around bitwise right shift operation.
The case handled here is when the resultant value is assigned to
a variable. The issue was detected and resolved using the following
coccinelle script:

@@
expression e, e1;
constant c;
@@

e =
-(e1
+e1
>>
-c);
+c;

@@
identifier i;
constant c;
type t;
expression e;
@@

t i =
-(e
+e
>>
-c);
+c;

@@
expression e, e1;
identifier f;
constant c;
@@

e1 = f(...,
-(e
+e
>>
-c)
+c
,...);

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/media/lirc/lirc_serial.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/lirc/lirc_serial.c b/drivers/staging/media/lirc/lirc_serial.c
index 19628d0..9f55a83 100644
--- a/drivers/staging/media/lirc/lirc_serial.c
+++ b/drivers/staging/media/lirc/lirc_serial.c
@@ -344,7 +344,7 @@ static int init_timing_params(unsigned int new_duty_cycle,
 	/* How many clocks in a microsecond?, avoiding long long divide */
 	work = loops_per_sec;
 	work *= 4295;  /* 4295 = 2^32 / 1e6 */
-	conv_us_to_clocks = (work >> 32);
+	conv_us_to_clocks = work >> 32;
 
 	/*
 	 * Carrier period in clocks, approach good up to 32GHz clock,
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

