X-GM-THRID: 6330646891713265664
X-Received: by 10.107.12.216 with SMTP id 85mr8233516iom.24.1473968590368;
        Thu, 15 Sep 2016 12:43:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.157.133 with SMTP id g127ls1253458ioe.53.gmail; Thu, 15
 Sep 2016 12:43:09 -0700 (PDT)
X-Received: by 10.36.149.9 with SMTP id m9mr3566245itd.10.1473968589725;
        Thu, 15 Sep 2016 12:43:09 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id um12si1507488pab.2.2016.09.15.12.43.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 12:43:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id z84so2596245pfi.2
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 12:43:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=p3CrOHIJ8EOOPBhootNcyhvlyL7249jkX7kk7O5SKo4=;
        b=lV1o8JnIOJ7Ex/FInrA+xulLy9sY929886YwgHwz9s/oO7AsOsv8YFNxdizmFQM/u7
         rydx5uuz+VtYTSoJNh94m4/Zzr+Bzhtaroewd7gUf2Az2aCx+DJoBpUCPKTUTypNR7+L
         uNIKcHHrzs+C+nMEuyTlqXGzpnpJLupiZCIM2tHjKDuKhT5gNfIvHLF7jTjJKay0LEPF
         QjH+uOVFLg9E3Htgip2y7dB4tLDvz0CzwkABuD4qcgJG1s13XDpE/pkJWh+S8L04oxrW
         r3he3NId1MEuwZOGzcL2xTcOhmHTaoB8x5aP7VXuNM9J4sdBj7KWr5Y0X9WGOu3bwtMg
         KNuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=p3CrOHIJ8EOOPBhootNcyhvlyL7249jkX7kk7O5SKo4=;
        b=h5NjcOy2mis+SRShE8OP6lj5hCThwUwYu2mXOVjhpUTwlZIF7f2Wn2l4ZqdjqTyRsn
         6wQQDNraYZm4fvaOaXDLt/UKQa9Af+ZbUAfQ71tvvqQ9DIiXxWFNV63Ea6U29Wajrnog
         jJP5LA5kwPrIqkfU3cWbZG/5lVZUana3BimweCeYS4VgxvUJZ0XfYMJYETTlV/OicKL+
         rzi2zc+hZ7gZQBESEYWb0bYegd6m3YMEP2tOe9qIYwTabQMRyqkMpCsuOLhyd0bjLILK
         bLwJy7DVw0QtxbnP0OSA2pEygSG30LgStkbmNhWBf0pGnX3TbA15O8KpSLVzGKN15how
         f9vw==
X-Gm-Message-State: AE9vXwP6RKLMgDH7WQhlAz4kyokFOV6jrrWAmSfh8VJL9SPZfGC+SL3U8RLDMidBAigpSA==
X-Received: by 10.98.39.193 with SMTP id n184mr17344399pfn.164.1473968589514;
        Thu, 15 Sep 2016 12:43:09 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([182.70.7.237])
        by smtp.gmail.com with ESMTPSA id s1sm6864022paz.47.2016.09.15.12.43.05
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Thu, 15 Sep 2016 12:43:08 -0700 (PDT)
Date: Fri, 16 Sep 2016 01:13:41 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: oleg.drokin@intel.com, andreas.dilger@intel.com, jsimmons@infradead.org,
	gregkh@linuxfoundation.org, jinshan.xiong@intel.com,
	lai.siyao@intel.com, bobijam.xu@intel.com, mike.rapoport@gmail.com
Subject: [PATCH] Staging: lustre: Convert array index from the loop bound to
 the loop index.
Message-ID: <20160915194341.GA30843@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Convert array index from the loop bound to the loop index.
Used below semantic patch to identify this issue:

@@
expression e1,e2,ar;
@@

for(e1 = 0; e1 < e2; e1++) { <...
  ar[
- e2
+ e1
  ]
  ...> }


Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/lustre/lustre/obdclass/cl_object.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/staging/lustre/lustre/obdclass/cl_object.c b/drivers/staging/lustre/lustre/obdclass/cl_object.c
index 91a5806..eeccd30 100755
--- a/drivers/staging/lustre/lustre/obdclass/cl_object.c
+++ b/drivers/staging/lustre/lustre/obdclass/cl_object.c
@@ -1000,7 +1000,7 @@ static int cl_env_percpu_init(void)
 		 * thus we must uninitialize up to i, the rest are undefined.
 		 */
 		for (j = 0; j < i; j++) {
-			cle = &cl_env_percpu[i];
+			cle = &cl_env_percpu[j];
 			lu_context_exit(&cle->ce_ses);
 			lu_context_fini(&cle->ce_ses);
 			lu_env_fini(&cle->ce_lu);
-- 
1.7.1


