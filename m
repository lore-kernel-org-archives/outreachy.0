X-GM-THRID: 6208519851365892096
X-Received: by 10.107.162.2 with SMTP id l2mr13785225ioe.26.1445533673263;
        Thu, 22 Oct 2015 10:07:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.33.228 with SMTP id j91ls1781291qgj.56.gmail; Thu, 22 Oct
 2015 10:07:52 -0700 (PDT)
X-Received: by 10.129.156.198 with SMTP id t189mr13255953ywg.26.1445533672651;
        Thu, 22 Oct 2015 10:07:52 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id zg1si1791355pbb.2.2015.10.22.10.07.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 10:07:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x229.google.com with SMTP id rc13so91453050pab.0
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 10:07:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=S5lqqxrcut52KZ5Cv7a8i2kwLD1NR3kPsuYj8S+IXFk=;
        b=U+NZfA2pK7C9IVEYvUfvr9Pczl5lpOT4uKRd/RH9ez4TzD5UWwF4yGGvS8TcPkhkKY
         Vj23azr6Nq5HkueyRCM/++poIThUqdSzxU1Dxp0Z3R5KRFTbTLOUncmnBeDqJlROoW5I
         kV+QAkW8e+mSPOtLz588Yp16Uhn1RIO0cMKg17PeSRDq/7dmPb61jQi9cTRS4vYmigfs
         UWBJK5UJ20M9ICzrNhQ5hqt5l72oGn74g8Fe5r8Gcl6a8lSTw5b1XaTWjKKLUO/143xY
         5sFSiQVi8H54lleLhXf4tK5LYE1GEHgs51P/qMdYlxMUpaaCY9xS7JzDkwz3eICvfLcJ
         5tMg==
X-Received: by 10.66.254.197 with SMTP id ak5mr10648209pad.130.1445533672525;
        Thu, 22 Oct 2015 10:07:52 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([103.14.62.9])
        by smtp.gmail.com with ESMTPSA id er1sm4349579pbb.6.2015.10.22.10.07.51
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 22 Oct 2015 10:07:51 -0700 (PDT)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH 0/3] Staging: mt29f_spinand: Fix "blank line" checkpatch issues
Date: Fri, 23 Oct 2015 01:07:37 +0800
Message-Id: <1445533660-29817-1-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1

This patchset fixes multiple checkpatch "CHECK" warnings concerning blank line/s.

Eva Rachel Retuya (3):
  Staging: mt29f_spinand: Add blank line after function declaration
  Staging: mt29f_spinand: Remove blank line before '}' and after '{'
    braces
  Staging: mt29f_spinand: Remove multiple blank lines

 drivers/staging/mt29f_spinand/mt29f_spinand.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

-- 
1.9.1


