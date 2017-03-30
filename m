X-GM-THRID: 6403353159831388160
X-Received: by 10.31.193.136 with SMTP id r130mr289433vkf.12.1490896837319;
        Thu, 30 Mar 2017 11:00:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.16.211 with SMTP id 80ls6630138ioq.0.gmail; Thu, 30 Mar
 2017 11:00:36 -0700 (PDT)
X-Received: by 10.99.181.21 with SMTP id y21mr365429pge.66.1490896836458;
        Thu, 30 Mar 2017 11:00:36 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id z191si345138itc.0.2017.03.30.11.00.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Mar 2017 11:00:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 81so11717958pgh.3
        for <outreachy-kernel@googlegroups.com>; Thu, 30 Mar 2017 11:00:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=RFFYRTHtY3qR+HTcTDZEzxLO26NHyJrCJnw8L3GvrNo=;
        b=j4ATas2RJTzYe1zfe2+BhmRlggQDb3QVM2t/4QS0rviFUc39lpu5Hg5ER5jZhfOohR
         3ZAkcmUF5KwQnT9nkgp+HEG68PaD2yPvAVF2mbGipD6I3Rx0Kz9mn41FGFNbXAdeYZD3
         QIrvsaPOFEkMpppN8fjXxTEjsdos4uI6qTq1ZGD/v8jWtNk6yTo8ay7Lme0ZKEma7c4R
         GIcbV7w7184hquOtH2smAUwqUDD8Ag/Zcc3MOP/0SNyedfDwiBUrsPQQ/wkKGJPacMDK
         F5z1NXjVpke1LgMD/QV2mYpkBP5pOk2D5LfO1vFMt79GGQpk8moEGkLDR15IuEBm4nJ4
         5X1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=RFFYRTHtY3qR+HTcTDZEzxLO26NHyJrCJnw8L3GvrNo=;
        b=gC7MZkX/75eFcfQpmFD1efpekWTozldozI97N547fq5q89IGT6LKWituNuGGYC/eN7
         q2tq0rGtm0jHZ8RHL4oAidEr39N7rXTI8RUuNieq/xiY8hjoRU+hl481QT78o3zUn8PF
         G+IXiXyhTutB6pzl81MgwuApBTq3CVDOOuT5YWVNz2mNKVrW0XGvacc6vHehQ/4e67Xc
         ERo9R6MYYBn6y8wTL+14MX6SE4qtmvVAaEIEQbCWBLslBcS4ItHM3wJPNnHXg8HXr2VG
         Iky0G/sjz1SrQ20OtPWHYOAXOld4w9+F5glap60if3HkN5EB4iLlYcyI6CeODiCK7Z9x
         mSIg==
X-Gm-Message-State: AFeK/H1XOggLvf1VmwqLEEK1D+2InJlNm6lJIcCfbSS9J9XqTIcG7bjhN1jDbKZpsHFaTQ==
X-Received: by 10.99.115.92 with SMTP id d28mr775868pgn.33.1490896836177;
        Thu, 30 Mar 2017 11:00:36 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id l29sm5806048pfb.118.2017.03.30.11.00.34
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 30 Mar 2017 11:00:35 -0700 (PDT)
Date: Thu, 30 Mar 2017 23:30:31 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: netfilter-devel@vger.kernel.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] iptables: extensions: Place trailing */ on a separate line.
Message-ID: <20170330180031.GA3701@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Solve the checkpatch issue:
"Block comments use a trailing */ on a separate line"

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 extensions/libebt_mark.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/extensions/libebt_mark.c b/extensions/libebt_mark.c
index 7b80b22..1cc2c2a 100644
--- a/extensions/libebt_mark.c
+++ b/extensions/libebt_mark.c
@@ -28,7 +28,8 @@ static int mark_supplied;
 static const struct option brmark_opts[] = {
 	{ .name = "mark-target",.has_arg = true,	.val = MARK_TARGET },
 	/* an oldtime messup, we should have always used the scheme
-	 * <extension-name>-<option> */
+	 * <extension-name>-<option>
+	 */
 	{ .name = "set-mark",	.has_arg = true,	.val = MARK_SETMARK },
 	{ .name = "mark-set",	.has_arg = true,	.val = MARK_SETMARK },
 	{ .name = "mark-or",	.has_arg = true,	.val = MARK_ORMARK },
-- 
2.11.0


