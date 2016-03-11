X-GM-THRID: 6260795307538251776
X-Received: by 10.66.136.71 with SMTP id py7mr7068371pab.7.1457705001443;
        Fri, 11 Mar 2016 06:03:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.107.165 with SMTP id h34ls2482231qgf.77.gmail; Fri, 11 Mar
 2016 06:03:20 -0800 (PST)
X-Received: by 10.140.159.7 with SMTP id f7mr7035926qhf.3.1457705000380;
        Fri, 11 Mar 2016 06:03:20 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id ui7si1354905pab.0.2016.03.11.06.03.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 06:03:20 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id hj7so8439324pac.1
        for <outreachy-kernel@googlegroups.com>; Fri, 11 Mar 2016 06:03:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=jpc/hacwldFqUFe15ENoiohqp72HaU7v4R0JztzmKfw=;
        b=TY00viA1Glbd8l1Doiyqdq8ZS+LftLSzpGxFxMkFYmaYPGVg9DLi1bX3phx/8Hfp1U
         Ig1802xuAest4esGK5cKIv/zpB9fIVy+5aTOSf7Y4FvwHGQyYW073sltqQ78Znob5rIr
         dVzNkng0a0VhpD7C3LcA/6TWAAY0Uqv0WBGldjgdw1oIxTt8WbvahD2e/ev1qkNqsKLy
         WdxLx60hWC6qm4vmQHN2rO+13a1ExDW+LRpzncQGlon1Ay4pwStKAkgkbS3t0wIbmVoS
         vtamy45H4Hs4kKcH9BBgVIDUbtvLpMPmEgCu/s0gM3ecvCs1Gu3o8YQiIcvW6aFSitQk
         kTwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=jpc/hacwldFqUFe15ENoiohqp72HaU7v4R0JztzmKfw=;
        b=cVAMr+3BVEmyzJYsn+1JcrboFeaiRAtJrRcuvV7Y0ejwtOKTil9PWDpPUt+5uMD0ET
         DNTLd09fsXI24V1hY6U+rpgBOBJMCpuFxzBvtvDE7DZ0ngD1s0DQRPiiqf2IY5iXtUkj
         tO4tSB7f9GwdUQfj71BwPGTQM8qgzh/zY5jVZ+nZCAHUrIC5NO0r/JGp7vGLVnACmhRS
         2aYd5XU8oLc5DdIQ5p+qgdihymx8RwkdBtsAQ13SHUC/Cs9P/UJ288ZtA3ZycMtovrjF
         4YD7TZjkWgJ2Z2BjVKa7mzU+jdb+cDn2nqaVBGpWq4FmF07np7+4ffhq7PChubmTJidi
         op0Q==
X-Gm-Message-State: AD7BkJKWni/qu9B/i9uP2yzDVMUeD7PJUPXflCGB2GHWHxxz4JfhMgdJwcLPEQxG3P7mnw==
X-Received: by 10.66.148.232 with SMTP id tv8mr15498661pab.21.1457705000202;
        Fri, 11 Mar 2016 06:03:20 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.149.188])
        by smtp.gmail.com with ESMTPSA id l14sm13332588pfi.23.2016.03.11.06.03.14
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 11 Mar 2016 06:03:19 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Fri, 11 Mar 2016 19:33:06 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 0/2] Staging: android: Redefine macros as static inline functions
Date: Fri, 11 Mar 2016 19:33:03 +0530
Message-Id: <cover.1457703530.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

Convert macros page_in_range, range_before_page, 
page_range_{subsumes/subsumed_by/in}_rang into static inline functions 
as static inline functions are preferred over macros. The
change can be done as the arguments at all call sites have the same type.

Bhumika Goyal (2):
  Staging: android: ashmem.c: Redefine macros as static inline functions
  Staging: android: ashmem.c: Convert macros
    page_range_{subsumes/subsumed_by/in}_range  to static inline
    function

 drivers/staging/android/ashmem.c | 35 ++++++++++++++++++++++++-----------
 1 file changed, 24 insertions(+), 11 deletions(-)

-- 
1.9.1


