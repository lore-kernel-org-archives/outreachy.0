X-GM-THRID: 821308686336
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,333029c12b88399e,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.8.67 with SMTP id p3mr1242795wia.7.1424372727353;
        Thu, 19 Feb 2015 11:05:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.42.136 with SMTP id o8ls194790lal.74.gmail; Thu, 19 Feb
 2015 11:05:26 -0800 (PST)
X-Received: by 10.152.43.166 with SMTP id x6mr799373lal.3.1424372726960;
        Thu, 19 Feb 2015 11:05:26 -0800 (PST)
Return-Path: <gamzepolat94@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id by11si168041wib.1.2015.02.19.11.05.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 11:05:26 -0800 (PST)
Received-SPF: pass (google.com: domain of gamzepolat94@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gamzepolat94@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mail=gamzepolat94@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x234.google.com with SMTP id h11so11374292wiw.1
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 11:05:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=ylsZl884pfbBUsJPSgHG2Ev/7RHrzCqS2isJu/bEa+U=;
        b=wL6DM92Wn9z3EJyk/ja7KZc75CFwDNf4HHE8cQxcwNJl/Ru1xAdqCfrdTUbZXVenJP
         y8nOW9GKjG4ZZTsAA1Lmh8W/hyHKH84d5ogMG6aujikr1pCXurHwHzKBWG8hnJLeMtTE
         iPazJdMKgSS0iHwB0DYoJDnHw3nSMsVntFihSJdaXo01Tqi5IXIB+e7PqieGAZAUINo7
         srby8tJSwyyszKX6lTJ1Cs4bI8w9HBkvKN59pdyWAmSXxOKVcTKY6vxy67Hf0hD3WqhB
         UFCyl2QHBFVsYUlgs9eyaLqQGjh5fd9rftrnPR3hDslZGMegtfpD3PHgnWX0gDrSA5od
         oz8A==
X-Received: by 10.194.87.100 with SMTP id w4mr11462162wjz.65.1424372726833;
        Thu, 19 Feb 2015 11:05:26 -0800 (PST)
Return-Path: <gamzepolat94@gmail.com>
Received: from gamze-Lenovo-IdeaPad-Z510 ([94.122.20.155])
        by mx.google.com with ESMTPSA id bd8sm38641489wjc.21.2015.02.19.11.05.25
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 11:05:26 -0800 (PST)
From: Gamze POLAT <gamzepolat94@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Gamze POLAT <gamzepolat94@gmail.com>
Subject: [PATCH] staging/speakup/speakup_decext.c
Date: Thu, 19 Feb 2015 21:05:22 +0200
Message-Id: <1424372722-4957-1-git-send-email-gamzepolat94@gmail.com>
X-Mailer: git-send-email 2.1.0

removed line over 80 characters warning

Signed-off-by: Gamze POLAT <gamzepolat94@gmail.com>
---
 drivers/staging/speakup/speakup_decext.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/speakup/speakup_decext.c b/drivers/staging/speakup/speakup_decext.c
index 5550290..b0ba54a 100644
--- a/drivers/staging/speakup/speakup_decext.c
+++ b/drivers/staging/speakup/speakup_decext.c
@@ -207,10 +207,12 @@ static void do_catch_up(struct spk_synth *synth)
 			if (time_after_eq(jiffies, jiff_max)) {
 				if (!in_escape)
 					spk_serial_out(PROCSPEECH);
-				spin_lock_irqsave(&speakup_info.spinlock, flags);
+				spin_lock_irqsave(&speakup_info.spinlock, flags
+						);
 				jiffy_delta_val = jiffy_delta->u.n.value;
 				delay_time_val = delay_time->u.n.value;
-				spin_unlock_irqrestore(&speakup_info.spinlock, flags);
+				spin_unlock_irqrestore(&speakup_info.spinlock,
+						flags);
 				schedule_timeout(msecs_to_jiffies
 						 (delay_time_val));
 				jiff_max = jiffies + jiffy_delta_val;
-- 
2.1.0


