X-GM-THRID: 7025609319157596160
X-Received: by 2002:a2e:7e02:: with SMTP id z2mr32100943ljc.169.1635777139748;
        Mon, 01 Nov 2021 07:32:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:c74d:: with SMTP id x74ls1216828lff.3.gmail; Mon, 01 Nov
 2021 07:32:18 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyo8LuivFVkKz49scTpgD2U179e3pYSThSfmnAUdNXjuGFn0FDXK9e1l5Lh3wnEjC3lHyHA
X-Received: by 2002:a05:6512:3a8f:: with SMTP id q15mr28121578lfu.425.1635777138150;
        Mon, 01 Nov 2021 07:32:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635777138; cv=none;
        d=google.com; s=arc-20160816;
        b=yPdVSJIFaPabfaNPyasdtx5j6QrYfl0/u2S640LwEiwW/UT8CRIpOX2yGP9Xagbjs6
         qt2GPhhgXTDASllnzDb9R+upXTkKx4cfShpFnTfTU0ao4/Of2a1fOI/tahPKIrkUZXMf
         zKeOtZ2khv1UgsqEsqzJ+4tERO8bLA828HvvqPs5GEaSSvUnjqv7Cllj5VzXfzlDYHFZ
         7tFScnsDTc72pLTYAEM7rYRMOd8WgXT8GvqaQBbGvbmmMgUSnyV3B1a19QmsGhVopHYT
         KA1VMbhB/M7qXsFRVeU9XZD63bFvqAAGFxLRk+5jURYrKQTz98/H9x+O4YymtKGl8Ban
         0ciQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Nk+zvXAt/yARZGxNV8fi4WGClbaS5+zS5+rohIvR53Y=;
        b=WhXv+2EDD7G69ARf/qug6YlWrfm8AZXo4RNnUcBC+ojDqGz4kkDA1GxLxQYHZdWpIy
         ktffYr/wU6gFvzU7DZeRXtxD8PhqouoY+HBuXcIijI9EpmA6H9hrXTYgaSQFjVty5cBq
         +1TimoTTTK0Nv+pNGuuHiCM04P+t66bbhRNIXF5OYNH66Ck2nDK7dAkYL+AcjFiz3vH8
         /T0hsyPoo5EphWlB54SIxJHfdItJg7QWrLEu0/vGWFJ6MirHI3MvDD2KfPEDEHsIQASw
         /eF9Dgg3qAeDlUwH3qRDu9s+UH9kG0/5mTH4EgRYYL0VZeq7RxqBxFMJ6fAdoq9jOlv/
         pMHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=GUcjWsJL;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::32e as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com. [2a00:1450:4864:20::32e])
        by gmr-mx.google.com with ESMTPS id t1si431844ljg.3.2021.11.01.07.32.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Nov 2021 07:32:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::32e as permitted sender) client-ip=2a00:1450:4864:20::32e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=GUcjWsJL;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::32e as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x32e.google.com with SMTP id 67-20020a1c1946000000b0030d4c90fa87so79334wmz.2
        for <outreachy-kernel@googlegroups.com>; Mon, 01 Nov 2021 07:32:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Nk+zvXAt/yARZGxNV8fi4WGClbaS5+zS5+rohIvR53Y=;
        b=GUcjWsJLUg2Lf2WmjGU/RQeJcsua7eeLBxuChpYxP84Ylg2tZelUYkJxQv6ZXlVeO7
         8mWWgVkxsk4XcBhKxmMdwwd7kC26Qzw/3/WLIqBwgFt6nMyOezDBclDAi/HkCCj9iK6Y
         uZMweyotbPljtq08Efsdx4usDZu+iDk5BD/tfgZwAvNREUEcCu7TzLlMpX+ud5K0o+UQ
         LxTioXUX0OAobNBRFNMQkQ2bEpgYthF+RKOdSGIw9V+6WoqJmvZjRo7MnNw1M0/Yx5C4
         Ov65aJlQLKr6DrHSmrgecYBxlK6gGri5rS2rn8kKEB036vmgIC0dLcy3vtmz46+rI4CU
         Gbwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Nk+zvXAt/yARZGxNV8fi4WGClbaS5+zS5+rohIvR53Y=;
        b=cGqnd5DAwXcHabQb5N1oGads2ASxOllif5YklJqxC79fbnOv/eCepxR046u/4tCeHq
         coNpkoNsdcdjck9DSURcw7bX438SqdQ/b6sRTvoXxYFtgEJDHHJCxN2W4L9BLEAwVxGt
         CraujbA9TkQDaiS+wvuu8kOOoYFRHwPbCbqcJfj1BIq79zFW0s2iifyR7Syc6BbSOtzt
         idoc5o2roDjd+5mgb0CLYMnuN4wE3KoQd571ZBtf1EVeDUHIK21GJWdNLgROrOMdCNeT
         A9tfJjsbuVqK9UWEI+bz+cqEYG/G7a1zgetSNJa5b42IzGhAUBYp6MEdoJQcIZhw+kuU
         c1dA==
X-Gm-Message-State: AOAM530hyU+QksEmQpxJkJ3V8p80wBzj0tLHz21oZhLaJhvTeneqcKfR
	zHQg9X+6vUljy9nsPOTmV/4x1Q6voLchGw==
X-Received: by 2002:a1c:f405:: with SMTP id z5mr31418913wma.72.1635777137721;
        Mon, 01 Nov 2021 07:32:17 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from localhost.localdomain ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id l8sm17157721wry.43.2021.11.01.07.32.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Nov 2021 07:32:17 -0700 (PDT)
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Karolina Drobnik <karolinadrobnik@gmail.com>
Subject: [PATCH v2 0/8] subject: staging: vt6655: Fix line wrapping in `RFvWriteWakeProgSyn`
Date: Mon,  1 Nov 2021 14:31:58 +0000
Message-Id: <cover.1635773679.git.karolinadrobnik@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch set is a series of small refactorings of the function
`RFvWriteWakeProgSyn`, now renamed to `rf_write_wake_prog_syn`.
The work here allowed to shorten lines marked by checkpatch.pl as
being too long by:
  * introducing two new temporary variables (`idx` and `init_table`)
  * rewriting a conditional to switch between two modes of
    AL7320 initialization.

In addition to this, the patch set renames the function to align it with
the kernel coding style, updates the function description and removes two
unnecessary conditionals checking if the value of `init_count` is lower than
a predefined value.

Changes in v2:
  * drop "staging: vt6655: Introduce `data` temporary variable" patch, suggested
    by Julia Lawall <julia.lawall@inria.fr> 
  * amend "staging: vt6655: Rewrite conditional in AL7320 initialization" patch
    to use indexing and `init_table` temporary variable
  * add two new patches to remove unnecessary checks for init count, suggested
    by Mike Rapoport <mike.rapoport@gmail.com>:
      - "staging: vt6655: Delete bogus check for `init_count` in AL2230"
      - "staging: vt6655: Delete bogus check for `init_count` in AL7230"

Karolina Drobnik (8):
  staging: vt6655: Introduce `idx` temporary variable
  staging: vt6655: Use incrementation in `idx`
  staging: vt6655: Remove unused `i` increments
  staging: vt6655: Rewrite conditional in AL7320 initialization
  staging: vt6655: Rename `RFvWriteWakeProgSyn` function
  staging: vt6655: Update comment for `rf_write_wake_prog_syn`
  staging: vt6655: Delete bogus check for `init_count` in AL2230
  staging: vt6655: Delete bogus check for `init_count` in AL7230

 drivers/staging/vt6655/channel.c |  2 +-
 drivers/staging/vt6655/rf.c      | 44 +++++++++++++-------------------
 drivers/staging/vt6655/rf.h      |  2 +-
 3 files changed, 20 insertions(+), 28 deletions(-)

-- 
2.30.2


