X-GM-THRID: 6209346946679701504
X-Received: by 10.67.21.136 with SMTP id hk8mr9572081pad.14.1445726246275;
        Sat, 24 Oct 2015 15:37:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.36.149 with SMTP id k143ls509010iok.7.gmail; Sat, 24 Oct
 2015 15:37:25 -0700 (PDT)
X-Received: by 10.50.225.106 with SMTP id rj10mr5741185igc.8.1445726245919;
        Sat, 24 Oct 2015 15:37:25 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id zg1si2930394pbb.2.2015.10.24.15.37.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Oct 2015 15:37:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=amarjargal.gundjalam@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id hk11so149918238pad.1
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Oct 2015 15:37:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:mime-version:content-type
         :content-transfer-encoding;
        bh=d1B5e0Rf1OT8zefglrdDMi5ExlSWp3k2Vy1PaUo46WA=;
        b=MKL7wHBaF0QFUI6rOKRdnxXPJ4CltOkvRsBBqN4qMgFUCsBQwbIYc8pJseUDD9zZB3
         sV5cO2bnmOrjyriAxWfATHpc1RMcGfBNtn3+3cG30qwYCqzLNqkp4iyWBkX80rmOT1w9
         LZ9kjUkn+rxk9CBi9z75DDTOflrHCYq2Z0RVOf5ibycVLsqScANTNUOED9wkIBmTW9hP
         WH5jNenyLz1A37dLQax0YIQk35OUQ91TAtoYHAmFg1hrd7HtwctLkxyeBuBNDYCnEaCC
         xBoi5QmSarZtjZeqp7NuB5oEsHfznnqSfrsS3xSn+i35oSRoXlMPOZLMH3W1Uep89nDZ
         vf0A==
X-Received: by 10.66.251.164 with SMTP id zl4mr13054618pac.148.1445726245787;
        Sat, 24 Oct 2015 15:37:25 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from localhost.localdomain ([103.26.195.49])
        by smtp.googlemail.com with ESMTPSA id fe8sm26017758pab.40.2015.10.24.15.37.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Oct 2015 15:37:25 -0700 (PDT)
From: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/4] staging: slicoss: Fixes multiple checkpatch issues
Date: Sat, 24 Oct 2015 15:37:09 -0700
Message-Id: <cover.1445720974.git.amarjargal.gundjalam@gmail.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This patchset fixes multiple checkpatch checks and warnings.

Amarjargal Gundjalam (4):
  staging: slicoss: Removes multiple blank lines
  staging: slicoss: Removes unnecessary space after a cast
  staging: slicoss: Adds space around operators
  staging: slicoss: Fixes block comment style

 drivers/staging/slicoss/slic.h    |   20 +++---
 drivers/staging/slicoss/slichw.h  |   31 ++++++----
 drivers/staging/slicoss/slicoss.c |  122 ++++++++++++++++++-------------------
 3 files changed, 88 insertions(+), 85 deletions(-)

-- 
1.7.9.5


