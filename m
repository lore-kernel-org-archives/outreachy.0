X-GM-THRID: 6210976897609760768
X-Received: by 10.129.72.83 with SMTP id v80mr251488ywa.11.1446105911959;
        Thu, 29 Oct 2015 01:05:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.34.106 with SMTP id k97ls289212qgk.48.gmail; Thu, 29 Oct
 2015 01:05:10 -0700 (PDT)
X-Received: by 10.13.203.76 with SMTP id n73mr258053ywd.15.1446105910539;
        Thu, 29 Oct 2015 01:05:10 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id pe1si29364pac.2.2015.10.29.01.05.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 01:05:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id hy1so27603640pad.0
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2015 01:05:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=ioIlwqUwV9Vg3qt3cjXpMxeJXjFnAX7GNH41FuezwmQ=;
        b=i9CrLF31dkuoelga8Vy2hxr30nxZmsDspPQPrkH7ezoXkgZZH+S4nh31HYam9mrvnJ
         qWBkc1JdQPwFPvleXE4J2Rj7QV/BVaK8O6LlCUoANxuTaszxKsVA/FsOS1ut6KpQeEuI
         tqiDlkJS7XzjpyUu5QpkBW7vCDZDCUWv9enl4aJ48if6WGGWn4H6Tymvl2de+kp7CT7K
         mGkdy9DLAvupzKthX/GEIuOzJA82m5HkvuuX9cttcnGft79XQbo811ShCaUqd2hA8tFF
         EyotTLOhavsOSt+Uv/3JLCtxAmydFUt9PGoL4Xe87mZJQnW963TGnfnh2VB2aUKL/fQj
         QXgg==
X-Received: by 10.66.121.199 with SMTP id lm7mr527097pab.30.1446105910376;
        Thu, 29 Oct 2015 01:05:10 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.166.247])
        by smtp.gmail.com with ESMTPSA id u10sm660925pbs.63.2015.10.29.01.05.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 29 Oct 2015 01:05:10 -0700 (PDT)
Date: Thu, 29 Oct 2015 13:35:06 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/3] staging: rdma: hfi1: Remove unnecessary variable
Message-ID: <06b6a5b76cc619aa5d7862a43fa9a9a0f5f7c8b3.1446105494.git.amitoj1606@gmail.com>
References: <cover.1446105494.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1446105494.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Drop unnecessary variable that can be replaced by a single line of
code.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rdma/hfi1/qsfp.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rdma/hfi1/qsfp.c b/drivers/staging/rdma/hfi1/qsfp.c
index 3138936..8d7c959 100644
--- a/drivers/staging/rdma/hfi1/qsfp.c
+++ b/drivers/staging/rdma/hfi1/qsfp.c
@@ -480,7 +480,7 @@ int qsfp_dump(struct hfi1_pportdata *ppd, char *buf, int len)
 	u8 *cache = &ppd->qsfp_info.cache[0];
 	u8 bin_buff[QSFP_DUMP_CHUNK];
 	char lenstr[6];
-	int sofar, ret;
+	int sofar;
 	int bidx = 0;
 	u8 *atten = &cache[QSFP_ATTEN_OFFS];
 	u8 *vendor_oui = &cache[QSFP_VOUI_OFFS];
@@ -541,6 +541,5 @@ int qsfp_dump(struct hfi1_pportdata *ppd, char *buf, int len)
 			bidx += QSFP_DUMP_CHUNK;
 		}
 	}
-	ret = sofar;
-	return ret;
+	return sofar;
 }
-- 
1.9.1


