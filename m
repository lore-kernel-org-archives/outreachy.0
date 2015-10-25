X-GM-THRID: 6209555630081966080
X-Received: by 10.182.236.225 with SMTP id ux1mr24640363obc.2.1445774834807;
        Sun, 25 Oct 2015 05:07:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.95.5 with SMTP id h5ls2888522qge.77.gmail; Sun, 25 Oct
 2015 05:07:14 -0700 (PDT)
X-Received: by 10.13.216.14 with SMTP id a14mr24446793ywe.8.1445774833954;
        Sun, 25 Oct 2015 05:07:13 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id zg1si3119774pbb.2.2015.10.25.05.07.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2015 05:07:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id fa8so4875699pac.0
        for <outreachy-kernel@googlegroups.com>; Sun, 25 Oct 2015 05:07:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=AtTHPrkLK6NTn8PH3fDvNN0BOuVy5pM6icV6ooxf0rM=;
        b=ULrCQdS7HdSvvg0EmkHly2TWY3Rcguwkd/h7z1piGatX0ikXP2fzyRhRSfRGuvTmPf
         n6zLcYoxdqSOAlURZyoNcpDEr+HVTjcoWOe+1uvAqJzy5b6riaQ+TTKtChBQVG8iP+NQ
         DyucGboyt3e4sYAOE86bek9zeRugiOuXTqW719hj4/qYdAJSY5qVC3b6if/WBNAJoOwQ
         Wi2joDjurCQ+kSIBs6G51Paoq1zccAVfS8EsBtWkBu0W4m2FmTRxKY9ULNUY4ektuk27
         EHixwLm/9yONVKaQcmWm8PbaXXJSg0JkcbC1YYTeybKATIhdsY9EJrOi61VjZclmRbRL
         8Xvw==
X-Received: by 10.68.88.165 with SMTP id bh5mr16687269pbb.160.1445774833822;
        Sun, 25 Oct 2015 05:07:13 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id sn9sm28505944pac.16.2015.10.25.05.07.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 25 Oct 2015 05:07:13 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 0/4] Staging: lustre: Remove unused code 
Date: Sun, 25 Oct 2015 17:36:56 +0530
Message-Id: <1445774820-9184-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150209.562CC5EF.004C,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

These patches remove unused header file, function definition 
and declarations and EXPORT_SYMBOL for static function

Shraddha Barke (4):
  Staging: lustre: include: Remove unused obd_cache.h file
  Staging: lustre: lustre_log: Remove unused functions
  Staging: lustre: ptlrpc: Remove EXPORT_SYMBOL for
    sptlrpc_rule_set_expand
  Staging: lustre: lprocfs_status: Remove unused declaration

 .../staging/lustre/lustre/include/lprocfs_status.h |  2 -
 drivers/staging/lustre/lustre/include/lustre_log.h | 89 ----------------------
 drivers/staging/lustre/lustre/include/obd_cache.h  | 38 ---------
 drivers/staging/lustre/lustre/ptlrpc/sec_config.c  |  1 -
 4 files changed, 130 deletions(-)
 delete mode 100644 drivers/staging/lustre/lustre/include/obd_cache.h

-- 
2.1.4


