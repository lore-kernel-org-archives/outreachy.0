X-GM-THRID: 6249405968751263744
X-Received: by 10.107.135.209 with SMTP id r78mr15704588ioi.19.1455053214725;
        Tue, 09 Feb 2016 13:26:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.100.184 with SMTP id s53ls1491481qge.94.gmail; Tue, 09 Feb
 2016 13:26:54 -0800 (PST)
X-Received: by 10.13.236.84 with SMTP id v81mr34233695ywe.2.1455053214137;
        Tue, 09 Feb 2016 13:26:54 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qk0-x236.google.com (mail-qk0-x236.google.com. [2607:f8b0:400d:c09::236])
        by gmr-mx.google.com with ESMTPS id y131si2250147ywc.0.2016.02.09.13.26.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 13:26:54 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::236 as permitted sender) client-ip=2607:f8b0:400d:c09::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::236 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x236.google.com with SMTP id x1so61786qkc.1
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 13:26:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=UFS0SMaU+0TPyC2N2YWfUIR8kAoTbmdw15Bp4KYMwc4=;
        b=hNSvbPZ+HHinsjRjzZ8BRlaEVhiv1EVq1XPuTSmZkoYUKzD5Bjhnirup07QF/yHCcU
         iQXxQsmv+ijXheuA4HoITVTYP4PTk1+CUHre+gCl726z8kXg5oXBmhNvKcUhtEHOMbob
         EezlbHJecxzkbRhYLjG2nknti3dwFnoa2+++XxFYAH8BRaZ06H0FiO92CfKJJJiz4fsw
         Xo6kw37WNcNEyoj46cKqTJvpkYoQv99Fs6Nw/znUigzGUh5X52iBlQC7mwiOny/hwgF/
         S8skAWPGPrWBzBSzZRcoFIE1hA2Knwn7qhoqbsZPsvLrBabvcVJdjsraLUYvdRWcD18A
         hPkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=UFS0SMaU+0TPyC2N2YWfUIR8kAoTbmdw15Bp4KYMwc4=;
        b=I0I3zFDRANUHYVc6zeiRSB74mmuFkRZq8cB4pxDZcJ2JGJMzdnNSV3hRptQv6vTefv
         2PXGtwKd08DK/7kA9aF2PT127oMqgdIO8J45zx7CbWLYwW22dCJMivrTiTcvBbYxxqIb
         jYJLGSdnb2EjIcXfZv+CK0TN1OSZAbIIK2n5aNZRScFOGNOadPLkBPai5VxxKfttLljP
         ODPNs+Mhz7c9bT7pdZj9PCUtnKioPULDM12vMwfFxt0cNxFwlCDcLk0nB/KPRIhvG91b
         SxUU5eld1vpeglb6dwJLQ7AbAaqKojlT3R8MjkuIABhR1+QPK0s0W7j/zw0aSnjdyds/
         VcsQ==
X-Gm-Message-State: AG10YORB8Qj4jzWgbOz0I2Z8bnxsYg75z1oiiO1LpW1tsOwlalTFpgyjt/JlxSqjDutiFA==
X-Received: by 10.55.71.195 with SMTP id u186mr43909328qka.38.1455053213978;
        Tue, 09 Feb 2016 13:26:53 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id f83sm16493611qkb.25.2016.02.09.13.26.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 13:26:53 -0800 (PST)
Date: Tue, 9 Feb 2016 21:26:16 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: octeon: Add spaces around operators
Message-ID: <20160210022615.GA12636@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Add spaces around operators for better readability. Change suggested by
checkpatch.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/octeon/ethernet-tx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/octeon/ethernet-tx.c b/drivers/staging/octeon/ethernet-tx.c
index 82abaec..a08ea3f 100644
--- a/drivers/staging/octeon/ethernet-tx.c
+++ b/drivers/staging/octeon/ethernet-tx.c
@@ -419,7 +419,7 @@ dont_put_skbuff_in_hw:
 		    cvmx_fau_fetch_and_add32(FAU_NUM_PACKET_BUFFERS_TO_FREE, 0);
 	}
 
-	skb_to_free = cvm_oct_adjust_skb_to_free(skb_to_free, priv->fau+qos*4);
+	skb_to_free = cvm_oct_adjust_skb_to_free(skb_to_free, priv->fau + qos *							4);
 
 	/*
 	 * If we're sending faster than the receive can free them then
@@ -430,7 +430,7 @@ dont_put_skbuff_in_hw:
 
 	if (pko_command.s.dontfree) {
 		queue_type = QUEUE_CORE;
-		pko_command.s.reg0 = priv->fau+qos*4;
+		pko_command.s.reg0 = priv->fau + qos * 4;
 	} else {
 		queue_type = QUEUE_HW;
 	}
-- 
2.5.0


