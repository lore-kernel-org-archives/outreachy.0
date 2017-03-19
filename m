X-GM-THRID: 6398937623266590720
X-Received: by 10.157.14.20 with SMTP id c20mr10122318otc.149.1489900812161;
        Sat, 18 Mar 2017 22:20:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.1.7 with SMTP id 7ls1445731itk.11.canary-gmail; Sat, 18 Mar
 2017 22:20:11 -0700 (PDT)
X-Received: by 10.99.56.67 with SMTP id h3mr11566744pgn.73.1489900811592;
        Sat, 18 Mar 2017 22:20:11 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id y90si2095199pfa.6.2017.03.18.22.20.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Mar 2017 22:20:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id b5so15242847pgg.1
        for <outreachy-kernel@googlegroups.com>; Sat, 18 Mar 2017 22:20:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=QsAMS0sB9sXFu7JbsjOpkTstKokTKtWme6AqBV1nNvo=;
        b=ipUNCw2DJa/puaa3Gdn7kxdJO1eAsYVWi8Oo8JwERv/ndrFn6s45n2AAKD4uLL9dxy
         1zw0Ji+wQhU2xKf3Vq+tqWdiNQd2azrSZQBLTlW3hkVJMo7kkLN44rkw1/B64keCjy51
         3AJop7UCOgRY0IVzqUM08cJ5dD1W1EaVTyZDasmsGKjs4KMx8wfsfQSrAdaXahRQgvG6
         kokt7rijUI4Ir4JQa/sN4puIqgmrArcYRZ6eQ1qfypInTJKRtb0rfi/Uq6FZErD0e32H
         EPFk4RjISQf55rBzkcyICLIEKGOlQgQZkkct1l2L5uLlp5ch8pz2/XjQPbmvvnyOjOhZ
         NjKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=QsAMS0sB9sXFu7JbsjOpkTstKokTKtWme6AqBV1nNvo=;
        b=gV/tB/l2BlapM9rKppu5I0rWW9QfA+OKBY1lslxf/FK9yEb5as7F3hr9HSMIut3KSS
         Rge2EKufrZ/oVDkTKkY3VHYmDYGs5/86u530BBxXO6VI3jEQicTYkPvVRQ2wOuIM+Uli
         jk6ycdM939Yb9UmHbcJqaXeP5aJTwoMmKi/FYPX4vFqSh207K3hYESpJqtd525+M9F8+
         /Xpb+27qICBxT3C9kIXg/CLp/a88t/bG0/t9dJhF5fEHOaCPXVmvMz44fhswmUtPkD0u
         jUGFxOeYdhSgJo/0TUjXNvRqkfZbfcZ+2KUJRGDaqTRGgwEMV+4C67jKoWAo8Gw5FP8K
         wBFg==
X-Gm-Message-State: AFeK/H0ZyyOQRAmfm26d/F0cQAD3MLSFPxaraRelnmu2LpI+xeIJRR5xIPA+WHHzqMlFRw==
X-Received: by 10.99.37.199 with SMTP id l190mr24848899pgl.86.1489900811428;
        Sat, 18 Mar 2017 22:20:11 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id a77sm25406215pfl.91.2017.03.18.22.20.09
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 18 Mar 2017 22:20:09 -0700 (PDT)
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
Subject: [PATCH v2 2/3] staging: speakup: Remove multiple assignments
Date: Sun, 19 Mar 2017 10:49:49 +0530
Message-Id: <20170319051950.14650-3-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170319051950.14650-1-arushisinghal19971997@gmail.com>
References: <20170319051950.14650-1-arushisinghal19971997@gmail.com>

This patch fixes the checkpatch.pl warning "multiple assignments
should be avoided."

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
changes in v2
 - no change.

 drivers/staging/speakup/main.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
index f71206878363..f8fccc8bf6b2 100644
--- a/drivers/staging/speakup/main.c
+++ b/drivers/staging/speakup/main.c
@@ -270,9 +270,12 @@ static unsigned char get_attributes(struct vc_data *vc, u16 *pos)
 
 static void speakup_date(struct vc_data *vc)
 {
-	spk_x = spk_cx = vc->vc_x;
-	spk_y = spk_cy = vc->vc_y;
-	spk_pos = spk_cp = vc->vc_pos;
+	spk_x = vc->vc_x;
+	spk_cx = spk_x;
+	spk_y = vc->vc_y;
+	spk_cy = spk_y;
+	spk_pos = vc->vc_pos;
+	spk_cp = spk_pos;
 	spk_old_attr = spk_attr;
 	spk_attr = get_attributes(vc, (u_short *)spk_pos);
 }
@@ -1655,9 +1658,12 @@ static int speak_highlight(struct vc_data *vc)
 		spk_do_flush();
 		spkup_write(speakup_console[vc_num]->ht.highbuf[hc],
 			    speakup_console[vc_num]->ht.highsize[hc]);
-		spk_pos = spk_cp = speakup_console[vc_num]->ht.rpos[hc];
-		spk_x = spk_cx = speakup_console[vc_num]->ht.rx[hc];
-		spk_y = spk_cy = speakup_console[vc_num]->ht.ry[hc];
+		spk_pos = speakup_console[vc_num]->ht.rpos[hc];
+		spk_cp = spk_pos;
+		spk_x = speakup_console[vc_num]->ht.rx[hc];
+		spk_cx = spk_x;
+		spk_y = speakup_console[vc_num]->ht.ry[hc];
+		spk_cy = spk_y;
 		return 1;
 	}
 	return 0;
-- 
2.11.0


