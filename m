X-GM-THRID: 6254956091327643648
X-Received: by 10.129.131.206 with SMTP id t197mr38959962ywf.50.1456401098482;
        Thu, 25 Feb 2016 03:51:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.126.169 with SMTP id mz9ls155992obb.30.gmail; Thu, 25 Feb
 2016 03:51:37 -0800 (PST)
X-Received: by 10.182.240.137 with SMTP id wa9mr41042062obc.16.1456401097132;
        Thu, 25 Feb 2016 03:51:37 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id 79si1179680pft.0.2016.02.25.03.51.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 03:51:37 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id fl4so2583849pad.2
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 03:51:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=ikEMT+kQLoFluvET9UwK18+ovAUBJyCx1TyiqYqJJwY=;
        b=Z4KaH0kH3s+e3FZPq6FR603xA/ojxLOQsBmVnZBejmZyxOTNgW9hPgDmaKaAVtkPYL
         dW/p6QjWc3LW8u4kSUdVJyRvihK3ArldPoDvHqXMRmLFEZKpI+2ev76DNi9HqN0PWavi
         mc1KEQi6NItmxvoh5Ud+72QbZAGaXTXNN9Ccr4XbOZQmHFPenW8pIAbJyedHBZipOitA
         Z6b/Z0iwjvfzDE/SubpMIKIkEmc8mAgowvCvGzJkh4Tt8fKyX+OTagvisnFLnUPgQBsk
         dqlTnffAViN/AKnWZBTGcG++c5A6egFhU0ozehSSJzN0eHSbXOmvDHKlXGCiuXLgUlxZ
         xZeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=ikEMT+kQLoFluvET9UwK18+ovAUBJyCx1TyiqYqJJwY=;
        b=TU5LMvkpTkZzIpCn3WSDQzzSWuB5DXYzcv8mFa8EYO/J73CiUNpbEsmkxhWsxT/bPQ
         QRP567375DpUl8iy92ddMK6QSHizwRSGwiANMmrj3VzFsUOUJYhLGg9wKysL9KCHoN7z
         CaFhDqHAl1KqZtpihc3jV7JvBeWopHJK5cPXDEeHmTrnel4YIgGPOLgN9qyoj1u10Sdf
         W5L6GCprVykT4HbsvwK3ah0396+Ko6QlBcxrMNbjTtxWjAXy2diHRwvphQ+4k630eBSV
         K8bcW8it3N8gcY2XQaY3BZ8friP8JhwP+4ui1Sg2CdEsJWxVkJSVcNb+hwug7FEKQA5Z
         lYeQ==
X-Gm-Message-State: AG10YOSx50ff+HwVz2CJN83tpaK2gEsngFs/ptSqLE/VpoLkw0SkfilKMKXg7BBwhja9WA==
X-Received: by 10.66.252.73 with SMTP id zq9mr61819836pac.16.1456401096965;
        Thu, 25 Feb 2016 03:51:36 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 87sm11798521pfq.93.2016.02.25.03.51.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 25 Feb 2016 03:51:36 -0800 (PST)
Date: Thu, 25 Feb 2016 17:22:11 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/8] staging: rdma: hfi1: Remove useless return variables
Message-ID: <20160225115211.GA5271@Karyakshetra>
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
 Change in v2:
	-No change

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


