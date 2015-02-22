X-GM-THRID: 2595026370560
X-Received: by 10.182.91.79 with SMTP id cc15mr9326157obb.20.1424641109798;
        Sun, 22 Feb 2015 13:38:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.150.74 with SMTP id y71ls24641iod.78.gmail; Sun, 22 Feb
 2015 13:38:29 -0800 (PST)
X-Received: by 10.66.171.9 with SMTP id aq9mr9237660pac.20.1424641109496;
        Sun, 22 Feb 2015 13:38:29 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id ki8si3980833pdb.1.2015.02.22.13.38.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 13:38:29 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by padbj1 with SMTP id bj1so22466798pad.5
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 13:38:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Q0JXsSXF7iFWgXRb6wjbaSp65OOlg/V66DLn9eL1/Bg=;
        b=uAVkRr46lqPkiVis+iWOVv0nQqtYlLRvFxgVPTSMtpsnMVmnNqF2mXoBcS7A4D76Z2
         U+WegG6CUCg1Nld+5hx2+8LHJpEi+CBX6Iy7SLT8ut7Yf9o+M+jn4tiAb8TcP+lbSYLF
         vRdWIWZ81ltUdkMqs0eePMDUzuVusYbVTyLHGh80h3zITrkxpUe+3v5M3r2YwOYwYgGK
         Qgl8RI6duwJF1edl83qs7/bLFaQHm/Z83lE7ukGvrw67bLjYulS2h7hj+XOvMsaXqqKe
         wB4vsgVpgDimGR0Q+G+m+ac4NsiPPmZwazK7a49T7TJ5ctaEjd77WfrR2J/zyCIYMgdR
         KMyg==
X-Received: by 10.69.31.203 with SMTP id ko11mr13907200pbd.70.1424641109407;
        Sun, 22 Feb 2015 13:38:29 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([111.93.6.70])
        by mx.google.com with ESMTPSA id ly7sm33565558pdb.1.2015.02.22.13.38.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 22 Feb 2015 13:38:28 -0800 (PST)
Date: Mon, 23 Feb 2015 03:09:30 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/6] staging: rtl8192u: Remove commented header to improve
 code style.
Message-ID: <cover.1424640704.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset improves the code style in files of ieee80211
by removing the header <linux/config.h> which is commented 
out as it is not used in modern linux system.
This change was suggested by Arnd Bergmann.

Navya Sri Nizamkari (6):
  staging: rtl8192u: Remove commented header.
  staging: rtl8192u: Remove commented header.
  staging: rtl8192u: Remove commented header.
  staging: rtl8192u: Remove commented header.
  staging: rtl8192u: Remove commented header.
  staging: rtl8192u: Remove commented header.

 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c | 1 -
 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c | 1 -
 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c  | 1 -
 drivers/staging/rtl8192u/ieee80211/ieee80211_module.c     | 1 -
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c         | 1 -
 drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c         | 1 -
 6 files changed, 6 deletions(-)

-- 
1.9.1


