X-GM-THRID: 6885380935154401280
X-Received: by 2002:a17:902:968a:b029:d5:a3a0:3c43 with SMTP id n10-20020a170902968ab02900d5a3a03c43mr820389plp.70.1603127674431;
        Mon, 19 Oct 2020 10:14:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:8046:: with SMTP id e6ls100662pjw.3.canary-gmail;
 Mon, 19 Oct 2020 10:14:32 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwHiV2V5Vgkm+GrwgvU4xX5VLjWi/FB23riAmIJeeZ2LhNU1Em68kVXKrazZagpXvsY33/8
X-Received: by 2002:a17:90a:9a1:: with SMTP id 30mr392527pjo.85.1603127672648;
        Mon, 19 Oct 2020 10:14:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603127672; cv=none;
        d=google.com; s=arc-20160816;
        b=Sqal9uicrZFSZY/lD+kAYiLDpdZ7nN/p33z/O1n91Nea7ZuoLcxd/21O0l0mSl/E65
         //1W8xaBqaCETx7/+qKDkLqEFU92xplDsr/yXYRBzjHzRMghyM+beprGJJGkZ/4Bt9v6
         rGDxkTSkuLJKAZ5V6I0gUR/i5Po/gIpoWh9x5s/QcV/1lQ0ACj+sryeMSWX3UA74eZql
         jGr+nzL2l6a7t7ilK+jS/wTdbnvdLcTJ1ule94xlRUmPYTHkwmUKDjM6apu7dhnmnuNy
         NeebLXysRC3n+51Cx53M4ZtQexXOTgfWOZxCgCD6YCXyuttoTAtZR6sApVlYbdI6WVEe
         04JA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=bkANpEs/C8LOFqToZsES5TWve3UPNPt07x+5xHrgifg=;
        b=lFIkIyibXbufh1q4KLzyzfKQ+E5QHiFD1qBnp5/HVVmxWHjDWNo5RtGkUsfbVG+ayJ
         9qqAE0KjVpauQn78XThrlntIeeG4BJLpZyZdOv38jo9CWW5VYb5y2kpjaSWfe1t4pXjt
         bJvk5OFJSvMoLLgd36ASEvHgJ6Sscbk0ska0tuZjYv2ISOwMARcIdO1YRHNFsciSPBAF
         hA70Y7q8JqkzoUmuz9BdeUEFhFSjDcA0Eh5QF/V5I+dLj7zN82UQolwSQmc5i3BTtaqx
         nYrwnnO4erbM+9S++Aadik9jS3W7+r1q6Ya9pyQbxt7PndP6CoClkB7NNAlXbRD9T5/T
         miXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iuZJmL8f;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id z15si42693plo.4.2020.10.19.10.14.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Oct 2020 10:14:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iuZJmL8f;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id w11so85837pll.8
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Oct 2020 10:14:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=bkANpEs/C8LOFqToZsES5TWve3UPNPt07x+5xHrgifg=;
        b=iuZJmL8f12rTpKYisLUo36CQVPiHEJaw+af0yaGzAspSM1llm15Jc4h1mTRIU0wT4e
         TlyaXIGFshqnvqpL+9I2D/Tef/SKzCs9gcoSouq5oiNiX303KxczfThIFdK7gAgv7+YE
         J/P1jFcxVluz0ikW/b/WFbH/uaOcZ02uiCuMuOiYq+SfXC/XF6YJKQ6NDwR5jvTAU73S
         Mk6R/dgLC1+NbNMJKUs86jRbDzdeTGAz32pT7eSUuiHhBYI5uOyq1qQWKIGK2Apx/eTN
         upDG9wq0YLndnw52jGqsFW5cEGNxT9FR4ZLSwl4DwYhm19dCWVG0l24WfMtD3T9LOTkk
         6ouA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=bkANpEs/C8LOFqToZsES5TWve3UPNPt07x+5xHrgifg=;
        b=Dj05cg3dzHEtE9FB8fZNCbGhhZceR2UCbuYGwStxMuDTwhWNgf85a0y+mQDLl3c+/u
         uhC6EeHl50eFJuPKia9wl2YkbAXSQ4YFPWcuBt+xCjL4RATzhsvBVFBD34NZoeYswYix
         Tusx8OG1DfE+hC5R9vyNQplfTC83fJekiYZmzxVzn3oAdkZovw0teouEqQDxSW/Fygs+
         I4dQUdwZ+xF31wIIPxfA4qBgHA1UHv/yZXFjibFEefE3X/MnOTWAp8ZzizZhpQrpJEs+
         DkjWI3E6ksYqXLcole08VNC6Ns8QdfHMpzhFn9y8wLPAa89J7uFoQN0EKM+ZkMDttieo
         FSSw==
X-Gm-Message-State: AOAM533yEU4CWYwEpWDxh3tBXaSTENtu1IHmritstIpUWifeDYCcpZ/g
	sANx9O6ovgEYvR/dVOeqVz4ZJctKUMxqsA==
X-Received: by 2002:a17:90a:1704:: with SMTP id z4mr378252pjd.7.1603127671346;
        Mon, 19 Oct 2020 10:14:31 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id j37sm226990pgi.20.2020.10.19.10.14.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Oct 2020 10:14:30 -0700 (PDT)
Date: Mon, 19 Oct 2020 22:44:26 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	devel@driverdev.osuosl.org
Cc: mh12gx2825@gmail.com
Subject: [PATCH v3] staging: comedi: tests: Simplify conditional evaluation
Message-ID: <20201019171426.GA72818@ubuntu204>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Boolean comparison of the condition inside unittest function is
unnecessary and can be simplified by directly using the condition
outcome for evaluation. Issue reported by :
scripts/coccinelle/misc/boolinit.cocci

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
Changes since v2:
   - Update patch subject to include tests tag as well to be more
     informative of the scope of change. Suggested by Ian Abbott.
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


