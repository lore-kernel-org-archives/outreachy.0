X-GM-THRID: 6211053698454388736
X-Received: by 10.31.54.198 with SMTP id d189mr9829290vka.6.1446281815116;
        Sat, 31 Oct 2015 01:56:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.148.36 with SMTP id tp4ls543154obb.72.gmail; Sat, 31 Oct
 2015 01:56:54 -0700 (PDT)
X-Received: by 10.182.226.195 with SMTP id ru3mr9588780obc.12.1446281814783;
        Sat, 31 Oct 2015 01:56:54 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id iz5si973658pbc.2.2015.10.31.01.56.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 01:56:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=amarjargal.gundjalam@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id hk11so96829765pad.1
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2015 01:56:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=0tduhW6TyqylTmUKsvwO4HotRDOUF2c1KQaDZiVqAUo=;
        b=IW4ZhaX6U6371+Rltu+cZWB9tnc+dWV9+O5PJplKBGvTyUXLYiCTJobTvoMyt5Btdm
         +4+nLJGTTBAFTSEip6LjqwAaEGQm1IDz9JZEmrsAOBfwT+OxIsaLXvZm631jBMn5lx4i
         zcrtftqKH1wpVLatVNLOWC3tamA7r/rDiGE5QF0CYSQBLl29esgOYDmyI8c1x0lGbAo9
         Sasc5z/2+C+4Ao2hZWn45kfV1N5ArY07d9CeMyjHC0mMcN2RdM6bLla9cD6VJnuAiRd1
         butV6xX6lZimwgEgFtAAECoN3JMTdBF1+ybL8x77XXRdXFMQBRyKTI84aPwdeeOoyGVl
         YlmA==
X-Received: by 10.66.220.100 with SMTP id pv4mr14129170pac.46.1446281814675;
        Sat, 31 Oct 2015 01:56:54 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from localhost.localdomain ([103.26.195.49])
        by smtp.googlemail.com with ESMTPSA id yp9sm12645749pab.1.2015.10.31.01.56.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 01:56:54 -0700 (PDT)
From: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 0/5] staging: media: bcm2048: fix multiple checkpatch issues
Date: Sat, 31 Oct 2015 01:56:36 -0700
Message-Id: <cover.1446281119.git.amarjargal.gundjalam@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1446123178.git.amarjargal.gundjalam@gmail.com>
References: <cover.1446123178.git.amarjargal.gundjalam@gmail.com>

This patchset fixes multiple checkpatch checks and warnings. 

Changes in v2:

Conditional statements code indent and open parenthesis alignment fixes are combined into a single patch [1/5]. Rest of the patchset are reordered.

Changes in v3:
Patch [2/5] mistakingly included a change that should be in be patch [1/5]. Fixed in v3.

Amarjargal Gundjalam (5):
  staging: media: bcm2048: match alignments with open parenthesis
  staging: media: bcm2048: add space around operators
  staging: media: bcm2048: remove unnecessary blank lines
  staging: media: bcm2048: remove unnecessary space after a cast
  staging: media: bcm2048: fix mispelling

 drivers/staging/media/bcm2048/radio-bcm2048.c |  393 ++++++++++++-------------
 1 file changed, 189 insertions(+), 204 deletions(-)

-- 
1.7.9.5


