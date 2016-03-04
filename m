X-GM-THRID: 6258193285963055104
X-Received: by 10.50.61.100 with SMTP id o4mr3496630igr.10.1457099170524;
        Fri, 04 Mar 2016 05:46:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.39.111 with SMTP id u102ls303744qgu.45.gmail; Fri, 04 Mar
 2016 05:46:09 -0800 (PST)
X-Received: by 10.31.160.209 with SMTP id j200mr5787819vke.6.1457099169601;
        Fri, 04 Mar 2016 05:46:09 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x22b.google.com (mail-pf0-x22b.google.com. [2607:f8b0:400e:c00::22b])
        by gmr-mx.google.com with ESMTPS id yd9si1292259pab.1.2016.03.04.05.46.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 04 Mar 2016 05:46:09 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::22b as permitted sender) client-ip=2607:f8b0:400e:c00::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::22b as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22b.google.com with SMTP id x188so12105905pfb.2
        for <outreachy-kernel@googlegroups.com>; Fri, 04 Mar 2016 05:46:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=oqfUtYipQopjZIIdfB2cZn+xU5t+jZWzdxlPgnGNUDU=;
        b=C1ATdXEra3TIiVs2WzOrrp0XB7uamHp27/pUL5UJd/h6hcIwuG9+PmC61BnEhuf19O
         Q5O8MFzPJllJIz56mEhjq5S8eWVekBmnNtdITYba5jGy/AKNl74R4bw1o+RZ1uejsj9a
         6MlMarMi0xszP2aBcABEWBcmrS5SR5wRVDRbHdWv5iK2IHUbgYqg+DNsn89txTQtH1V6
         blHJxcrAxKUQ6vw1HayENJoPLy6yfdx1uhxXaQabdiZ9sSNbsm1gmkxIH47CLPEVv2e6
         FsyuqnE2Xd1wQaXRknalJH0skK4+KhDUaGG5Mi8sseBIo3pZ6ZgUf4iCncVqibLL4EFa
         kjIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=oqfUtYipQopjZIIdfB2cZn+xU5t+jZWzdxlPgnGNUDU=;
        b=dALd9YNfd2Gv/x3/lUu3I7piaTdLLZIMJzN0sxVuP+12tFvn8gA/TkbV4eJQsRoFLB
         WQPbQVtStwqw358o5JI/8oMYeW/orsRbvzJYWm9WcsMq01y/XNE0KtQGP/DxI6dOUGKT
         ATOq7Q8oI7Jd1gJsmoVu9Y9+6vdIf6pRkG/9BXFhYi9+srw4Is6sDsmkgDLsvVlbn9L1
         IEtZ/p0bq8BCAp4X/T2UE5oNFuS8biSz+SNBOxM8GvlH4oTBe82a5ERNluMbGMsmD1az
         8/YcBS+gA0iqd6AaZCShkSbobpUkg44Ysdd+zvUV+8t9nQ0cGV1f9T5HQgX+Ndvg+3Cv
         zy9A==
X-Gm-Message-State: AD7BkJJcr4MH+BCL3Tq+tZ5Ae24ILyokh/dYvzH1ymDBYKf4L6VHbDtNtgAWbNEARui+BQ==
X-Received: by 10.98.93.2 with SMTP id r2mr12253307pfb.64.1457099169423;
        Fri, 04 Mar 2016 05:46:09 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([223.176.129.22])
        by smtp.gmail.com with ESMTPSA id q2sm5803879pfq.88.2016.03.04.05.46.04
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 04 Mar 2016 05:46:08 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Fri, 04 Mar 2016 19:15:58 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: fsl-mc: Replace pr_err with dev_err
Date: Fri,  4 Mar 2016 19:15:55 +0530
Message-Id: <1457099155-3208-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch replaces pr_err calls with dev_err when the device structure
is available as dev_* prints identifying information about the struct device.
Done using coccinelle:

@r exists@
identifier f, s;
identifier x;
position p;
@@
f(...,struct s *x,...) {
<+...
when != x == NULL
\(pr_err@p\|pr_debug@p\|pr_info\)(...);
...+>
}

@r2@
identifier fld2;
identifier r.s;
@@

struct s {
        ...
        struct device *fld2;
        ...
};

@@
identifier r.x,r2.fld2;
position r.p;
@@

(
-pr_err@p
+dev_err
   (
+ &x->fld2,
...)
|
- pr_debug@p
+ dev_dbg
   (
+ &x->fld2,
...)
|
- pr_info@p
+ dev_info
   (
+ &x->fld2,
...)
)

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/fsl-mc/bus/mc-bus.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/fsl-mc/bus/mc-bus.c b/drivers/staging/fsl-mc/bus/mc-bus.c
index 5958e0f..9f77c37b 100644
--- a/drivers/staging/fsl-mc/bus/mc-bus.c
+++ b/drivers/staging/fsl-mc/bus/mc-bus.c
@@ -260,14 +260,15 @@ static int get_dprc_icid(struct fsl_mc_io *mc_io,
 
 	error = dprc_open(mc_io, 0, container_id, &dprc_handle);
 	if (error < 0) {
-		pr_err("dprc_open() failed: %d\n", error);
+		dev_err(&mc_io->dev, "dprc_open() failed: %d\n", error);
 		return error;
 	}
 
 	memset(&attr, 0, sizeof(attr));
 	error = dprc_get_attributes(mc_io, 0, dprc_handle, &attr);
 	if (error < 0) {
-		pr_err("dprc_get_attributes() failed: %d\n", error);
+		dev_err(&mc_io->dev, "dprc_get_attributes() failed: %d\n",
+			error);
 		goto common_cleanup;
 	}
 
-- 
1.9.1


