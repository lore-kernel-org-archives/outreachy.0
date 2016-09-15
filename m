X-GM-THRID: 6330674938515554304
X-Received: by 10.66.145.133 with SMTP id su5mr7988546pab.22.1473975120762;
        Thu, 15 Sep 2016 14:32:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.195.70 with SMTP id t67ls1420570iof.48.gmail; Thu, 15 Sep
 2016 14:31:59 -0700 (PDT)
X-Received: by 10.67.7.4 with SMTP id cy4mr8270761pad.30.1473975119575;
        Thu, 15 Sep 2016 14:31:59 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id 142si3239058pfx.2.2016.09.15.14.31.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 14:31:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id oz2so2576633pac.0
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 14:31:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=yn01Up6czMa9Ig32tvwDMxGJMuOP1NjPHOOrP67/kJE=;
        b=EKF9Gb6X+eTtRAMK5pW/uLnSWYAlFJP7lMXQzqNobWoDn62FrIlK1LPT6+Cy4bRaef
         7R0FIZ0LKEIHTYU6tN9D55KNaJGT2nRtYRE1IHS4COAwIftdKO7bYL7dG0ZDlPN4zw/5
         G+Qdz+gRcol0Yr8DiQ84+TyGF4a55BCzbjhtjbv3/Cy/FiVaOYLAXLvquacbvdbcFD+f
         nH7q+OJTwgfhvVjaQK7VYM1WBSsvmdcHkHRh1hVB7lBiYSMMpOinF1lRoS3V/9tCLf5+
         PERVkEMV04MWTByLYFLxfSphQDfH6vvpPaYxmq8A8R2rtE36pNHaTnhRdhc2P9MX3YjP
         8O5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=yn01Up6czMa9Ig32tvwDMxGJMuOP1NjPHOOrP67/kJE=;
        b=E/OWHpEwmq2R1OqgpbEzElEUd5ZOhqqLUwx75w1YxabJccoCSRBJ8FEhQlocsfMfpP
         bvGxKCJOXLyDzWybom+OzQisDUuldgxFFFcVoYNNdGvjcZQOxlgSgECz3gqg2vkwDzpi
         FZzgaKnHDD8xPj81mSNEgwuy2nQ6lJF6em1g0gOjKeFBz/4NYxRq3h2HZRvzwZL/khdX
         kWOdlModrigZqasadZn8nilCuZFvsP8y5ky9rWsemtaAJ6hcdpm+7j2/xFxB538q4PIx
         twQiyY0UPmaKQzNEAscXpNAuxG4fBbot+6+S1uc+bZweJZ0sZsHcvW6qTPE6FwhiWOP6
         DbBg==
X-Gm-Message-State: AE9vXwM034j/pNwoScVSdHtsbIEY2Ktg+V04qlcLgost02pdlMCwzHJNpiQB211Jc6/YdQ==
X-Received: by 10.66.193.71 with SMTP id hm7mr4135272pac.164.1473975119334;
        Thu, 15 Sep 2016 14:31:59 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id n7sm47201510pfg.45.2016.09.15.14.31.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 14:31:58 -0700 (PDT)
Date: Fri, 16 Sep 2016 03:01:50 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 0/5] staging: sm750fb: Fix multiple checkpatch warnings
Message-ID: <cover.1473975000.git.aquannie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fixes multiple checkpatch warnings in sm750fb driver.

Rehas Sachdeva (5):
  staging: sm750fb: Add blank line after declarations
  staging: sm750fb: Change 'x != NULL' to 'x'
  staging: sm750fb: Remove multiple assignments
  staging: sm750fb: Change 'uint32_t' to 'u32'
  staging: sm750fb: Add spaces around '|'

 drivers/staging/sm750fb/ddk750_chip.h    |  3 +++
 drivers/staging/sm750fb/ddk750_display.h | 45 ++++++++++++++++----------------
 drivers/staging/sm750fb/ddk750_mode.h    |  2 ++
 drivers/staging/sm750fb/ddk750_power.h   |  1 +
 drivers/staging/sm750fb/sm750.c          | 14 ++++++----
 drivers/staging/sm750fb/sm750_cursor.c   |  3 +++
 drivers/staging/sm750fb/sm750_hw.c       |  2 +-
 7 files changed, 42 insertions(+), 28 deletions(-)

-- 
2.7.4


