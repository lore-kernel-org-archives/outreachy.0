X-GM-THRID: 6674617337151225856
X-Received: by 2002:a81:89c7:: with SMTP id z190mr5762366ywf.25.1554055450977;
        Sun, 31 Mar 2019 11:04:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:9a43:: with SMTP id r64ls1090512ywg.6.gmail; Sun, 31 Mar
 2019 11:04:09 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz0FSFpRONYP13UA2cAzPe1CElPNmv2skR6hETyOXDQRLH+1Qz32XCTKNzf/h8fbGzFlKz+
X-Received: by 2002:a81:574a:: with SMTP id l71mr5722065ywb.23.1554055449823;
        Sun, 31 Mar 2019 11:04:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554055449; cv=none;
        d=google.com; s=arc-20160816;
        b=pAoxnya2lsM2I4lGZnOpUA2y10WbS/SMBVBok3HlkVMheHhViCpw3tcRUnaHFc0XT4
         n3zVdMTDNl6S8QeuN7dwoShVMaSdkZ7p0yv4LiUreXdYuDy/ELKgFi7FFVSnMI01eucA
         2k9QHcZpbLyuxVb5MfCht8+t/oJOqVQe52CXK9dRG0Hx6NwstJ08xmXhyM4nI2TfVSBd
         q2pxUDRgcp+i8Jy3D9T45qqYEOm6LGFUriqKW8BpHygxRjo911A0xzA2OnnIhZJS148G
         O/Ahr70c/5xIY8azCywTHtgKepoKkbrOgHNA3zOzLfrVzqJ+EYT0F0mxnAxn0FgmFTeJ
         R7tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=nFOKkAeil66utHgFs9njeiYiuzdZSkJvcEDp1k1mAOc=;
        b=v91RaiSmA8n43s0rzXPdtg+8jYRynjHwybE3AI1UMWavtJf+9uJRxJskVar5XtmG6D
         pM4iY0ZI7Iofm0mODCKUQlHJ0OFl1hrr9hG00zp/P70btiLR3zfDruXNAEMEaT/aqKqO
         t72VPL06h9BHqTCU7R6x2L1kEg61pYpMyL+UJJs0IyTXEc7wSW6x7aPURHkuO18hBBCl
         3iI9O69InBKsa48vlVDe4DWSDaMnHfuxLo8nBEgiD1yinX+Vq3IgPXHYJXRf6d8NHgsc
         vlg5gr4fGym3vtG6XJW1q0DfpPX7ezJKmX9zILcxlDhhwnMvFnL7xjVOxHZXhyVH++5y
         oDDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SvNWwElU;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::62f as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com. [2607:f8b0:4864:20::62f])
        by gmr-mx.google.com with ESMTPS id 126si371752ybo.3.2019.03.31.11.04.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 11:04:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::62f as permitted sender) client-ip=2607:f8b0:4864:20::62f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SvNWwElU;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::62f as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x62f.google.com with SMTP id w23so382563ply.4
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 11:04:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=nFOKkAeil66utHgFs9njeiYiuzdZSkJvcEDp1k1mAOc=;
        b=SvNWwElUUxXoqyaaPHDUTAhfrlMDvPil+fB27vdBPEMGQKh7dbFI6iFqgEQ4Mew1H6
         p3DV3uC4rkH0ZDO7c7/ZLP21Mo1ixrm5etRYeY7TXYt6Ck3wS9Ga1zOcijAjaXTRZ0Sm
         DLxN/mDZ0YNYb7ITO+S4b8LzqcMMoochMyuRF6WQSiYpnixdlWKWvv0qqMCnFw7jvq5j
         MpL9mZog+Ox5dyq8OZQrOkvXOh92ArCK6Z03rthg6Z5aK87EpBQsqi/BYir5/uN7S3Sz
         CTzjpyvYn4nU3I8YoGS6rWYGo007UN/2tdPyXUbu3JnoDqmvx7TsDmJFbKbIcSVkSG7w
         NjZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=nFOKkAeil66utHgFs9njeiYiuzdZSkJvcEDp1k1mAOc=;
        b=V/MDRkk4MGlAxQScD0ds8ZStI5zHNEnB3dYLflzOjGnrq2yJQ3vK/wBJiWReNXAC0C
         j8458S94AloDFukTrj19r/cEpv4ugYYJx0Sef89y52e+t+sIIyqRRjeXGKaXWrSX1Pxz
         6v9UEXiLJA4uW1ni+Sqf6EGDZBRglQzeXitKXAQnuzXzCOJOcQwFLlhNakuIWcG59F9k
         HfCy6F52zm98mkoZtW8uaXWrXKQgNNYg6cJOVxvh8M2PFK8teRg1lNNkMSxY0/Svy8oU
         GcnwCUNz+SeTqVo0WIE2jXNqElugARzwBtbGyWwkSqjUyIaw7XdGdy0+8KVjyYwxhOB7
         V2tA==
X-Gm-Message-State: APjAAAVxJRhRsu4smg5baSEjzM66gSEGzC8eFQTf65hIWN5bZhFUPvcm
	ucsC6AJYQ2aWAQzI2yfIAPDdopi9
X-Received: by 2002:a17:902:9001:: with SMTP id a1mr29855278plp.96.1554055448730;
        Sun, 31 Mar 2019 11:04:08 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.230.116])
        by smtp.gmail.com with ESMTPSA id e1sm8289669pfn.187.2019.03.31.11.04.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 31 Mar 2019 11:04:08 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH 0/5] staging: Use !x in place of NULL comparison
Date: Sun, 31 Mar 2019 23:33:46 +0530
Message-Id: <cover.1554054896.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Challenge suggested by coccinelle.
This patchset:
	-Uses !x in place of NULL comparison.

Payal Kshirsagar (5):
  staging: comedi: use !x in place of NULL comparison
  staging: rtlwifi: use !x in place of NULL comparison
  staging: erofs: super.c: use !x in place of NULL comparison
  staging: erofs: xattr.c: use !x in place of NULL comparison
  staging: erofs: inode.c: use !x in place of NULL comparison

 drivers/staging/comedi/drivers/tests/ni_routes_test.c |  2 +-
 drivers/staging/erofs/inode.c                         |  4 ++--
 drivers/staging/erofs/super.c                         | 14 +++++++-------
 drivers/staging/erofs/xattr.c                         | 10 +++++-----
 drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c      |  2 +-
 5 files changed, 16 insertions(+), 16 deletions(-)

-- 
2.7.4


