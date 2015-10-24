X-GM-THRID: 6209254624139935744
X-Received: by 10.140.196.76 with SMTP id r73mr22300316qha.3.1445704750623;
        Sat, 24 Oct 2015 09:39:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.46.99 with SMTP id j90ls2822631qga.4.gmail; Sat, 24 Oct
 2015 09:39:10 -0700 (PDT)
X-Received: by 10.129.39.65 with SMTP id n62mr16132123ywn.13.1445704750013;
        Sat, 24 Oct 2015 09:39:10 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id el2si2818188pbb.0.2015.10.24.09.39.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Oct 2015 09:39:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pacfv9 with SMTP id fv9so152002322pac.3
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Oct 2015 09:39:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=j+g8/JYxGNB10XiNk+c2oz674d8T0MK42GpSqAslQcc=;
        b=mXVFp1WS627M1dDsQbiv8B8iJVZJ4BkyR1b820SHp8t4l/rspiHY138aDWg8YovO1H
         15MRn4n9vLPKMigXDbes+5dVWbUaM+ofOu8y9L3RYylWJDDzxl5DIEeLQDzZi9we5jiW
         b13Sqr7eN/ErdcItCCxOPaNJ3wEAx49ZjAkblcuXDgh7JEUCskHFY5HbBY9voWb/4ZX+
         8cs7iODX7Ej+zjneM8TsTzjRG15Xswx26yT1flqwF05oRNTkOSbI0QxGLkGKjLDQRmhK
         ojZdMEpBngWcqCzm9Ob4+L6auRyMkHaR59dHbH+BUXA9NaDWFI2yMEIB6oWxehTAZkh4
         vzRg==
X-Received: by 10.66.233.36 with SMTP id tt4mr2611511pac.24.1445704749800;
        Sat, 24 Oct 2015 09:39:09 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.222.180])
        by smtp.gmail.com with ESMTPSA id fb1sm25032986pab.9.2015.10.24.09.39.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 24 Oct 2015 09:39:09 -0700 (PDT)
Date: Sat, 24 Oct 2015 22:09:05 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rdma: amso1100: Drop unnecessary goto
Message-ID: <20151024163905.GA13470@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Deletes the jump to a label on the next line when the label isn't used
anywhere else.

The semantic patch used to find this is:

// <smpl>
@r@
identifier l;
@@

-if (...) goto l;
-l:
// </smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rdma/amso1100/c2_cm.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/rdma/amso1100/c2_cm.c b/drivers/staging/rdma/amso1100/c2_cm.c
index 23bfa94..f8dbdb9 100644
--- a/drivers/staging/rdma/amso1100/c2_cm.c
+++ b/drivers/staging/rdma/amso1100/c2_cm.c
@@ -278,10 +278,7 @@ int c2_llp_service_destroy(struct iw_cm_id *cm_id)
 		err = -ENOMEM;
 		goto bail0;
 	}
-	if ((err = c2_errno(reply)) != 0)
-		goto bail1;
 
- bail1:
 	vq_repbuf_free(c2dev, reply);
  bail0:
 	vq_req_free(c2dev, vq_req);
-- 
1.9.1


