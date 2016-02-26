X-GM-THRID: 6254956091327643648
X-Received: by 10.31.9.78 with SMTP id 75mr295380vkj.9.1456478012494;
        Fri, 26 Feb 2016 01:13:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.16.208 with SMTP id 77ls720670ioq.71.gmail; Fri, 26 Feb
 2016 01:13:32 -0800 (PST)
X-Received: by 10.66.148.69 with SMTP id tq5mr314455pab.28.1456478012217;
        Fri, 26 Feb 2016 01:13:32 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id ui7si1825108pab.0.2016.02.26.01.13.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2016 01:13:32 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id yy13so4200023pab.1
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 01:13:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=0yExgio1LBuzsEYKWkNg83t1Y3Hz2zSCb2+whS6qKxk=;
        b=TgpotLzFUUkPZjY0wlR2PXmQCKcvxZ8LHoYnNtGxhgKjK4RbLobcngG/LoTWmjX9X6
         l0deXx22hLQNyAQavIgkdKChU9LCpr9tZZKiHb4RKvw/uQWaA94yzq+7PT2PPUX/UK5N
         nEacP2HF85IFwuYF0ZW/RNdmLOzMy5I4cPR+ySnbt7OsEKwEOfQNC8pVNhgAq/jbU2Tw
         xh9jwzV3/IKtTrPVJaWWuVAJxc68fNj8j+RWn4JSstQ7GBKc8oM5xkraZoKT0Z3/Kdpr
         yQ0MHTFhLF1GezQjIKNnchqVgkUFByQBSpWT6PZWGOxua2fUPUvo1R2Vvxmgm2hiYb+t
         /KBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=0yExgio1LBuzsEYKWkNg83t1Y3Hz2zSCb2+whS6qKxk=;
        b=mnHNb7tb8sPLPKwsD22gwrXryRLOqIWd3NR+l2eTXuFppPtoRLYbeoLTNPBECKzL+d
         O1Ospn0Twp0iItebjrPMxJh7ZfIFsQ879A7dNcMaxS6Rw/kf6meXfbQPbAlbzvOxtZPT
         ONr4JkE9cKvqt48hBoBbQUC9ZpycxluAaqP7A+bjVH5NVFfYJQptX0yntw7tGF39N5O8
         kxW9PmFcgEPeFVXSlbj3pwYbk4B+qJ/56UvhV5A8aTRzVERpJG9SX4Nkb6ixclAbDk7m
         MeZylKf9ovbKRBTrvE2vSpvwNLHHU1BZ+uGadPVfyTYoGz4sLnFVie7jUlVrIQMYZ5nC
         kINA==
X-Gm-Message-State: AD7BkJJZyLvTGmmHRzg4bUfnIAwJeRmFZUrjy347elrjneOly/+wE67K9dfhnF5EXJVKnQ==
X-Received: by 10.66.119.202 with SMTP id kw10mr584352pab.110.1456478012089;
        Fri, 26 Feb 2016 01:13:32 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id ll7sm17755877pab.6.2016.02.26.01.13.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 26 Feb 2016 01:13:31 -0800 (PST)
Date: Fri, 26 Feb 2016 14:44:08 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 1/8] staging: rdma: hfi1: Remove useless return variables
Message-ID: <20160226091408.GA9032@Karyakshetra>
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
 Changes in v3:
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


