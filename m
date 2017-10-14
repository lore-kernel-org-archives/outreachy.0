X-GM-THRID: 6476692198060457984
X-Received: by 10.80.202.200 with SMTP id f8mr1107311edi.6.1507972413906;
        Sat, 14 Oct 2017 02:13:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.219.194 with SMTP id s2ls3893252edk.5.gmail; Sat, 14 Oct
 2017 02:13:33 -0700 (PDT)
X-Received: by 10.80.167.162 with SMTP id i31mr1110637edc.9.1507972413301;
        Sat, 14 Oct 2017 02:13:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507972413; cv=none;
        d=google.com; s=arc-20160816;
        b=qmCjiBfr5Tqf+XDpbAIpwJ+wxNqtd0Di+e/nEBACLttni/rtJDMEOSscc2a81iHO2A
         33rjEo1vTp8fDWXhW2srmU8/FSuVeIaC1zLuJFu3YwEQnR8ZebDyQKUeZ3kRmR1gO+hb
         my7PQ9ICjIQTz3oY67F3MbegQKUIBEyMGzZPQDKWTjXzdHtTflHlI0Nq8wl0ZWIL/qis
         TXt8lwFAMoS4qymXNvDypJsaSBJ9RlJ5BO0OeiwdkyMUrOWFSu9pOdQ0tY7GxjTY4eNE
         cuCx9g0BRC6zPkzY6XHOEyg+0PXFlOveUkO+L65WmxTBx2q2m7qocswK1l6PMHvF454O
         rhtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=647mPlfeJtRaCdCwAtX5O+7v/W0PILkrZbwImYIqkIQ=;
        b=VQSaAoqvlOn+ssd8D5fhutXc6So7PbJJsDUiraH+vSNRJv6iYOX7/OsSa+Mf46cT2p
         PhkHISIzcUnazqsXUY6lyKUnipAyhMS/+jbIWZoDXlN5+aOBMJHC3R+bXZUkkEoRPHye
         Dfui+ZSW5y/NH1jgJz3Vh5FkaiQpuhotMEnp74hqpyFPXh+gHNIMqHoIDsmpHhTTUKE1
         KPWb9V8MdsiQeIygnTV7naJ+BRxCoIas0pnqQd3fvqBWawGXpRhGYbuAFFAoEjeI1CPf
         oYrHXKO0vTk+8kC+JXf1MyW8pmuS9splxg2Xg6wgbiE3Vxaxh/Pz5F8wouwxsiE48yvS
         ohTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I3jMcOpb;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wr0-x242.google.com (mail-wr0-x242.google.com. [2a00:1450:400c:c0c::242])
        by gmr-mx.google.com with ESMTPS id h23si161945ede.4.2017.10.14.02.13.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Oct 2017 02:13:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) client-ip=2a00:1450:400c:c0c::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I3jMcOpb;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x242.google.com with SMTP id k15so2048178wrc.4
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Oct 2017 02:13:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=647mPlfeJtRaCdCwAtX5O+7v/W0PILkrZbwImYIqkIQ=;
        b=I3jMcOpbSsLjF3HUCKsxXtL7BIdD6hnAFKVotIk03UnJ6EAp+lDBVbszqNam3WlZwW
         mbFUNxsBzd42TkKcMiFquBUqH2OQDjbNoKVdb/xVLQBG9/owWUxQX4KHpYo/MaSELbrw
         qcpDSKSlfIZeTEZ1JOZc5nQYuVs001euBgjdTrDKw81+Zzw1xk+bbvB+Vp8jJadCZHtD
         6m3MVs6tGW63UGvFtiKb5s/fYg7pWFNYZY3VIl3oDTjORsSM0sYJ97vkY9/q+iy9FN9C
         IUYQdhAh9ZXswA6ynanxETcKNXoV6WO+bahhjSCVOuxSRmTx4J602rBcX0pibmdaJc3p
         gCWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=647mPlfeJtRaCdCwAtX5O+7v/W0PILkrZbwImYIqkIQ=;
        b=kNLOpG5Z78tnOpEqeXPRIWx2XzmnCIwM/kYrmnpTMMBQ194wO6/jVMtrw9XNCtbVXZ
         Pdn/pMpgttE3mGP5tpQEayYEbGCxhpJNHW7+h6wNzA2ffBsHMg3SqBDAr2fc4+aSuahg
         c32ZsfZ0CPE/wP30tOl6MvpeOS47eed92AwCyUkMx44TVkbBx2xIO2X85nAx9wperRvf
         VYc82veeDP2ooJb2iIJJAWE3ZxSuMkemavw1ig2pt1a9/DZyzeIMOvAgqHh7j5/uklqb
         YrMFiABlMGy2t7VkoCXH3ybLNeuT9nrV3TXtfIQYGzOBBlbraL0OLYRI1OO9/V8t3A2u
         GSVg==
X-Gm-Message-State: AMCzsaUlEAWmDsEApdq61AdIkaW6x+kqYraIJIsEhy6hlv1i4K4pCbhp
	WB6YDT6Ls4Yk+reaVvJt3+4=
X-Google-Smtp-Source: AOwi7QAQSkrX5bx7fUEP3DVKzUE/D4UIDaTobme6cSRq28mHxIGZYRugCpHcXAHkhoj/X1aho8beew==
X-Received: by 10.223.131.65 with SMTP id 59mr3216378wrd.66.1507972412960;
        Sat, 14 Oct 2017 02:13:32 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.83.158.26])
        by smtp.gmail.com with ESMTPSA id p49sm4228592wrc.61.2017.10.14.02.13.32
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 14 Oct 2017 02:13:32 -0700 (PDT)
Date: Sat, 14 Oct 2017 12:13:31 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eric Anholt <eric@anholt.net>, Stefan Wahren <stefan.wahren@i2se.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: vc04_services: Fix comment block coding style
Message-ID: <20171014091331.GA4156@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove the unnecessary '*' character and align the comment block to fit
the coding style used by linux kernel organization.

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
---
 .../vc04_services/interface/vchiq_arm/vchiq_2835_arm.c   | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
index 1c67e9a..8c808be 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
@@ -377,12 +377,12 @@ cleanup_pagelistinfo(struct vchiq_pagelist_info *pagelistinfo)
 }
 
 /* There is a potential problem with partial cache lines (pages?)
-** at the ends of the block when reading. If the CPU accessed anything in
-** the same line (page?) then it may have pulled old data into the cache,
-** obscuring the new data underneath. We can solve this by transferring the
-** partial cache lines separately, and allowing the ARM to copy into the
-** cached area.
-*/
+ * at the ends of the block when reading. If the CPU accessed anything in
+ * the same line (page?) then it may have pulled old data into the cache,
+ * obscuring the new data underneath. We can solve this by transferring the
+ * partial cache lines separately, and allowing the ARM to copy into the
+ * cached area.
+ */
 
 static struct vchiq_pagelist_info *
 create_pagelist(char __user *buf, size_t count, unsigned short type,
@@ -409,8 +409,8 @@ create_pagelist(char __user *buf, size_t count, unsigned short type,
 			sizeof(struct vchiq_pagelist_info);
 
 	/* Allocate enough storage to hold the page pointers and the page
-	** list
-	*/
+	 * list
+	 */
 	pagelist = dma_zalloc_coherent(g_dev,
 				       pagelist_size,
 				       &dma_addr,
-- 
2.7.4


