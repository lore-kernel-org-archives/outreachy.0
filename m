X-GM-THRID: 6205086344963686400
X-Received: by 10.140.234.135 with SMTP id f129mr28192938qhc.9.1444734247976;
        Tue, 13 Oct 2015 04:04:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.130.228 with SMTP id oh4ls1294192obb.81.gmail; Tue, 13 Oct
 2015 04:04:06 -0700 (PDT)
X-Received: by 10.182.221.196 with SMTP id qg4mr27444631obc.23.1444734246612;
        Tue, 13 Oct 2015 04:04:06 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id vy6si247909pbc.1.2015.10.13.04.04.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 04:04:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id ex6so18545539pac.3
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 04:04:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=w4aILPXWZ3cCL6Ni6U5T/nfx/y+Xz/mmInyEGmiF5ac=;
        b=oAPAWgLKNbXipVAK5xF9IeQ8ormgJL0mOLT/J5WL0t0QojZP9cz8KumPELe/cYVDfp
         BXFw4uP73Jd0lvsonD0ZSLDe8Upr+VIdnhfRba0Wqk74Xf33M8+O7CrwWTcQvZjXkmwS
         VF/yiQEFWJDsZDIYCNsOnfiFFQ/n6B+NULWt4R3qXPOhRBLmQnaMLFj/kgBWnbrzgmUa
         rgfn4HLzvw2UK96AGl1H0webgVJG39Z/YgHsLFR/OXNSceHqwh0lx/3A0L/osq+YVF4y
         6lvB/hQqLN+Pj86RQX4wXI4D5C2A3elga6ryTAzMkC4oiXTCmy7LMYJYvRiXRjVXirMd
         ketA==
X-Received: by 10.68.92.164 with SMTP id cn4mr39363612pbb.156.1444734246494;
        Tue, 13 Oct 2015 04:04:06 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id es4sm3258821pbc.42.2015.10.13.04.04.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 04:04:05 -0700 (PDT)
Date: Tue, 13 Oct 2015 16:33:56 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] Fix various issues
Message-ID: <cover.1444733999.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch removes unused code and changes the variable type to more
effective one.
After applying this patch, code becomes better.

Shivani Bhardwaj (2):
  Staging: wilc1000: wilc_wfi_cfgoperations: Remove unused code
  Staging: wilc1000: wilc_wfi_cfgoperations: Change variable to bool

 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

-- 
2.1.0


