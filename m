X-GM-THRID: 6259001811935428608
X-Received: by 10.129.153.84 with SMTP id q81mr9459347ywg.58.1457287420956;
        Sun, 06 Mar 2016 10:03:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.30.166 with SMTP id t6ls725232igh.20.canary; Sun, 06 Mar
 2016 10:03:40 -0800 (PST)
X-Received: by 10.50.154.2 with SMTP id vk2mr7213064igb.9.1457287420579;
        Sun, 06 Mar 2016 10:03:40 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id 12si2438040pfb.1.2016.03.06.10.03.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Mar 2016 10:03:40 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id hj7so6334044pac.1
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Mar 2016 10:03:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=oZ7GFF8+82EYdvWBrUatnRKuEPyCb8vooCC6M18FQ1U=;
        b=XuRnfd1dFEX4tVIvIblZ4CyHyTD1xe089lvRsUwJEJ+aIjv5hhQ/kwPjJWu7ZfrQ1A
         JRif44apAUjN5cNpNpzkkaX/LgB8mnd+Q6/ocZ2/9CClAyOmY29WOgz9hB9td9f1I9Uk
         JOpGsc2ucYW9ZtKvNwcMAs3/zUFpdZbiv49Kh8tH32/jtKXc0wDEosphq0gU+clnMO2e
         5CZkIljUuaum9skjvexniL7YWl3ULCSmpp+SWC10RkH2UfEwPzFOLODLwNljObhbjGZV
         Mz5gUNNNTboFApZKPtY/JnEm9EKInJoK+T2vl9gXQg/8zbLts9FHSsxCRUu7xye3l2EE
         usiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=oZ7GFF8+82EYdvWBrUatnRKuEPyCb8vooCC6M18FQ1U=;
        b=UKw9yBE4TMBLVM/19Ub/XuLi4PFtdRdaJP0NgMqBUmqOJrjGg7HgcxfV8VQjvRDgCe
         shdnro0yKvJwZzQ9IAEGa7pHwf2kedxgbAuLAyCf1UBMwozEFIhu8asVqi1mAWdcrrtl
         0Di35EQHb9Rg1y/6OPV7GC9fFh4uahajqr6ZH0YVQhvLFBxe0iI7gL1ZKlHuheRZ7urF
         6UFZzKX2cE19qwAY9ooh4PgaHg6NqooDc6surAR8iCLKyVZOpiKP1H3oWyXVFd4ARUkN
         0QkY295F2f3HpI3B47P/9Xpqrl+MsfkfOWqgqRVBx0KOExsHGwwnDnW1CSes4rsb4AIv
         7xXw==
X-Gm-Message-State: AD7BkJIGnCXS68nfCmCg8BlkE10LoJG6kWHdTFS3UAwL5hNkjpTJSBDrGJq/vt71IyBKOw==
X-Received: by 10.66.246.234 with SMTP id xz10mr27732585pac.49.1457287420397;
        Sun, 06 Mar 2016 10:03:40 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.154])
        by smtp.gmail.com with ESMTPSA id f66sm18989934pff.8.2016.03.06.10.03.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 06 Mar 2016 10:03:40 -0800 (PST)
Date: Sun, 6 Mar 2016 15:33:31 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: rtl8712: Avoid multiple assignments.
Message-ID: <20160306100235.GA3971@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Avoid multiple assignments.This isssue is found by checkpatch.pl script.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
Changes in v2:
* No change.
*Compile this patch to check nothing is broken.

 drivers/staging/rtl8712/recv_linux.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/recv_linux.c b/drivers/staging/rtl8712/recv_linux.c
index 2f5460d..28a6360 100644
--- a/drivers/staging/rtl8712/recv_linux.c
+++ b/drivers/staging/rtl8712/recv_linux.c
@@ -44,7 +44,8 @@
 int r8712_os_recv_resource_alloc(struct _adapter *padapter,
 				 union recv_frame *precvframe)
 {
-	precvframe->u.hdr.pkt_newalloc = precvframe->u.hdr.pkt = NULL;
+	precvframe->u.hdr.pkt_newalloc = NULL;
+	precvframe->u.hdr.pkt = NULL;
 	return _SUCCESS;
 }
 
-- 
1.8.3.4


