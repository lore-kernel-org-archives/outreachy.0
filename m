X-GM-THRID: 6209346946679701504
X-Received: by 10.182.29.41 with SMTP id g9mr26275628obh.27.1445784549375;
        Sun, 25 Oct 2015 07:49:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.104.101 with SMTP id gd5ls1486765obb.73.gmail; Sun, 25 Oct
 2015 07:49:08 -0700 (PDT)
X-Received: by 10.182.102.194 with SMTP id fq2mr25238726obb.43.1445784548934;
        Sun, 25 Oct 2015 07:49:08 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id zg1si3161000pbb.2.2015.10.25.07.49.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2015 07:49:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=amarjargal.gundjalam@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id fv9so169399575pac.3
        for <outreachy-kernel@googlegroups.com>; Sun, 25 Oct 2015 07:49:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-type:content-transfer-encoding;
        bh=IsUoc7yDgRv5arB/JNeF0s0fawanoxXMyuKMJkQRL4E=;
        b=XI4iy+7IVqPfn9l4K3Olb+3PTiGApKHLq9efVoznq1DI6XBFlhtG9rLGbMwzv1m4V/
         SseMsIGvEeD4lrIlA9nZjBerVXok6GLuPG7cc2AxwjZb/VzE1QBgs6L5ZuhfXoYXYg4E
         OIUderxax8cNloR/EhT0bRXIt5SDvBabKKxUw5TjJYyahHyZ6ss0WyiKKRkKwBDToHA+
         mOHRLooD/JKSBDIMACAmMCsshhEkUPJkbrC9SfxXtilujRgXVIHkhCX7C8gz6rE5ybfb
         rFPloS20ToPupMqCdpOGa9P6NJ0AlMqd3jPgeBtfkDgBIr4z5sU7nGqLaEZlLPXrbELb
         mDQA==
X-Received: by 10.68.182.34 with SMTP id eb2mr16807763pbc.87.1445784548834;
        Sun, 25 Oct 2015 07:49:08 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from localhost.localdomain ([103.26.195.49])
        by smtp.googlemail.com with ESMTPSA id sn9sm29054172pac.16.2015.10.25.07.49.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2015 07:49:08 -0700 (PDT)
From: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/4] staging: slicoss: Fixes multiple checkpatch issues
Date: Sun, 25 Oct 2015 07:48:53 -0700
Message-Id: <cover.1445784166.git.amarjargal.gundjalam@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1445720974.git.amarjargal.gundjalam@gmail.com>
References: <cover.1445720974.git.amarjargal.gundjalam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This patchset fixes multiple checkpatch checks and warnings.

Amarjargal Gundjalam (4):
  staging: slicoss: Removes multiple blank lines
  staging: slicoss: Removes unnecessary space after a cast
  staging: slicoss: Adds space around operators
  staging: slicoss:  Fixes block comment style

 drivers/staging/slicoss/slic.h    |   23 +++--
 drivers/staging/slicoss/slichw.h  |   38 +++++---
 drivers/staging/slicoss/slicoss.c |  174 +++++++++++++++++++++----------------
 3 files changed, 134 insertions(+), 101 deletions(-)

-- 
1.7.9.5


