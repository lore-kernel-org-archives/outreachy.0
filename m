X-GM-THRID: 6395576564216496128
X-Received: by 10.107.178.15 with SMTP id b15mr4691299iof.93.1489086226660;
        Thu, 09 Mar 2017 11:03:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.82.215 with SMTP id d206ls5031826itb.17.canary-gmail; Thu,
 09 Mar 2017 11:03:45 -0800 (PST)
X-Received: by 10.99.109.12 with SMTP id i12mr6141853pgc.104.1489086225873;
        Thu, 09 Mar 2017 11:03:45 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id r66si1356812pfb.7.2017.03.09.11.03.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 11:03:45 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id o126so8182110pfb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 11:03:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=8Di0VQcgBvNTjpJMAogTR7AbLaGHApYcVI+kHKG3d/w=;
        b=gBCyBhcxiEWorkrIFl+C4EkG70QSH+9CJBi2ztl0HPUgZ9WkipGmMZYwd+O2beXjvB
         TZiM22SJUkcd356Rfb+xYkLYhnsW13BmzLKrIxrtPIrRPVMUFBa7KIvm8kFSFDqfFD2Q
         vDysAKspbKSWA5x/ocbFldOX+tEYAujRUnUSrZtojTd8uctKbdhFiPkpJalMb+JyEm1n
         A+2wfYRAIFTinfaNMwAhvNabnUEtwmsyH9heVn6OYRcNrwwjma0WB12Q5z7+lVwifz6H
         HS2RLF+lRcg5OKel5v5vkEu/+m9yxwP4xMsWN3EObbn3P+L/Z5mzInjS63lnvgU1CFvN
         XGog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=8Di0VQcgBvNTjpJMAogTR7AbLaGHApYcVI+kHKG3d/w=;
        b=R49tGTMOC2jpEOtZkid1t+hMrxVrByc/syiKWhsLACurHpedjjVrChCTkryDsBCLKJ
         UT5JgVkq3tKtotzKSnY49V29RwGXZtJ25yRKskGORk9EeMvHGehHXW92cguDoVZN/3qH
         U8EXkUJcvtqNlKRBS4wBcrCox6O/Cv6S+QpB/e+kq3Kfmcz4jjnbEvsi8gJ+DrLE+qkL
         yzckZjfTjzNf2kGVYHNamELAl+f/dbsY7PthtIC6ggNGzwos4PZAQcqKMZJj84Ey2poX
         KzNcZm2J05IR7Gl308lGsddt/klD+/XSFzSHzO0ho7VlMlGXrnGnKA44ItNLbri90XHL
         hKLw==
X-Gm-Message-State: AMke39kShPIx93JmKzTpcWxOH7BR3gEqScbHvQRPTQWyQ9mSGg+mseTZSU+4Ik/UrJFudA==
X-Received: by 10.84.162.204 with SMTP id o12mr19290984plg.132.1489086225678;
        Thu, 09 Mar 2017 11:03:45 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id u129sm13890450pfb.130.2017.03.09.11.03.43
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 Mar 2017 11:03:44 -0800 (PST)
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
Subject: [PATCH 4/6] staging: speakup: identation should use tabs
Date: Fri, 10 Mar 2017 00:33:18 +0530
Message-Id: <20170309190320.25681-5-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170309190320.25681-1-arushisinghal19971997@gmail.com>
References: <20170309190320.25681-1-arushisinghal19971997@gmail.com>

Indentation should always use tabs and never spaces.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/speakup/speakup_dtlk.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/speakup/speakup_dtlk.h b/drivers/staging/speakup/speakup_dtlk.h
index b3b3cfc3db07..46d885fcfb20 100644
--- a/drivers/staging/speakup/speakup_dtlk.h
+++ b/drivers/staging/speakup/speakup_dtlk.h
@@ -24,11 +24,11 @@
 				 * usec later.
 				 */
 #define TTS_ALMOST_FULL	0x08	/* mask for AF bit: When set to 1,
-				         * indicates that less than 300 bytes
-				         * are available in the TTS input
-				         * buffer. AF is always 0 in the PCM,
-				         * TGN and CVSD modes.
-				         */
+					 * indicates that less than 300 bytes
+					 * are available in the TTS input
+					 * buffer. AF is always 0 in the PCM,
+					 * TGN and CVSD modes.
+					 */
 #define TTS_ALMOST_EMPTY 0x04	/* mask for AE bit: When set to 1,
 				 * indicates that less than 300 bytes
 				 * are remaining in DoubleTalk's input
-- 
2.11.0


