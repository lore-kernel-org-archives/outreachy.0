X-GM-THRID: 6395576564216496128
X-Received: by 10.157.68.168 with SMTP id v40mr5759178ote.59.1489086216810;
        Thu, 09 Mar 2017 11:03:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.30.76 with SMTP id e73ls2011052ioe.46.gmail; Thu, 09 Mar
 2017 11:03:36 -0800 (PST)
X-Received: by 10.98.215.74 with SMTP id v10mr702577pfl.5.1489086215974;
        Thu, 09 Mar 2017 11:03:35 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id c123si1367363pfa.4.2017.03.09.11.03.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 11:03:35 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id b5so7719949pgg.1
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 11:03:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=kTQbG7QS4hFhzzk0NtCfOeo/bBxDxRQshDoKnkUk4V8=;
        b=JEdha7WAX3ahuL3ETm8roN7N0o3wPad6mcl2mWup/+hv7bfsHVvEfojhN1rlMRX+gV
         UZOtlreZZRO18XwTFirWmWf+ZsTTYRjU2+iB6SDEq6Ltopbpx/BKQtx35LQDIXTIiHm/
         v8ZGYjk2bs3wsfDIzucDYM1Rqw3+KSSRqlhzPIX968PLw9K9FUdJPU0ihVkKP59MlWsq
         3WhuoyRGxTfLguWAaOjP9vCp8V4B6xAqoN8CLp87x/qyuxbAflBuvZ38Az4HGXCBlK+A
         +IvhTN03DCKF0YPodPUU58K+mcmp8900u5O6+P0R6qN1gmxk1eNy+y2sALRdl1G5u40z
         9JNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=kTQbG7QS4hFhzzk0NtCfOeo/bBxDxRQshDoKnkUk4V8=;
        b=oOE/pEnY0/L1h7jrBQSZ2ZdWpl+paDoe1fOY8ERReYXbvFB/vWCsmT5SyYWqi8vXMc
         nSFRV7NTEfEbzwoLBtbBWKx1krrzO1XctY/L3EOXNwtL8hcgWb5Yvlsnqd6XPQWoNTzx
         j0/WuHkyZoXX1KO27pJth1Kt5rGAaRAn53kWHmg5FDHAF4Dh5bdBtU1Nk/bQ3XPxQyUp
         ahrJzcdB7wIybpUl76ehLYL0yQGDGGUHw3/YVEGlrD8bJjToHX2XnIs/2DlwipNj/+E1
         giPl8uYnsa59hQO4S/LTLwV2m1gNVDQOvfU4M3nQlElzZiR+SC24wfrfZQcpLszxmj8Z
         X4xQ==
X-Gm-Message-State: AMke39ncMsQ1iMqJIE86InW+a+7h8CeecLTW0lCKEe/Pemr7QmcbgQYn620lGvC932oxBQ==
X-Received: by 10.99.45.133 with SMTP id t127mr15441780pgt.224.1489086215802;
        Thu, 09 Mar 2017 11:03:35 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id b70sm13915234pfc.100.2017.03.09.11.03.33
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 Mar 2017 11:03:34 -0800 (PST)
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
Subject: [PATCH 2/6] staging: speakup: Placed Logical on the previous line
Date: Fri, 10 Mar 2017 00:33:16 +0530
Message-Id: <20170309190320.25681-3-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170309190320.25681-1-arushisinghal19971997@gmail.com>
References: <20170309190320.25681-1-arushisinghal19971997@gmail.com>

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


