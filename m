X-GM-THRID: 6608897994052861952
X-Received: by 2002:a81:af15:: with SMTP id n21-v6mr8586119ywh.3.1538825201108;
        Sat, 06 Oct 2018 04:26:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:fd7:: with SMTP id 206-v6ls3460735ywp.5.gmail; Sat, 06
 Oct 2018 04:26:40 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62l2ZD1myAZ/R0hDEg1FxsN3yCupHur0jLI8Luu1JPW1pFmWDwyOT3l0Ep0MMgkfKPnIXSA
X-Received: by 2002:a0d:eb8d:: with SMTP id u135-v6mr8552792ywe.21.1538825200192;
        Sat, 06 Oct 2018 04:26:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538825200; cv=none;
        d=google.com; s=arc-20160816;
        b=uw51D3H+To4ZCDZVadott65tmT3pFQ6Qq84n5wlNbNFTIUI1rO8MaRWTFbfgg/HOyM
         /y+Sep7awPI/ii71yMJX75MUgO2o70BuOnig5GEjZm8a9oYNqIcPqU0FiU1BPuChKbRt
         Tz3kCsIHk6wJmb4bIHWpP+Y4ZzPCFKkosovIVOAKoDmesprFbhj9YeBOFYU4jSJ2Uyze
         3eDLdtgByjZwn1q4/FbpXifJpnpG/mXTo4+bQSKi3u9cje5PfZQ1MvHfLztisofCvPGK
         RTQTeE6C+zfdjHGmCqPMwUF5Hanyjg9O/YevWHvuF2lM4tgTDR4b3JkQZvWLYI6qP2e9
         OoDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=1yoP7YjNSFTb75jhVbmdaOyM89zKuXRMoaBWlDd9brM=;
        b=sZJNmK9lwa/3/nlKd9Y+FYVz6XYi8Vs5L/hzhTn7XGmaz55Jcy8tNP4noak4RH9m90
         GctL3u3V6WQugvThbExpyrc84NUd4BTcx2yOdoPZsdi15VJbNNV6944u+1L9+AFF9MAw
         pW37yaXG7/x3E8KvyhhrakHo558vsiDdfT3u0HafZwUpgZV+LP7Y7oZRo/KezeHIimSg
         SOCtDsIl4P5i498Oaz2w/y21YkFjbp8gUdIbdkuuHo41HCewgTMAkkc6vkLLgko+VnSY
         GMHOZVqGxWARdeuHMFgsbnaivjfV/CPvJHPX1YpkV5Z88SNhTM9V1hIbhOr24rTRW6mG
         EhqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nkulSgKl;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id j12-v6si460410ywb.1.2018.10.06.04.26.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Oct 2018 04:26:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nkulSgKl;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id g2-v6so5825415pgu.11
        for <outreachy-kernel@googlegroups.com>; Sat, 06 Oct 2018 04:26:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=1yoP7YjNSFTb75jhVbmdaOyM89zKuXRMoaBWlDd9brM=;
        b=nkulSgKlamqwg+XebnxGTPjtT/UbxLMByk2ZAUMLZUfx+r3PA4tuH1O/CnS/Ve73KZ
         smr9js624I3+H8neMjChCdFqhAzoGRR7Y7PKqaFvhKyn3Y7trm6jEwCQnrb025l3oCqO
         bhy+yiLW6Qf5VnjkfEYStO84OvxKxgT1VNPoFYtbu7SNRkcJklyPN4O2uD8fKHy33t2R
         AvJ3pxzCJ+k4CA8uHfC2Kii02hTDo6wo6H/q6zbtpXyPTFvo/xWJTOdjzXqLsPMS6VZt
         /ZbOIUU35/nfwKoKUThquTYr03f9y4dx3ouAs74rvw8QRVnenFC5Ly4OG1gCCIZL1las
         tBJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=1yoP7YjNSFTb75jhVbmdaOyM89zKuXRMoaBWlDd9brM=;
        b=My9V/d9N0wPATUUIejXsj9Evv46QMOZw//sj0pbjt7wT0cj1JoF7v5gxhWlCk9GqmQ
         jZRK/8665GPh92X0Bu+fdJs+FQslBTvNtsWOgQLUra5fNkVEt4uWB0s2mtckKUpozJDG
         hl9ZvNWF0nMFqQk8gSkxKCl/oaVY7v+KAkJLNDukm78N5f8Cr6gDpBQqa3w5S/8eMfud
         Ysn1yYlapVq7aHi0R8NE2ES7e1HcAVuMowEDhaKQwQ5JhAYaUwnhouJl3sIn4T1gjByh
         f4Iv0YOpfFY4IUKpF74vuGlmyjZ7bm2ydlpTpaHSceNxN924r+blcmiKRL5/zgxP5/pI
         c3bQ==
X-Gm-Message-State: ABuFfoimBWI85vm5D9A9AO2qSBUipG+LBCKh3HDiXmM6H41yVduqKAez
	Qs6cKWGPLYS1qKAnETj/+k7Exuua/5k=
X-Received: by 2002:a63:7744:: with SMTP id s65-v6mr13768485pgc.197.1538825199337;
        Sat, 06 Oct 2018 04:26:39 -0700 (PDT)
Return-Path: <mamtashukla555@gmail.com>
Received: from armorer ([59.88.64.93])
        by smtp.gmail.com with ESMTPSA id s133-v6sm8907086pgc.78.2018.10.06.04.26.38
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 06 Oct 2018 04:26:38 -0700 (PDT)
Date: Sat, 6 Oct 2018 16:56:36 +0530
From: Mamta Shukla <mamtashukla555@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: forest@alittletooquiet.net, gregkh@linuxfoundation.org
Subject: [PATCH v2 1/3] staging: vt6655: Add blank line after
 function/struct/union/enum declarations
Message-ID: <ff2e07eedb4220c53ff681ec6fefb5aa637ae9cb.1538823377.git.mamtashukla555@gmail.com>
References: <cover.1538823377.git.mamtashukla555@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1538823377.git.mamtashukla555@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Add blank line after function/struct/union/enum declarations to fix
checkpatch issue.
CHECK: Please use a blank line after function/struct/union/enum
declarations

Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
---

No change in v2.

 drivers/staging/vt6655/rxtx.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index 9c4a532..8ae9c68 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -65,6 +65,7 @@
 	{RATE_12M, RATE_18M, RATE_24M, RATE_36M, RATE_48M}, /* fallback_rate0 */
 	{RATE_12M, RATE_12M, RATE_18M, RATE_24M, RATE_36M}, /* fallback_rate1 */
 };
+
 static const unsigned short wFB_Opt1[2][5] = {
 	{RATE_12M, RATE_18M, RATE_24M, RATE_24M, RATE_36M}, /* fallback_rate0 */
 	{RATE_6M,  RATE_6M,  RATE_12M, RATE_12M, RATE_18M}, /* fallback_rate1 */
-- 
1.9.1


