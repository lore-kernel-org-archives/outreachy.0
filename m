X-GM-THRID: 6200732724667351040
X-Received: by 10.182.108.228 with SMTP id hn4mr12351741obb.5.1443782990955;
        Fri, 02 Oct 2015 03:49:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.43.161 with SMTP id x1ls483754igl.29.canary; Fri, 02 Oct
 2015 03:49:50 -0700 (PDT)
X-Received: by 10.67.23.163 with SMTP id ib3mr12180414pad.45.1443782990311;
        Fri, 02 Oct 2015 03:49:50 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id uv4si1714255pac.0.2015.10.02.03.49.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 03:49:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id fv12so106191723pac.2
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 03:49:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=orCVBq0WFdLtOF0L2XQze18/bFtjCCjFFmQvmcXFGDE=;
        b=UugeD/MDWU1YusZOQD69PPxSzhH10E/ffIE0SvwhmPx1ooW386PxPMN/hbJdr5c6zG
         eKN9PbUZl5ZBm5QRfBbomqSEwZYizWHURTinokiw4Hz1bgtigux2eMfoBlmdqEAe96QH
         zjMNvBUaISKjxd7G6/93qHvsih0rm7L4i6TcveKXV8+X2tCkifxE2jp1GhiiyGfy0FOn
         PBHccNYE/sjRtY6zU/ES7wqRuUF/KgZ+1K39fHvgPAUhrwqtUimtstZjXo177UYnSpTq
         Tk0zYaTPVdJhU/shy8lqMGjn6TwB35sX/rsGJP1CzZPb+rsx/97OwUR9qiiLh+wmtgK7
         Dvkg==
X-Received: by 10.67.8.102 with SMTP id dj6mr19324135pad.123.1443782990190;
        Fri, 02 Oct 2015 03:49:50 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id ce3sm11419722pbb.35.2015.10.02.03.49.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Oct 2015 03:49:49 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH v3 0/6] Declare functions and structures as static
Date: Fri,  2 Oct 2015 16:19:25 +0530
Message-Id: <1443782971-6392-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150208.560E614C.0163,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

These patches declare the functions and structures which are not
used anywhere else as static.

Changes in v3-
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


