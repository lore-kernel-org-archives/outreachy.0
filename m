X-GM-THRID: 6809913191851622400
X-Received: by 2002:a67:69d5:: with SMTP id e204mr12499242vsc.159.1585679585496;
        Tue, 31 Mar 2020 11:33:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:684c:: with SMTP id d73ls2939542vsc.7.gmail; Tue, 31 Mar
 2020 11:33:04 -0700 (PDT)
X-Google-Smtp-Source: APiQypKG84vn6fBdKSWWDOYJZ1/+MOXvWsafNC7NT9sGlRjqWoUZYrIM/AxfluWL2u/XtWSQXcyL
X-Received: by 2002:a67:2f83:: with SMTP id v125mr13696157vsv.100.1585679584273;
        Tue, 31 Mar 2020 11:33:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585679584; cv=none;
        d=google.com; s=arc-20160816;
        b=cC8iKjoMzXS1glatFKWDoh31VZPH0kgCwTE/Q0NC448k9DlKajJnE8rTzo10wgYpnU
         7f1aoYdWOZxwvaZYHMal76Z9NjU01IcsjWU+YY9u1SATZTUzhAwvBA+fdO5s5nVck6Qe
         HaFhrblKgg7S1B8AmoWO4vZcZczR7ewVz9SBqwvSU4rAcgByJafZDpX3D1jA5D5uAr1u
         MeZYf+2OPeyzXBkZcLoobcop6pCC+hgF8cqr6Lb+ZoQ9badPXp2xS/GVW2z7GYQXAvmp
         bv4FXumPnrrg40FpCstNluLJvZJCQTUk7sR3BDQJWAPnsEFK6Y2n7AggvZxB9OoZfmKv
         BQ6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=lzxvV/x1O3A5r2XKIj51TkQd8UzHL6H56EMPmFkEgjw=;
        b=dbNY5ERpLu13cUVsHq2E5soNGMs35+/Ws8IEvjN2w9Za8VMx1C07uP7lPn4H/ndeHK
         TlI31E/ReTMLh7nRQ+hXeQkEG/4Se+2ObJIDo3RPEqj1R89uuwR2hRYB6aw2kUKBsfUk
         6plQ55pqwYNAc92PU8hyB4K6RhTkU1jVLO22d+9tdaM7O7rJ5NvFVr72n/1mrJGPuj9Y
         M+B5zkc3kMQO+Lv88tLB3rjTsjCkg4pMs58yzPkBR4g5uLIW/XHtSyHnX+JyVXfO5F3f
         dMg2tgEpEpxTE5GjoUQ1PDugCz93E4XrOmrWlRSsbquIzUTTP5RdtBhGH4Wyft/9ag64
         HI0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bZFbsGDQ;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id s124si969354vka.1.2020.03.31.11.33.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Mar 2020 11:33:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bZFbsGDQ;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id h8so10716996pgs.9
        for <outreachy-kernel@googlegroups.com>; Tue, 31 Mar 2020 11:33:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=lzxvV/x1O3A5r2XKIj51TkQd8UzHL6H56EMPmFkEgjw=;
        b=bZFbsGDQ/q0Njt9cJBaRvbvRrx9Ee5n/6cT/8lL54NormvDv1u8YpfqnjHDxhE7Oo3
         gaPFgjGDmqL1tPdqQ3fvjLlosWkzu38cjcJGyeEgc3ICJ7g+09F3CA0BM/XxOAuWt4wU
         PzHHIicOIAeYxUbg+xVV9/SFC7yJFSJBq8kKr0aAnQ5GV020dgFfLzgV+ljJqaBva2ue
         ix5eaIubDwu8If82Hxb1S1i8OS7055REcmFz9ImgvlDv8O98o0vO2LIEzuWSaLP/O76v
         7GmLjTRF6uJOClVv+/VkbYTBDntjNjSAbGAqRAxKv/HFHtqdpO3I1E5yZLkiZtuE2c6p
         vP2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=lzxvV/x1O3A5r2XKIj51TkQd8UzHL6H56EMPmFkEgjw=;
        b=Jn5DEq/LiUpW6T5mOTLFSSw8PI3kBcnWdXGzYCFJ2rwoHRpNyYATvcKN51ESUdW0Lf
         u6EqsdAeYKHC8DBEbgeMm7rYGuer8WCrO4v432jQ2b0nc0SXCo3+RQQTtsVHECg6MmfI
         e72hrBKmaEu16ijbfeimkUdCMhRLOIKtnrP1zabBccdeW2nfpgvzsnVoHJjpc39HmUKY
         u8AsgLc10qZdFmqQaZXur4zfYMau09KzOnNj7ylmnsn5yHzvbJUGpjIpnphtWxjf4ZQl
         6UkViwP6QYJ21ThFjEGleYw4SApc5HFqzeVzmWiwTi1cixk9m9GS5iXw+eSEEs5CNce+
         6CRA==
X-Gm-Message-State: AGi0PuYGDz3SH8ih0BVtkYmXUfQSkLXbFAYgZYJyS8srdKSAX3eRLuj0
	qqqURpDEL3yhig0Cu7W5K8I=
X-Received: by 2002:a63:ab05:: with SMTP id p5mr14743594pgf.33.1585679583229;
        Tue, 31 Mar 2020 11:33:03 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from localhost.localdomain ([157.42.231.91])
        by smtp.googlemail.com with ESMTPSA id x3sm12908494pfp.167.2020.03.31.11.32.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Mar 2020 11:33:02 -0700 (PDT)
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	sbrivio@redhat.com,
	Larry.Finger@lwfinger.net,
	Soumyajit Deb <debsoumyajit100@gmail.com>
Subject: [Outreachy] [PATCH v2 1/3] staging: rtl8188eu: Properly structure the multiline comment
Date: Wed,  1 Apr 2020 00:01:59 +0530
Message-Id: <20200331183201.18386-2-debsoumyajit100@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200331183201.18386-1-debsoumyajit100@gmail.com>
References: <20200331183201.18386-1-debsoumyajit100@gmail.com>

Add "*" at the start of each line of the multiline comment to improve
code readability and to adhere to the uniform Kernel coding style.
Reported by checkpatch.pl

Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ap.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
index 93283c7deec4..5b2b4d1d56f6 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ap.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
@@ -1226,17 +1226,17 @@ void update_beacon(struct adapter *padapter, u8 ie_id, u8 *oui, u8 tx)
 }
 
 /*
-op_mode
-Set to 0 (HT pure) under the following conditions
-	- all STAs in the BSS are 20/40 MHz HT in 20/40 MHz BSS or
-	- all STAs in the BSS are 20 MHz HT in 20 MHz BSS
-Set to 1 (HT non-member protection) if there may be non-HT STAs
-	in both the primary and the secondary channel
-Set to 2 if only HT STAs are associated in BSS,
-	however and at least one 20 MHz HT STA is associated
-Set to 3 (HT mixed mode) when one or more non-HT STAs are associated
-	(currently non-GF HT station is considered as non-HT STA also)
-*/
+ *op_mode
+ *Set to 0 (HT pure) under the following conditions
+ *	- all STAs in the BSS are 20/40 MHz HT in 20/40 MHz BSS or
+ *	- all STAs in the BSS are 20 MHz HT in 20 MHz BSS
+ *Set to 1 (HT non-member protection) if there may be non-HT STAs
+ *	in both the primary and the secondary channel
+ *Set to 2 if only HT STAs are associated in BSS,
+ *	however and at least one 20 MHz HT STA is associated
+ *Set to 3 (HT mixed mode) when one or more non-HT STAs are associated
+ *	(currently non-GF HT station is considered as non-HT STA also)
+ */
 static int rtw_ht_operation_update(struct adapter *padapter)
 {
 	u16 cur_op_mode, new_op_mode;
-- 
2.17.1


