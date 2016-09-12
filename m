X-GM-THRID: 6329558488871600128
X-Received: by 10.157.5.37 with SMTP id 34mr2538772otw.31.1473715177341;
        Mon, 12 Sep 2016 14:19:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.26.6 with SMTP id a6ls1976521ote.22.gmail; Mon, 12 Sep
 2016 14:19:37 -0700 (PDT)
X-Received: by 10.129.168.197 with SMTP id f188mr17544884ywh.39.1473715177057;
        Mon, 12 Sep 2016 14:19:37 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id z4si2755593pam.0.2016.09.12.14.19.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 14:19:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id z84so262175pfi.2
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Sep 2016 14:19:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=QvZdU7VZAzYTFap2Ap/ULpBud1yhkoLUSmn2gH0Q/nQ=;
        b=f54rwdcwSxMiRSibpUHgt/fpRcWJr02UIveGoW6kVY/X3GqFUQXtQVc5arIPqFNSzr
         VFWQzigl7m9AGP1wk5J1KDKLkhbuDAX96uViZtWiwHjNMxXhRA4FSU3/f5J+gAgcdK2G
         X3eorlcya/02GpRMNZ3lZR1rnqd5d3320uaCVZOb1asGcO7Sj/D6Mkt6ZsYx65ylP/gW
         VQBAZ2n4AgHl85VlejjiHlPSepryFjlfogDMhUtH0rt+evklYKoyd2nrE7f9wyeLxIyj
         pE/RRryQBdxq8hZSjV6SpLVkhKlRVuGgcGdL15CSFzmK/c7c5nLJpbXtVgUx0gQJ9lQK
         etFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=QvZdU7VZAzYTFap2Ap/ULpBud1yhkoLUSmn2gH0Q/nQ=;
        b=e9u2wC0KCFBoYbcL52GBQw862G4lF7jhFFNkbvt68EBf/EGnmIDRrn+sY/90DGJTm5
         5e4wGPFclUQzB7YxtDdgZpvxbQF5qkI2upkDW/WEFUlqfXIg/ZsSV4seO5ABlASHwjhG
         RnWloExFdsIHoxrXi1I32tYh7AWMpdPzmfam+PISPTgaf38NYgMo5TzTAQJVvMI882vO
         /MGI2xqsIia1a64YcUDXBhZHPFq0lGybH3mhUE9m8INOI8ixRun5ozenAjvvV+p3WQQ5
         0RFSlYTL0MORYqDxDDCBKTrMjby8tAsXOvQtSCWSdFUNBEPAveRYvIC8t99seSSZkBNl
         yXKw==
X-Gm-Message-State: AE9vXwMnGUQoy2FYIFLbKNn5CS29ux9h0ODbxG+H8syuU36DNBZ2BEPIl1++5tvgXakisQ==
X-Received: by 10.98.57.66 with SMTP id g63mr26492197pfa.15.1473715176697;
        Mon, 12 Sep 2016 14:19:36 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.35.146])
        by smtp.gmail.com with ESMTPSA id 29sm26532126pfp.88.2016.09.12.14.19.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 12 Sep 2016 14:19:36 -0700 (PDT)
Date: Tue, 13 Sep 2016 02:50:09 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: speackup: No space is necessary after a cast.
Message-ID: <20160912212009.GA3355@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

No space is necessary after a cast.This patch is detected by checkpatch.pl script.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/speakup/selection.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/selection.c b/drivers/staging/speakup/selection.c
index ce4b946..afd9a44 100644
--- a/drivers/staging/speakup/selection.c
+++ b/drivers/staging/speakup/selection.c
@@ -137,7 +137,7 @@ static void __speakup_paste_selection(struct work_struct *work)
 	struct speakup_paste_work *spw =
 		container_of(work, struct speakup_paste_work, work);
 	struct tty_struct *tty = xchg(&spw->tty, NULL);
-	struct vc_data *vc = (struct vc_data *) tty->driver_data;
+	struct vc_data *vc = (struct vc_data *)tty->driver_data;
 	int pasted = 0, count;
 	struct tty_ldisc *ld;
 	DECLARE_WAITQUEUE(wait, current);
-- 
1.8.2.3


