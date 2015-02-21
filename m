X-GM-THRID: 2073319964672
X-Received: by 10.180.89.194 with SMTP id bq2mr391712wib.4.1424548766442;
        Sat, 21 Feb 2015 11:59:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.198.231 with SMTP id jf7ls406523lac.92.gmail; Sat, 21 Feb
 2015 11:59:25 -0800 (PST)
X-Received: by 10.152.37.200 with SMTP id a8mr425642lak.5.1424548765084;
        Sat, 21 Feb 2015 11:59:25 -0800 (PST)
Return-Path: <gulsah.1004@gmail.com>
Received: from mail-wi0-x236.google.com (mail-wi0-x236.google.com. [2a00:1450:400c:c05::236])
        by gmr-mx.google.com with ESMTPS id o3si358717wib.2.2015.02.21.11.59.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 11:59:25 -0800 (PST)
Received-SPF: pass (google.com: domain of gulsah.1004@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) client-ip=2a00:1450:400c:c05::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gulsah.1004@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) smtp.mail=gulsah.1004@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-f182.google.com with SMTP id l15so9252398wiw.3
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 11:59:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:mime-version:content-type
         :content-transfer-encoding;
        bh=EwllRcA/P1DW42MCmTNuhao83+cp7ocOwSiB+Dr7FxQ=;
        b=XHqwV9pGVfLDv612KYIrf7eNmKWHSctjb2rbo8KFJfOG/rcwyfIswZTGLT0HWhL5n1
         rd/f/2yy+BvLyD1idKcnDsIdal8vVYrk1PAlU/QPHV7nn2kUXrnM0dk9M98/6ZpCSEoF
         VM37XEetEoaVQOEShnvdt402AyintIwo6OpsHhFOMSKaARsLk/HoF9shngItdMMZQ6p9
         msWvC55spJLvhE+GjIkS0ASOb7eoCUMUrpX0pkeFwSYgP35C2wHSo+XVvbhkZZAt8n1k
         6eiiYCzrRNk9gKrfupnz2v73LOhbhe32MiSE4iLbcte2C7jLBLfeqwHXutuBinXJyYNw
         74dw==
X-Received: by 10.194.83.66 with SMTP id o2mr7431314wjy.55.1424548764924;
        Sat, 21 Feb 2015 11:59:24 -0800 (PST)
Return-Path: <gulsah.1004@gmail.com>
Received: from diyorki.kykwifi.com ([81.213.40.143])
        by mx.google.com with ESMTPSA id fm10sm8283015wib.7.2015.02.21.11.59.23
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 11:59:24 -0800 (PST)
From: Gulsah Kose <gulsah.1004@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Gulsah Kose <gulsah.1004@gmail.com>
Subject: [PATCH 0/2] Corrected two type checkpatch.pl space errors.
Date: Sat, 21 Feb 2015 21:59:09 +0200
Message-Id: <cover.1424548101.git.gulsah.1004@gmail.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This patch fixes following checkpatch.pl errors in mkbb.c
ERROR: space required before the open parenthesis '('
ERROR: foo ** bar" should be "foo **bar

Gülşah Köse (2):
  staging: arch: alpha: boot: tools: Deleted unnecessary space.
  staging: arch: alpha: boot: tools: Added missing spaces after brackets.

 arch/alpha/boot/tools/mkbb.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

-- 
1.9.1


