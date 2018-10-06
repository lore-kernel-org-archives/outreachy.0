X-GM-THRID: 6609620704439566336
X-Received: by 2002:a81:af15:: with SMTP id n21-v6mr11113612ywh.3.1538928105792;
        Sun, 07 Oct 2018 09:01:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:5c8:: with SMTP id 191-v6ls422983ywf.8.gmail; Sun, 07
 Oct 2018 09:01:45 -0700 (PDT)
X-Google-Smtp-Source: ACcGV626PHIMpbHHAmB4lbPPingNluR9Qqe3KnxnI/Kv8DuLogtLf1H8aP2e1upZztb2sgtGI23F
X-Received: by 2002:a81:3a57:: with SMTP id h84-v6mr11085440ywa.14.1538928104983;
        Sun, 07 Oct 2018 09:01:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538928104; cv=none;
        d=google.com; s=arc-20160816;
        b=mXaZWqMS0f/UZI2Zyfr7UwxnSs5RceVZo0HgZeJtI1dgK/i+DcdyprcNrhnTmglMjr
         KJS671JM1QpuxXB2O2J+569buwgVCl05oitXB6QPAy5NpefpQ/mhrqeCz1wGgv+uAA3M
         ZgERE4Psls3pOIpYksHWD2H3EyG3/bDCAKdlWoQ/XUeGRr0uWteHf6OYoPI58Bi5fNkQ
         iLEXNWmSSmw5o2KnUfLRCMJpxHS0hgFbE2X18F+bwDy9s3kO/ydcivDBGmDYffqDOLp6
         WKp8CpBgTCCUVbqqzFzlm+ZIqevjcbZJcQrHIfszI6CHbjAZ9+x06iOo8odK3zSheZR2
         lrcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=VeE8csLXdA6rB1YS2Gkquu3QNL3I6Zmtz3+7sbfoVT0=;
        b=yW1OHVg0l2k/kW4gJ5L1xkIAky4Irdy2tdKNgpDbWfZHYwNMxmnOG3Nr3kn8xppFSz
         ysXELN/N5creTyHkt5OqtBajW+4cOr2LkVW0BEI0cwq5+pZqtgxTZBK/L7viNjg2eg2U
         p4910Qjvzt0FkWLIS1jwB+CtVQ4mTnR16xNluIenREdbT1KBlwgTvEpqXsHnMFtvnGCa
         ypzzYvu0owiGkKbAY+ut9v8zkYzC8bXGI0cq2DrfFE9J8gFc7nfHJiuTBmR9GFoPp0Wk
         v5XUyE/xWzBR0Mui8t6SjRQBQH87ruLBZAB4aRESUUW+rhJI3i8cvBsgF6HOXm8zSSOm
         7KUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SAoT1Gt2;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com. [2607:f8b0:4864:20::434])
        by gmr-mx.google.com with ESMTPS id y16-v6si622605ywy.3.2018.10.07.09.01.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 07 Oct 2018 09:01:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::434 as permitted sender) client-ip=2607:f8b0:4864:20::434;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SAoT1Gt2;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x434.google.com with SMTP id r9-v6so7071657pff.11
        for <outreachy-kernel@googlegroups.com>; Sun, 07 Oct 2018 09:01:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=VeE8csLXdA6rB1YS2Gkquu3QNL3I6Zmtz3+7sbfoVT0=;
        b=SAoT1Gt2pe58A46qLinGL8nOe2lP7FR6ryxan57bVQKp7bIRjPeLdPJo9nwbMh26OH
         MCHmgw8qsXBbrsvH+90iNX1GApftVARwDxK+J8DE2nTrpO7hp59Au6eFfjli/iCgVPW3
         Fpt4ksgCePhYy9B/HnChOxDwszGIFhp6XL0ObcBW1eWkzK7rC8K2wTykLFMJOvWTlFwW
         x5c532RN9+u3V3zTw5oGv61SJRltxUw5OSHXJqZRw1TDtE9VATezqrFFo0zoT57HDNtM
         XfVyw9s50llrjJWVnF8oAB8DbOJbYTnWgrbGVRiRs5TBNN7z/mRmWf3CwWlrJ/7wzkTy
         Lrrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=VeE8csLXdA6rB1YS2Gkquu3QNL3I6Zmtz3+7sbfoVT0=;
        b=kz/Vnl8AmmApwRJ6LOFgeIVUFp0mzWRd0eXRo8xbXs7JuTFe65jdpvdPksV92bHsxN
         407gcgQQ26/xeqGwM7hWmmFLY6yFpl5TyxFXP8aQmpv1Rdbe30yKBZRtSP+4lqZDWcC0
         81x4r1+VwV6+QjorAl+8cSYCVY+gDvDjWuT3PcPjwDCL/RtWbSdOv252c0bE4fq8D8ly
         Lv581nGzdnDC3N8W9XwlecZZ+kUgm8TRjz8q4utW2YmlpUpgBTTJQhwL1gJ3flsA+b6+
         kUz6Eo/vuOdkR7tla6qCPzRHKnGijEVFQ9TLbhZtFBQN61XzsyfvmJR4rLFZF+ZI532G
         2+2g==
X-Gm-Message-State: ABuFfojgTqCJK+LxpNhjaJB9ke2EdbuNQnhy+lhCDeLEbSv0R9YQLF/l
	jOpXaSjZOmElZp5/ypL8hX0=
X-Received: by 2002:a63:a362:: with SMTP id v34-v6mr18243054pgn.261.1538928104506;
        Sun, 07 Oct 2018 09:01:44 -0700 (PDT)
Return-Path: <mamtashukla555@gmail.com>
Received: from armorer ([117.207.206.206])
        by smtp.gmail.com with ESMTPSA id c79-v6sm22015988pfc.92.2018.10.07.09.01.43
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 07 Oct 2018 09:01:43 -0700 (PDT)
Date: Sun, 7 Oct 2018 03:31:57 +0530
From: Mamta Shukla <mamtashukla555@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: mchehab@kernel.org, gregkh@linuxfoundation.org,
	mamtashukla555@gmail.com
Subject: [PATCH v3] staging: media: davinci_vpfe: Use __func__ instead of
 function name
Message-ID: <20181006220157.GA13993@armorer>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Access current function name using __func__.
Use %s and __func__ instead of function name.
Predefined identifier __func__ gives the name of current function name.

Issue found with checkpatch.pl

Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
---
change in v3:
-change in commit message.

 change in v2:
  -Put useful information above --- 


 drivers/staging/media/davinci_vpfe/dm365_ipipe.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
index 9594276..4d09e81 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
@@ -695,21 +695,21 @@ static int ipipe_get_gamma_params(struct vpfe_ipipe_device *ipipe, void *param)
 
 	if (!gamma->bypass_r) {
 		dev_err(dev,
-			"ipipe_get_gamma_params: table ptr empty for R\n");
+			"%s: table ptr empty for R\n", __func__);
 		return -EINVAL;
 	}
 	memcpy(gamma_param->table_r, gamma->table_r,
 	       (table_size * sizeof(struct vpfe_ipipe_gamma_entry)));
 
 	if (!gamma->bypass_g) {
-		dev_err(dev, "ipipe_get_gamma_params: table ptr empty for G\n");
+		dev_err(dev, "%s: table ptr empty for G\n", __func__);
 		return -EINVAL;
 	}
 	memcpy(gamma_param->table_g, gamma->table_g,
 	       (table_size * sizeof(struct vpfe_ipipe_gamma_entry)));
 
 	if (!gamma->bypass_b) {
-		dev_err(dev, "ipipe_get_gamma_params: table ptr empty for B\n");
+		dev_err(dev, "%s: table ptr empty for B\n", __func__);
 		return -EINVAL;
 	}
 	memcpy(gamma_param->table_b, gamma->table_b,
-- 
1.9.1


