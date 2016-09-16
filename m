X-GM-THRID: 6330925606572654592
X-Received: by 10.13.220.66 with SMTP id f63mr117954ywe.129.1474033915849;
        Fri, 16 Sep 2016 06:51:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.18.201 with SMTP id g67ls3053280otg.26.gmail; Fri, 16 Sep
 2016 06:51:55 -0700 (PDT)
X-Received: by 10.237.32.33 with SMTP id 30mr10519184qta.24.1474033915377;
        Fri, 16 Sep 2016 06:51:55 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id u125si689356itc.0.2016.09.16.06.51.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 06:51:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 21so2235775pfy.1
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Sep 2016 06:51:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=StF9GPK3iH1AFEOmbYYI717jK7LIW3+B4dNvZO54opM=;
        b=fb3VU/z/AVEEbEpCvAJcgTaM/nHB6NDqXfxCm+49UiEQN0tLqPtFFKIBe1Ey9WTreS
         GFANRb1PN+p/fEvx1kvBiTPmyMv9JL58AqPfagCJBEu1Xq5PE9fkb9uIyw8ezEHIdPBL
         TZH8Y5bnkx6Niwxsk5aVN1rdKqhVXjliJoRbZjmWdWkg+igcvJr4vjpYPjhpaczJu8K0
         9+3zcj8QfemQxDNGxI4Z2WP1E3f2iw8OiE/mBti1JvcHQc4JyNlHCCXfQt5JjwQPVkMS
         kA30RGpWV48Mx0DoL5r6V74TzSS5EA6eqejRspTtPitSHOKjvhu5BMiyLnpjL1n/4FRi
         9jyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=StF9GPK3iH1AFEOmbYYI717jK7LIW3+B4dNvZO54opM=;
        b=ie44AYIKBUcv4c8SjmRkcnP36XcuAzH5xps5L3f8kzteChawOU0up45QBx66YmIJ3B
         Hcd+fvqWxzeI5qkW9ZKDMRQwFQ8CA+P3hubwH/zpIJ8p2pvSMvezyN9LiqrOaV75fGpr
         1BuxolfmBCn/AWahWMbvQGVi3GAHG+YFGDsTr+4xEtCLNZAyNFj/P5Gs0ug8ipBXNED0
         b/Wg9Mhbxh7zgvIAb2zZFim2nYMBopOCS5sMSA+uc1jTwY6X/UuXjEq+qiSoq9LQvOqp
         gp68qN7SP0OlKZTIN/kma8off/NHHLHli1cG2wBnAxwK5rtNc01X++Tf8GN8XZa24Kyl
         0B7A==
X-Gm-Message-State: AE9vXwM+5yC2eNVlYfz0o23fgl+LYcXXGNe+2mpkkTVU7Sj0VbJra+nt9yCAlEYoSJIMFQ==
X-Received: by 10.98.129.131 with SMTP id t125mr11878718pfd.157.1474033915137;
        Fri, 16 Sep 2016 06:51:55 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.244.96])
        by smtp.gmail.com with ESMTPSA id 21sm4382658pfo.80.2016.09.16.06.51.50
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 06:51:54 -0700 (PDT)
Date: Fri, 16 Sep 2016 19:21:38 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2 5/6] staging: ks7010: Remove the space after a type cast
Message-ID: <9137587c5d6614c07159d18446e6d5ccc2a1abcc.1474032241.git.karniksayli1995@gmail.com>
References: <cover.1474032241.git.karniksayli1995@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474032241.git.karniksayli1995@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

The patch removes an unnecessary space after a cast, as detected by
checkpatch.pl.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/ks7010/ks7010_sdio.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/ks7010/ks7010_sdio.c b/drivers/staging/ks7010/ks7010_sdio.c
index bee7504..489291b 100644
--- a/drivers/staging/ks7010/ks7010_sdio.c
+++ b/drivers/staging/ks7010/ks7010_sdio.c
@@ -537,7 +537,7 @@ static void ks7010_rw_function(struct work_struct *work)
 
 	if (rw_data & RSIZE_MASK) {	/* Read schedule */
 		ks_wlan_hw_rx((void *)priv,
-			      (uint16_t) (((rw_data & RSIZE_MASK) << 4)));
+			      (uint16_t)(((rw_data & RSIZE_MASK) << 4)));
 	}
 	if ((rw_data & WSTATUS_MASK))
 		tx_device_task((void *)priv);
@@ -609,7 +609,7 @@ static void ks_sdio_interrupt(struct sdio_func *func)
 			rsize = rw_data & RSIZE_MASK;
 			if (rsize) {	/* Read schedule */
 				ks_wlan_hw_rx((void *)priv,
-					      (uint16_t) (((rsize) << 4)));
+					      (uint16_t)(((rsize) << 4)));
 			}
 			if (rw_data & WSTATUS_MASK) {
 #if 0
@@ -1150,7 +1150,7 @@ static void ks7010_sdio_remove(struct sdio_func *func)
 			    cpu_to_le16((uint16_t)
 					(sizeof(*pp) -
 					 sizeof(pp->header.size)));
-			pp->header.event = cpu_to_le16((uint16_t) HIF_STOP_REQ);
+			pp->header.event = cpu_to_le16((uint16_t)HIF_STOP_REQ);
 
 			sdio_claim_host(func);
 			write_to_device(priv, (unsigned char *)pp,
-- 
2.7.4


