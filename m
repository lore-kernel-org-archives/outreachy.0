X-GM-THRID: 6203360253861429248
X-Received: by 10.140.195.2 with SMTP id q2mr12695830qha.5.1444423310909;
        Fri, 09 Oct 2015 13:41:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.26.134 with SMTP id a128ls953804ioa.108.gmail; Fri, 09 Oct
 2015 13:41:50 -0700 (PDT)
X-Received: by 10.68.138.132 with SMTP id qq4mr12653793pbb.11.1444423310467;
        Fri, 09 Oct 2015 13:41:50 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id zg1si328758pbb.2.2015.10.09.13.41.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2015 13:41:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id ex6so96202105pac.0
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Oct 2015 13:41:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=ERq69K4BBmsUw54y1X6G5NForUSZHD1kbIypg0Zq7cg=;
        b=Tv4R+9Jy8mmoIbDug6ubcWUK5oGEKF7JzmFlfKNqQl+i1GgMVwMe2zEcH8B/ayei3Z
         MWym+8PsopKcX/NHE0n0Qye3GJ6zw+V9BlxFiGhabiSnV1PlDqXB2+C0wrbZjWoxuF14
         /WEYWotfGOdvsCm2etEgWpESaNO09wPKr+YQp/usPpEuef9Zdw/KxWW5jCvKvfnkKRwe
         BOD/L61IvtatvSpcPSB8baTcQxOs2gIu6goy/enH/WmVqAZ+aJNVOozTkRibDTSDhWM+
         TOoExpUUBB0p8SmPW/4siQhH7sLIDntpcKCLQRT2RlXecYfi4WWLHTuT9R82fgoFoUxG
         73xA==
X-Received: by 10.68.242.2 with SMTP id wm2mr17788790pbc.31.1444423310290;
        Fri, 09 Oct 2015 13:41:50 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.135.155])
        by smtp.gmail.com with ESMTPSA id su3sm4094402pbc.83.2015.10.09.13.41.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Fri, 09 Oct 2015 13:41:49 -0700 (PDT)
Date: Sat, 10 Oct 2015 02:11:45 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/6] Fix multiple checkpatch issues
Message-ID: <cover.1444423168.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset fixes multiple issues found using checkpatch.pl

Amitoj Kaur Chawla (6):
  staging: sm750fb: Rename miniDiff
  staging: sm750fb: Remove multiple blank lines
  staging: sm750fb: Rename dispState
  staging: sm750fb: Remove multiple blank lines
  staging: sm750fb: Add space around '<<'
  staging: sm750fb: Add space around '&'

 drivers/staging/sm750fb/ddk750_chip.c    |  8 ++++----
 drivers/staging/sm750fb/ddk750_chip.h    |  3 ---
 drivers/staging/sm750fb/ddk750_display.c | 17 +++++++----------
 3 files changed, 11 insertions(+), 17 deletions(-)

-- 
1.9.1


