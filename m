X-GM-THRID: 6200732724667351040
X-Received: by 10.66.229.69 with SMTP id so5mr12103357pac.26.1443773757175;
        Fri, 02 Oct 2015 01:15:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.15.146 with SMTP id 18ls860840iop.100.gmail; Fri, 02 Oct
 2015 01:15:56 -0700 (PDT)
X-Received: by 10.66.191.37 with SMTP id gv5mr11638693pac.2.1443773756317;
        Fri, 02 Oct 2015 01:15:56 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id w5si1468985pbt.1.2015.10.02.01.15.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 01:15:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id hy16so100717674pad.1
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 01:15:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=yLTITAPlCqp+xor5MIuwfbemSiEv8rBsgnsQ3SGp17g=;
        b=vTUzyGlQce9hhvGnLfVptgbYvO5+gxCL73RynvUx+j9yHFa8Hgau071ndvCcjf5NwU
         aRtSB9keTYWWTlxx4S3IJbxy+nzPHhMNZ7jMCiDkgbIS1Vy8yDRwJCTiyWUxcyHlZUzc
         Cf8OB+0wd3hBQ1QDn6XjasLOrDfiCTWzEg+vFXJNACBm92l8xpu/cF0UfbZNs4uCo/bD
         V/00XyL5xQ5lgWaH1eZVMs0HVCikl2YkMLBEgxZy+eUb3WfucvmM+8MV7jiy/rpv592q
         GBHD+Es6yvI33K/MRl9B7dX6OustjGySMBTGusUtrXntorfyQ6cexHlx5+n+ZeXWtNcS
         yyBw==
X-Received: by 10.66.139.70 with SMTP id qw6mr12756868pab.142.1443773756209;
        Fri, 02 Oct 2015 01:15:56 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id cs5sm10749573pbc.15.2015.10.02.01.15.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Oct 2015 01:15:55 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 0/6] Declare functions and structures as static
Date: Fri,  2 Oct 2015 13:45:41 +0530
Message-Id: <1443773747-2985-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150206.560E3D3B.0039,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

These patches declare the functions and structures which are not
used anywhere else as static.

Changes in v2-
 These patches are made against the latest staging-testing branch.
 

Shraddha Barke (6):
  Staging: lustre: ptlrpc: Declare sptlrpc_rule_set_merge as static
  Staging: lustre: ptlrpc: Declare sptlrpc_rule_set_free as static
  Staging: lustre: ptlrpc: Declare sptlrpc_rule_set_expand as static
  Staging: lustre: ptlrpc: Declare sptlrpc_rule_set_choose as static
  Staging: lustre: ptlrpc: Declare sptlrpc_req_replace_dead_ctx as
    static
  Staging: lustre: ptlrpc: Declare sptlrpc_parse_rule as static

 drivers/staging/lustre/lustre/include/lustre_sec.h | 12 -----------
 drivers/staging/lustre/lustre/ptlrpc/sec.c         |  3 +--
 drivers/staging/lustre/lustre/ptlrpc/sec_config.c  | 25 +++++++++-------------
 3 files changed, 11 insertions(+), 29 deletions(-)

-- 
2.1.4


