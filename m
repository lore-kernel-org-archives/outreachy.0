X-GM-THRID: 6256312431836921856
X-Received: by 10.66.163.4 with SMTP id ye4mr8713937pab.23.1456661250738;
        Sun, 28 Feb 2016 04:07:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.21.47 with SMTP id 44ls1786254qgk.90.gmail; Sun, 28 Feb
 2016 04:07:30 -0800 (PST)
X-Received: by 10.13.227.133 with SMTP id m127mr8288937ywe.1.1456661250112;
        Sun, 28 Feb 2016 04:07:30 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id yd9si2980672pab.1.2016.02.28.04.07.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 04:07:30 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x229.google.com with SMTP id yy13so76031378pab.3
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 04:07:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=gublbALpsnYXauwmIAGyjNe7Bdi0DYsO+ADz0zG+sCg=;
        b=J8JBOmHcxmncbbT+xALUdHV/pwYphrTx1rXUygzxLGUKkduRdguh2bL+pnY7+xRwgI
         9bvMfu2EoTYCAyVZuzziljc1g5DeX3/1rYoUuWHyzFoWH0nEAGrS5ar2x8YfTsj6bmwH
         TvWwpIHMNFtEv4L8JErnf69iW9VMXtpjexf5zEXTmIkbqw0MbHxxbljBcwB84FBf6PGO
         EejFbicBGazhKy5hg9X8V1hBBggBJVk6oGsPDiET/CLWas8MEuldIILisai7yTAEMLQU
         NYiKxOsyfxzvruG6RmvbEdetLSMr4UQk2rThrdBcCQS+tRKiu+QhKDlaKzs5DK/oEHRX
         z62g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=gublbALpsnYXauwmIAGyjNe7Bdi0DYsO+ADz0zG+sCg=;
        b=MmDFfq30ja5SmBhfEVIoVkvdJIjQULvmuVFwEgBNwv0a8JOPOjZUdWPoBQxwy9qwVv
         xRVByhCy/Al/h5yYr8yZX+X9XGJEfXML1wwAAoVNR91I/t/ADu5gMez4dwEbwZccSNjB
         GyLe15rHWe8WI0D5RjhjXY1jK7307WPPF5fFO1qCLH7MGW7PXYS7hHoCbMh/s6JcubdG
         POMeug6iXp39DMhomDcpf9XxXPNO0F9Dc4zWubZgOJOrqlAOF/UCvhDPgZ1WMIFBHbm6
         igCVgNdyklW07m5SRf1IBLvhAqS+XMVyeXn9Gltkfj1iXs0Fz+kEjA23g50BKnHQUx0F
         izhw==
X-Gm-Message-State: AD7BkJJC7UywSvYUtkAeWk0lEytvwDElN7c7q8ilrYKSILHUREkEn+/5cxeKUnfnKxFOBg==
X-Received: by 10.66.244.233 with SMTP id xj9mr14874245pac.19.1456661249952;
        Sun, 28 Feb 2016 04:07:29 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id u84sm31080653pfa.57.2016.02.28.04.07.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 28 Feb 2016 04:07:29 -0800 (PST)
Date: Sun, 28 Feb 2016 17:34:41 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rdma: hfi1: Remove unused variables
Message-ID: <20160228120441.GA16843@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

The variable csr has not been used anywhere in the function
sdma_dumpstate(). Hence, it has been removed.

This was done with Coccinelle:

@@ type T; identifier i; constant c; @@
-T i;
<... when != i
-i = c;
...>

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rdma/hfi1/sdma.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rdma/hfi1/sdma.c b/drivers/staging/rdma/hfi1/sdma.c
index 9a15f1f..2b2af94 100644
--- a/drivers/staging/rdma/hfi1/sdma.c
+++ b/drivers/staging/rdma/hfi1/sdma.c
@@ -1769,7 +1769,6 @@ static void init_sdma_regs(

 void sdma_dumpstate(struct sdma_engine *sde)
 {
-	u64 csr;
 	unsigned i;

 	sdma_dumpstate_helper(SD(CTRL));
--
2.1.4


