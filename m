X-GM-THRID: 6666820090157072384
X-Received: by 2002:aa7:81c4:: with SMTP id c4mr11933391pfn.36.1552302985353;
        Mon, 11 Mar 2019 04:16:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:907:: with SMTP id 7ls642806pgj.2.gmail; Mon, 11 Mar
 2019 04:16:24 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzhsaH8H+rDrzmH+YZozXV5JAiNWzdmfdnq/Hgp0VmFasXnLJ5fLzfC3rcMHslYCTGbyhoi
X-Received: by 2002:a62:b401:: with SMTP id h1mr11956551pfn.61.1552302984473;
        Mon, 11 Mar 2019 04:16:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552302984; cv=none;
        d=google.com; s=arc-20160816;
        b=xfBTzlE9q3iXqcUi+BU1X/Odrrv9UoGh8dV1CNjlEK8wuAGuBGW348dkFB+HDawx6o
         VzDJfrTRnyiZVHObZ5kksCH5QKHxpUuzwKBsqK0tR1yFDLbwrVWXCUDuc9ZHJK4GqPe1
         GW+Ikjx3ib3eKAFMRGkke+JIcrIZpchsuLJc+dP6hHeJjtsbbiHMWOgpV2wPeYZeGzGt
         LVkC0wMne7sUPOkh0d3gohdR1COStgBN5fTvrBrrsrlrhC8LnkmvTsZ2iL85r04nTkar
         xo/Ju9km9Q/wVjX5Ona+6XahbDMt8MaAWLVydJlj7sKIQBO9bsjPvwHih3ACI27YmIhZ
         z65g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=on8DQYiyBwFGrxtkMxpvEt6lpJIyhsZm25b5ImUcUTg=;
        b=JGNkfKXzR1ca2wWxyxJTspXKMMEeEjM2HctYaQLKIA1UAlfRQya8dLcdH/P8Ola3Az
         kDLy8DJGXigMa4062Gw1NfFLnpoKlsiOPMnfQp1HQTDXcTc8gcylzqo6scl9W8kc/uz0
         ifcK+ZsIN7UXtf7egNlkkS8KJ3lZc+4RbSPTo5FWn0oLAuI1GCxEnADlfX6o4rRTsJ/v
         8HFGhkMUKJaFU9Z5ipOf9zsBR9bxz8Pg72rvB8HH3YI2s/9ERzxtBW0z+W7ENwzXTzdz
         5xyG5bLoqn5bKc3WeU6pY2vnGo2GYiK0CcAicyQ2Du8w27Ar9MEyN5SkLaK8m0Nv8bcJ
         Uzww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vTB7263F;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id k70si236664pfc.0.2019.03.11.04.16.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 04:16:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vTB7263F;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id 125so3759576pgc.12
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Mar 2019 04:16:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=on8DQYiyBwFGrxtkMxpvEt6lpJIyhsZm25b5ImUcUTg=;
        b=vTB7263Fdq3LH3V2e5zi0uJIV1pqFgSvc+sOsAiypSve3AO5srixyx4NeN2j7fTI8e
         qKXLiCKACpd8ajCrJecIi8aVsRo3kOnp/TYWz0NUe8u4xBj7+luf8zB+u55dH+fe9oUR
         o9NRS8ZwnmO94dW+jFSUQn8nhGFaP5iwQMtlkziIlrkKpCZsUUuuTLMT4eNXg8+IJuFC
         xFBaXrOAflrxkHUSTW3HdOgChsMfB7qxPHGPm4J4FMXoNtblS6F74I5bSgs+thMqzAj4
         tPYzM+AbfcbTQsBYQ9eOPmGupTPjJuU/4xE4P0QvWakshbyrmDojAPi9OlSjr03oFfn5
         x7aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=on8DQYiyBwFGrxtkMxpvEt6lpJIyhsZm25b5ImUcUTg=;
        b=g6maUgYCnoun+YVOSoDlCSl/rYW6C+39aB9Irnu7LTCawde6dZHtob2Ksm3iyqxirB
         V6iZv0zAt4euOeMTYRIkurOz0NYU0AxZe7VszcwO328KI9H9zL9ohAzJjv+EruCoHFBu
         SQ7nuFnNVcZBTYDprO05yR1AaZ/pLVxi4RIsQnMMZZLA7KgkZy3b4YhR4WiPGnABa8MY
         3R/p2pLXh0d0g1X2rLGTh5A3WFwvi/H8lZzlz48khplbGYfjSwcItdOYJBWbF26XD9nH
         t0WhcaX9/WlTVbk7ewNcoEYn3L6NNOoR9foWTDZpfekb7FjGZyLwZH/zIyoBGPbjsDiC
         eokw==
X-Gm-Message-State: APjAAAW789mJAjih6237Gu4J5A6Pv6FjtwMOWpm0ECl3N4QWvpo3Swml
	HKJa9gtk6/eE6YLTo1AhFmmqY5iWCKw=
X-Received: by 2002:a17:902:7890:: with SMTP id q16mr33328542pll.63.1552302983978;
        Mon, 11 Mar 2019 04:16:23 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id p11sm23586700pfi.10.2019.03.11.04.16.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 04:16:22 -0700 (PDT)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 0/7] Staging: rtl8192u: Avoid typedefs for structure
Date: Mon, 11 Mar 2019 16:46:00 +0530
Message-Id: <20190311111607.28766-1-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1

This patch series removes typedefs for various structure types.

v2:
 -Modify the driver such that kernel should compile at all times.
 -typedef is removed and then updated the uses in the same patch.
 -Struct names chosen according to Linux Kernel Coding Style.
 -Series with one patch per structure is done.
v3:
 [PATCH 2/7]: fields are lined up.
 [PATCH 3/7]: fields are lined up.
 [PATCH 4/7]: Commit log changed.
 [PATCH 6/7]: line_entry return values removed.
 [PATCH 7/7]: Use of if-else adjusted according to Linux Kernel Coding
              Style.
Bhanusree Pola (7):
  Staging: rtl8192u: Remove typedef for struct _bandwidth_autoswitch
  Staging: rtl8192u: Remove typedef for struct _IbssParms
  Staging: rtl8192u: Remove typedef for struct _RT_POWER_SAVE_CONTROL
  Staging: rtl8192u: Remove typedef for struct _RT_LINK_DETECT_T
  Staging: rtl8192u: Remove typedef for struct _RX_REORDER_ENTRY
  Staging: rtl8192u: Remove casts on the return values of list_entry
  Staging: rtl8192u: Adjust 'if' to follow Kernel coding Style

 .../staging/rtl8192u/ieee80211/ieee80211.h    | 30 +++++++++----------
 .../staging/rtl8192u/ieee80211/ieee80211_rx.c | 18 ++++-------
 .../rtl8192u/ieee80211/rtl819x_TSProc.c       | 10 +++----
 3 files changed, 26 insertions(+), 32 deletions(-)

-- 
2.17.1


