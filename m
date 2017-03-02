X-GM-THRID: 6392976893088366592
X-Received: by 10.107.7.16 with SMTP id 16mr1191285ioh.15.1488480936847;
        Thu, 02 Mar 2017 10:55:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.39.17 with SMTP id g17ls69999ita.21.canary-gmail; Thu, 02
 Mar 2017 10:55:36 -0800 (PST)
X-Received: by 10.99.161.10 with SMTP id b10mr5150500pgf.159.1488480936153;
        Thu, 02 Mar 2017 10:55:36 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id r66si33944pfb.7.2017.03.02.10.55.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 10:55:36 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 67so3118164pfg.2
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 10:55:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=kTQbG7QS4hFhzzk0NtCfOeo/bBxDxRQshDoKnkUk4V8=;
        b=jDfRBR0eMxRD4k3di+DpqGqqRdYQSmGD3qFg1j8TGaUwZFTxcb3vDa9phfbN8T+tXF
         vFVab2mSQdPxAiV0hqKgo/G3iu9SHrZ84wUju6oMluT3J4d4FNu5ljcPQV88dZUCjsPC
         brnNtLZplPaVyf9ig+64ZGjQSic7nz5nxGHC22c9wu/xOX3AotM3qSI1WzlFKCQET5Uy
         Mnkhwn8R2AeM+OWemOUepeKYNVoKDr+5+rWv+UcqlWcL636Rmp5fdJhiK1wggj/Tru6y
         08blxL6XbVpQ5aIf4+pQw6r7B8HUioCYIZwYu9bcBbJA7IHpKgXyEBBShMajnfLo96fJ
         Omjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=kTQbG7QS4hFhzzk0NtCfOeo/bBxDxRQshDoKnkUk4V8=;
        b=KCnxhtobjg/BAfmqy+DQqJipeH6Ie+D45HrX1iUpLVCgjxQGgS9bimbhzLsjeWeEWN
         VqriQrjzlxCOVWsezzdIVYVCftxR+pmKv4wJX+l0OXguFta2VA6RNxb4WGYMYXejGfam
         +UIJC3lkwOveRUY6RYycj6SwC7CcRTWOHoIXkFM3W07vz6gH4wZ+UgcrGE1O1LGsDRPA
         w4osKSGuVvEQgsJRCTgvmsRoKqn6pw4+d4DVmjuqu5z6QadhCyQzJtK2FKsBU9SgUte/
         LHBB76oDLJQkv3HNwKKJyeBPCt+qxK60rjVGyPUOu6qd4ieYg7GLlIZXX3/RGx6FQIXt
         uchw==
X-Gm-Message-State: AMke39mO+giYeGZTyY/mLMlMPPki9dyD/0MsobdEhBKivscxxtH1lSCf86fIE6oH5teEkw==
X-Received: by 10.98.25.202 with SMTP id 193mr17694086pfz.134.1488480935887;
        Thu, 02 Mar 2017 10:55:35 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id y201sm6903347pfb.16.2017.03.02.10.55.34
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 02 Mar 2017 10:55:34 -0800 (PST)
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
Date: Fri,  3 Mar 2017 00:24:54 +0530
Message-Id: <20170302185457.14812-2-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170302185457.14812-1-arushisinghal19971997@gmail.com>
References: <20170302185457.14812-1-arushisinghal19971997@gmail.com>

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


