X-GM-THRID: 6618908371010453504
X-Received: by 2002:adf:b651:: with SMTP id i17-v6mr823250wre.10.1541084696819;
        Thu, 01 Nov 2018 08:04:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:9cc9:: with SMTP id f192-v6ls177906wme.25.gmail; Thu, 01
 Nov 2018 08:04:56 -0700 (PDT)
X-Google-Smtp-Source: AJdET5cmNcQbu/aDN7hu196fJyGI/yfhib4wGiuxdrsUsAKdIfLlHJpqkQgSy8xUn7QZU4pCdjWe
X-Received: by 2002:a1c:c90d:: with SMTP id f13-v6mr827578wmb.5.1541084695982;
        Thu, 01 Nov 2018 08:04:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541084695; cv=none;
        d=google.com; s=arc-20160816;
        b=rjf7Soi0kAJIcl1bC5I5A9nocd8riEbPH0nQ2EVZBCcchjja7puL6ge+F91LbEulk9
         4xe7ONUxIWRiH68BFmtLmgUNzGEdXz3gR8TUyV8ARcTB15pnAx7IAgiC1v7lH/Xbv0RO
         Lcr2NETOkezbZ+URIkth2X9nTBvZjXLEkL3kYk7ZQXDdQU3qwa6pwoNFk1YHeeaqe9EO
         kfmpGsyUqqYRupKsNe2qaCaeroPw8/7EFGBUdd8HsVUDq7axqWvilZr3572s1SlowMGq
         4MiflaPI+unbjk+ly9J5HXARACApAanCl68jNLdvcgQ6wlsIRFgcXjc33K2pehvJjcVb
         V9xA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=0u69fGTLp7XgIkqB9VlAhORimbIQorLkSWJmpJqCJlA=;
        b=TLgx6uTNfiSxjh6btSosWHv/aGAZzyBFyQqnqloXtiFREa4+OoOH2r/ID8FC4zMVmM
         5Sx6KSfQKkEzh4hfC33jFMY6Vs9/RUuDFf+ZE0dxqzOqolkWpeJQ+X+92o0f/BwtVOWi
         G4/b97AobgzlZjvO4Iyp/XyomfV9NC5To7/i6QdoKJii9KKnrGlYtA3Pefvopmy6Z9Ra
         O+h3dQFs0QfpCfAW8UgpPCOP7GE+Ow0j+haAe2SXmce1974XdtOY7RDPF8XMg0yCVh6I
         7QjBC+1rBaP4fLA/dOGOWxcTe3vkJmEzjFlMwYTh35unEATsjZuodW1rqoix3tQZYT9J
         D3kQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Pox+tPnl;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::332 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com. [2a00:1450:4864:20::332])
        by gmr-mx.google.com with ESMTPS id v6-v6si975029wrn.0.2018.11.01.08.04.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Nov 2018 08:04:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::332 as permitted sender) client-ip=2a00:1450:4864:20::332;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Pox+tPnl;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::332 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x332.google.com with SMTP id l2-v6so1599308wmh.3
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Nov 2018 08:04:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=0u69fGTLp7XgIkqB9VlAhORimbIQorLkSWJmpJqCJlA=;
        b=Pox+tPnlQxx3EImBj0hUPuy6i1K9pSolKGrhKUNG1l8e4DbCajt3ZDiaqB83lLBm7o
         +t7Cs0XkF0y3tF4JgQNCI4sL7Nh9pRnzcJJ+pA+4j2z4x81Sdl1AFjbxK4e29q2gFbep
         wjR8zVIq0tpdSEL48NvFCJtbbomFzaknJuGHb2zPr/t4uezDY1Bb/hVZm8X2GqSt/cWa
         LLXODHGCRUHwpZPoTDytBk02Gayloa1vREMYj6suSwJMpVw+0nB8ajku2qjl+rdVaQTV
         kgQuKK4u3U135G+YOtD3lTHjO5qh5AJI/ICAoMrO766xMezWPxBloMhllJIMUEj9Ulu5
         xMJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=0u69fGTLp7XgIkqB9VlAhORimbIQorLkSWJmpJqCJlA=;
        b=SL3yLtqfH2o9x0+dGpN894UOja3PydKkos5Ix1yGFF1Mu2lcpHkjZLTw5jwXKHg6NL
         PeCt6VDElC1nKTvgncGrQgEs92oYESi6rmf/nHm1oL5aX0dRPc+lVNqzER/x+tDF+Y4L
         6smGAAo9pVH0rEeWXKo/L4gZeWEAPtObR38UYsdkkXeEs9ozOU5qfNx8WNPPDd3+9SFB
         n6X689e5k/2IueJsvS6luf/WHzNaDEaF0chrVfp3pj01vvVpj/omW9V3BAZHkTuVrwCE
         aPwWqrMapzmsOgFTtNgunmbvE5x3bEon9QWNfLchEvYHJXakNIYe0pWr60XL+2L8An0z
         tBgw==
X-Gm-Message-State: AGRZ1gLg2Dkq2T2aQvKozsk0hwLodbbX4IjGU4o1wUjye6Gfqzl1JxmQ
	h4esd+btrgBGAcrPqH+y4pA=
X-Received: by 2002:a1c:845:: with SMTP id 66-v6mr6251496wmi.61.1541084695531;
        Thu, 01 Nov 2018 08:04:55 -0700 (PDT)
Return-Path: <dafna3@gmail.com>
Received: from localhost.localdomain (62-90-76-18.barak.net.il. [62.90.76.18])
        by smtp.gmail.com with ESMTPSA id m141-v6sm4534611wmd.14.2018.11.01.08.04.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 01 Nov 2018 08:04:54 -0700 (PDT)
From: kamomil <dafna3@gmail.com>
To: helen.koike@collabora.com,
	hverkuil@xs4all.nl,
	mchehab@kernel.org
Cc: kamomil <dafna3@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH vicodec v2 0/3] Add support to more pixel formats in vicodec
Date: Thu,  1 Nov 2018 17:04:35 +0200
Message-Id: <cover.1541081267.git.dafna3@gmail.com>
X-Mailer: git-send-email 2.7.4

The new supported formats are
V4L2_PIX_FMT_GREY, V4L2_PIX_FMT_ARGB32, V4L2_PIX_FMT_ABGR32.

The returned encoded format is chaned to support various numbers
of planes instead of assuming 3 planes.

The first patch adds new fields to structs.
The second patch adds support for V4L2_PIX_FMT_GREY.
The third patch adds support for V4L2_PIX_FMT_ARGB32, V4L2_PIX_FMT_ABGR32.

Changes from v1:
- support both version 1,2
- when needed, replace the test 'number of comonents > 1' to 'number of components >= 3''
- use `luma_alpha_step` field for both luma and alpha planes
- some cleanups

Dafna Hirschfeld (3):
  media: vicodec: prepare support for various number of planes
  media: vicodec: Add support of greyscale format
  media: vicodec: Add support for 4 planes formats

 drivers/media/platform/vicodec/codec-fwht.c      |  73 +++++++++-----
 drivers/media/platform/vicodec/codec-fwht.h      |  15 ++-
 drivers/media/platform/vicodec/codec-v4l2-fwht.c | 123 +++++++++++++++++------
 drivers/media/platform/vicodec/codec-v4l2-fwht.h |   3 +-
 drivers/media/platform/vicodec/vicodec-core.c    |  35 +++++--
 5 files changed, 182 insertions(+), 67 deletions(-)

-- 
2.7.4


