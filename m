X-GM-THRID: 6666820090157072384
X-Received: by 2002:ae9:f507:: with SMTP id o7mr17781686qkg.46.1552318918622;
        Mon, 11 Mar 2019 08:41:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:3fed:: with SMTP id w42ls4682996qth.2.gmail; Mon, 11 Mar
 2019 08:41:58 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzWDxc+r35lVLSUhI1EelkaqorFZsK/eB5W5bzTboPlFQ+pbpqxyDdwgJH83iUIZMKL3O/H
X-Received: by 2002:ac8:111:: with SMTP id e17mr10971531qtg.43.1552318918023;
        Mon, 11 Mar 2019 08:41:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552318918; cv=none;
        d=google.com; s=arc-20160816;
        b=y0SnPAH4yfCWSVXNr3D0b+6VYAAWcjXoQxMG662Iwmll6yEqbnyR9dCfA6e6elag4c
         ljMTQAd3wIVy6/PzwG6ZLGmPA07P/MzC6iz/HFW3h53hHbYZTii3899ya6v+9Sq9HIRp
         OIene0hWOHrhClxRh17LVPfBl9agrbHD307pRtSWnQKHvPSXC1EDudS5G5subUAQzJTA
         qvqoj9FeQu/MP3BPejCbvVzl7HmuvPmbuUFPl0EOUDtg/QbYbCzNheFiOWw+ZRL+LXZh
         aW0OyUndy8r8f5idYrzLWS4rwWxN4AEx6hFVmPvOz7hBmtNWw9ckbCLeZU5Uaq6oMg7e
         askg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=XPCnDZ31VdvKFg4bLNaVelxR8Xno4GmsfSlwaLn4srk=;
        b=wDV6OziCDvsN7C2MMEk/uwmv2o9204nqiZJxwW+xNTHK7J5Q+tVCMVvNvV9yGwgcjx
         AR2XiArs0QbYjtRf+yood2J9jSjvgviMCw9A/JRtpQfE9vgtvcCMtxSYeD5TIFMz6mlz
         erMNA+1/cLu8po1T4Ri5CxRbjI5WIdda84oZNv5PKOxKRX1TzmvMRx0F9mcF8UkdrrpM
         CesQA+V4isIFM3mjOmQejptblwY06t2MT75p7EKQZUkFmVbykNuqG4XK+fQ5oKuda6KQ
         kuU8fkVOS4G5KnJ66NPaI7m1tvFw9YOnbfBT3oMbt6jAhwze1T3DRQPWuq5RldjVEyaj
         Q0bQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rkcSIQZA;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::42a as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com. [2607:f8b0:4864:20::42a])
        by gmr-mx.google.com with ESMTPS id i11si350934qkk.4.2019.03.11.08.41.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 08:41:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::42a as permitted sender) client-ip=2607:f8b0:4864:20::42a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rkcSIQZA;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::42a as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42a.google.com with SMTP id u9so3980005pfn.1
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Mar 2019 08:41:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=XPCnDZ31VdvKFg4bLNaVelxR8Xno4GmsfSlwaLn4srk=;
        b=rkcSIQZAVqnVRzpSoZgNfGOwtNxPiTpQQo/68+yYsYYumJsneRZCN4tHekZ1k/SWjE
         U4ZgYY9+cOMGBmFd0B4BiXWJ5nu8Spl/AR7fsyjE2Tf5TVbW6xkzr+J1Ojb/U5SNDOLh
         AxecvrYGbKuYvhICGQUGnA5CpIJyccCmyBegU0DwBwXS+hkr5Ztsdi7nezTbUy4eDTsr
         BZUdGMJkKya4lWWwDJgjPXsg2kFgGhYwatxVVwr/RS2OapbbLj5rxPWx3x1GcMglKcj7
         hANMsk1fOqu6mz97m/Fq4ROlSsi8mt1ouLJwRoWSBA6zFA1nE2BsYHM8OtPb2m15Hwe5
         c0YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=XPCnDZ31VdvKFg4bLNaVelxR8Xno4GmsfSlwaLn4srk=;
        b=B/qH6ZLgeV4F4PSJGJbIOylDxelFoHqaVbcTP21TkzTO+WBhiP3G0ZQBxBVBK+i7uX
         9viK/bPsK9KVZf/bIzDgJvzHL57DahxnzpaYVx/eKwJQsS/fti9paQ1zuhW/ZCDjr1tX
         W5quX4qDH6zsooE/M2d8urqJgxE+ESp6dwkgosCeQTMuJnHecj2T3JmuyhFx0gKOfnx2
         mycO8/I8uSRxMNkFTX5fKE8Fq0mxoUMzufzTaal8aeqMs5fN8h7+l2Lni5sNFQFZJrSK
         KXeYfKh0rCF5KbVv6XYOneYuTAbti+7LyxNStndwk9pi/55cNePdeS3AKIryH1LPfAZZ
         9deg==
X-Gm-Message-State: APjAAAXLafUbrV4hyBk6DKn1PdVG7XL1AFONJp3ShdsmdekmfpRRomla
	uP6j7LqTqZsMBkHygjCG9pvZ5R0amPQ=
X-Received: by 2002:a63:8d42:: with SMTP id z63mr30834452pgd.414.1552318917387;
        Mon, 11 Mar 2019 08:41:57 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id u184sm8798080pgd.13.2019.03.11.08.41.55
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 08:41:56 -0700 (PDT)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v4 0/7] Staging: rtl8192u: Avoid typedefs for structure
Date: Mon, 11 Mar 2019 21:11:34 +0530
Message-Id: <20190311154141.31401-1-bhanusreemahesh@gmail.com>
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
v4:
 [PATCH 6/7]: Remove parentheses around list_entry 
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


