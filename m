X-GM-THRID: 6399861794390671360
X-Received: by 10.99.55.71 with SMTP id g7mr17882211pgn.157.1490083969445;
        Tue, 21 Mar 2017 01:12:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.111.205 with SMTP id x196ls2613276itb.8.gmail; Tue, 21 Mar
 2017 01:12:48 -0700 (PDT)
X-Received: by 10.99.109.1 with SMTP id i1mr7112555pgc.121.1490083968935;
        Tue, 21 Mar 2017 01:12:48 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id g82si3171682pfb.5.2017.03.21.01.12.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 01:12:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id p189so15403931pfp.0
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 01:12:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=8bYf1+SyJNyXtwSrpYmjORHR9IT82LMJUTKogxcdt3c=;
        b=H1sKfVJVMkqgbXcZ7fw59kmPeBEd47rv2wjtUZhGA+842zpjeKn58GpzbZwkF/4b/L
         tCFK+25Bi+LMOONVrhx3txoM7E3L051kWY4eIP6Kovt20xXUwaVgboRGIDdlLhFrGGJk
         Deiur1IagylKaislRslotABX5WGjSgBX+sv5gO0iLy9KiH11HiYSl5Ib6Je8vHxwOAmo
         tfdgQxcsQu/rmPOQpJJmYfm8qH94eEVYvgMvz5BEckb4kkpZ9I1cDLCklqMZRWFuyNVM
         YWsROXR1UBEuJnhvM8mtE5Mb/1KFxlEhVLbqieBhF34DHn7HOXv1+iEBRniR6Hj2oV7o
         FF5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=8bYf1+SyJNyXtwSrpYmjORHR9IT82LMJUTKogxcdt3c=;
        b=styqy7xe64u14MYvuGx2ZDO//aUwfmgS4hwXFkGMZwAQ4mmtHiI+7T4+lbK5cb3Oqb
         8XdDePetC3YGUIstYs8QifBilLPc6ZxYnHllLfQuQcVQ1jDgZ8OCAW0rzPop72Ik+G2b
         fA/P9CaZLBG/eW9zII4boFrprQOuonPocdTQlf+hmp0T8hB4JzMf7MJjVYt+bWSlKPI+
         rq5m/BphkI9GRLAd/EfI2WJJZXV8u8REv+ioMuM24rH8K7oBGQOLwwV5nyiB0tMsJi+H
         2a+X8a1oRS9lJTtRZUQvimVx4y2gOCIN9OsFJawN/nl06RqnjSUs1gF/o9/CXTPB9jiL
         9pXQ==
X-Gm-Message-State: AFeK/H21OaRIzDKEf4UY8IV2BlTkn+y1XiGt1+AtgCr9fkAFIX1ruwXpjfjBP80nZsrAHw==
X-Received: by 10.99.171.75 with SMTP id k11mr36468121pgp.98.1490083968735;
        Tue, 21 Mar 2017 01:12:48 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id m20sm14147998pgd.32.2017.03.21.01.12.47
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 01:12:47 -0700 (PDT)
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
Subject: [PATCH 6/7] staging: speakup: Moved OR operator to previous line.
Date: Tue, 21 Mar 2017 13:42:13 +0530
Message-Id: <20170321081214.25231-7-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170321081214.25231-1-arushisinghal19971997@gmail.com>
References: <20170321081214.25231-1-arushisinghal19971997@gmail.com>

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


