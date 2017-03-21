X-GM-THRID: 6399916000486096896
X-Received: by 10.129.50.12 with SMTP id y12mr18840679ywy.111.1490096592004;
        Tue, 21 Mar 2017 04:43:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.146.136 with SMTP id u130ls2262243iod.47.gmail; Tue, 21
 Mar 2017 04:43:11 -0700 (PDT)
X-Received: by 10.107.162.147 with SMTP id l141mr8888297ioe.4.1490096591449;
        Tue, 21 Mar 2017 04:43:11 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id y203si3392935pfb.0.2017.03.21.04.43.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 04:43:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id o126so21614821pfb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 04:43:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=8bYf1+SyJNyXtwSrpYmjORHR9IT82LMJUTKogxcdt3c=;
        b=i68aeNUDQ9Ja5+wSw71BThVD1MlGczO8cdxJ5UNpg+BSpGI6Re4TyWDUVzdq8RxJbw
         Q2esN7QBMo+7KyXp01vrZSlVweVeylJEw/o55TS67QqBYRQP5Mkhy16wn0hbz8I9HIsP
         JqcoQ/OHKvPZWzE/mtw/IGWZE5xjMlJ0XkmzRmEBLBa5zTd8i/I7Aj5jn/j4pddD7dqs
         XRboyJlO++EycYFNY9S3BxAx7gu1bk9pS0yxq+X9E1hKO2hhJgDZhtZqWUd9To5BTXdX
         G9JEztLOQz4y1AfakQ5FEqyO+6H+wSuatb4IOaQov0sblFxc1watTQUsf9zDhxeNBe9a
         Y26w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=8bYf1+SyJNyXtwSrpYmjORHR9IT82LMJUTKogxcdt3c=;
        b=HtcLze3g3bgnwLvYOeQ+T2H4UvSnommqc2+wdKjUQxhhONFhr4envYKrpEoLaamI5d
         3P6fmiGX1HHiGqYZzv+AUaiT3GEZMQ5d3RyvQGg1aPj0FSMTEUE6ZGocMneuBAQLOUff
         YQDZppoH0eeJxvVKY+zL+uUiDDG3u5voPoNyWgJmVsUuieM2+lKid0BHcqBH33BOLn0t
         xiW5MHLFZixcgBoxa79fUZ2yP4E9U27OvZYEH2z4Cd7cYknLmXNih40BSeWb4G6VR2lU
         EcBDO4YIfcRHjTP/rcdNzbtZ4pAeHE1Sc+VJlw8Nm9arI42Lnhyi+IRIBPojo99Btt3/
         zxEg==
X-Gm-Message-State: AFeK/H2NW4ZU+zcb65XSf+8O3Oa6m47qmfjuK+MmOdY8F32MIPSwMBlTeaYew1+ZjsZmzw==
X-Received: by 10.98.8.206 with SMTP id 75mr38695359pfi.198.1490096591237;
        Tue, 21 Mar 2017 04:43:11 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id g29sm39210602pfg.37.2017.03.21.04.43.09
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 04:43:10 -0700 (PDT)
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
Subject: [PATCH 06/11] staging: speakup: Moved OR operator to previous line.
Date: Tue, 21 Mar 2017 17:12:30 +0530
Message-Id: <20170321114235.1638-7-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170321114235.1638-1-arushisinghal19971997@gmail.com>
References: <20170321114235.1638-1-arushisinghal19971997@gmail.com>

Moved logical OR operator to previous line to fix the following
checkpatch issue:

CHECK: Logical continuations should be on the previous line.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
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


