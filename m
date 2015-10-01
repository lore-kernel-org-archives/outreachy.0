X-GM-THRID: 6200611211635064832
X-Received: by 10.182.215.226 with SMTP id ol2mr7478183obc.11.1443692299439;
        Thu, 01 Oct 2015 02:38:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.155.19 with SMTP id d19ls601661ioe.19.gmail; Thu, 01 Oct
 2015 02:38:18 -0700 (PDT)
X-Received: by 10.50.78.227 with SMTP id e3mr1841116igx.12.1443692298922;
        Thu, 01 Oct 2015 02:38:18 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id zg1si858647pbb.2.2015.10.01.02.38.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 02:38:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pacfv12 with SMTP id fv12so71161592pac.2
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Oct 2015 02:38:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=ef5omEcEEo5Zqx1X/s7hQv2XpwPt+1wY+aNfNdKKaVE=;
        b=ilGGgEsKnoDHX0yM9HgW+LWvuyxDx2ttcIIDJQm2OWaHpmOsOE11DJ+//8LnU0J/vi
         y+t29+K3CJyvFNZlhwJrjtdiinTg0SwU/1z2So4bzJSdqnln7Ti/M3y246ABVfHGFAn8
         mdMdkLxIHXiR0WcR52n1Q9Qo9oib3mhv+ZuA1ivpB3j6jUYdNM0kxq+AGdUTGdHBCaVV
         OwwzG0RwKDvsiPSeXByiAwFb/nFFTAJJUe3NT9z8yEq1HSR3yviYUTnvxHQfYEA39vO2
         u6R9GWTDxFA/r1UKeTV7d2pJr8yxXI0r3jfrBIlorlcOYTNhSKt+xtlLy/RGByUzbDqY
         GpSA==
X-Received: by 10.66.120.80 with SMTP id la16mr11036544pab.1.1443692298804;
        Thu, 01 Oct 2015 02:38:18 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id b7sm5520201pbu.20.2015.10.01.02.38.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 01 Oct 2015 02:38:18 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 0/2] Declare functions and structures as static.
Date: Thu,  1 Oct 2015 15:07:56 +0530
Message-Id: <1443692278-9074-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150204.560CFF09.0178,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

These patches declare the functions and structures which are not
used anywhere else as static.

Shraddha Barke (2):
  Staging: lustre: ptlrpc: Make functions static
  Staging: lustre: obdclass: Declare structure as static.

 drivers/staging/lustre/lustre/obdclass/lu_object.c  | 2 +-
 drivers/staging/lustre/lustre/ptlrpc/pack_generic.c | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

-- 
2.1.4


