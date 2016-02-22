X-GM-THRID: 6254092556531924992
X-Received: by 10.129.79.21 with SMTP id d21mr27386914ywb.46.1456144395231;
        Mon, 22 Feb 2016 04:33:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.79.71 with SMTP id h7ls796098obx.2.gmail; Mon, 22 Feb 2016
 04:33:14 -0800 (PST)
X-Received: by 10.182.250.233 with SMTP id zf9mr26913445obc.5.1456144394815;
        Mon, 22 Feb 2016 04:33:14 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id 79si3050276pft.0.2016.02.22.04.33.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 04:33:14 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x235.google.com with SMTP id yy13so90621923pab.3
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 04:33:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=+tEn0cdQILJV1KPycIIkY4TeSbRf3HytWXZVt0ymQWk=;
        b=o1zSouT5f5kq2RxLQvqNl0apipD43ziGWGQnhuM6di1NMPrEdQS0XBiQ43OjrglJL9
         Q31eqkeb/pLGD4qm21zEfxF/+g1BfToGnPmSUJBA3Dg/YKUINgIfAG+pTHaHQkiAsoRm
         050FONWG9+QKw5nbHCnXKClJGOiMM4aUYGNdWL1cpxMbxJ0SIsQsPV1dQsX6Pduf4lpx
         BmMRh8KR6MkQxweHOw7E+IudKb7Xm2oILO0b5kIEQtdarINIivCrgzmh69yikMRdeOHC
         Dj7gicbF79cZVuDk1bGNik1HP46/HGmvl4Nsa06/YpxIYfD1l1w2eAbITjL2r1xZHQQY
         usHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=+tEn0cdQILJV1KPycIIkY4TeSbRf3HytWXZVt0ymQWk=;
        b=bCNxzLSQF/7cWS4UJVhru5zqFUFqztS1UpA7L2An/6G4wwr5oq/RMBl5zLNHl1905J
         xeSKyh2Qqf4o7ARJNevbOHiom6NmMSSRBBfGB3dYTZFKMfOVTfMYrt88kZZg+RynmiOs
         qj7Apu/exDo4qJbe3QN9iJ157adN2qPK08pjlQoDGv8xaA9x+lFnm0cUX9uMjB4PKyXC
         O/SlD7iTCtluDi9xNJRsQ7M7X+j5h7r9IawZeWKhmSHcTzoDLiMXTGkzTbicijh0KXYE
         AogAc12Cklb+sPjZrq/lBILORG2IWZN+hHGDsilhU4k1RYOFN0D7o5pD0dfPFMhU+5Al
         hLmg==
X-Gm-Message-State: AG10YOR24oEK/naom/fZsXNDgd4+UL0tlb8Ar3jl0A4Mudq5V99dbumpXKPIjtKJkt5BnA==
X-Received: by 10.66.220.7 with SMTP id ps7mr38033459pac.58.1456144394641;
        Mon, 22 Feb 2016 04:33:14 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.106.39])
        by smtp.gmail.com with ESMTPSA id d8sm36929608pas.14.2016.02.22.04.33.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 22 Feb 2016 04:33:14 -0800 (PST)
Date: Mon, 22 Feb 2016 18:02:59 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: obdclass: Replace simple_strtoul with
 kstrtoul
Message-ID: <20160222123259.GA24119@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace obsolete simple_strtoul with kstrtoul.
The Coccinelle semantic patch used to make this change is as follows:

// <smpl>
@@
unsigned long l;
expression e,f,g;
@@
- l = simple_strtoul(e, &f, g)
+ kstrtoul(e, g, &l)
// </smpl>

Additionally, since kstrtoul returns 0 on success and an error code on
failure, introduced `err` variable to store and return the error code.
This change was made by hand.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/lustre/lustre/obdclass/lprocfs_status.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
index 16b1c70..0abf941 100644
--- a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
+++ b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
@@ -343,12 +343,15 @@ int lprocfs_wr_uint(struct file *file, const char __user *buffer,
 	unsigned *p = data;
 	char dummy[MAX_STRING_SIZE + 1], *end;
 	unsigned long tmp;
+	int err;
 
 	dummy[MAX_STRING_SIZE] = '\0';
 	if (copy_from_user(dummy, buffer, MAX_STRING_SIZE))
 		return -EFAULT;
 
-	tmp = simple_strtoul(dummy, &end, 0);
+	err = kstrtoul(dummy, 0, &tmp);
+	if (err)
+		return err;
 	if (dummy == end)
 		return -EINVAL;
 
-- 
1.9.1


