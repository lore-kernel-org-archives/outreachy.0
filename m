X-GM-THRID: 6330639307056873472
X-Received: by 10.157.23.171 with SMTP id j40mr7433322otj.41.1473966824774;
        Thu, 15 Sep 2016 12:13:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.46.36 with SMTP id q33ls3933280otb.33.gmail; Thu, 15 Sep
 2016 12:13:44 -0700 (PDT)
X-Received: by 10.129.72.129 with SMTP id v123mr7556501ywa.21.1473966824288;
        Thu, 15 Sep 2016 12:13:44 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pf0-x22b.google.com (mail-pf0-x22b.google.com. [2607:f8b0:400e:c00::22b])
        by gmr-mx.google.com with ESMTPS id 7si1466175pfw.1.2016.09.15.12.13.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 12:13:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::22b as permitted sender) client-ip=2607:f8b0:400e:c00::22b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::22b as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22b.google.com with SMTP id 21so8756793pfy.0
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 12:13:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=QqYChTnp9UD24tj/uG5HMYFxwwHjyrHrlAGT4BgEFeI=;
        b=Aj1PyWLYysh+AJz/gtvq3gA6VMGb6JtHSXtG4EsQXjrRbEo5d/5AP2jDI1wt72go3r
         jnWX1SZX25Sc7niSCsAJvo45oKRFEzlYtXD1pgTGILQ60jwRF9Hr39NtgNHLgEyrHi3b
         xzsCkV4wNoeeDcDyuIvKJGg6YxLqId3N52gzcxSj/U9JGjOwa6VHUGll721KBi0tfzKk
         LJy1FcvvVfTzF6nhRtD48Bb3+gFFd8nlpbERvrHRvSvWHpBYQ8d+BufkcsBRrqhbqlB1
         b4j8uj8/OdGcBHCFwpFkYA/WcecsI0zORegu4vbwKR6l9OX7ZXZwRWHKpmTWH8BiIBAC
         VjXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=QqYChTnp9UD24tj/uG5HMYFxwwHjyrHrlAGT4BgEFeI=;
        b=P/8i46cL/Oz6RwifQit3gT+qmroNLjQyuKqBQWIZWd4ivoiGGn30msWowYLy/eVijI
         Sv9gECW/9gSL3ULUCiaKXf02ez30eNuB1f7kNmD0wBZOxauudJEA7TXYfNLMvl7pfYeR
         +/6phPnzwP6RgnoxnAv9cVVGLTVe6tJaJhaGk7Rt68M0rz5vxRVzU0JhTuVhCE64IUey
         CcospKhgG6vhjdTQPa+6EHVhdxXpeIPvzycuaNJQY5xrKQK2n1v0WxetqlZ9rmDUdhJM
         NEL2lcrq+1hn6V1/V8Ehm9cKZj2AcXfReRsnfO32lIFeLZexejNQqHP/05g5H7Axb/HG
         4YrA==
X-Gm-Message-State: AE9vXwO9CkhvoUdm2WBtl/ixVmpxy6A6Ffk/I0j0PIWSxY4mrUupstCxH55/2qzbaH3aaA==
X-Received: by 10.98.75.4 with SMTP id y4mr17042132pfa.25.1473966823928;
        Thu, 15 Sep 2016 12:13:43 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id i135sm46264070pfe.17.2016.09.15.12.13.40
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 12:13:42 -0700 (PDT)
Date: Fri, 16 Sep 2016 00:43:34 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Lior Dotan <liodot@gmail.com>,
	Christopher Harrer <charrer@alacritech.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 0/5] staging: slicoss: Fix multiple checkpatch warnings
Message-ID: <cover.1473966683.git.aquannie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fixes multiple checkpatch.pl warnings in slicoss driver.

Rehas Sachdeva (5):
  staging: slicoss: Fix alignment with open parentheses
  staging: slicoss: Remove blank lines before & after braces
  staging: slicoss: Add {} to an arm of if-else
  staging: slicoss: Remove unnecessary braces {}
  staging: slicoss: Remove unnecessary blank line

 drivers/staging/slicoss/slicoss.c | 40 ++++++++++++++++++---------------------
 1 file changed, 18 insertions(+), 22 deletions(-)

-- 
2.7.4


