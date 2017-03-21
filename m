X-GM-THRID: 6399916000486096896
X-Received: by 10.157.8.97 with SMTP id 88mr15707577oty.143.1490096571171;
        Tue, 21 Mar 2017 04:42:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.20.70 with SMTP id h64ls1751778oth.33.gmail; Tue, 21 Mar
 2017 04:42:50 -0700 (PDT)
X-Received: by 10.157.16.17 with SMTP id h17mr15915592ote.139.1490096570840;
        Tue, 21 Mar 2017 04:42:50 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id a3si3336108pfb.2.2017.03.21.04.42.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 04:42:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 79so16067351pgf.0
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 04:42:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=eI3G6H2nCBO0D8kC4N+Q0UEX43RkgvfJLX+3NCQ5UBM=;
        b=JEorWJ1xSz4VYHuY9HRcLe5N/hrOdlIPQkeTPCcDTTeATrh8G7gnpH/GsPwdtsaOHQ
         P11noU5B7jEA7xCxWqFctV0+0KUWaNk6eG8fLfAXzIvvvOCN51wP2z4s3VZSO2AWAqyY
         yCnzCvT0J2s3PMvXV01PUp99o4euRjcQ8d6hhfif/RA/BT1QUtIVTzHqSQQNnbgfB1AV
         M09ROeBrulHMAgBfxA/7F25nVOYx8HBOgNiBnqv/trbGv12T+rrlO+BdUqiCng5GCfMp
         H/VOMXKWu9U33zlsLOE6XXwtVVvfzd2VYPzFu/piaF8nmalxpQuEUHOshGNeqjAN0yjQ
         y7VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=eI3G6H2nCBO0D8kC4N+Q0UEX43RkgvfJLX+3NCQ5UBM=;
        b=hxDrUOA8M/ZpLwhQdiLrpHtyOaSVr0P17SEnXacsHyF27b6CALwkrkvE8c3P6nQ4mP
         Cyx2qGVmPLEIkoJUjIALHPnaJHjhAxJphgJgBFvkYuUOffCBr/RG6jbTSOO3fATI3+bK
         lHw+3N5OW8hBlaxpcq3CDmj4ZQj//05ZALFziQqZUYUHIFKbCrvkYK7Klppb76mNm2dA
         xXuW6+PXPGoXB0+Tes5xnHedLtFMP9K4fHfqXeuPgcM3Vwe/LatQWfHVfmhJ1Q6ivjLL
         DYeuco0nBuz//khi39tPLLIhgSPaLabQhcYlWVKxdukxFGlfXs9UGOPlTK6eWTKBzYzY
         ZNaQ==
X-Gm-Message-State: AFeK/H1BWLoPRupihADCzTDxMMgoVl0mx0WO5bmsdd/pUogVZBh5WUvG5KKNO4PWSTtdGw==
X-Received: by 10.84.253.15 with SMTP id z15mr47813764pll.142.1490096570619;
        Tue, 21 Mar 2017 04:42:50 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 90sm39180538pfl.24.2017.03.21.04.42.48
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 04:42:49 -0700 (PDT)
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
Subject: [PATCH 02/11] staging: speakup: Remove multiple assignments
Date: Tue, 21 Mar 2017 17:12:26 +0530
Message-Id: <20170321114235.1638-3-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170321114235.1638-1-arushisinghal19971997@gmail.com>
References: <20170321114235.1638-1-arushisinghal19971997@gmail.com>

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


