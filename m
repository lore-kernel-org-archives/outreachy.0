X-GM-THRID: 6254491725431046144
X-Received: by 10.182.29.129 with SMTP id k1mr31194094obh.23.1456237334824;
        Tue, 23 Feb 2016 06:22:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.19.132 with SMTP id f4ls1186794obe.75.gmail; Tue, 23 Feb
 2016 06:22:14 -0800 (PST)
X-Received: by 10.182.250.233 with SMTP id zf9mr32169971obc.5.1456237334442;
        Tue, 23 Feb 2016 06:22:14 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x22a.google.com (mail-pf0-x22a.google.com. [2607:f8b0:400e:c00::22a])
        by gmr-mx.google.com with ESMTPS id ui7si3918498pab.0.2016.02.23.06.22.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 06:22:14 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) client-ip=2607:f8b0:400e:c00::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22a.google.com with SMTP id q63so112980223pfb.0
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 06:22:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=NLH3tzay2gdOv9uu5GmVGpfc7pGULkYtmrxCJXUmKCU=;
        b=0+Iy0RFIhqzJMEran19OJQEK0A0y3kU5hg60MQp7wczHgSrJgIJGentDyFV5P+v6EJ
         YylJ2IRPXBt60xkYqIMsXbwbnt/pWauaS0tH9uC1zM3da7CJokdTqwhOYg0Y6Hl/JWoL
         QvnnB4DUyuSfCcZwzQwsDk5Fp86qiHuty7op9mMObqYuxQjbU4Obf+og0aYCg0B+xjld
         SKgSDWIyEDBHRZMjZ981WMs58pbiAJTbjaMGq3f9HTFrLlPDLF1tQB1mT7jUEwAcHFxQ
         rdq6rpZc7eE07nlLRnTLA7f3fcjc8yxNyZFIdQHaSA0VSAMAQ2XoRFmiOnrhvmJqsZ+4
         zIVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=NLH3tzay2gdOv9uu5GmVGpfc7pGULkYtmrxCJXUmKCU=;
        b=OZb2Im812roVswItx6TRpCey+Mq8JWj9Nrh6oMgmRpJshB5yss8s9j4OhD+kqEyEoR
         UH1Q+utlk91OMINT2NBCrlX3FVhzyE7qR7o+ATAwNomFqWx+OKdGvAutV6Ft5pVdfDov
         LNw/kFYe3/KsBigK8K2Ro8Jmt7uQ9/HtUAn0uZWg15Ih0IeOvx+DNdu2TFiArKuzhpJG
         6Dkv2UtqwOVqH5vhSS50cgoNmIq2y4sYe/ZzNcWNdupoa7wAs9fTvVvon/vrWRebK0Nx
         7TeiJcLG90WH7Pdh1g6gsCh6uucBzX9T8qOR8+LuQmZS0F5g0zRBwjQhiOyOBuiRLFMI
         yyvw==
X-Gm-Message-State: AG10YORulLfHBrA8slyJpEFm4i4xVjNAbVZhkJC4LqXIRpHUlVXebK1U88m7ebU0Z0ePFg==
X-Received: by 10.98.67.8 with SMTP id q8mr46577792pfa.133.1456237334262;
        Tue, 23 Feb 2016 06:22:14 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.106.39])
        by smtp.gmail.com with ESMTPSA id x88sm44659027pfi.66.2016.02.23.06.22.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 23 Feb 2016 06:22:13 -0800 (PST)
Date: Tue, 23 Feb 2016 19:52:04 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/3] staging: lustre: libcfs: Use swap() and do
Message-ID: <20160223142204.GA5265@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

some cleanups
Message-ID: <cover.1456236436.git.amitoj1606@gmail.com>
Reply-To: 

Use swap() function instead of using a temporary variable for swapping
two variables.

The Coccinelle semantic patch used to make this change is as follows:
//<smpl>
@@
type T;
T a,b,c;
@@
- a = b;
- b = c;
- c = a;
+ swap(b, c);
//<smpl>

Additionally, cleanup if-else statement block.

Amitoj Kaur Chawla (3):
  staging: lustre: libcfs: Use swap() in cfs_hash_bd_order()
  staging: lustre: libcfs: Remove unnecessary braces
  staging: lustre: libcfs: Remove comparison with zero

Changes in v2:
        -Divide one patch into a series.

 drivers/staging/lustre/lustre/libcfs/hash.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

-- 
1.9.1


