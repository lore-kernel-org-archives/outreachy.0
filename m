X-GM-THRID: 10068144685056
X-Received: by 10.182.176.35 with SMTP id cf3mr17540392obc.8.1427398293189;
        Thu, 26 Mar 2015 12:31:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.93.9 with SMTP id c9ls936397qge.21.gmail; Thu, 26 Mar 2015
 12:31:33 -0700 (PDT)
X-Received: by 10.236.11.196 with SMTP id 44mr17942799yhx.31.1427398293022;
        Thu, 26 Mar 2015 12:31:33 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id ni4si796543pdb.2.2015.03.26.12.31.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2015 12:31:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id we9so72046457pac.1
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Mar 2015 12:31:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=UTBiUyMwRqJH+xFLjtdZibAX1fNpJqgjnsdOeFsGyjw=;
        b=cbitj4SpsAfDxliyp6Auaag8po30i6XlQDZzEzTju7ZtsP3dGuU5QiEfElsHe5hFUq
         D914hQcNrLuR13WwDBbeM42QuAssxAmrsi0IPmiFCDZLR7/Mmo1/1oaGsvGNvlyujNDB
         zmIJ8ExcPTbi/7kyilS4TeB+XeN9hTQXaHi/T8qMJKSrLgYxoeMmNN5vmLhdNQLxmjqb
         FXMzGNatMQCZg7sySkwLnbOrEbgQ5wWwCpUd0/fY+6RRdGZxB+mnV+NnyxN1GX0vXnNr
         8OadE6kOmCNSJzkM8HMerXGgcmKStQehMoCCissjXAJ3S3Em2LN/shM7G22Hi3KbAVVu
         aV7A==
X-Received: by 10.66.97.106 with SMTP id dz10mr29907739pab.66.1427398292837;
        Thu, 26 Mar 2015 12:31:32 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id o4sm6427418pdh.6.2015.03.26.12.31.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Mar 2015 12:31:31 -0700 (PDT)
Date: Fri, 27 Mar 2015 00:59:18 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] Staging: rtl8912: Make functions static
Message-ID: <cover.1427397436.git.vatikaharlalka@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

These patches are to remove extern declarations
from .c files and make appropriate functions static.

Vatika Harlalka (2):
  Staging: rtl8192u: Remove extern and add static
  Staging: rtl8192u: Make function static

 drivers/staging/rtl8192u/r8192U.h      |  1 -
 drivers/staging/rtl8192u/r8192U_core.c | 10 +++++-----
 2 files changed, 5 insertions(+), 6 deletions(-)

-- 
1.9.1


