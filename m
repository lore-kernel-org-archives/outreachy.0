X-GM-THRID: 2517133950976
X-Received: by 10.42.16.141 with SMTP id p13mr11404941ica.6.1424684572259;
        Mon, 23 Feb 2015 01:42:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.87.119 with SMTP id q110ls2244799qgd.15.gmail; Mon, 23 Feb
 2015 01:42:52 -0800 (PST)
X-Received: by 10.140.149.78 with SMTP id 75mr11054035qhv.9.1424684572096;
        Mon, 23 Feb 2015 01:42:52 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id bo1si4137003pbc.0.2015.02.23.01.42.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 01:42:52 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x230.google.com with SMTP id lf10so26197047pab.6
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 01:42:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=WdUE7mayHNXFfS7WGnOoju4Y7r5b5zqDro5OI+/L4Ec=;
        b=sIJwYx1djJfxH/9xcUTui7P2weFEF9GsXFKnLjwK3KcBezFufpA8F6KlHa9TJ6LRVK
         XppQZaMlSGVYiDMNU9clkqLsYGxJW1M9kDgYCHTFGWFveE3hSQNZ2WmyyFcXpO9TmIMN
         ezaakmxdGWmb0h+t6McqIjhQ/YxrgsvfzGOsJ1+bMsq57Y0Z648AndPt2AoaqpOF2No3
         hlZ3SPGMxyqh/cMrDv1hDfFEgQKWszDho23UGhU4Nn0PghGp+mBQom67GKd8wn3ACBUd
         H8i0Q9mLNjZkrmCJVU4Uf8sjKd5irWJp/3qWBGSqAxrYEfpon+wZuzySDyhEte8HgBtf
         s9Rg==
X-Received: by 10.70.88.71 with SMTP id be7mr17482596pdb.41.1424684571919;
        Mon, 23 Feb 2015 01:42:51 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([61.16.142.166])
        by mx.google.com with ESMTPSA id lq2sm35353450pab.34.2015.02.23.01.42.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 23 Feb 2015 01:42:51 -0800 (PST)
Date: Mon, 23 Feb 2015 15:13:54 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 0/4] staging: rtl8192u: Fix warnings in ieee80211_crypt.c
Message-ID: <cover.1424683659.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

[changes in v3]
In v3 version, the printk functions which are changed to pr_dbg 
are changed to pr_debug as pr_dbg gives a 'implicit declaration of
function' warning when you build.

[changes in v2]
In v2 version of this patchset I correct the commit message of
[PATCH 1/4] to be clearer and remove a comment from [PATCH 2/4]
whose style was changed in version v1.

[original cover letter]
This patchset removes an unnecessary comment and clears checkpatch.pl
warnings in ieee80211_crypt.c such as:
convert printk to a preferable function like netdev_dbg or pr_dbg,
replace asm header files with
linux ones, fix the quoted string split across a line.

Navya Sri Nizamkari (4):
  staging: rtl8192u: Convert from printk into netdev_dbg or pr_dbg
  staging: rtl8192u: Clean-up comment line style
  staging: rtl8192u: Replace asm header files with linux ones.
  staging: rtl8192u: Fix quoted string split across lines.

 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

-- 
1.9.1


