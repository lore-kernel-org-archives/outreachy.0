X-GM-THRID: 8221215424512
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,35fc9dbaa0120918,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.120.136 with SMTP id lc8mr4700675lbb.24.1426296862074;
        Fri, 13 Mar 2015 18:34:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.43.169 with SMTP id x9ls486421lal.92.gmail; Fri, 13 Mar
 2015 18:34:21 -0700 (PDT)
X-Received: by 10.112.40.81 with SMTP id v17mr3769181lbk.5.1426296861480;
        Fri, 13 Mar 2015 18:34:21 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id bz6si232611wib.3.2015.03.13.18.34.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 18:34:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wixw10 with SMTP id w10so403215wix.0
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2015 18:34:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=EWSWWiw0uiyf594Wi9p4MnY5X918dhNZQSMXe2QoKSI=;
        b=0bv45QdXjOmRp2Q4Djp9uuVqx0ZdowCAOimuXc7O2vclJAQxMUaPpnFT7IqSgn3E7E
         cCKV6z1vMxwOwU9Hg8kur9FxhKTzoLNNdRb9PwYicTCiONHkhiBVdvuX4zpb0NT62NfT
         Ta4xdQvwLgUyZh8opxxtdJ/ysEeNBxyRlXFfHl2XWG3ifiIXtHmcMXY9Iyx2/1mgPTNR
         l+Aem+F+SVjfLnfmBJ5L4TmrZ/u2ULACRYIhwnbrz/eTUZ/wRZPyk/vVmjCvOsVJRJv1
         2Jlpd+shdjtzv6UFxhaFGnzss47cGSTacxyz4mnjtBbY7PRsCVL3b7BDwn6wd/NOnlj3
         mUcA==
X-Received: by 10.194.239.65 with SMTP id vq1mr99185019wjc.98.1426296861402;
        Fri, 13 Mar 2015 18:34:21 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron ([46.214.223.212])
        by mx.google.com with ESMTPSA id kj8sm5024496wjc.29.2015.03.13.18.34.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 13 Mar 2015 18:34:20 -0700 (PDT)
Date: Sat, 14 Mar 2015 03:33:39 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/6] Staging: iio/frequency: Fix style issues
Message-ID: <cover.1426296329.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset involves removing style issues in iio/frequency and
cleaning up as suggested by checkpatch.pl.

Cristina Opriceana (6):
  Staging: iio: Remove space after type cast
  Staging: iio: Remove explicit comparison to NULL
  Staging: iio: Prefer using the BIT macro
  Staging: iio: Do not use multiple blank lines
  Staging: iio: Alignment should match open parenthesis
  Staging: iio: Use braces on all arms of if statement

 drivers/staging/iio/frequency/ad9832.c | 10 +++++-----
 drivers/staging/iio/frequency/ad9832.h | 12 ++++++------
 drivers/staging/iio/frequency/ad9834.c | 31 +++++++++++++++----------------
 drivers/staging/iio/frequency/ad9834.h | 27 +++++++++++++--------------
 4 files changed, 39 insertions(+), 41 deletions(-)

-- 
1.9.1


