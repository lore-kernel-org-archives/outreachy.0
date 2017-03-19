X-GM-THRID: 6399197627083128832
X-Received: by 10.157.51.111 with SMTP id u44mr10854346otd.129.1489929308486;
        Sun, 19 Mar 2017 06:15:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.28.154 with SMTP id l26ls11846480ota.4.gmail; Sun, 19 Mar
 2017 06:15:08 -0700 (PDT)
X-Received: by 10.129.76.210 with SMTP id z201mr11845450ywa.172.1489929308136;
        Sun, 19 Mar 2017 06:15:08 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id r66si2158128pfb.7.2017.03.19.06.15.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Mar 2017 06:15:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id n11so2485992pfg.2
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Mar 2017 06:15:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=rHNhCpKhlgzcXPVPwZMRbhetTcbIf4vojTRttnS1rGk=;
        b=Tnat8uCSjueG8JUd8NU9W645vqhWh9cqTK5NtYNfmBqZH/jwTFc5O2aho8BroDrwUd
         bVBOdqMLyhs/3Mr1LbGEr7P8Fvg+wJRAhIF24SW9jn48rk+w6PH/lXxYgxbOoZ+q+mag
         0VhgZt86j7OgdEGHavzlr33G4SdiXHzaTwuLREuBVUDuMxNyOT87vYOxyfWgE39IUhCx
         14mo6Rq7O81B7IcloNiu07ZfhNCW6G6RSeOZOVphfuBUPjDsEb1jjUBWCPfua60XaA5J
         Xd2tsiHzkGkkBsc7BmqihNFkfv6pIj8Ru/SFsG1VuNOTp8yVoY4SwUqpJ7zMunq/Ip6B
         7tow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=rHNhCpKhlgzcXPVPwZMRbhetTcbIf4vojTRttnS1rGk=;
        b=mndw/YpNN914oYtZm2mQCb1lBIUFdoomI6RtKlNtMKkORs2PpxzuQkyzrknU2QBp7D
         aEiYv09xbv86S9kqx9lMnSUTSQPh2wxkQ/aRmGUfgv/jz9RlzjKG+JTxtFkiGN6IaroJ
         v6yO0FG3mWiMpu/H+8jMkEQ9fvIPmVjafIGwbaMa6MZ7RIq6qk/lsxQ77zC/LKa2mUA5
         Jp/9c9ZUulL28Vr7zD7eWc8Bu/jCmwrv2VYusThr4rW9PW7h9bo/oJchDUaw+06loH+L
         pVDdGEFQgHfrGrRXR9GDscpemhMRP8Eah9ydUEfN4r1qWsUhI2UsKSWuMp1iu3IqL8of
         u+EQ==
X-Gm-Message-State: AFeK/H3G/IMuYTDtfZt7aIw3gi7UKaEdMy1bkzqtkTZNIVfcowLK46qjvNSNS7/sDSaabg==
X-Received: by 10.84.241.69 with SMTP id u5mr33249566plm.107.1489929307879;
        Sun, 19 Mar 2017 06:15:07 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id f125sm27390623pfc.4.2017.03.19.06.15.05
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 19 Mar 2017 06:15:06 -0700 (PDT)
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
Subject: [PATCH v2 1/2] staging: speakup: Moved OR operator to previous line.
Date: Sun, 19 Mar 2017 18:44:54 +0530
Message-Id: <20170319131455.25007-2-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170319131455.25007-1-arushisinghal19971997@gmail.com>
References: <20170319131455.25007-1-arushisinghal19971997@gmail.com>

Moved logical OR operator to previous line to fix the following
checkpatch issue:

CHECK: Logical continuations should be on the previous line.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
changes in v2
  -change the commit message and subject.

 drivers/staging/speakup/main.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
index c10445624e92..def1a36da9dd 100644
--- a/drivers/staging/speakup/main.c
+++ b/drivers/staging/speakup/main.c
@@ -2173,10 +2173,10 @@ speakup_key(struct vc_data *vc, int shift_state, int keycode, u_short keysym,
 	if (up_flag || spk_killed || type == KT_SHIFT)
 		goto out;
 	spk_shut_up &= 0xfe;
-	kh = (value == KVAL(K_DOWN))
-	    || (value == KVAL(K_UP))
-	    || (value == KVAL(K_LEFT))
-	    || (value == KVAL(K_RIGHT));
+	kh = (value == KVAL(K_DOWN)) ||
+	    (value == KVAL(K_UP)) ||
+	    (value == KVAL(K_LEFT)) ||
+	    (value == KVAL(K_RIGHT));
 	if ((cursor_track != read_all_mode) || !kh)
 		if (!spk_no_intr)
 			spk_do_flush();
-- 
2.11.0


