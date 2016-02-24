X-GM-THRID: 6254956091327643648
X-Received: by 10.98.44.87 with SMTP id s84mr38182984pfs.3.1456345452929;
        Wed, 24 Feb 2016 12:24:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.148.68 with SMTP id w65ls213217iod.20.gmail; Wed, 24 Feb
 2016 12:24:11 -0800 (PST)
X-Received: by 10.50.142.72 with SMTP id ru8mr22703081igb.10.1456345451516;
        Wed, 24 Feb 2016 12:24:11 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id 79si699432pft.0.2016.02.24.12.24.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 12:24:11 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id y7so1520478paa.0
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Feb 2016 12:24:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=28S0dNqQE5rwwCcngsIk1JIh0/AigzUFHewQR9xjuJ8=;
        b=uO7LUSKu/RjJme3YnoWS9q2Ug6emP5WfPX2IAPx26EJgMi4YkHL9nPQM9ES5f/wbBh
         7NcuILzoIcVsEuju3LEJBiV4fnndYeO+hzjiz0uimUfs64DIrYps6wwRsU2kdGE2WMHG
         o14q/iqCHS6ELUVE1R3rsprH2pQ0NpNmvr7ra6/5q2jW128Ufet7NVyaZKMc/U5pEsyU
         oA1LhLy44fCmdXCgX2fuBC2UuU4MQKh2oU7dQpI7ieJnlftkQoN/bXnfaYdx5x0cqlDu
         BaySM5XLjLlpd7mSW/hK1uCZlenqUDgJ9b2WA3GlCYAWmkbsZniR598iMk3MDfh+kaZl
         +nBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=28S0dNqQE5rwwCcngsIk1JIh0/AigzUFHewQR9xjuJ8=;
        b=X76ZKSCKLOYsQsMNPoPw0qi2bYOpZ1pEUcUqzTlEXh3NLDQlHGbCGQEmI81ioXdzQI
         6QzrDtwUTGdoi4KMlAA1HUFgD9E8Lg+umRtzSs/TFFOMZiUkeGHWkQxU3maIGGHW+H6f
         G7jOjyziT5HehCdSB4Yv79nZG4M29r+YqKd3Zz1w8y7eF3kgiOkyAL0acfgPJUjURerS
         /9aLdP3LiJbtdiTkX3PozwnIxBWmuDqIEIs01se7KtaCCZyurXUYX0k0I62H0QltjaMR
         aYlvZril40Jy0L8AOGca3enAoIOCJ9QPhCI/msxSE1kqkPgV/ZVliZk8Qimuu6TqWe6w
         BhtA==
X-Gm-Message-State: AG10YOTqZKHhtTI5KeNRt/ashMCeIms+/oqT6rqeKEXEKMkDQZJeNQkoPW9w0xdRg1X5sg==
X-Received: by 10.66.190.131 with SMTP id gq3mr56957606pac.42.1456345451371;
        Wed, 24 Feb 2016 12:24:11 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id r5sm6991392pap.7.2016.02.24.12.24.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 24 Feb 2016 12:24:10 -0800 (PST)
Date: Thu, 25 Feb 2016 01:54:46 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/8] staging: rdma: hfi1: Remove useless return variables
Message-ID: <20160224202445.GA22923@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch removes unnecessary return variables and compresses the
return logic.

The coccinelle script that finds and fixes this issue is:

@@ type T; identifier i,f; constant C; @@
- T i;
...when != i
when strict
( return -C;
|
- i =
+ return
f(...);
- return i;
)

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rdma/hfi1/chip.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/rdma/hfi1/chip.c b/drivers/staging/rdma/hfi1/chip.c
index 02ba78f..46a1830 100644
--- a/drivers/staging/rdma/hfi1/chip.c
+++ b/drivers/staging/rdma/hfi1/chip.c
@@ -1250,11 +1250,8 @@ CNTR_ELEM(#name, \

 u64 read_csr(const struct hfi1_devdata *dd, u32 offset)
 {
-	u64 val;
-
 	if (dd->flags & HFI1_PRESENT) {
-		val = readq((void __iomem *)dd->kregbase + offset);
-		return val;
+		return readq((void __iomem *)dd->kregbase + offset);
 	}
 	return -1;
 }
--
2.1.4


