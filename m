X-GM-THRID: 6330275775734874112
X-Received: by 10.107.152.132 with SMTP id a126mr3885000ioe.28.1473882183643;
        Wed, 14 Sep 2016 12:43:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.131.195 with SMTP id n64ls604913ioi.36.gmail; Wed, 14 Sep
 2016 12:43:03 -0700 (PDT)
X-Received: by 10.107.143.9 with SMTP id r9mr3827298iod.34.1473882182973;
        Wed, 14 Sep 2016 12:43:02 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id z4si1492641pam.0.2016.09.14.12.43.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 12:43:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 128so1181437pfb.0
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 12:43:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=HEndWpAIIBIJx3Ioc6AO4eummViDyD1amUABVYRcjkM=;
        b=zQ+K21rKTWkvrQQEF2QHHMXOcThBfNPkmLYX7jBN21DqeZEY88CePrh+21BSDYVoQd
         nFdNN64tsN1F1Rlc6DiEX2zFIiEw1ycsVg6ASsoTdg/mhbC9vdAvE27Vt9ltXWM2vam8
         0Krq2ZRqeTt8ys3xYOWEc5NaVoiGGdLJEZ7x3X8kKkvZNCA3G6/Y5Ies9FCVX3xW/7Ts
         LfuTYEKL+BE1QVr/UmJVjUBQ9ZvCSB48x2yYXAVUCLQuU/KqmfM8dvo1a9XHafhJNgsm
         Nj07lp4sxYg26jZQ48j7K3tbgsJtly3m65f8tkYqXReSoKt6AH0ljO7tbgJJhdbJN4eW
         AtQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=HEndWpAIIBIJx3Ioc6AO4eummViDyD1amUABVYRcjkM=;
        b=iHCwZ1NpJgw8kmIy+mXUPor42BSq8uAcEX4BZpFdL2xSdwAIMz08FfJ1/Bj1x4VCNs
         qc3FW0Aq+HQr/xQQWw1CiO8z7FFGNJTD6cvT+fO2GnoiNGNFSo+FJG+EsDOREQdI9tzw
         eSTxNdIrUx3LKSGcLOk5VHrumJoVy5bbNhML9deb61eI1/hfpu64plyZVjT99gW08nfB
         PNkHwSkrkWCRQcXTFOpN+1xKIFNMvMls29ZYPH8vu7iGOVoDTTX5j1N1RDGvFTdnjpn5
         6LqxepQNaUIUK4P/12mBim6dcdIr7/z4eaMLJTIjW77vSL8nxoCmHocF1woyWESKl5Vo
         lskg==
X-Gm-Message-State: AE9vXwNLH6RoM0txlH9YVkqhB5iPLjRdA7JkrZXgZBWCn4Rg38seiC7j6JMXpkPJgY7rcw==
X-Received: by 10.98.88.131 with SMTP id m125mr7621977pfb.63.1473882182590;
        Wed, 14 Sep 2016 12:43:02 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.240.22])
        by smtp.gmail.com with ESMTPSA id 3sm39970744pfz.33.2016.09.14.12.42.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 12:43:02 -0700 (PDT)
Date: Thu, 15 Sep 2016 01:12:48 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 0/6] staging: ks7010: ks7010_sdio.c: Fix multiple checkpatch
 warnings
Message-ID: <cover.1473877138.git.karniksayli1995@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patchset fixes several checkpatch issues detected in the ks7010_sdio.c
file of the ks7010 driver.

sayli karnik (6):
  Use <linux/atomic.h> instead of <asm/atomic.h>
  Remove braces following single statement blocks
  Remove space after '(' and before ')'
  Remove unnecessary blank lines
  Remove the space after a type cast
  Remove the null check before kfree

 drivers/staging/ks7010/ks7010_sdio.c | 75 +++++++++++++++---------------------
 1 file changed, 32 insertions(+), 43 deletions(-)

-- 
2.7.4


