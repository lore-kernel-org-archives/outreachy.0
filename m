X-GM-THRID: 6392925539112321024
X-Received: by 10.157.23.42 with SMTP id i42mr4868079ota.11.1488468968773;
        Thu, 02 Mar 2017 07:36:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.142.3 with SMTP id q3ls2094863iod.2.gmail; Thu, 02 Mar
 2017 07:36:07 -0800 (PST)
X-Received: by 10.99.185.1 with SMTP id z1mr4897800pge.40.1488468967873;
        Thu, 02 Mar 2017 07:36:07 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 2si810794pfz.1.2017.03.02.07.36.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 07:36:07 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id j5so7079876pfb.3
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 07:36:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=kTQbG7QS4hFhzzk0NtCfOeo/bBxDxRQshDoKnkUk4V8=;
        b=iA/FyhUJre4vbAYhcIGs3Kcfd7sU/fyASCIYQX+Vffk8S5BXxOAm7D2XQeX9RO15z8
         8UEKJzAdHRGNZFn5C/jlZkgqZIRqC6jE5FmcRBKBbWqDvBdP0VAH7NNqeacS8XGeOQR0
         hKOKDRt4uUtQe0tZeyPvw9jt2ZebOBEflWi+wDxWJAmxH8FqGJktbVJEtXhSS3z+hmuF
         hikdaL7qBq55lb6dwhpivjjvqrccf+WyULtr/lfZCF6YTwud+o0eb+r5wKVMFmP91jqg
         dez3ICyMmZp9803QJdjXgWFGU9jCf/TaiBEl6xY1bD20IW3W9+rn1/UuY/oJugawT5zX
         epfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=kTQbG7QS4hFhzzk0NtCfOeo/bBxDxRQshDoKnkUk4V8=;
        b=UZxCfiDIomp11rg0sbXvmpO+X1OE+qywkemSaCTlK02Rrvv3zAm5BoZoMxfXAezi5m
         /FMDTnAZM6FmuJaB4wb3L9kKVP5clHQ4ohM9IOL7lXFG55bkS6F0GWmx2RtVTAn4J1io
         0PsIdQeNosM7P1z0NojlovuGlFMH7k+XjhpCFdCst1c0pa2XgBKi/jsU9WeRF5A73ZHu
         MtpR3FDYEmi2hKxKR/r4D/HJPmYR9+EU8RqkbrULdBSXRJr6Nmj1klH0idTPrCqFzS6/
         Wan6cEJEXEA8KL1YMhljob6Z8sfP1Xxvqdz2+6lhTXSUp6EfIlW2KL1s1UGGtdSy5PMx
         zduw==
X-Gm-Message-State: AMke39k7WvyV1LVpexFJaX3/ocW+hEvhfSGna/UiFHn72GnndzWj/N+QP8D2BtgGvWWgdQ==
X-Received: by 10.99.154.9 with SMTP id o9mr16193461pge.69.1488468967680;
        Thu, 02 Mar 2017 07:36:07 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id w18sm17834135pfa.127.2017.03.02.07.36.05
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 02 Mar 2017 07:36:05 -0800 (PST)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: w.d.hubbs@gmail.com
Cc: chris@the-brannons.com,
	outreachy-kernel@googlegroups.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	speakup@linux-speakup.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 1/4] staging: speakup: Placed Logical on the previous line
Date: Thu,  2 Mar 2017 21:05:57 +0530
Message-Id: <20170302153600.13803-1-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0

Placed Logical continuations on the previous line as reported by
checkpatch.pl.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/speakup/main.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
index a12ec2b061fe..25acebb9311f 100644
--- a/drivers/staging/speakup/main.c
+++ b/drivers/staging/speakup/main.c
@@ -2144,10 +2144,10 @@ speakup_key(struct vc_data *vc, int shift_state, int keycode, u_short keysym,
 	if (up_flag || spk_killed || type == KT_SHIFT)
 		goto out;
 	spk_shut_up &= 0xfe;
-	kh = (value == KVAL(K_DOWN))
-	    || (value == KVAL(K_UP))
-	    || (value == KVAL(K_LEFT))
-	    || (value == KVAL(K_RIGHT));
+	kh = (value == KVAL(K_DOWN)) ||
+	      (value == KVAL(K_UP))  ||
+	      (value == KVAL(K_LEFT)) ||
+	      (value == KVAL(K_RIGHT));
 	if ((cursor_track != read_all_mode) || !kh)
 		if (!spk_no_intr)
 			spk_do_flush();
-- 
2.11.0


