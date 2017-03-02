X-GM-THRID: 6391489857245413376
X-Received: by 10.157.23.232 with SMTP id j95mr3871751otj.132.1488419899500;
        Wed, 01 Mar 2017 17:58:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.46.151 with SMTP id u23ls1624272iou.27.gmail; Wed, 01 Mar
 2017 17:58:18 -0800 (PST)
X-Received: by 10.107.57.198 with SMTP id g189mr262550ioa.24.1488419898737;
        Wed, 01 Mar 2017 17:58:18 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id u12si1190073pfd.3.2017.03.01.17.58.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 17:58:18 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id 67so733526pfg.2
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Mar 2017 17:58:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:subject:mime-version:content-disposition
         :user-agent;
        bh=2YUYlFHbdwF6DtiYtMj7EhMcH9FWQDixnngRGGb2xEQ=;
        b=tbu7fkT6S2+b8PO8ZAfJHBQBaVMWER2VX3I0eKKnHvco3jlQndMdgAl+3uM3IoeBGN
         hsIQRf4GEJs0X4LX2w9qWnZOPZZqiD0evI+ofyBnKZ3EPEIPGycyl3rSzOaxr6O0sDvV
         K9Fwn0/+p8HZE71M+AWBGAibduWbPp6qIKOw//WHQ+wOxOLCnrWeCbyYzVT193ivF3Eu
         xOMxZFVW4mkWM6ofzOm1bkls5xPck24ICt0vzX7OTka/LJ4koac5g+4JzUvlxzCmf4VD
         7W782IgCK0JOeeUfYvAP0r2htzgsNjnOydjaLIHYTcwwKT0s4Yosa5DaiMq7DVMBSvs7
         bpDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:subject:mime-version
         :content-disposition:user-agent;
        bh=2YUYlFHbdwF6DtiYtMj7EhMcH9FWQDixnngRGGb2xEQ=;
        b=bGMgTr/ujUOvkSHF6HXl8bPS2A790HhW1qytCgOb8EUI/LspIo3LdmSQCQv3FnhGyy
         FG1N9mQET3+OfJdajyMM0R3RyeDAL/br6nqMOJ6SHzJcw9gPoj0LSALERt51k+plubf1
         qwBmUt+qBYdPeKdRB9uTfKr7ILPoP6Q5fT9dDmG9DV06kFyJpuU4p/ltaqDVEg4aJOCP
         4vtR6qKtSbGNQokgIpb2Za1rUC5YpoNiLB/PgMHAoV3l8VD/akMnCi0x890aMUeWy0C5
         2ZKU+DO70R4N6zQuyC3wdEgNHXSdYxQiXgPXOsiROu+VyjGo6lVjrfNt3QTacvLlKa8L
         DJ/Q==
X-Gm-Message-State: AMke39mVVwQy+C8n+u32gVRYalTzYRU5HB+aHFlquc6fnFBxPkG+pAo12oM1DsxchKQC0A==
X-Received: by 10.98.55.66 with SMTP id e63mr12637541pfa.156.1488419898548;
        Wed, 01 Mar 2017 17:58:18 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.211.102.29])
        by smtp.gmail.com with ESMTPSA id y5sm13004866pgy.28.2017.03.01.17.58.17
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 01 Mar 2017 17:58:17 -0800 (PST)
Message-ID: <58b77c39.0532630a.33e60.bc40@mx.google.com>
X-Google-Original-Message-ID: <20170302015814.GA6338@<rvarsha016@gmail.com>>
Date: Thu, 2 Mar 2017 07:28:14 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	gregkh@linuxfoundation.org
Subject: [PATCH v4] staging: emxx_udc: Add comment for spinlock_t definition.
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.1 (2016-10-04)

The nbu2ss_udc structure is used to perform various usb device
operations. It is important to protect the members as they can make
system calls. Lock variable of type spinlock_t, is used to provide
protection by using various spinlock functions.

In this patch, comment is added for spinlock_t definition, to fix the
following checkpatch issue:

CHECK: spinlock_t definition without comment

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
Changes in v2:
-Modified commit message.

Changes in v3:
-Modified commit message.

Changes in v4:
-Added proper version number.

 drivers/staging/emxx_udc/emxx_udc.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.h b/drivers/staging/emxx_udc/emxx_udc.h
index 789bfb9..78c08e1 100644
--- a/drivers/staging/emxx_udc/emxx_udc.h
+++ b/drivers/staging/emxx_udc/emxx_udc.h
@@ -567,7 +567,7 @@ struct nbu2ss_udc {
 	struct usb_gadget_driver *driver;
 	struct platform_device *pdev;
 	struct device *dev;
-	spinlock_t lock;
+	spinlock_t lock; /* Protects nbu2ss_udc structure fields */
 	struct completion		*pdone;
 
 	enum ep0_state			ep0state;
-- 
2.9.3


