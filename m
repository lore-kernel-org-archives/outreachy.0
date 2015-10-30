X-GM-THRID: 6211463142533234688
X-Received: by 10.107.153.146 with SMTP id b140mr7766483ioe.30.1446218961635;
        Fri, 30 Oct 2015 08:29:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.101.149 with SMTP id u21ls654967qge.44.gmail; Fri, 30 Oct
 2015 08:29:20 -0700 (PDT)
X-Received: by 10.13.209.70 with SMTP id t67mr6722548ywd.46.1446218960930;
        Fri, 30 Oct 2015 08:29:20 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id iz5si673691pbc.2.2015.10.30.08.29.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 08:29:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id hy1so71391735pad.0
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Oct 2015 08:29:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=vTRunigSbU/vyesa9zBNW1C1OzDfMK50FtW/Z4m7qiY=;
        b=qfsp2eqsw/xrQckUN23QwaxFwRkkjsE9VSOr4FrvCkdFa2H19qTn6X3CrFUBQJqPja
         TWEiGvSSpysYP18yP0MjF6zpmj9YYRjKpsKz4rIMZKuymXo83C+bRwW4eunIibDz20kE
         4LnSX3fXki5i3s2AmPyqLzHYtT+Ai81ZrOoPqF+lzFTHHlw3wSuZfPP7Vz8Gk2rVw++S
         vRPxV2wUBuqvCKdW7EknauyMMUu3hDk6ZT+B14AXJnOMkfpF+Xt5lzSpWzu/GQxBZ2Kv
         0wsInQDUbIhsM47trtXOSFwxBs9epkYa58cKeOUj1gPMygTV7JleK3nSVoMKn8kHAs5Y
         6VXQ==
X-Received: by 10.66.254.7 with SMTP id ae7mr9294087pad.129.1446218960796;
        Fri, 30 Oct 2015 08:29:20 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id dn4sm8883843pbd.0.2015.10.30.08.29.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 30 Oct 2015 08:29:20 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 0/7] Staging: lustre: Declare local functions as static  and drop unused functions
Date: Fri, 30 Oct 2015 20:59:02 +0530
Message-Id: <1446218949-8599-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A15020A.56338CCF.00E5,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

These patches declare local functions as static and remove corresponding
declarations from header files. Unused function definitions and declarations
are also removed.

Shraddha Barke (7):
  Staging: lustre: mdc: Declare local functions as static
  Staging: lustre: mdc: Remove unused mdc_open function from header
  Staging: lustre: fld: Remove unused seq_client_alloc_super
  Staging: lustre: fld: Declare local functions as static
  Staging: lustre: fld: Remove unused functions
  Staging: lustre: fld: Remove unused declaration
  Staging: lustre: osc: Declare local functions as static

 drivers/staging/lustre/lustre/fid/fid_internal.h |  2 --
 drivers/staging/lustre/lustre/fid/fid_request.c  | 21 ---------------
 drivers/staging/lustre/lustre/fld/fld_cache.c    | 34 +++---------------------
 drivers/staging/lustre/lustre/fld/fld_internal.h |  9 -------
 drivers/staging/lustre/lustre/mdc/mdc_internal.h | 13 ---------
 drivers/staging/lustre/lustre/mdc/mdc_request.c  | 14 +++++-----
 drivers/staging/lustre/lustre/osc/osc_internal.h |  6 -----
 drivers/staging/lustre/lustre/osc/osc_request.c  | 13 ++++-----
 8 files changed, 19 insertions(+), 93 deletions(-)

-- 
2.1.4


