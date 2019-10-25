X-GM-THRID: 6751575419230617600
X-Received: by 2002:a0d:c585:: with SMTP id h127mr562501ywd.325.1571973650857;
        Thu, 24 Oct 2019 20:20:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:9209:: with SMTP id b9ls580587ybo.3.gmail; Thu, 24 Oct
 2019 20:20:49 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzVvDHVZncQnyENMDVhSGP7ETqq3tTwlL5SkV+bYLTrvzHwpQ9qcmjj/UpgjjXw3+XapH4+
X-Received: by 2002:a25:7401:: with SMTP id p1mr1386106ybc.26.1571973649459;
        Thu, 24 Oct 2019 20:20:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571973649; cv=none;
        d=google.com; s=arc-20160816;
        b=E/QlpQwoOR8/VnThXhhd8ztdxBaV2xBHUtmdh8Kqn2p++Yi9jf+YVxrS2T/apsm3WZ
         q/0YiTtAiNCyrFmER/abdpTisZDBgHh9apYMUtPAuGUo0y1dESY4YtcEUI8rYnbzKBQa
         o25KIyLPYavQuJy2+3FKjbmkCJE+eBdGI05OMJ/5CawWOWo3HXojZ0Im9cPmqHUmpoMK
         MdbCW1F0qn3eDOXb3XH9Fg21lo72dpa82dmIggxPICeclwT2FW2NPEWhXwCm+O7/9KZQ
         7l85OuJVmi5t+R96ycwgqzC3qJYB59lJF7NCIbd6nFgShq1nHZzmu3mFNBwoD/h4/UEC
         l2Hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=dAEkmy0eH427XY2pzCFoXVdVplhwKRXrtnDtPPBCkB4=;
        b=bXeX3N7V0rwM664VQb2gybUhll3ljbAQGStIdI77BUud98KYNLoWIrPTgpn/u6Kopb
         74e2qPA9f8bn2a0LFJ1/uitcEl1vaQpqTH9VLdvL9ywSkjT+eHVswFT+Tw2MEQkUUJXS
         tzbmJhu9NF2LqEuNxYkuQDOjvkOMbXSMtTrbecm6aEspFQY0zkRet/dxsx9e+DGMn8OI
         9A5SdOjY735BtYFNdkb3/oVV3p8j0TJ0Y790yTEni3QsZ3THBGddl36lImHgQ9UVh6Cn
         B3CZyVd3XtoDRZfTbGoghVERwOThzZ07MCwMl5VZMAHnijafbXz632Kw/3bejURA3SJ6
         YjwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cvazHGka;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com. [2607:f8b0:4864:20::62e])
        by gmr-mx.google.com with ESMTPS id j136si46979ybj.3.2019.10.24.20.20.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 20:20:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::62e as permitted sender) client-ip=2607:f8b0:4864:20::62e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cvazHGka;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x62e.google.com with SMTP id q16so225321pll.11
        for <outreachy-kernel@googlegroups.com>; Thu, 24 Oct 2019 20:20:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=dAEkmy0eH427XY2pzCFoXVdVplhwKRXrtnDtPPBCkB4=;
        b=cvazHGkaVDEo9LF8UmoOrAIq7HVFb3z1QusOi1Oc9fwbXm/sIWDmeMeuK5PdDwrjeO
         IbR5A77YFrZD+dDOmltVQw27/MPEvg2n3Iaq35SZAfExp7birpsF2YrJZ0tn1B1xY0Ak
         0cdHgycfnuqGc9gekzsuQaEN4DL75HofpYnri38AlPPr6SESfm48K8FZAJvRWTWEWb8K
         ICw2QQqjln91W0O/06cGyfIDQgmrCV4q3nppaP7BCmfuAljmBo92XVDblXT6z01rpOWq
         veZBY89yNk1Eot2fLHysj4FZKJVBq4MfR6A7NiaKd3tjUeBiAj5OJCwgp0DAn+LjITdn
         Vx7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=dAEkmy0eH427XY2pzCFoXVdVplhwKRXrtnDtPPBCkB4=;
        b=OJ1UOa42I+x2vBtXFS0/P8fFNTyfLS+mY3mZoraCw/0xUg1keeW1YWIiPKpyGui1VG
         xKN4gvOvrXe0f9E46TiKHZFGRdzlU25B3/FEZm7wUdwe3OYyl/GM3cRZmUTiSOWP4O14
         p6ySh5OcCH9Mf45XV2W4LYZBXRilUnsPi2vuz1V9unx197xqjQUX4hPeg8YVprmYTy1c
         N6zUii8Pjz4PP7le10XB0Vf7D6n0EcVmcVf8dqe6Oc5e6Dyb1QoQt3AmMJolyy7QfwXI
         z/GYn/I6iw8ZLzPlz0Eg4C0kkj1lHX32CI3ChR0ivnr3CXd2TZ3PJkFKLmtSU6+NTejA
         ybNg==
X-Gm-Message-State: APjAAAVX8o+SGtwyxcxgsQ0sR30pGZMr1TQ7fyFyTVKKvvzqAJoizuN8
	Cw61JjvWYw4vVemCEsLT5i4=
X-Received: by 2002:a17:902:4a:: with SMTP id 68mr1234509pla.8.1571973648996;
        Thu, 24 Oct 2019 20:20:48 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-XPS-13-9343 (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id v35sm470443pgn.89.2019.10.24.20.20.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Oct 2019 20:20:48 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH 0/4] Edit CamelCase in sm750fb
Date: Thu, 24 Oct 2019 20:20:31 -0700
Message-Id: <cover.1571973516.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1

This patch removes CamelCase in sm750fb files.
Patches are organized into groups of dependent files.

Jamal Shareef (4):
  staging: sm750sb: Edit CamelCase in dvi/sii164 files
  staging: sm750fb: Edit CamelCase in ddk750_mode files
  staging: sm750fb: Edit CamelCase in ddk750_power.h
  staging: sm750fb: Edits CamelCase in sm750 files

 drivers/staging/sm750fb/ddk750_dvi.c    |  68 ++++-----
 drivers/staging/sm750fb/ddk750_dvi.h    |  80 +++++-----
 drivers/staging/sm750fb/ddk750_mode.c   |  86 +++++------
 drivers/staging/sm750fb/ddk750_mode.h   |   2 +-
 drivers/staging/sm750fb/ddk750_power.h  |  10 +-
 drivers/staging/sm750fb/ddk750_sii164.c | 185 ++++++++++++------------
 drivers/staging/sm750fb/ddk750_sii164.h |  40 ++---
 drivers/staging/sm750fb/sm750.c         | 144 +++++++++---------
 drivers/staging/sm750fb/sm750.h         |  70 ++++-----
 drivers/staging/sm750fb/sm750_accel.c   | 139 +++++++++---------
 drivers/staging/sm750fb/sm750_accel.h   |  26 ++--
 drivers/staging/sm750fb/sm750_cursor.c  |  18 +--
 drivers/staging/sm750fb/sm750_cursor.h  |  10 +-
 drivers/staging/sm750fb/sm750_hw.c      |  68 ++++-----
 14 files changed, 474 insertions(+), 472 deletions(-)

-- 
2.17.1


