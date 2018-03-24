X-GM-THRID: 6532038435056648192
X-Received: by 2002:a17:902:4906:: with SMTP id u6-v6mr11019564pld.6.1521897254206;
        Sat, 24 Mar 2018 06:14:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.101.72.67 with SMTP id i3ls2293728pgs.28.gmail; Sat, 24 Mar
 2018 06:14:12 -0700 (PDT)
X-Google-Smtp-Source: AG47ELtbKQWY9XsRkKEAK4z+e7MJ692DW8CVBAGeoQwEaROE8I5n4U1RKcy1Rd0Gtx1o3U2JQx9B
X-Received: by 10.99.174.67 with SMTP id e3mr9336651pgp.122.1521897252652;
        Sat, 24 Mar 2018 06:14:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521897252; cv=none;
        d=google.com; s=arc-20160816;
        b=Hz7W0Wm4nsSkqPK4D3fAfJdem5Sf1paELy10/0J5bN8op6QAx6U3DJGhtcA1/Sp8PS
         O9n/r9kMcwZOmT5MYUN1j9UQdIWGGHfyotxbFDoiR9H0y7CksL+84hYoQv+AEkTIYR/P
         KamS35zBrhtcpF6PRD2rhPlmRWal8MCT1vW5a4nZR1R4aGIy0yuiMjw3jFYJ2/hY6k/W
         xVXmdkA3vf7guHC8kmALKhUBcEn90PhfeIKtewpua1td989vIXuQSJXsscxCZlWLJuf5
         yAuRfF1XvE4mGcThsEpa6t2UDOjFTKm7SmgJVB4IWnJDimbqTay7Rz/UXsiMXJNcWnR5
         D1Iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=q7SDmpxBufAxps+kojpK+mqpOMSx+0fK0si/0/YyRxY=;
        b=FH1nuOrk/N8taxOCjSB4fMHImq6YlW66OEbFVfFeArLEUEkpcwstGfviFima6knhVD
         wdIgyYun9oKsB05a2prOuXMllIdVqJTOeHQj1JFg8Ppo5Q2SDtmCDw8s6x87Q8bkrx+a
         BaDrsjab5DRZ+U3gRdOS0B02IYcykiwJ3u749EC6JJJNogWivAUY7dciLVJp5GaF55Ws
         4JIO6chhrqZnrY/A+y3BffXvVZwhmTijF1O2sSZs2HHJ+fUoyS7Bx8qYk8lr56Aixdzk
         4UmINT3f3LHrwFxpqzdKZ0wAz65WSUvTNhSRNLDNBUwyQNjkgHKAth1uWSZPJWHdQCmZ
         pYIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=ZDX/+FwU;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::231 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pl0-x231.google.com (mail-pl0-x231.google.com. [2607:f8b0:400e:c01::231])
        by gmr-mx.google.com with ESMTPS id d66si291033pfc.4.2018.03.24.06.14.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Mar 2018 06:14:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::231 as permitted sender) client-ip=2607:f8b0:400e:c01::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=ZDX/+FwU;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::231 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pl0-x231.google.com with SMTP id w12-v6so9106337plp.4
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Mar 2018 06:14:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=q7SDmpxBufAxps+kojpK+mqpOMSx+0fK0si/0/YyRxY=;
        b=ZDX/+FwUdhLFoyKPZvOUvDUFYNUkEPonUctiIRU98+ehX0RlUjtE/+M8UyP0WDs77j
         2LCeFEnuiolNRBVEbqtSBTY6rt0+f4VeNAo0TK/zrIiBU831AhX31x2E9SGwITnl883f
         h4IhYZNMtW5Ps7RAsHt1gEuxtIpJVgf9CPKx8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=q7SDmpxBufAxps+kojpK+mqpOMSx+0fK0si/0/YyRxY=;
        b=pLVlA0hwwFc+mG7w1U0oug64Z/VawwTUm6XgqRoI+U0bc4cMSfecXRf96r+4unHzH2
         aDv0sxNUdou/Yr5+pOSD8R1Rh+ScwKRJMVxqhFRdnw+jttiTqoOH1iC6kOh3opact6IY
         8J7p723eKnu4J9qCk99egu3f842kaNIICBWvSvNS22ofM7PYWhpRjJkMUKZ65W7EOOQI
         ovO5r4UPrgU5RHBynOAK/dOGtRCAov2HT+f/IrAcGfYU4zhyYuNnAqzQjItuCVdAHPil
         G5Pl0ttvqW1HFWg8MAMC/13DSpKw32e6ouM4/kYht7uNXn/vv/ic8RQjTFrltqf72wXL
         ElrA==
X-Gm-Message-State: AElRT7H+4gL63rdrNlgmJXZPkzhB7jtviX9K1Ks6RrcYkqYd6sXge+Re
	cpww1lHG1poHY+VjASRYsW52/Te2
X-Received: by 2002:a17:902:bd46:: with SMTP id b6-v6mr32870457plx.38.1521897251891;
        Sat, 24 Mar 2018 06:14:11 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id z85sm23493913pfd.104.2018.03.24.06.14.08
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 24 Mar 2018 06:14:10 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: gregkh@linuxfoundation.org,
	mchehab@kernel.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [RESEND PATCH] staging: media: davinci_vpfe: Change to "%s...", __func__
Date: Sat, 24 Mar 2018 13:13:19 +0000
Message-Id: <1521897229-28771-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4

Change string explicitly mentioning function name to "%s...", __func__.
Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
 drivers/staging/media/davinci_vpfe/dm365_ipipe.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
index 6a3434c..7d3349b 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
@@ -696,7 +696,7 @@ static int ipipe_get_gamma_params(struct vpfe_ipipe_device *ipipe, void *param)
 
 	if (!gamma->bypass_r && !gamma_param->table_r) {
 		dev_err(dev,
-			"ipipe_get_gamma_params: table ptr empty for R\n");
+			"%s: table ptr empty for R\n", __func__);
 		return -EINVAL;
 	}
 	memcpy(gamma_param->table_r, gamma->table_r,
-- 
2.7.4


