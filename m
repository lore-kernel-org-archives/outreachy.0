X-GM-THRID: 6805840770446131200
X-Received: by 2002:a2e:9949:: with SMTP id r9mr1555882ljj.135.1584608287290;
        Thu, 19 Mar 2020 01:58:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:95c8:: with SMTP id y8ls360092ljh.2.gmail; Thu, 19 Mar
 2020 01:58:06 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsMk+p+jXyDiuCh49aPVGFOITXroFZCU6lA4Nd4uqTdZSEblD5PAEUJApzJ320tFcsN77V7
X-Received: by 2002:a2e:914b:: with SMTP id q11mr1490287ljg.235.1584608286062;
        Thu, 19 Mar 2020 01:58:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584608286; cv=none;
        d=google.com; s=arc-20160816;
        b=N4zTXBsqYZtMUYoYe807ncezltGa//hL34MQuQZBLL7rjizr1Y4v0Gc/dKX8RfBY2O
         GMO60PjwRLvbpj2EHZ1U4LbYsTfsQ7dTjgoDJ9yUSl9daforHAbjNTqDjvotjeXIpPSY
         XvFMpYRiH7YEkrWKZSH5+CKEZjHfGE/xfpWx7dvmfqIKdDAfR0E6u1vZ3GdkuWZexRsn
         TZuh6RDTo17si9QlpFCcSs35XK8nZrp+YEfSbg39HVURW0VfaWspBxRqbdM7qG8xeT6v
         tN56/ADKxktTwkdB5kIWnLt55zIK+uXrEifiCFbgguOr95OLSPzyz27UQU/zWe+5q5T8
         cMjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=ni/gLeHfH1Idcr+r6m+1e3Dr/P0UAqZL+LFosjPr4co=;
        b=Zr2RGkw4R6YDeB7bNQnJWS0axUB3z6Oz+opCGg4loujiFK1fRPVvFCmEMcOj8uHG70
         KMS7+gwC6jbZCo6k7txnIrKun8ws7X1cClDJDM+bGXFvR3KZEUI1lkwf5aUepcIotf1+
         W+gGHvqE+eB1t0RklXjJl4WASBpA+wO3wW0ZF9+j53lIp/sfjd6TIOozk3enBInLjOOo
         XjB4XTRl4RxJUys7Ttlx3xMkrUUrhzosxuUCgw2mDGAxC9eDov+D7phJmcVJA6LnjYOk
         ezuMGSUHbuWJRKgrNoCh1JQ9QXbRcUJLqkmpBAUoR0u78gEbQVonvvR2HFPpOGlvHW5m
         1kSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id m11si60902ljj.2.2020.03.19.01.58.05
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 01:58:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 26275 invoked from network); 19 Mar 2020 08:58:04 -0000
Received: from unknown (HELO tulip.local) (vkor@vkten.in@117.202.245.105)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 08:58:04 -0000
Date: Thu, 19 Mar 2020 14:27:57 +0530
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: David Kershner <david.kershner@unisys.com>
Subject: [PATCH v2] staging: unisys: Documentation: Correct a long line in doc
Message-ID: <20200319085751.GA1928@tulip.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)

Correct a long line in documentation to respect the
80 character line limit.
Found using checkpatch.pl.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
Changes in v2:
 - Removed the typo change as it was incorrect
 - Correct the subject line for the changes
 - Correct the description as well
---
 drivers/staging/unisys/Documentation/overview.txt | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/unisys/Documentation/overview.txt b/drivers/staging/unisys/Documentation/overview.txt
index f8a4144b239c..cf29f884cbe0 100644
--- a/drivers/staging/unisys/Documentation/overview.txt
+++ b/drivers/staging/unisys/Documentation/overview.txt
@@ -15,12 +15,12 @@ normally be unsharable, specifically:
 * visorinput - keyboard and mouse
 
 These drivers conform to the standard Linux bus/device model described
-within Documentation/driver-api/driver-model/, and utilize a driver named visorbus to
-present the virtual busses involved. Drivers in the 'visor*' driver set are
-commonly referred to as "guest drivers" or "client drivers".  All drivers
-except visorbus expose a device of a specific usable class to the Linux guest
-environment (e.g., block, network, or input), and are collectively referred
-to as "function drivers".
+within Documentation/driver-api/driver-model/, and utilize a driver named
+visorbus to present the virtual busses involved. Drivers in the 'visor*'
+driver set are commonly referred to as "guest drivers" or "client drivers".
+All drivers except visorbus expose a device of a specific usable class to the
+Linux guest environment (e.g., block, network, or input), and are collectively
+referred to as "function drivers".
 
 The back-end for each device is owned and managed by a small,
 single-purpose service partition in the s-Par firmware, which communicates
-- 
2.20.1


