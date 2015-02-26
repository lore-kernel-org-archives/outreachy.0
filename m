X-GM-THRID: 3565286326272
X-Received: by 10.50.57.47 with SMTP id f15mr7154572igq.1.1424934431110;
        Wed, 25 Feb 2015 23:07:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.12.170 with SMTP id 42ls105450iom.25.gmail; Wed, 25 Feb
 2015 23:07:10 -0800 (PST)
X-Received: by 10.43.144.81 with SMTP id jp17mr7017641icc.25.1424934430827;
        Wed, 25 Feb 2015 23:07:10 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id hs7si295278pad.1.2015.02.25.23.07.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Feb 2015 23:07:10 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by padfb1 with SMTP id fb1so11734268pad.8
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Feb 2015 23:07:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=bl6iEEvkapFBQBTkPGMRoOgwu2TbzUhWaTFrG6iXGq8=;
        b=TOiWoP/5Ac13LzvVHWP0wMGZQNhNBV9pD+aszfrmYG6i7PCzcbjXjldSnvIwpVA6P2
         dQGcwD9xVhrnzunxU3/5k+5+QsbbIyYVhguKv8DU28WGBfqEgoCmBL0WWKNdqvLZ81cy
         oVfLI6NvQXxqzp4OED24B2bogB8a/DsGhIvErATJ1nrgQRKftdWcMuqS3VY6PDzzlTV/
         EPU2lPehpFxO1D+gIgy1PGWFNso8hDxmJ5MAi4c2pDkZmSkXHSQRgUsJEXe3TVsVcKaU
         tDlPIT27WwSXxJ/bh5xf14zKACPQTgM4MOm0Gc1COjiAggCtc/KxQgmGrkHczlnF7H58
         mm5A==
X-Received: by 10.68.253.104 with SMTP id zz8mr2652823pbc.73.1424934430684;
        Wed, 25 Feb 2015 23:07:10 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([111.93.6.70])
        by mx.google.com with ESMTPSA id go1sm43250199pbd.75.2015.02.25.23.07.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 25 Feb 2015 23:07:10 -0800 (PST)
Date: Thu, 26 Feb 2015 12:38:13 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v4 0/4] staging: rtl8192u: Fix warnings in ieee80211_crypt.c
Message-ID: <cover.1424934230.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

[changes in v4]
In v4 version, code indentation is changed to look better.

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
  staging: rtl8192u: Remove unnecessary comment.
  staging: rtl8192u: Replace asm header files with linux ones.
  staging: rtl8192u: Fix quoted string split across lines.

 .../staging/rtl8192u/ieee80211/ieee80211_crypt.c    | 21 ++++++++++-----------
 1 file changed, 10 insertions(+), 11 deletions(-)

-- 
1.9.1


