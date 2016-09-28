X-GM-THRID: 6335472108323209216
X-Received: by 10.129.71.85 with SMTP id u82mr898221ywa.152.1475092048509;
        Wed, 28 Sep 2016 12:47:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.3.17 with SMTP id e17ls4073203ite.21.canary; Wed, 28 Sep
 2016 12:47:25 -0700 (PDT)
X-Received: by 10.98.49.197 with SMTP id x188mr9069817pfx.4.1475092045402;
        Wed, 28 Sep 2016 12:47:25 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id um12si2474278pab.2.2016.09.28.12.47.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2016 12:47:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 21so2531191pfy.1
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Sep 2016 12:47:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=yz6HQTL2aYSEex6vlaqx8WG383rnJDfcu3pb91r/Rpc=;
        b=Qsx8EkS7afzTDOWgCJgc5MyE5mTMvh5EHJl2dYZDY0BqTQxt4OZD7twamv/AEtUVlw
         o8oxALrcYlI22m6OCoDqW0ZE/ZD1Yrbt8jyb9xBG6Ie8GPwzoCgCmYH24z0XOJ6KeCVO
         fr6Rnovbaij2cJYLDMfEeOfVrfuVDONEwfJjhHW0HEQWWkxQ5rmV/2PMz6cI6iOsmPre
         2CQdmDgMGoZl2rNqSJeoHW2rAvuhiZzs1k/uq5pWoqsfctJPzDbEJOfP3H8rA2Og9lrX
         HgbpaFdGqHSDOq/9Dpd/gMMtWkoC5t7ROndfKXRDT1HBJqMtVIvXZYLlF6+Zsu6OG/1U
         HQZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=yz6HQTL2aYSEex6vlaqx8WG383rnJDfcu3pb91r/Rpc=;
        b=jNa5gpXc8nT8DHDgQwTqPZwImFE30rH34ZAgBQbyGvIscoCvJmghlzU83998Th5Tio
         ryLZO5q2uxiNoj4ptnPx/Js3ZPAPNwgrnM2dfb7FcVjIlJ6dO7NBSustaZd2y8K/rSNi
         FLLlARa6OhhugCK4YQSeHyUIBZcFNcyROMVyIzyE/E69NiD2ikd7gxiS8jedCaGdvqr/
         dvBwoefutmLx4kf95ZKh+U4YdVgSbV2dFC/Ri+HFcGhox+dY+NtV6gyxRa5ot0C/SD0/
         CLGT5gpsEWWOMvXcxFTD4darfNtPbI31cgIJO1GxOuxreGpzDF3IJ/6DeBDEcosp6qeW
         p72g==
X-Gm-Message-State: AE9vXwMsEimLXFGqva7TKSldsQQWdSb0vgO00yp8dcCTb9Ql1Isb8DmfssH8w7IfygAGSw==
X-Received: by 10.98.78.72 with SMTP id c69mr58906653pfb.67.1475092045242;
        Wed, 28 Sep 2016 12:47:25 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id s74sm14454848pfs.44.2016.09.28.12.47.22
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2016 12:47:24 -0700 (PDT)
Date: Thu, 29 Sep 2016 01:17:19 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonas Rickert <jrickertkc@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 0/2] staging: rts5208: Fix checkpatch issues
Message-ID: <cover.1475089953.git.namrataashettar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix checkpatch issues.

Namrata A Shettar (2):
  staging: rts5208: Add space around binary operators
  staging: rts5208: Replace explicit NULL comparison.

 drivers/staging/rts5208/rtsx_scsi.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

-- 
2.7.4

