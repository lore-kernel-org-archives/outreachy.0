X-GM-THRID: 3148599001088
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,1471a1a57b962ba4,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.50.61.132 with SMTP id p4mr15403137igr.7.1424762681235;
        Mon, 23 Feb 2015 23:24:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.107.199 with SMTP id he7ls856532obb.76.gmail; Mon, 23 Feb
 2015 23:24:41 -0800 (PST)
X-Received: by 10.182.210.227 with SMTP id mx3mr16553275obc.27.1424762681071;
        Mon, 23 Feb 2015 23:24:41 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id pc4si4553269pac.0.2015.02.23.23.24.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 23:24:41 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by padhz1 with SMTP id hz1so33966306pad.9
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 23:24:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=ESW5DYlQD+f+Bpt2AIb0VmECtmpnqdTljSmghK8ypwU=;
        b=Ukd4lxhEX3R8zChk9Ag1anTec7YS1V4HgJyPBL8mhf3njD8q//mD+fMhLp2ohr0vUg
         g60nG5XhIg9zsQBEMKgzuvMvHVywkUmghrhEOG2aAHpufLnPw43BzP2pSazNRDVn/W/I
         Ma0pM7UksDa4kv42vqPmffOmzi2nV2BwTAWILgdDVXFSKKKHH4a+xnb3DkD0tLYgOGLH
         7eVgDEevxeqgB5aEDaqJlYqhkmyj/u/3UirIU+5oxgZk++bZjMhXt8z7oNRagbQsVeR7
         vP3RanQslzEKhd18YzTT2cjh6luhoppziWDJKqGRpmpvv+61dDMZ6+ksVpIaWIve1tcF
         0EIg==
X-Received: by 10.70.140.162 with SMTP id rh2mr26667929pdb.131.1424762680797;
        Mon, 23 Feb 2015 23:24:40 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id y3sm1150751pdd.62.2015.02.23.23.24.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 23 Feb 2015 23:24:39 -0800 (PST)
Date: Tue, 24 Feb 2015 12:54:20 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2 v2] Refactor code to increase readability
Message-ID: <cover.1424761857.git.vatikaharlalka@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

The function get_right_chnl_for_iqk only requires Wifi channels
from the 5GHz spectrum. Therefore, the 14 2GHz channels 
can be removed.

Vatika Harlalka (2):
  Staging: rtl8188eu: Introduce new macro
  Staging: rtl8188eu: Refactor code to increase readability

 drivers/staging/rtl8188eu/hal/phy.c     | 11 +++++------
 drivers/staging/rtl8188eu/include/phy.h |  1 +
 2 files changed, 6 insertions(+), 6 deletions(-)

-- 
1.9.1


