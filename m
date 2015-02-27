X-GM-THRID: 4799843008512
X-Received: by 10.112.25.7 with SMTP id y7mr2334760lbf.21.1425072430231;
        Fri, 27 Feb 2015 13:27:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.21.130 with SMTP id v2ls180885lae.98.gmail; Fri, 27 Feb
 2015 13:27:09 -0800 (PST)
X-Received: by 10.112.131.106 with SMTP id ol10mr2398360lbb.20.1425072429831;
        Fri, 27 Feb 2015 13:27:09 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id ta1si196269wic.1.2015.02.27.13.27.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 13:27:09 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x229.google.com with SMTP id bs8so3146549wib.4
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 13:27:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=6bcRTD9/eJmjNfd51GLl5lv4EmspLv5YvjcIeAdhitA=;
        b=HO8Q7Osx+4jBOsGtyluhRv6gGBfPlscHsFry6pxeSqGczO8kW3GfdGX9nSJmTNR+8p
         1dZvrn9W2xt6iYFZ/QRTnPQdJZoZmKXJ5CGI8X+M2WdUPT1hm1mXTUsqEJdFLxytLAG/
         nsVOW5xixFMx7C2nQVwul4D8bUJVmWvA6T6kBmDEvdj9T+6mGDo5FZS3Ee3TrBJhKm5v
         rmwTt2M2mFX8gn1BxHndwAA5mTFEWdkexy/lsAsq2ncsZT2rZ3vPZeT+cCyd9+6wgLIa
         oEXykt7Szs2IjkaZ8CDFdG9ONDbb0n6K+G4UnT+JvxP3tK/hN7MVIkJy8DpDZsb5ZfPV
         IpoA==
X-Received: by 10.194.122.232 with SMTP id lv8mr15039266wjb.146.1425072429746;
        Fri, 27 Feb 2015 13:27:09 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([151.250.87.133])
        by mx.google.com with ESMTPSA id k6sm4484266wia.6.2015.02.27.13.27.08
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 13:27:09 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH 3/3] Staging: lustre: Remove spaces at the start of a line
Date: Fri, 27 Feb 2015 23:25:56 +0200
Message-Id: <1425072356-1314-4-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2
In-Reply-To: <1425072356-1314-1-git-send-email-aysemelikeyurtoglu@gmail.com>
References: <1425072356-1314-1-git-send-email-aysemelikeyurtoglu@gmail.com>

WARNING: please, no spaces at the start of a line
That was found by running checkpatch.

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---
 drivers/staging/lustre/lustre/ptlrpc/ptlrpc_internal.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/ptlrpc_internal.h b/drivers/staging/lustre/lustre/ptlrpc/ptlrpc_internal.h
index a66dc3c..d28ce28 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/ptlrpc_internal.h
+++ b/drivers/staging/lustre/lustre/ptlrpc/ptlrpc_internal.h
@@ -222,7 +222,7 @@ struct ptlrpc_nrs_policy *nrs_request_policy(struct ptlrpc_nrs_request *nrq)
  * a separating space character.
  */
 #define LPROCFS_NRS_WR_QUANTUM_MAX_CMD					       \
- sizeof(NRS_LPROCFS_QUANTUM_NAME_REG __stringify(LPROCFS_NRS_QUANTUM_MAX) " "  \
+sizeof(NRS_LPROCFS_QUANTUM_NAME_REG __stringify(LPROCFS_NRS_QUANTUM_MAX) " "  \
 	NRS_LPROCFS_QUANTUM_NAME_HP __stringify(LPROCFS_NRS_QUANTUM_MAX))
 
 /* recovd_thread.c */
-- 
1.8.3.2


