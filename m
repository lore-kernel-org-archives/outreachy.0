X-GM-THRID: 5841740627968
X-Received: by 10.66.216.195 with SMTP id os3mr1365230pac.11.1425277463430;
        Sun, 01 Mar 2015 22:24:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.80.134 with SMTP id c6ls1588622qgd.21.gmail; Sun, 01 Mar
 2015 22:24:23 -0800 (PST)
X-Received: by 10.236.19.8 with SMTP id m8mr25789794yhm.53.1425277463246;
        Sun, 01 Mar 2015 22:24:23 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id pc4si1422449pac.0.2015.03.01.22.24.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 22:24:23 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id rd3so40910295pab.4
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 22:24:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=pF8qa6od0Rh9GfrV7bTUUF3+MKthokHvBVqD9cTfKsU=;
        b=AHDl40uTtdTYp68jjXJM/UgNnF8KModIjqWD/9UZy/1bMS4/BSErM/mGOO56mZfd/u
         0wde97iQD9RA3vrXvjPONRuvBMRFjck+iRrSJN0angZllgoC11gKUeXzzixaVtDkoBMH
         elm32FyA/jYY0wwyeMZjQHy694v89bHrPaKKiJ31KqSEf0PRc4fGxQcjuIpQV+VLbFfY
         Tp4IcPRXd0VYhn2NQLGkemSRTk4oYYO/Ltk48WFkH+9pUnqp7BOqNS2CH+q76RRiRD1U
         qmQsyCBeaIO5GI/+E+aqoWIwoniotx4QbqY95s/ia7/qjCeLvswxU7Sly4CctA+Gyo9Z
         nAvA==
X-Received: by 10.68.138.135 with SMTP id qq7mr44308439pbb.139.1425277463127;
        Sun, 01 Mar 2015 22:24:23 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([183.82.106.99])
        by mx.google.com with ESMTPSA id bh15sm10819185pdb.21.2015.03.01.22.24.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 01 Mar 2015 22:24:21 -0800 (PST)
Date: Mon, 2 Mar 2015 11:52:53 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/4] Staging: rtl8188eu: Cleanup code to increase compactness
Message-ID: <cover.1425276736.git.vatikaharlalka@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove unnecessary code to increase readability and
compactness.

Vatika Harlalka (4):
  Staging: rtl8188eu: Remove redundant if condition clause
  Staging: rtl8188eu: Remove unnecessary if condition
  Staging: rtl8188eu: Remove dead code.
  Staging: rtl8188eu: Change return type of function to void.

 drivers/staging/rtl8188eu/hal/bb_cfg.c |  3 +-
 drivers/staging/rtl8188eu/hal/phy.c    | 53 ++++++++++------------------------
 2 files changed, 16 insertions(+), 40 deletions(-)

-- 
1.9.1


