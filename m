X-GM-THRID: 6802585330019991552
X-Received: by 2002:a17:902:8a8e:: with SMTP id p14mr20341315plo.28.1583850320452;
        Tue, 10 Mar 2020 07:25:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:8493:: with SMTP id c19ls6052788plo.8.gmail; Tue, 10
 Mar 2020 07:25:19 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsDHRlHMfdm426zJvgpBeUHID7wIlnWiCVdcb/5xFtiOdvGQhE3OpOpzkSfwhZl8J3k533t
X-Received: by 2002:a17:902:7886:: with SMTP id q6mr8819699pll.237.1583850319105;
        Tue, 10 Mar 2020 07:25:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583850319; cv=none;
        d=google.com; s=arc-20160816;
        b=iNWdfpbVhMaiZlbxXT21pqcYobyCyTbHzIa+vYVNfT/ZNybjr+ZNE1IG1LlshahEzf
         4HlzJtyreoHtDVvE/OtqP0DaaCr9W47099qBZhdTPEI/CWqRJgFk1X20sH6HmoPQtmCI
         hG/J/+jUz933m5sPCj/a8JCy+ZdvweNhekou4RClbJ+ON7sCYv6CXOPjTDo2EaHlVHQ8
         /GJQQCZ9io8AejgLxNMOD4jTKRi7fSW8pcdHPss+dth3aeik837ZdBGO64awFJ+2v1FH
         ZGZfvLhauUokAB7MLGGXlLcZKMIfWlG/EerGNPQ+Pi91gEi9UWk1vGMd/zDFKaBcxms4
         +7zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:dkim-signature;
        bh=Ai4NRrNCd268WfYXj+4JN1gSbCMXsz8WvMPMI1USbYA=;
        b=X8G8ZYnlth+Fg8HMXFRUHN8PqjndRTD9BUBtJVRpsO47GUXCy2VX58ZsVoyfK1DuXj
         OryXB8e5y2SMeA/G2SVrtcriKIFzQGStO7YwB1QXMfuYiwIIuJKk0wya8q1udHwksMRQ
         Y+XOFQ0IWI0thoWILylBlNE52u6Xu1KepnZ0dCqbeWfSXRq+NsGF+ganm6rvvFvmvsyq
         dZr/6sC1VXUARtA2yBHybnyy7nYEGJiE5BBzsNEx1YL9Qgzwl+wuFtWPAsml56vQUtaM
         O8iSwMJLkEaxrS3OwWmBrIqYwUbRdjEDwaKGvr8pyDVeo62O/bAZNan1Xf5fVpy0+hyg
         WV7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=vpODDkem;
       spf=neutral (google.com: 2607:f8b0:4864:20::544 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id l12si689371plt.5.2020.03.10.07.25.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 07:25:17 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::544 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=vpODDkem;
       spf=neutral (google.com: 2607:f8b0:4864:20::544 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pg1-x544.google.com with SMTP id t3so6376535pgn.1
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2020 07:25:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id;
        bh=Ai4NRrNCd268WfYXj+4JN1gSbCMXsz8WvMPMI1USbYA=;
        b=vpODDkemwWPtiWYZgTh9aXg0/GEGum30YoK27LqKsUfz/mz9ycn+zpKv+24S9B2Cyk
         kKOLPRLiptUqrSktLsM1W3aHB/hDIcgVsbJCgbt6DZ2azoOBxlZLPp+dkDJN+A+K1rYG
         GlAkZbpd7MDpiuotuA3AYkVETtEzRSCzaQt7OKL7hG8YPwrd1daFE9ymEgC0VAzGABmo
         TDt35q7G/e3gOvVmRULQ/v2rvajajgDdYbwe+FMaW5WB4T4r4EZ2Vn1CTArz8jvd3aGG
         hbarQtVCCWEmEkGZIitk77Z8CwGOKtZfEwPmjElBOZswVxjN1eaxbTG4/22cBkMn7GcW
         CB7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=Ai4NRrNCd268WfYXj+4JN1gSbCMXsz8WvMPMI1USbYA=;
        b=U9hnRTNYvZhIDQrhwpvV/QvyxS7Ow5ZjC63sRmwd/4nl+b6WwmRkFh7uMO9MFgMPWv
         Q7xKO67Kj08G8KxsyMf3+1DIs2uEho6rRHj+SC7w8diASYdLlG/AWECdxzC2k8rfIOiY
         5y52rKtZ/0Y3r4a7ZE2aGJkWokdbAa1dRHIX89tkHT0FNrikMRUreUJ8EIzJOA8UtWG+
         ocFlIwslB7kLuihzK5SeV9DZvF4V0U8vX83W7uHWFI7YpyouSwCM5B2Glzfk2eeTj+LQ
         DDqNGfHddxEyg0mONa3spPNLXhxEKOolbRURMSSUmZWksM74pidPSHQUDEYNhSkugFeo
         f0qg==
X-Gm-Message-State: ANhLgQ1f1b3KkxjS8As2W28el5anZxEZEQLTRO5cYShZJGi+Cko0AshK
	1QZm1XvJtAmYqVVvZcvgtQfeXCD6YSyW0g==
X-Received: by 2002:a63:5206:: with SMTP id g6mr21906737pgb.419.1583850317142;
        Tue, 10 Mar 2020 07:25:17 -0700 (PDT)
Return-Path: <kgupta@es.iitr.ac.in>
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.174])
        by smtp.gmail.com with ESMTPSA id d13sm2486243pjs.44.2020.03.10.07.25.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2020 07:25:16 -0700 (PDT)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
To: jerome.pouiller@silabs.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com,
	kgupta@es.iitr.ac.in
Subject: [PATCH 0/6] Clean-ups in wfx driver
Date: Tue, 10 Mar 2020 19:55:03 +0530
Message-Id: <20200310142509.25632-1-kgupta@es.iitr.ac.in>
X-Mailer: git-send-email 2.17.1

The patchset removes a few unecessary spaces in some files in the
driver. It also removes an unused structure and uneccessary variable
declaration. It also assigns a bool instaed of a digit to a boolean
variable.

Kaaira Gupta (6):
  staging: wfx: data_rx.c: remove space after cast
  staging: wfx: change 1 to bool
  staging: wfx: dat_tx.c: remove space after a cast
  staging: wfx: data_tx.h: remove space after cast
  staging: wfx: remove variable declaration
  staging: wfx: remove unused structure

 drivers/staging/wfx/data_rx.c     | 2 +-
 drivers/staging/wfx/data_tx.c     | 6 +++---
 drivers/staging/wfx/data_tx.h     | 2 +-
 drivers/staging/wfx/hif_api_cmd.h | 4 ----
 drivers/staging/wfx/sta.c         | 3 +--
 5 files changed, 6 insertions(+), 11 deletions(-)

-- 
2.17.1


