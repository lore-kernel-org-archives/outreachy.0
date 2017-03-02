X-GM-THRID: 6392976893088366592
X-Received: by 10.200.56.211 with SMTP id g19mr754834qtc.6.1488480949164;
        Thu, 02 Mar 2017 10:55:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.30.168 with SMTP id n37ls8020382otn.25.gmail; Thu, 02 Mar
 2017 10:55:48 -0800 (PST)
X-Received: by 10.157.7.78 with SMTP id 72mr3748843ote.55.1488480948807;
        Thu, 02 Mar 2017 10:55:48 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id c123si1683902pfa.4.2017.03.02.10.55.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 10:55:48 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id s67so10146823pgb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 10:55:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=8Di0VQcgBvNTjpJMAogTR7AbLaGHApYcVI+kHKG3d/w=;
        b=nT0KlStOuJe880/WHjfYRI4z2R57ZztWh88HxWRuylxIKSkgcAVrkQLCV+0+Xvay++
         PDi0Hw4uZALjOzmmyCoogDL6cSfP+R1oTFeOA0CoLUC01HgOMvk2/x05cGnsoCdJS8V5
         z4BCU4c/t+YXEd0iq7MhehQmiAtn+pkcfYSfqtoyl2sc3OMiXQ+51gyCmVy7jRGqdwaW
         W99hceCopc0jzG+KwR2+TZ37i4Bw3oPE9pO2AGtFCsPY+YIA+rmOCNLOIJyGUjIT7b/d
         havzxP2huUjUbk6Tf7r3QDo4n4/WAZFl7AUAiQwXH0jzLJJuyoP7nacXOkaFdTA1k/Kc
         O+xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=8Di0VQcgBvNTjpJMAogTR7AbLaGHApYcVI+kHKG3d/w=;
        b=l7zEDuzMdafLZySe5FTItuq5ckmYZvw9GHTRAjVJMMOSlawRgWqDnZsKtgXa4RWG75
         GP7tO2rZsHnkij9dE4/Shc8p+7rjHnjiMGF11/yF7pLOMjA3ohTjVQdJEUzGzG0oFwFi
         qU/G5DDFw9RirOB52HiMhHfUuDRK3BkFQ/h2qJMQQW9TCGpLxTulIEhCIDf+jTRLYHVl
         b+BNo/jwt+Cf5cLaRGzXDJuFJeeyxerT/nGa7/CXRJjVV4t0ZHkBsJc1ywF6ow4UzonZ
         ahnjWhmGWjJ0IRub3Nuut5UfAAxKJcBP/zCQsLT04UMYEEe5NtyagLJqtWMK6uDY8ztP
         gsYA==
X-Gm-Message-State: AMke39m0aigtLmYbh/IiNS74Ml1sI8cqz8rrBtJxwqgfSX9HmhxjOW3Yt2M7VDrBIisozA==
X-Received: by 10.99.56.94 with SMTP id h30mr17280175pgn.23.1488480948483;
        Thu, 02 Mar 2017 10:55:48 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id w18sm18500796pfa.127.2017.03.02.10.55.46
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 02 Mar 2017 10:55:47 -0800 (PST)
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
Subject: [PATCH 3/4] staging: speakup: identation should use tabs
Date: Fri,  3 Mar 2017 00:24:56 +0530
Message-Id: <20170302185457.14812-4-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170302185457.14812-1-arushisinghal19971997@gmail.com>
References: <20170302185457.14812-1-arushisinghal19971997@gmail.com>

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


