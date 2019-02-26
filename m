X-GM-THRID: 6661088091510407168
X-Received: by 2002:aca:4911:: with SMTP id w17mr13028137oia.5.1551141184664;
        Mon, 25 Feb 2019 16:33:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:afc3:: with SMTP id y186ls48671oie.4.gmail; Mon, 25 Feb
 2019 16:33:03 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZbsE72u5Xt7QRevw4PBafkk1e9sKoQ+GxmkS/qV9ZGKwQojNX+zPFqPgSIBkMj+bQ2bu7w
X-Received: by 2002:aca:62c3:: with SMTP id w186mr12888070oib.33.1551141183903;
        Mon, 25 Feb 2019 16:33:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551141183; cv=none;
        d=google.com; s=arc-20160816;
        b=bTTiCAvCMqPih5DwLV7wkyiz33Lb/02l5+5UjwhElEFRhmZPrg/WLhvf3jtCLDe7YD
         vgyS/gTeomW2B3rybu/us3WyXg5e3ZoEXAwUKktcqj0Q7EmcEek06ChPcCfKyCgf+G+m
         wTE9E+rO24NLQMVfiFRkGkcanSFLL+U/BF8tVGrY+WI1OQIV4bQS2Ko+7/q+AQoXxLyy
         iZL3XaqsqBnI+o9HtBFAVCn69FcQe30T6kfTOstl/U12UQNHX45MEs6CUAZhZ73isqSm
         o3YRxL3WCPKJUv5d4Z7hHt62HxmNBDwWdZze+1++/wb2/Nk3YI4T09CaiA7+REg+GlRj
         1Zrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=ON/ewYiUGayOpXS/qs3aVugTgtY6e3juh5E+O0UpA4Q=;
        b=oFbEp8rjnafplC03F4DhI7dIsSmqAY2DIqBhuKk3c3/4c3OkUWMnCDiTVKiwYT7AXM
         oUXnGgNfKM9b4+CshhRgTh8/cW2DQ46ybo9LyUiie1G4N6U/vzVvD49piXmZrH3IZCn5
         pwSxhN5NVSf/ARi9bQUo4sRPNzLIFlVTNMyZghsx+WQS3kaB0Ncne5T70SKigyHAOUfJ
         hQllkh8Q5rBBf7KGSq2J8mTawP9xnS28BCLTJ2NmOWD3YRy9Jf3xg6NHDcOxjOAQBk4A
         PSpxOYJjvUvC39cTlaESwrXdaeAvlju0hjuQQ333Pu6BQjAFAVFdtLyvzgVFCls27c0v
         no9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WLXbKaYG;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com. [2607:f8b0:4864:20::52e])
        by gmr-mx.google.com with ESMTPS id l92si441892otc.4.2019.02.25.16.33.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 16:33:03 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::52e as permitted sender) client-ip=2607:f8b0:4864:20::52e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WLXbKaYG;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52e.google.com with SMTP id e17so3250392pgd.2
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Feb 2019 16:33:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=ON/ewYiUGayOpXS/qs3aVugTgtY6e3juh5E+O0UpA4Q=;
        b=WLXbKaYGKLzorhyqHnHiLFPxuYcc5Wvx7tz7C0tqNma2yfQkyHd6Yu5DM5o28pyXeV
         SnJSz0HSVtWSTSHQfPVZlOA0SMRsDD+ZFVPQzGqgl1yvoCeKWLTwtliKJoLkVhAm9XZJ
         NLpzHTzqTP/D+FZlbC0ngIr2+29llbL+XyVx9hfJiPW472tyjwlLc8bUlte5ar2evSD2
         RSZcw5UdeRLSB5tL2Hc8TSThwEKc6KzzsCB9BFCl8lWnOxI1kqeJQ1ZPjwCbKF9lvEcv
         6R51yRYC8SRGbOTvfUyeoF2BFBAKPul7gmnJVid878QDedPBgZvlJNt25npXhIfZ5Sl0
         YFCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ON/ewYiUGayOpXS/qs3aVugTgtY6e3juh5E+O0UpA4Q=;
        b=YrFnjec9NrOt6bgMape9r9KHy6N9M9wSy61/0ddb4j+p7TERa6QyJGhP4codh23dLF
         zsdBYsmHJJ8uEUA9QRdXM6yJ0barkmM8vbJHYwD5MjO+7BAey4eBY/AKKu45JsrYyTQ7
         JAYP/9hojsk3a1hqwnIb63dpSAfuLfv3jBz2ys0TaEnn+J1NQIE0CcGaBLI7MQMe/O5N
         2uTvSpCSzkvX4PkXQCF/e4t2K82ZVFFiib0hxcs2C+fq3fZGoglIrUCAcVAnOCCzezbT
         t+bADoedJxP7lG9XyDr1hW5u06s0VtMSUWj3EqFR47jsHUT76dh30ttEM7gIpS2pzHzC
         iDCg==
X-Gm-Message-State: AHQUAubjAfEqHq980jrHtgSE9I8zaRpoqGRpaTgojZ8akavN5KtIT7Pr
	9BeYv1I11BaTVyiAjfDSuc+kBmFU4qA=
X-Received: by 2002:a63:4005:: with SMTP id n5mr21148498pga.86.1551141183356;
        Mon, 25 Feb 2019 16:33:03 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id i14sm14415486pgt.82.2019.02.25.16.33.00
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 16:33:02 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Vaibhav Hiremath <hvaibhav.linux@gmail.com>,
	Mark Greer <mgreer@animalcreek.com>,
	Johan Hovold <johan@kernel.org>,
	Alex Elder clear <elder@kernel.org>
Subject: [PATCH v4 0/4] Staging: greybus: Fix various checkpatch.pl issues
Date: Tue, 26 Feb 2019 06:02:43 +0530
Message-Id: <20190226003247.15574-1-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1

Staging: greybus: Fix various checkpatch.pl issuesThis patch series cleans various checkpatch.pl issues
CHECK: Alignment should match open parenthesis
CHECK: Blank lines aren't necessary before a close brace '}'
CHECK: Please use a blank line after function/struct/union/enum declarations
CHECK: Please don't use multiple blank lines

v2:
   [PATCH 1/4]: Commit log modified
   [PATCH 2/4]: Commit log modified
   [PATCH 3/4]: Commit log modified
   [PATCH 4/4]: Commit log modified
v3:
  Include all the mailing list
v4:
  [PATCH 1/4]: Subject line corrected

Bhanusree Pola (4):
  Staging: greybus: Alignment should match open paranthesis
  Staging: greybus: Blank lines not required before '}'
  Staging: greybus: Use a blank line after declarations
  Staging: greybus: Do not use multiple blank lines

 drivers/staging/greybus/audio_topology.c | 1 -
 drivers/staging/greybus/bundle.c         | 2 +-
 drivers/staging/greybus/bundle.h         | 1 +
 drivers/staging/greybus/connection.h     | 2 +-
 drivers/staging/greybus/control.c        | 1 -
 drivers/staging/greybus/control.h        | 1 +
 drivers/staging/greybus/core.c           | 2 +-
 7 files changed, 5 insertions(+), 5 deletions(-)

-- 
2.17.1


