X-GM-THRID: 6755642568101330944
X-Received: by 2002:a63:eb08:: with SMTP id t8mr34531690pgh.49.1572920607172;
        Mon, 04 Nov 2019 18:23:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:6204:: with SMTP id w4ls3913952pfb.6.gmail; Mon, 04 Nov
 2019 18:23:26 -0800 (PST)
X-Google-Smtp-Source: APXvYqz0w1EZqnNluQUqajMnLy9CYDTWW8U6suJviNXvCFXHZmP/PSEehR4ACWkRSCoRdoOi+Uzh
X-Received: by 2002:aa7:9f86:: with SMTP id z6mr35023536pfr.102.1572920606064;
        Mon, 04 Nov 2019 18:23:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572920606; cv=none;
        d=google.com; s=arc-20160816;
        b=dVweKDdmfQ2LvrazEuWW0x7+oRYKyWsISQhB6xvOq8fbdNbE5qMUF3sjjC/ppRL4cE
         q4JKRWXvt8GTtOGiDno8yGJibTo4J5fjidW5sDPAUU5C0kFOSI9wLJ4OyrrKEj5+8Zbk
         uGTVE2LZbhSVtRRq0HHYHyTPbWVengUZ94xGF2SLcT+oXIoc3STsDB0WMICz9XVqp78r
         /a9nDcL/gOHPiZoUHE7rrOY1ehPT5sSS3CY+BGI31bjfP7wNql5udiX3hA6TRZp1gFDL
         Qufd8xfeYyOUcTl+4+5go7p47nPV9mlCrvt3QaoHTmu7Rxx8GE96V0vgxRftHZxAAocR
         A4ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=LsXcsm2GHHqu1Vt0Snl+ykY6IrvFVgDaD/4d0g8GINY=;
        b=VfKQaJ3rlQiPUHP/+sq+k0Cvn/ZRz8ILw2kj9IvBO8vwI5rjLrajGVqqHXYHNSl47E
         KaGajqVRas9xIynAFdFaF7h9qvQKqsLnUWQYzbNPAe3NgZmkX+DSzBJ/Nm1ln2KMp+eN
         r7qziSOJE1Ge+le3i8PN4vpEcvXMYlqlvDEcs/Hnb/XqD24/7CB3NeNNJ/Eh6cowr+sF
         ilT8XwbEZE1ClMHlY1Ck+T3pgUbGGY857aeYX1sk4MykXYuDFT2LForuEoJXamQ79qYI
         jQKQ09fxEozPzZ+9XdZlXiY7MCnZ1m8OskCTCtKJoDWE2eySeAQFJW8O1NIjbgESri9Y
         8MCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ffDI3R2T;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id c11si1037755pjn.3.2019.11.04.18.23.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 18:23:26 -0800 (PST)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ffDI3R2T;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id j30so9416519pgn.5
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Nov 2019 18:23:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=LsXcsm2GHHqu1Vt0Snl+ykY6IrvFVgDaD/4d0g8GINY=;
        b=ffDI3R2T1dHvht2x5jtqWsQFPVQsa8dQxv0de3i0FqfFCz9qe722OVOayADpggb0zp
         cRcKLc3irCZdLVoVDFEmdcNxyw4waGj+55YVeG67+KOdIMOhh4bhzdxDHTcoQOjwfP0V
         YnrCZu8mtIy3zPDBHIgvEilMjHmF4OSLwa5d7ScG+3jPOiEyTpgj/5Vv1Jsue9YY1F8s
         BQqnovAb2IzvEnfV5BKKR/+rbu4F2D+RJQ6DgWQ6lcAC3+4R1L0hy6qkrQxuQu5bVq/R
         m0pf3MYwuHf03Ix8nOZnH2Pd1wswSjXT2vbSMKBbbMMLL0HHaPS+7haIAuV5ox2UE7Ye
         s/Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=LsXcsm2GHHqu1Vt0Snl+ykY6IrvFVgDaD/4d0g8GINY=;
        b=kXu8VwnCzAvNeLyS8JYLqEAcLlGTsVxMXf8oCyYIph3QPZyrplilvbN9dWYPppmHq2
         P/YT4YQaqbvl6B2PY4c0Na+hnzquJg/gmxOm8hpqZSz8AUXcvxZcAR7ha7Wzkcapax1n
         3GLX5CC29bVc+ab4ydH1wLnLmPncdK2WP0TX/vPoUG57IyaLlwv6rfGNHUgPEz1lYstB
         fzE+41bs7mL131Wjwf63aTJjoiKoEsWE3I0PYw+6cc91Nex3+Pl4jEISpuZxs1Osy7LP
         TezEvRlrlibmzeDelvco65hYHa8MONkbcUAITX6x4wYdkSckNAaG+WR22qbmM7jmjnEd
         +Enw==
X-Gm-Message-State: APjAAAV1xqeSSoGUxyYWQABdFSdxsVVrxeBNrStIQnQQ96A9jPTAVh3+
	YX2nY2qu8HJddzzrkV+7bqvNfhIlrufJ4w==
X-Received: by 2002:a65:5a06:: with SMTP id y6mr34196253pgs.9.1572920605692;
        Mon, 04 Nov 2019 18:23:25 -0800 (PST)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id w10sm16031382pjq.3.2019.11.04.18.23.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2019 18:23:25 -0800 (PST)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: thierry.reding@gmail.com,
	airlied@linux.ie,
	daniel@ffwll.ch,
	jonathanh@nvidia.com,
	dri-devel@lists.freedesktop.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH 0/3] drm/tegra: Remove space after parenthesis
Date: Mon,  4 Nov 2019 18:23:19 -0800
Message-Id: <cover.1572920482.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1

This patchset removes spaces after left open parenthesis.
Issue found by checkpatch.

Jamal Shareef (3):
  drm/tegra: dc: Remove space after parenthesis
  drm/tegra: dsi: Remove space in open parenthesis
  drm/tegra: gr3d: Remove space after parenthesis

 drivers/gpu/drm/tegra/dc.h   |  40 ++++++------
 drivers/gpu/drm/tegra/dsi.c  |  60 +++++++++---------
 drivers/gpu/drm/tegra/gr3d.c | 120 +++++++++++++++++------------------
 3 files changed, 110 insertions(+), 110 deletions(-)

-- 
2.17.1


