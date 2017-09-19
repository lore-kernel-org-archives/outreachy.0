X-GM-THRID: 6467514574021066752
X-Received: by 10.13.253.7 with SMTP id n7mr959775ywf.29.1505835639708;
        Tue, 19 Sep 2017 08:40:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.161.139 with SMTP id k133ls12518040ioe.34.gmail; Tue, 19
 Sep 2017 08:40:39 -0700 (PDT)
X-Received: by 10.129.78.202 with SMTP id c193mr963250ywb.106.1505835639148;
        Tue, 19 Sep 2017 08:40:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505835639; cv=none;
        d=google.com; s=arc-20160816;
        b=V4Ke9RShjX12K5l5jy523ApWEQzMvvqWKtNNVi3YxC6B921HKGZZx17YUOAYYYNoU+
         1pctqmWlzQFPjwJWm8AbxnyFgmKUcNqAuB0amLsAxjgRtH4WRoNeUaQp8jzrHAHkJ/E5
         gA+/DWLu+WtE1UvaxVyicYTTZcBpS/L5T0STiOV2j6Nna7RYUQ/Fad0tYMe0Qaa6gRqN
         o0bI5Za9Tdm6F70bru7JsfqSHfY9l3nIcKCuVuaWkGMQS2QcIl7qNABcge80xkNRmEio
         I8dGk3GyTZ1Z+E654ngpizIJawZasvkCMMzqg2xhRq2B0aeHfZ44Zm35eRRncdVwRo2L
         IzJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=8voQI7GQWxrx1zGBrUYvIAmkuzt25htpUwrDBfx7skA=;
        b=pD3EflVVgwfHiT4oJ9U383wWNCVAU0oe0DYHUKoYvpNE7Az+PAKi8UxuP5mRTayxtK
         ovz8Dy5/JcIi5tksADJNEdPK0V8F26p+IJ84XXWkuMnYcXYHioK0Wl4L7KVmHn3SzJ0s
         vIGcwxSToOIgCXq6y9FRydQ9NGAsHAxoB7LryqXz47qrk6xlKdNxPpcOfDUOSZ11WrhH
         dI3DVT9hO8fHKc4Av09N8mWQHCeGKp4Uy1YCqzy5adLfO030gsENbRANJJ/LfQnG6719
         bfHRaPdXvzflekbG5zWkKr1hFIa0eZtRv9UyMFbvwA84laeS9MUlc2/YHzctNnXwT5eB
         l3Eg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NGW5yu2t;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id c200si267198pfb.14.2017.09.19.08.40.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Sep 2017 08:40:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NGW5yu2t;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id a7so505855pfj.5
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Sep 2017 08:40:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=8voQI7GQWxrx1zGBrUYvIAmkuzt25htpUwrDBfx7skA=;
        b=NGW5yu2t2I/X7OgWB9EXTxUU8m5XAD+8yvJ4Gv7CNB/WjyFnH4AvWzkQYc2YAz37LP
         55YxiMQ3g8JQtoM7WOYdHtWtrTnTj59delcyBTSqPzLMP25l4slPuNeNvod+Z/F4ON3W
         GjRyEgZJVCx7STgfCos7xZQnCe74vzx5YtA15q0fcrsTi4Xo0euqtvw/OC5/MRCBtpwo
         Nfh7jTClmD/5Jf2dac4ss8V+8HEwiNDXB5wqgF4MNLkC9Nidi4MS9e/L8s1XB6aHbuaQ
         PNu4nxyiG0H0hqMZl4zSS1gQ7kGrzezGu8N99UnDVoaFPcz+2mZEYjnpV2riC6203upV
         jqCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=8voQI7GQWxrx1zGBrUYvIAmkuzt25htpUwrDBfx7skA=;
        b=mCtc8jbFpZJpl1tPjCbiaFwCvdMDgr47dIkzxoQX0zp7LWJHm53RpSBCo7vrcWc9Gl
         VgDdQywf2Dmx0rXeAWsMbpSo0zTeJyVk3OfzXS5IjCblmlEmvbN5T4ZKobhHl7LbxlBu
         9A97JP+9snTTWhPSsfDc/sc/7o1Gbsi5UEDXXSxs66ZWo+cnwaOwNy6pRcKy+jEtcEgZ
         N9+H7QQlMR06FUSiOObZVzUMcxXz9vVaAzdK/QBUztEJ0v2IP3o7mTf5vUE7bMix0XqG
         AM6lkbu9/iGxjrWYISnAg8Rfp8p6MFCxZMn6JL5U0ywKVrW+Rvg/KwoULlAxaGsgrMNn
         v/zA==
X-Gm-Message-State: AHPjjUhYOtscNFoCaPI/lH2kgLU/pm9f49oRA4iSCdzRAYFndCUjIu73
	BlEyg8ykrgIXatputOHnwvI=
X-Google-Smtp-Source: AOwi7QBXgfBDyz0lQ2XEpX/R1JBcGgLOcZhJKgmhWonKJORY0eDkNLmWA9i04zxiL4Y88/mKlgS5nQ==
X-Received: by 10.101.92.130 with SMTP id a2mr1710164pgt.94.1505835638773;
        Tue, 19 Sep 2017 08:40:38 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([2405:204:300f:5ad2:74dd:e91f:361a:e01e])
        by smtp.gmail.com with ESMTPSA id s81sm4728302pfg.162.2017.09.19.08.40.37
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 19 Sep 2017 08:40:38 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 10/12] staging: lustre: llite: fix identation in dir
Date: Tue, 19 Sep 2017 21:09:22 +0530
Message-Id: <a52560fee435ea3dc9cf0ab38d3992c9609b9139.1505834825.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505834825.git.aastha.gupta4104@gmail.com>
References: <cover.1505834825.git.aastha.gupta4104@gmail.com>
In-Reply-To: <cover.1505834825.git.aastha.gupta4104@gmail.com>
References: <cover.1505834825.git.aastha.gupta4104@gmail.com>

This patch fixes identation issue caused by one of the fixes in this
patch.
Have the trailing line of a function call line up with the starting
'('.

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/lustre/lustre/llite/dir.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/dir.c b/drivers/staging/lustre/lustre/llite/dir.c
index e019d9c..b81aab4 100644
--- a/drivers/staging/lustre/lustre/llite/dir.c
+++ b/drivers/staging/lustre/lustre/llite/dir.c
@@ -738,8 +738,8 @@ static int ll_ioc_copy_start(struct super_block *sb, struct hsm_copy *copy)
 			CDEBUG(D_HSM,
 			       "Could not read file data version of " DFID
 			       " (rc = %d). Archive request (%#llx) could not be done.\n",
-				      PFID(&copy->hc_hai.hai_fid), rc,
-				      copy->hc_hai.hai_cookie);
+			       PFID(&copy->hc_hai.hai_fid), rc,
+			       copy->hc_hai.hai_cookie);
 			hpk.hpk_flags |= HP_FLAG_RETRY;
 			/* hpk_errval must be >= 0 */
 			hpk.hpk_errval = -rc;
-- 
2.7.4


