X-GM-THRID: 6804214248261025792
X-Received: by 2002:a5d:628c:: with SMTP id k12mr26546193wru.237.1584229582511;
        Sat, 14 Mar 2020 16:46:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:c4c6:: with SMTP id g6ls3967879wmk.0.canary-gmail; Sat,
 14 Mar 2020 16:46:21 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsOn9iwBnFWy12Gr0mq4Bk7kqEc8br8Lv2m+Iws2nMoafUMLuXq9qmS7IChZopHJ1GbJG4/
X-Received: by 2002:a17:906:5fc9:: with SMTP id k9mr17633662ejv.316.1584229581027;
        Sat, 14 Mar 2020 16:46:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584229581; cv=none;
        d=google.com; s=arc-20160816;
        b=OO02WBoX1seHpcKb/7U1oymxf0di1VBrhbBVlb6TPa+P1A8N/DuwzAIkRWhrWXX0kx
         jSKmXgzqbZgrew1nwjm/I0jzQT0shiB9vyaqoLu/bU6mHEGNQFrDlmHrXPfKo+9nqcGQ
         qv1blU5j2uCdSuQYDk/c18uj6qvoHUe5eAy1eM68f7d8Eg/x/ksIRUSmXovPByn/t9X5
         EAn1SCWtriUBwmJ6oht7o1mTR6e2ZkpmkTopgN0J+XsfYF5SqNoc9A+yM3oeYAQDQZj+
         0GAviMwe3TiVluTN/qTEQyhWiWmDh7PzBROP4mZEhpJ88orqnzVYwTHKBce/nz2ozUTH
         tQ/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:dkim-signature;
        bh=4QSihP6QwDBKnBEnwGvB5JgBZOyYASuSAPHM0uqH9yU=;
        b=dcwacv7WaF3h3WxV6GtLbPQ1yhv6TbqDmUEcrfuIxlFWG52LTK9Uf5ZtriBUIz/Fa5
         1iWDSZ10ubceosAfec/e2sE8CMsq5x+KKieCsp30/m3wejSEvnjyRFwnFS6tS5upzlwW
         B5we6iMOnRBXTV3DTMUpSSBvGgh2FLPJVa5f4poZfXur8HBoq9aNbSVZBFXQ9UR7EnqS
         8tjXGRvofdICuvJfgHAKlwzRD7MDNavLgGDKF4SLJ3QdXiIK5UY8jknr3Bt0cz3QYUKn
         Ar5AjA4ft0qjgC2pf98kr/y8HsHgxb68GnAY9ogH4uw0Uub3AHKvVczy53UF2QPcfP4Z
         usFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=kZeXfV4i;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id cw13si747727edb.2.2020.03.14.16.46.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Mar 2020 16:46:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=kZeXfV4i;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wm1-x344.google.com with SMTP id z12so4933865wmf.5
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Mar 2020 16:46:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=from:to:subject:date:message-id;
        bh=4QSihP6QwDBKnBEnwGvB5JgBZOyYASuSAPHM0uqH9yU=;
        b=kZeXfV4inNaB/C5Z0bl1pFXD00+unyE3bPAXnpGfWN/HI4QOf+72VTVPz4yB4jalTA
         TuXW9wFtZJjdQQPLCHl/hc+vAlgwbaVvsDaBq/leF4CGS9Vr48+ezOa+uLCiX/S4OSX6
         eYA96ZiN2w8CwJEaLAYNYGNgMckESKEGcfVAk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=4QSihP6QwDBKnBEnwGvB5JgBZOyYASuSAPHM0uqH9yU=;
        b=VrcEkEwciFBdppMJd3dC51idSO3PpXI0iQ0mzPCga7MTPFgrBIehkcJX3GtjCWenuf
         HNZJ9G1a8OdxP4SFh8xWNTdnamxs6UN4jDMPWpaAW0wer1LzM2ZMLgZhqMGJ+SCDObVb
         1L7XH6is4GUx+FgoP3MSdluaHJ9a+u2gNRKdxDDXDvD1JSRBAfr7UgoO7FR9Bdk7li8m
         RgEbvI/oQQhMDfjdZ5QxhvLrpxeYPygfldpM87cDqLYGcAHIVLeohjxO2Skd1tZu9pdM
         3eX4VbQPmZVP935KPsldw1BH9Yz6IdL0ibl1+GoQ1Tu4utk9daChEUucb1xhHNq5NucV
         UYGA==
X-Gm-Message-State: ANhLgQ0No/Rs9B03t8UkxIrvtOPqRoyhQSsY2NCSEC/yG7wVlfSi6ZfH
	230zIHt8vh+o5NzoS1sxPi2Ite/TwB5a7g==
X-Received: by 2002:a7b:c202:: with SMTP id x2mr18140688wmi.71.1584229580535;
        Sat, 14 Mar 2020 16:46:20 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from localhost.localdomain (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id g3sm3775974wro.93.2020.03.14.16.46.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Mar 2020 16:46:19 -0700 (PDT)
From: Lourdes Pedrajas <lu@pplo.net>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org,
	GR-Linux-NIC-Dev@marvell.com,
	manishc@marvell.com
Subject: [PATCH 0/2] staging: qlge: simple formatting cleanup
Date: Sun, 15 Mar 2020 00:46:06 +0100
Message-Id: <cover.1584228792.git.lu@pplo.net>
X-Mailer: git-send-email 2.17.1

Patchset that performs simple code cleanup in qlge driver.
Some issues found with checkpatch.

Lourdes Pedrajas (2):
  staging: qlge: qlge_dbg: remove unneeded spaces
  staging: qlge: qlge_main: remove unused code

 drivers/staging/qlge/qlge_dbg.c  | 22 +++++++++++-----------
 drivers/staging/qlge/qlge_main.c |  4 ----
 2 files changed, 11 insertions(+), 15 deletions(-)

-- 
2.17.1


