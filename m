X-GM-THRID: 6668944264527872000
X-Received: by 2002:a63:3244:: with SMTP id y65mr3030377pgy.125.1552734585890;
        Sat, 16 Mar 2019 04:09:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:1281:: with SMTP id 1ls5040862pfs.4.gmail; Sat, 16 Mar
 2019 04:09:45 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwrV0yLU0J4vEWGaRWxSYDB1xi13/VAq5HZwTHH4KH2cQrYYiSJ+PZBoMiEJYK4BBO0lL6n
X-Received: by 2002:aa7:8c97:: with SMTP id p23mr3154627pfd.132.1552734584937;
        Sat, 16 Mar 2019 04:09:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552734584; cv=none;
        d=google.com; s=arc-20160816;
        b=nayBI1PYsH69eY0YrA3QPvmWNW2hdR+EsIQVoKkPjWp9ap+WuzixIWXuYMjpwPlrZn
         l71rxNBoOZqGOONOQJX2ZA0B+Zyx0jPIMVh5ghYAISJe7ItKeLZnYjlgEW1y5AJhfGfx
         kLF8ZzpKQHWCKHMbT2AAO7TM6bRRVbG8sAPUkRKwBxsG/fZoQsY6tqcWvJrh71e88PIg
         EJ0ilUktnzSMxsOcwhVbVUWlJzPvxYxehG1f9sN5bIZHuwZCUlBPbWoeMCLtv9rw8UW8
         NteTvBDaQD78tiQc9BYmXBdOWyIpREILntSHu6zswWJYO9DVlySbWryPBNffi/0y1F8C
         /pTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=OdlKpQAobMoUATTLTkYfGPKK3II5DOyqX+HLjUC1vyo=;
        b=uzRCvWJ0c+hUZRBDKyx+hXhe/fFQ2Y26wzBoGIWRGHfnKUy8KD2/1THnjUfax05kS4
         Fiw7zOnA5yraAoMjkcTckIyGnuBH1Pdo+ukzk3eg464NSIf3yN4HpCRHUgYV9Vo6udXj
         spiXj+r6g0MRNujd5VodTaIWSIrkBUYSF4og8h25rzuPwPZAY/btlzp16UY+s++iiC5W
         W7LBr6KTzaFc4/4mP3wtL3k9dY5yvkHdX7VwjSlkEiLLlfP0n7dVC9MeYn+2ejdsFAEh
         PIwWlEToOTuiBmf13FnIDgWthx+7Z6OWxRL4QBqc8isVNjww/s5K0RoReUjTq0F2la/x
         w8iQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Hxb0APlJ;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id p15si242643plr.4.2019.03.16.04.09.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 04:09:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Hxb0APlJ;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id i7so4992039pgq.0
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 04:09:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=OdlKpQAobMoUATTLTkYfGPKK3II5DOyqX+HLjUC1vyo=;
        b=Hxb0APlJDtUTumW3tvFsc5wqJjRnY32CRAtuQSe2XOLcDNITW8LS06WgL1ue6LeWxH
         TNddoGl2TYESKr/RqLgDgtYyQ4cxzDHAqVFl9DpPuNbYRrTpTKpgvUYZGaV81kR4EgPv
         t+N99X11NkryAbtW+DJZ0+AteZTGKzvBDs3SdNP4C1TrJq+f3qLWBa3szLGtopjYA/m7
         GVyHdKGRCSHcxTWF343Nv6TC7NBuqEBk8iICwgCO+o+l99PresCMWnYPNBuchT2TFxKY
         8M1SMBtzxGizrVSc15x5bv9nfT8fYDOUdic0lqy4QPbEc7I23LvuhCwfyrEsfKDnLwV6
         yMRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=OdlKpQAobMoUATTLTkYfGPKK3II5DOyqX+HLjUC1vyo=;
        b=RrvlcvlA5HnFqtK/mf9FPYt+XH+LF9PL/KpEA7QgvzgpxrosP/tfrFZ//hWTHwjk3G
         NZJxcDnhwVo5kyp/uLhIuwVmFUUkyrvmHkabRHcY3vU5+wFFTeK/Ka4xOAx0bqZE+aI8
         MgKRaF/27g2mH0HKudbtT36wvoKzdazcjG9WC2n9cO+/EtLpmFzlB7NVR2mwCIsft8sV
         orLE4koXQFnKr4vH6y6+VlTM3zXbDerO8WORkPxhaTBUUCcpJIhYSITnpiwT8Aed/byM
         ii502OCoaE2DDfHkyj5TAtbcb+EkJt8ilsPq4lmp1L/z/dbug9KjR/pzYJ1AKy/NShz1
         qsyw==
X-Gm-Message-State: APjAAAVgcMnqNNiKga6GlFKCGvmtiApvr4EHMGs+V8XVJbRSx+jIiRQy
	4jrCRbwCAnHjcyg7JlbOl+GeLJaMiIE=
X-Received: by 2002:a63:e952:: with SMTP id q18mr7846589pgj.156.1552734584324;
        Sat, 16 Mar 2019 04:09:44 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from Hyper-V.DAIICT.AC.IN (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.gmail.com with ESMTPSA id d11sm12097156pfh.29.2019.03.16.04.09.41
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 04:09:43 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH 0/3] staging:rtl8723bs: hal: Remove comparision to NULL
Date: Sat, 16 Mar 2019 15:57:56 +0530
Message-Id: <20190316102759.20272-1-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1

- This patchset removes comparision to NULL in various files of
drivers/staging/rtl8723bs/hal/ .

- The changes are broken into 3 separate patches to keep the length of
each patch below/near 100 lines for convinient reviewing.

- All patches have the same subject line as they all do the exact same thing.

Himadri Pandya (3):
  staging: rtl8723bs: hal: Remove comparision to NULL
  staging: rtl8723bs: hal: Remove comparision to NULL
  staging: rtl8723bs: hal: Remove comparision to NULL

 drivers/staging/rtl8723bs/hal/hal_btcoex.c     |  8 ++++----
 drivers/staging/rtl8723bs/hal/hal_com.c        |  8 ++++----
 drivers/staging/rtl8723bs/hal/hal_com_phycfg.c | 18 +++++++++---------
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c   |  8 ++++----
 drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c |  6 +++---
 5 files changed, 24 insertions(+), 24 deletions(-)

-- 
2.17.1


