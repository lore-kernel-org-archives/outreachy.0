X-GM-THRID: 6202030500933009408
X-Received: by 10.182.65.134 with SMTP id x6mr25959774obs.14.1444044643108;
        Mon, 05 Oct 2015 04:30:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.94.233 with SMTP id df9ls1318833obb.43.gmail; Mon, 05 Oct
 2015 04:30:42 -0700 (PDT)
X-Received: by 10.182.70.4 with SMTP id i4mr24938813obu.15.1444044642790;
        Mon, 05 Oct 2015 04:30:42 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id w5si3353763pbt.1.2015.10.05.04.30.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Oct 2015 04:30:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id lk4so174026581pab.3
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Oct 2015 04:30:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=gX3kYNnL0YrEr0pCn+EgB0jsQvtT9fUcf7lW5jFY6dQ=;
        b=Y8cUVpcEZEjjBCSPvHVgg5CiDW4nR8xi8HIewd2/LLgtOA/Uz+CUrjOC8sqPG5furj
         bGsbD1HBRxJ+/sRPsqX8rX1F1rSZ6h42fGprD0NC0669YJPSQA2RQ8TF6eEpAu7HF5Q6
         m87g7v2+AqPdXzz8vUGFxM+AD0/1SvdpFl3yHLwrfKBsZUqongwUxWOmklHy6POe63wd
         IXf88J2ntP9PWBeiHLZ+VZsXMKej+9VHItPl3fSUEhzASXU903slRC6nd94yg4DymXlr
         iO9AUO+eTfkw/w4oPuG6LyfWlBZyvH5LQ5hGnxw3Joe8LcAaVVbso2pDjZE8oZSCoJtb
         gj8g==
X-Received: by 10.68.213.164 with SMTP id nt4mr19997212pbc.100.1444044642657;
        Mon, 05 Oct 2015 04:30:42 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id te7sm27122767pbc.87.2015.10.05.04.30.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 05 Oct 2015 04:30:41 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [RESEND PATCH v3 0/2] Replace memset with eth_zero_addr
Date: Mon,  5 Oct 2015 17:00:31 +0530
Message-Id: <1444044633-6658-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A15020A.56125F61.00BB,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

These patches replace memset with eth_zero_addr. Change is made using
Coccinelle script -

// <smpl>
@eth_zero_addr@
expression e;
@@

-memset(e,0x00,ETH_ALEN);
+eth_zero_addr(e);
// </smpl>

Changes in v3-
 Added appropriate header file to the second patch.

Changes in v2-
 Dropped second patch in series because it breaks the build

Shraddha Barke (2):
  Staging: wilc1000: wilc_wfi_cfgoperations: Replace memset with
    eth_zero_addr
  Staging: wilc1000: host_interface: Replace memset with eth_zero_addr

 drivers/staging/wilc1000/host_interface.c         | 13 +++++++------
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c |  6 +++---
 2 files changed, 10 insertions(+), 9 deletions(-)

-- 
2.1.4


