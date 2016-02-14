X-GM-THRID: 6251014829496074240
X-Received: by 10.50.70.42 with SMTP id j10mr6125110igu.9.1455427806906;
        Sat, 13 Feb 2016 21:30:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.41.85 with SMTP id y79ls1487256qgy.63.gmail; Sat, 13 Feb
 2016 21:30:06 -0800 (PST)
X-Received: by 10.31.47.131 with SMTP id v125mr9825935vkv.11.1455427806318;
        Sat, 13 Feb 2016 21:30:06 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id ff2si2281873pad.2.2016.02.13.21.30.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 21:30:06 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id gc2so478338pab.0
        for <outreachy-kernel@googlegroups.com>; Sat, 13 Feb 2016 21:30:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=DIuLLNHIJi8vB28nBH+9fLUAQSjsgCfn+l0ljgWdHJc=;
        b=poU/mjBf3i6nKIuiu6akCY1+QnB8FSK79SbEVuhRB+NyLljuG4uCl+ZjDH/Hmfa5+p
         5jGcwTSGIxaZe193zW+vkU5NBsXH7IuIusHlaYdHlrCMfvTrzQ7NyBAPqXpZcWOMwkRY
         nJ2yfGqFS2JjvnA3bBtL5cuWXAz3HdNuNn2mwJKkvzpJ0TUd0y/c143TCcfEXB7xAY7K
         tdjcHkf08kO3HzgdLCLgNOVgIctljQM0a1DwyI6tVuubAEnp0d9xHfMriDubJZlxVc3C
         6NE2nnIAGmH7iPLRNb3y/+7weCYAmQDIBgAs6D0NpACiJpDhb0M3TakONDFi7yiXhcyN
         sYjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=DIuLLNHIJi8vB28nBH+9fLUAQSjsgCfn+l0ljgWdHJc=;
        b=EFKKnNbruRZu4U2ZLmZAMX7RJzLVEuipyc9O9Eqyv3Ci7Hdu775z8Xf+FOx2BvSUAx
         KAQWl9exI5a33wl8MnvmeMbXX8N4CnPVjvaOFOlPNhsobdMr3gFwsT/g8xKA4EV+tbek
         qpw2/Api/QIM0ZB/hLqxI2D7BrACeT3JkQN1dHqNJK8YbYK0eBbqrhV/aHRGJh0D6D7o
         dOMkV8mPbnd1sQ9vYFeVZ8KAMdx6uX9kdYtgzTDdr9Mm2RfcyIuu8U40cLcbKR9CGLay
         qDiWcvbIxHL0MKZzETl1wmj+/3UHoGNCgxszFnRfbdhDJc+/JM+eIt8EeepBjm+ANMUg
         JMrQ==
X-Gm-Message-State: AG10YOTQKDN53CN2VMWaC3d8onNVgiXQDJ18nE++rnGF5NY0OIxMSVRBxV/PswHuLRA4uQ==
X-Received: by 10.66.100.196 with SMTP id fa4mr14259485pab.37.1455427806157;
        Sat, 13 Feb 2016 21:30:06 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.130.221])
        by smtp.gmail.com with ESMTPSA id tp6sm29552709pab.25.2016.02.13.21.30.01
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 13 Feb 2016 21:30:05 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Sun, 14 Feb 2016 10:59:52 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 0/2] Remove unused macros
Date: Sun, 14 Feb 2016 10:59:48 +0530
Message-Id: <cover.1455427132.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

This patchset remove PlatformAcquireSpinLock and PlatformReleaseSpinLock 
macros as they are not used anywhere. Also remove the commented places 
where these macros were used. Used grep to find occurences.

Bhumika Goyal (2):
  Staging: rtl8723au: Remove unused macros
  Staging: rtl8192u: Remove useless comments

 drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c | 5 -----
 drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c | 2 --
 2 files changed, 7 deletions(-)

-- 
1.9.1


