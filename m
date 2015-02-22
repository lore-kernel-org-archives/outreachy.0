X-GM-THRID: 2517133950976
X-Received: by 10.70.88.234 with SMTP id bj10mr7789416pdb.0.1424622744054;
        Sun, 22 Feb 2015 08:32:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.27.106 with SMTP id s10ls518042obg.73.gmail; Sun, 22 Feb
 2015 08:32:23 -0800 (PST)
X-Received: by 10.183.3.43 with SMTP id bt11mr8183110obd.7.1424622743771;
        Sun, 22 Feb 2015 08:32:23 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id nt14si2178304pab.2.2015.02.22.08.32.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 08:32:23 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x231.google.com with SMTP id et14so21268476pad.11
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 08:32:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=QBe41K8FmiwIWSZpkIONvn7wJU+MtD/yUW70/dO7Y10=;
        b=BCVK55su2GW4MHzgLKvclDDHxOllYW/RSSy8TiWPnteXkDciEKLnO8qae1dtOETeUa
         tdFpa6KNT28C4NmITcue2/qA11dA8RnG6bnQIoLL0WW5OoUcMbx088Tm7PJunNPQ7SSu
         iwmw+Ms/fEbR7S67ZLyJauwBBr7KjrGpAcU1AngoIZogSzQs5fafQ7hyzcIyEic8IZRk
         cyK36UaVU8mt7jNkzT8C5ikmrgQTMIaLxw8yaW/trGMjxgyi/avm0B+bCoWqDkEnCPzi
         vzGvFnK512qR/hywPGBMG9AnMixe9vIJ54Y91qMT689bWElo+W1DAQmvN09TRwQTs8UK
         eFzQ==
X-Received: by 10.70.103.38 with SMTP id ft6mr1010423pdb.34.1424622743597;
        Sun, 22 Feb 2015 08:32:23 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([61.16.142.166])
        by mx.google.com with ESMTPSA id nu10sm14623428pdb.24.2015.02.22.08.32.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 22 Feb 2015 08:32:23 -0800 (PST)
Date: Sun, 22 Feb 2015 22:03:25 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/4] staging: rtl8192u: Fix warnings in ieee80211_crypt.c
Message-ID: <cover.1424622240.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

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
  staging: rtl8192u: Remove unnecessary comment
  staging: rtl8192u : Replace asm header files with linux ones.
  staging: rtl8192u: Fix quoted string split across lines

 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c | 19 +++++++++----------
 1 file changed, 9 insertions(+), 10 deletions(-)

-- 
1.9.1


