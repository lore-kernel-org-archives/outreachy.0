X-GM-THRID: 6333092146009079808
X-Received: by 10.25.15.104 with SMTP id e101mr103038lfi.24.1474538102784;
        Thu, 22 Sep 2016 02:55:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.206.5 with SMTP id e5ls230837wmg.20.gmail; Thu, 22 Sep 2016
 02:54:02 -0700 (PDT)
X-Received: by 10.28.158.65 with SMTP id h62mr266825wme.11.1474538041348;
        Thu, 22 Sep 2016 02:54:01 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id 7si224037pfw.1.2016.09.22.02.54.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Sep 2016 02:54:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id oz2so3457091pac.0
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Sep 2016 02:54:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=rytVwhaKY/Ggh+b9CVkrc+ROXsNv4gXtTTJKylh1SIM=;
        b=0L2wINAIBV79eqDYHycprPxaEytXtfMpJQDIFHlH+Jw0vq8rsre7ynRVISUNk0Kvrc
         3JJ81Juet1dt7ALHIujmHhUXEtXgljaZgCE60CFd5LPzUL6cIXVp7wmXsZOOcZV60SQ7
         vlIlFScOeDyKHhGghEM+uZIbqchtwwtzn3UMVFmr7OquBadxsj3ty6cLzLsu+GN8/BNo
         31EEShvNiLqfE3BrUG7TD8CnHWUTvTPUpIelOmEaDy9DAc+sz6wJzLYyyqx5A6iVT5ph
         3kU6Z3u4PytaVmwvQzGWvzJrvxJJ0RAiAmdcKcFk+QrAVRC72X5e4YBIbKFLoibOf1XU
         neAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=rytVwhaKY/Ggh+b9CVkrc+ROXsNv4gXtTTJKylh1SIM=;
        b=ZBUJ5u5hXBWumI3DNX1VVuScjuiqzPcgQQ4uie3GUv608zLdsrWwZbhQ1aOfXXO9Kf
         RYTkdIHKgIg87bcA/Cs/u2bEpCgvL++KbhmrFRmxB1X8r9MAjS+YxFs9VzWpg4oIdbr8
         CItRNT84GlxsCF5YOWZwJtulA2QqKjewuww9mLxQ9S1hzalutFMXz5zA9pRd2ge/L/7Y
         ovSQ7bUNn6DwrzCReIuDGX9qYjqabVTjt/+my4wQVuG0gm2P46EoTayiyPhWEFnI+8hs
         9putv2ztL6+at8Y8R2ByAzTLHQtLgyLQBgCIpXNFlgjn2taFv06r//411kHO+UnqtgeE
         mhHQ==
X-Gm-Message-State: AE9vXwMiIEoXXeuC65zNRU8WGsCZ1htceZt9KQkKhjUWdCedorrYXPnRXs6cT4Y3cJ8MnQ==
X-Received: by 10.66.132.100 with SMTP id ot4mr1862090pab.84.1474538040736;
        Thu, 22 Sep 2016 02:54:00 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from localhost.localdomain ([122.170.34.211])
        by smtp.gmail.com with ESMTPSA id w63sm2674608pfk.43.2016.09.22.02.53.58
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Sep 2016 02:54:00 -0700 (PDT)
Date: Thu, 22 Sep 2016 15:23:55 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
	samuel.thibault@ens-lyon.org, gregkh@linuxfoundation.org
Subject: [PATCH 1/2] Staging: speakup: varhandlers: Add space around the
 operator.
Message-ID: <c7f94a0bbdd948fe909ca766944def566968ad49.1474536835.git.bankarsandhya512@gmail.com>
References: <cover.1474536835.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474536835.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch was found by checkpatch.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/speakup/varhandlers.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/speakup/varhandlers.c b/drivers/staging/speakup/varhandlers.c
index e1393d2..21186e3 100644
--- a/drivers/staging/speakup/varhandlers.c
+++ b/drivers/staging/speakup/varhandlers.c
@@ -276,7 +276,7 @@ int spk_set_mask_bits(const char *input, const int which, const int how)
 	u_char *cp;
 	short mask = spk_punc_info[which].mask;
 
-	if (how&1) {
+	if (how & 1) {
 		for (cp = (u_char *)spk_punc_info[3].value; *cp; cp++)
 			spk_chartab[*cp] &= ~mask;
 	}
@@ -290,14 +290,14 @@ int spk_set_mask_bits(const char *input, const int which, const int how)
 			if (mask < PUNC) {
 				if (!(spk_chartab[*cp] & PUNC))
 					break;
-			} else if (spk_chartab[*cp]&B_NUM)
+			} else if (spk_chartab[*cp] & B_NUM)
 				break;
 		}
 		if (*cp)
 			return -EINVAL;
 		cp = (u_char *)input;
 	}
-	if (how&2) {
+	if (how & 2) {
 		for (; *cp; cp++)
 			if (*cp > SPACE)
 				spk_chartab[*cp] |= mask;
-- 
1.8.3.1


