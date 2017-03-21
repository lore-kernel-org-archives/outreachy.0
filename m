X-GM-THRID: 6399861794390671360
X-Received: by 10.99.109.2 with SMTP id i2mr8315731pgc.152.1490083949917;
        Tue, 21 Mar 2017 01:12:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.9.35 with SMTP id 32ls3037020otp.21.gmail; Tue, 21 Mar
 2017 01:12:29 -0700 (PDT)
X-Received: by 10.129.159.11 with SMTP id w11mr17846470ywg.130.1490083949546;
        Tue, 21 Mar 2017 01:12:29 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id r66si3203213pfb.7.2017.03.21.01.12.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 01:12:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id g2so24045294pge.2
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 01:12:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=eI3G6H2nCBO0D8kC4N+Q0UEX43RkgvfJLX+3NCQ5UBM=;
        b=lQmQpB8J/zNBRcqJ8tR+AcO6i1iBG7xy+ypNITzt5JMAX4gUYY3NLkWE95NGT6AEUX
         IejytwWNh6ITnrQCKi3a1UDg90bNlrdQKUjK10070cF6B88d0j3mNcRk1ZmjCIJkWvAX
         GV7VAkq5QVLua0K6ylj0OhBPFau/njHiOBKnEKX3Srqq4raHLOMpheJwTH1217b62te1
         gac9799NqmKANrsugy4JFqa3UHTQRf+mlsOpJcy61iqoM5me8YtusQbslJDwydGqj8VN
         nGUJ16OxToerHyMLTUOixZVK4rSy5ZI4JdrUzPnWmVcIdl+Bz+z6H9Dfnat5Jck4joKe
         kLgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=eI3G6H2nCBO0D8kC4N+Q0UEX43RkgvfJLX+3NCQ5UBM=;
        b=XnMuZOXnVORCvePD6JpwC+aLvYVpRzwIPB+Jniq8QTOGIrCOgrQZFMSh3HRFy/YKiX
         mlvhandlJ+3OUB8R4gCpmKBRXY/BuC+86G7pRB8hRgt7w9iPbOhi4ir2Br7P3n4B4MSD
         wZj5MeNHSzwJ23G+Uk8PBNIpo7X+OJnsGAUagWq+jFdzxqsa84JG1NcEE9zAdYeGTXDb
         8T4BDZo2Z5DaiGF3BS2UuqGmzyPJaSqXHlEh9DuNvSLI5/Elz9Mfs/A8Id8Nl+EIDEup
         nYKVTd94FcEEsRXFGIDO6L+hYCzUwBVG9MooWmLIgjRPXt/Ow+tFGDGQHKsl1uZRVVqv
         Xn0A==
X-Gm-Message-State: AFeK/H3eyuSmyG+xChTuKAXipVblePocG5U6WIrmpsIpWKWuZApapylGf7rGAQnL2f7F7w==
X-Received: by 10.98.104.4 with SMTP id d4mr38763435pfc.2.1490083949319;
        Tue, 21 Mar 2017 01:12:29 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id z19sm21950968pfd.81.2017.03.21.01.12.27
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 01:12:28 -0700 (PDT)
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
Subject: [PATCH 2/7] staging: speakup: Remove multiple assignments
Date: Tue, 21 Mar 2017 13:42:09 +0530
Message-Id: <20170321081214.25231-3-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170321081214.25231-1-arushisinghal19971997@gmail.com>
References: <20170321081214.25231-1-arushisinghal19971997@gmail.com>

This patch fixes the checkpatch.pl warning "multiple assignments
should be avoided."

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
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


