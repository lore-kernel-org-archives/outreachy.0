X-GM-THRID: 6463802191249408000
X-Received: by 10.129.107.70 with SMTP id g67mr1586475ywc.161.1504971224089;
        Sat, 09 Sep 2017 08:33:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.56.137 with SMTP id f131ls1817296ioa.23.gmail; Sat, 09 Sep
 2017 08:33:43 -0700 (PDT)
X-Received: by 10.36.6.140 with SMTP id 134mr3576872itv.43.1504971223244;
        Sat, 09 Sep 2017 08:33:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504971223; cv=none;
        d=google.com; s=arc-20160816;
        b=jcuvEPVejYknNPjAzvK+XpYfbVFjuetw9YnBNrC1sytiVoAEKE90kd4EitL4AzydSP
         OBDVoPtvFLuC4pBld1ZbBUgXLCynTZspRjzLDBlFu4Oc3zg0daAn6SDrstoWCCxYFyKk
         ZQNoFkB3cI0ltGo80kron11dzBcbx+vWS5EotE/9NWzjtSLJfixl++ECxq6/JATWB0f9
         r9S3h7PRM4sB5YFLPkPNPkixvXwYbJ0buVdk//Ko3s3IK4/oGzd527uTsfAY3iEcLyPQ
         hKDx+gcNMx9peWje+epnTyjLr1dNK9S1H9AxNRH+sijIeUMvxHsIKYAG+95TUAILh0Tk
         rcww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=uhWuRmaYxfWXy21mzUTeHRPxmmps3IsFqiRdALG741Y=;
        b=VP8zP2qCXEZNNbCUjUVAttKrY0gCg/J8KwhnsYcy8tUBFuOKupoT4We1y0CwXcDcrg
         w0y4sStWVmZTsnv+cSn6cGPqAhDD4OqG6CHDt5b7vkuuVLJsyDBod9RTavLQhUETVKda
         sD0/Xk7HnLQzcf56mtYiICivMd9/naBVK0PyD9HqnQXG6ie1m2PIqjijNNVAa657jKhC
         93H/nVHPvg/biJ2jp5vJnMUrFSm2BPu2U1Hmlv55a7DDRkkd4a4K2LkhAFipEhoJI81m
         boF1MmmN7t8jzTMrOYc39uEjybEzzZq4HsiaimenjUdJ5+zXeQIam0eWxSjRATH+0Yys
         lsUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Lzl/xHkR;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id v25si486930pfg.11.2017.09.09.08.33.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Sep 2017 08:33:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Lzl/xHkR;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id t3so2634918pgt.5
        for <outreachy-kernel@googlegroups.com>; Sat, 09 Sep 2017 08:33:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=uhWuRmaYxfWXy21mzUTeHRPxmmps3IsFqiRdALG741Y=;
        b=Lzl/xHkRXmWIF0m3R6mK9vZhPiCZpBV0IcTwV5jOCqFDYYe2SVp9juIsZiYllvJxrS
         UEDsdjkmkc2OcVcDL54gITHo7WPeSlSZD1LSrS0GkHTJTNIdvgTAmAPcURyCw/LrXkEr
         a0h6H6wXfxmp90HMsk7Y6q/zo/8ymovFemPaxwvQF+f9lAoY1N6K2KWClFHAHoZYtOnO
         6cnAMuFai/y1F2uaEwUkrICzXaXT6xZflJpatwbjMgso2nvaGRPs2oNo4eErYo8LYH5t
         Ijn9/hLlq1xvlz9HO9u3ZnxKVfPsUej4g9Tn1jR/GTA2lGRK/yIzGSfo2rqquq/wR275
         y5uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=uhWuRmaYxfWXy21mzUTeHRPxmmps3IsFqiRdALG741Y=;
        b=GqbNnJdGJy2A9dX2xcZJEwJasch7Z0Mm5i5wWYSdot1vKPH990dFMIAfs0Wpcy4A+N
         E6OtR8fzK0MTth8fytZmclYGvOPiADck/iMmQu/d9P34iPtXaBuyrlr0wTSdrAau296C
         Klg4a7BD3CyP6dvPHW18SfhY3dd3lzi3NHVEpNYkemFjlSszs577iRyq9hkIXg1T/gkd
         8hy44gbMCa8P4PjMSObY4sUYe7+HANMShzyhob5R4NUoKGHvq6mLGt2LNjTfrVCbf3MD
         +njBECLNMrRd0DQmb6FzA4HrtX8DP9Uphk0zYjK9AaxDE+hMms1cwr+b6GfAvQ1x8q2t
         1Y3A==
X-Gm-Message-State: AHPjjUhWXjU19mphA9NFbwhzTfRtNDDNAk7CN/OAQ8p1L2w0ODt1zSMd
	wXHpt60qMdi0kh/aw0a1lw==
X-Google-Smtp-Source: ADKCNb7YXRfYjCmoNE2XIdK6P5Tnl/rgbunGAqJ8S02oiVWykJq8Ge7CvXyj7JpCiWlGkBRyafhGwQ==
X-Received: by 10.99.125.12 with SMTP id y12mr6510507pgc.435.1504971223007;
        Sat, 09 Sep 2017 08:33:43 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.172.87.17])
        by smtp.gmail.com with ESMTPSA id c193sm7752742pfc.139.2017.09.09.08.33.41
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 09 Sep 2017 08:33:42 -0700 (PDT)
Date: Sat, 9 Sep 2017 21:03:38 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	w.d.hubbs@gmail.com, chris@the-brannons.com
Subject: [PATCH V2] Staging: speakup: Replace symbolic permission
Message-ID: <20170909153338.GA21938@meghana-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace S_IRUGO by 0444 in module parameter declaration. 0444 is more
readable and matches the style used in other declarations nearby.

Problem found using checkpatch.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>

Changes in v2:
  - Make the commit message more clearer and the title more concise
---
 drivers/staging/speakup/speakup_acntsa.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/speakup_acntsa.c b/drivers/staging/speakup/speakup_acntsa.c
index 0e10404..4331584 100644
--- a/drivers/staging/speakup/speakup_acntsa.c
+++ b/drivers/staging/speakup/speakup_acntsa.c
@@ -136,7 +136,7 @@ static int synth_probe(struct spk_synth *synth)
 }
 
 module_param_named(ser, synth_acntsa.ser, int, 0444);
-module_param_named(dev, synth_acntsa.dev_name, charp, S_IRUGO);
+module_param_named(dev, synth_acntsa.dev_name, charp, 0444);
 module_param_named(start, synth_acntsa.startup, short, 0444);
 
 MODULE_PARM_DESC(ser, "Set the serial port for the synthesizer (0-based).");
-- 
2.7.4


