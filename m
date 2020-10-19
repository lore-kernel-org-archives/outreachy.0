X-GM-THRID: 6885049612383551488
X-Received: by 2002:ac8:2c21:: with SMTP id d30mr15248038qta.156.1603118719134;
        Mon, 19 Oct 2020 07:45:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ae9:efcc:: with SMTP id d195ls11151qkg.10.gmail; Mon, 19 Oct
 2020 07:45:17 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwlbi+ztzVWrPOl4RN2tfRvFgeDy+jbf3gENIPfEiMbGuTyMdYcSjvPA+ImqilhmPmdzV43
X-Received: by 2002:a37:6313:: with SMTP id x19mr16894452qkb.129.1603118717446;
        Mon, 19 Oct 2020 07:45:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603118717; cv=none;
        d=google.com; s=arc-20160816;
        b=i3N86WpJXA9q0lyJPKoOp3qRKUXsNIs663zh6BFcgPpjl3HhXaS9+PZ8soHLWfMR/t
         vtsSLSWOC2EFfI6vAy0vux6Ugo6zcVB0vjsAoKmzordGBFBy6zWo9moFVg3Tbh5rBxqT
         efGLeqx6gvrNAli0pHNXRzppLyUDm5unwS3TRFmlwVlwwEAY5hNVhtaW1JTSdCH2zYYV
         dW+5JdfJXHM2mJH0vOqIlrdM7+hhRHbKW2ikTEWDnjjc9aVq8XsHzeivZvI9jucBTEVo
         sMq1mC2MYEnWSupsJzuaHksALps0Un2U/z5zWwrdVLxh6t+e8KB77G7v9x4+fXQWTcyn
         wdRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=+38x8TDtAWjRMllwwY+FGBxUISgfVIF5BfqY05A7vYM=;
        b=dYVsNkf3xnoNPugBjxyoErjBIov/BgbKTbZVvZQ/G07syWng37LiGZu6sqdkPJ/8Im
         Hce0FuBBsNSqdrZb5q9MSPfx6qTrUpqWX9DU0BVe/cQ84gfgiSgy+zmjzhLaZbk6CzAz
         aPxe3VUh/9WmG2jj3REqCJe06jSRD9/fAG9yVh8urrBhv7JVQAiK/dWgR/aPCn1rhZxs
         thiPjCEOOWUQ1G7H8yyJJKva7cPejLlZNr/KERkDa3fBnySE7Up5PtIDwSyOMqxje5Xe
         Cpv2Yl5ss1ArLP837Y3ivD/VvLGnq3sV2oBWtfEC8CD0QBVeG2RBKzORaVlFreckkI9N
         Adpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nX3H+12u;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id r40si3245qte.5.2020.10.19.07.45.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Oct 2020 07:45:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nX3H+12u;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id w11so5079685pll.8
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Oct 2020 07:45:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=+38x8TDtAWjRMllwwY+FGBxUISgfVIF5BfqY05A7vYM=;
        b=nX3H+12uDtFlvGXTVgpeWDsY4D9bE3X8KJ0PeW2pPyBo1i8ehnI2LN9mKXk4XTikmm
         tayb2i8VqSvmntHOuZ1y3uTdo5/6EBXxkNlW1uGsn+uuF1zUKuBJkYQbRcRM/jWbUmPK
         W0ZOzNp+RlB7DGSHKpg48ce7Uox2lvT7+4CvN49naY38QGgiHTHNgK8QVkydnm3y+6Yo
         0WLTb4Uhkqdw4o/2W8Y23bs6pN0AfAJQv5c8UcFxamJH/cJeKscRnjt91Z9JLUDzJZTz
         nlBAcEA+M9Z/uvMNmxVWNIzZOVExUnCHgC9oXlHoBMdxr2Favh6eoBpuIR6HCQjThQq7
         BPLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=+38x8TDtAWjRMllwwY+FGBxUISgfVIF5BfqY05A7vYM=;
        b=dZORWlCybUUbNKRLGLMfSr/qB4i6p7DroH/WaWCYI0OzA2CnGQGrupuho+RlewNa/d
         69slhD+urGWBjbk3fftWm3GJybv26wxnU4AMUWRAcaBL9oDi8LHhNykAAKYON4CWFXWk
         XcYxfkepuqvKwYc+5aUvCqL+E1eyttMAPCkJsFZIEf+MecGn1+7cSCNaHG+/zGPjDCZX
         8uMP5n/IYxc3qWYF7wxesedWNZlQibxS7PKsz1X+p7yxBdFdtOOzN6S9Io+noGb4ghk8
         ZWUOsNiSsuBCnKp5WcPFWmip9zeRWvjzB+tydRl7c3vh2XKM1kdgTYZJ/uZmCtFLBm9B
         BnRQ==
X-Gm-Message-State: AOAM53196YBg/lPY7CEC/KZmTvUHUDkIpyMZ6GvvfoVXWjSkkw4oG9dO
	g7sh8eo2hl1DpxCJBm7ZPl7DNb2HJCboIg==
X-Received: by 2002:a17:90a:ae12:: with SMTP id t18mr96964pjq.147.1603118716422;
        Mon, 19 Oct 2020 07:45:16 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id mn11sm76946pjb.19.2020.10.19.07.45.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Oct 2020 07:45:15 -0700 (PDT)
Date: Mon, 19 Oct 2020 20:15:09 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	devel@driverdev.osuosl.org
Cc: mh12gx2825@gmail.com
Subject: [PATCH v2] staging: comedi: Simplify conditional evaluation
Message-ID: <20201019144509.GA23282@ubuntu204>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Boolean comparison of the condition inside unittest function is
unnecessary and can be simplified by directly using the condition
outcome for evaluation. Issue reported by :
scripts/coccinelle/misc/boolinit.cocci

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---

Changes since v1:
   - Corrected wrongly inverted tests. Feedback from Ian Abbott.
   - Note:
       This patch was sent earlier as part of a patch set containing 2
       patches. The second patch of the patch set is dropped. Hence
       sending this standalone patch as v2 version. This is based on the
       feedback from Ian Abbott and Julia L.

 drivers/staging/comedi/drivers/tests/ni_routes_test.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/comedi/drivers/tests/ni_routes_test.c b/drivers/staging/comedi/drivers/tests/ni_routes_test.c
index eaefaf596a37..4061b3b5f8e9 100644
--- a/drivers/staging/comedi/drivers/tests/ni_routes_test.c
+++ b/drivers/staging/comedi/drivers/tests/ni_routes_test.c
@@ -499,13 +499,13 @@ void test_route_register_is_valid(void)
 	const struct ni_route_tables *T = &private.routing_tables;
 
 	init_pci_fake();
-	unittest(route_register_is_valid(4, O(4), T) == false,
+	unittest(!route_register_is_valid(4, O(4), T),
 		 "check for bad source 4-->4\n");
-	unittest(route_register_is_valid(0, O(1), T) == true,
+	unittest(route_register_is_valid(0, O(1), T),
 		 "find first source\n");
-	unittest(route_register_is_valid(4, O(6), T) == true,
+	unittest(route_register_is_valid(4, O(6), T),
 		 "find middle source\n");
-	unittest(route_register_is_valid(9, O(8), T) == true,
+	unittest(route_register_is_valid(9, O(8), T),
 		 "find last source");
 }
 
-- 
2.25.1


