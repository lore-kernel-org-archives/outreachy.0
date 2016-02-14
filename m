X-GM-THRID: 6250932396840976384
X-Received: by 10.182.112.193 with SMTP id is1mr11489011obb.38.1455460070266;
        Sun, 14 Feb 2016 06:27:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.36.210 with SMTP id p76ls707709qgp.17.gmail; Sun, 14 Feb
 2016 06:27:48 -0800 (PST)
X-Received: by 10.31.174.2 with SMTP id x2mr11296881vke.13.1455460068645;
        Sun, 14 Feb 2016 06:27:48 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qk0-x243.google.com (mail-qk0-x243.google.com. [2607:f8b0:400d:c09::243])
        by gmr-mx.google.com with ESMTPS id g136si1737297ywb.5.2016.02.14.06.27.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 06:27:48 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) client-ip=2607:f8b0:400d:c09::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x243.google.com with SMTP id s5so4560546qkd.2
        for <outreachy-kernel@googlegroups.com>; Sun, 14 Feb 2016 06:27:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=/Owahj93d9IcQ5FUPzUWpM4UvSlJz/WllVq9oyS8nqk=;
        b=hLA0d+ALojs3RjafxuOSbn/NxhfuwyARRLK8cPuuWJGvyFoaXEJY/gdRk20QAVfT9W
         sg2Oql4c26pFNWBDDWFNAjWxhVzEqNE+bsdRO/AY+FMXve9m+c9KksjMZVMuhC+pCvvN
         X6TM/Fd+N7i8J/JBCUhFYTpEqdf6cpkZ3LY4TwxP3X6T3opqdXKyx2/lsuF8TSyNP0qm
         eGRtPcmaN02fkeM9udP8VxobDk3TGA8NPHVaccmdk5r56dJwIiIUzNYuPsNOaBF2uYSl
         MS/Vfo9IEOvTS6eI2X/nLi1NCG9BVmGQWk/tLHZjccOcvR3kd/ZLBVgbCNEggXNmrGVv
         JF0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=/Owahj93d9IcQ5FUPzUWpM4UvSlJz/WllVq9oyS8nqk=;
        b=TL00ivXGwpnNMp1YE5ZGKI44gAHJaas02htL5D49Bd1yibsWjUbpF6o/5Df/So3FNY
         5LQ0EqWKB9EZ2//lF/+nwLBEuTTzKPGZJjkmmZg/KuOXYiQLD7pbhxKd5Sqa4ZXojgMF
         rXWqr0QRiYBkEFoApI0IxLy4MTmJmoKagcvne/zrJqdQqGvkjzlthFSvGdwQjETOv6QU
         ZJyYu8lEgfJZDm6eQYf+7fp2CiQ6zghLsl0poZzdIFE39CK5fwc/nuCVejWEq0/zAGI1
         dg5scof3oZi1WHH4/RODnCl1RdpFDcCnjy8rEzRBTQdl9Aruo4yGMQVfmtR6NQNaKlsn
         07Kg==
X-Gm-Message-State: AG10YORHhPEKc2d3pNJ3yTinsJcIJrRAL1NZdTz2b+C10e9KhFFfo2iPbsY6TY6WUCYmAw==
X-Received: by 10.55.52.211 with SMTP id b202mr14690043qka.27.1455460068464;
        Sun, 14 Feb 2016 06:27:48 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id w1sm3159575qha.3.2016.02.14.06.27.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 06:27:47 -0800 (PST)
Date: Sun, 14 Feb 2016 14:27:07 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: wilc1000: Simplify code by eliminating else block
Message-ID: <20160214192707.GA3092@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove else block here as it is not useful after the return statement in
the corresponding if block. This simplifies code. Issue identified by
checkpatch.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
Changes since v2:
 * Eliminated trailing white spaces.

 drivers/staging/wilc1000/host_interface.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 472fd7f..c0e86e1 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -3355,10 +3355,9 @@ static s32 host_int_get_assoc_res_info(struct wilc_vif *vif,
 		*pu32RcvdAssocRespInfoLen = 0;
 		PRINT_ER("Failed to send association response config packet\n");
 		return -EINVAL;
-	} else {
-		*pu32RcvdAssocRespInfoLen = wid.size;
 	}
 
+	*pu32RcvdAssocRespInfoLen = wid.size;
 	return result;
 }
 
-- 
2.5.0


