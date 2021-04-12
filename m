X-GM-THRID: 6950245199494774784
X-Received: by 2002:a19:f017:: with SMTP id p23mr19149126lfc.232.1618230063190;
        Mon, 12 Apr 2021 05:21:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:3b95:: with SMTP id g21ls1057204lfv.1.gmail; Mon,
 12 Apr 2021 05:21:01 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyLXCCYb/dKrIRQwIZD6Vw7EHa8VTOLMeQirJ0kd4CZGWc+8TbeLVEhku0EsM2GmDQ+Bp+k
X-Received: by 2002:a05:6512:1286:: with SMTP id u6mr7753986lfs.377.1618230061505;
        Mon, 12 Apr 2021 05:21:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618230061; cv=none;
        d=google.com; s=arc-20160816;
        b=CzhcGcy4QV1pnRWf6pmYLWmcvB9e8fc/Ex4F6ZqkBEho1jdn8g+nwwZg02upVYRtHw
         yNvA6kJ6o291VU5Hqhfst/RQ2TguuteRjWq+eaiHaUqkYaedEGXcDOfhFh5kbqavlgVq
         Qppoel7QBbDpFwAFlnRX1vDzSW/AlySkf1eUGY6V7Xa/npdqxocZgqJEx0vnvl9Ryt1S
         G4eSLpnb8y9Bc+UprV0KxIU0vYXcakRSn855D6kTfWLCKDAaHmRQSL50Rws3MD2nQqfc
         vg5S+0Fb+bIsVPFKKsS/qJjmQbYK7+lho310RHQD3t4mNUH+tF2ToHdqup0kZxsEk7i9
         5jQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=1MdwSjx9JO8XVCTFQLq+wxeSF8HYjox1t1MpD7Ajw5s=;
        b=oK1NDwK82x/3USyuvGQnrMZ9aDI/PRcarO1Ut2bidj3cFS7DByKO+WYmfAsdzIndOF
         MEKnDSN9cdsv7Eg6CsL/bikQ5xPw/OLGVwoDlbKfpRQO0+aDsQ5PDqMVUpGpBAficD+6
         VfG6sVWjaAESq0b6LkLxKRCBiGP3mIWa8y/fqYGkab/TU2SJNI18JntYoBHjdOGTnHqn
         lQVP5+mGZoxpgPUYuy7897vxlYEa+mNXZM5ELG9GjR1buuM7BY+UwdmcDTRtkW96SvGr
         NaS5GhfKY+v9dQNXE6hBgmbkGiMCCYfw+InPxJz2twsGm+MktG0s0pQ5qdblX5dFlLb1
         d42g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=q15ysuor;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::531 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com. [2a00:1450:4864:20::531])
        by gmr-mx.google.com with ESMTPS id y11si626216lfg.8.2021.04.12.05.21.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 05:21:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::531 as permitted sender) client-ip=2a00:1450:4864:20::531;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=q15ysuor;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::531 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x531.google.com with SMTP id r22so14774667edq.9
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 05:21:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1MdwSjx9JO8XVCTFQLq+wxeSF8HYjox1t1MpD7Ajw5s=;
        b=q15ysuorn/YUiUUavi8edT4vS1HRmIYWPBweYU97apO02lY67apbBijf8NsAUssGMa
         jRhuSy+NQ3u/YOcWuE5EOdPNV/orFUQVggqNOru8PtUCV9JoGBH0PWcXQGmiWBeWIlIg
         A5SWFuq4RdvSVudTB4qab7sdIOSYzjnnHuY5R3XU/mQICnPTgH6YhaoDweTVdIWQcMz6
         ZULxKy0U6kAzQHG1lEzFhXuwgzYmW1JKiSYee3wmqCvzfq/cCQXjuLUF3+vHHV8rcnbU
         h122xaspDs60AXm5QZVw1+mVHbUN/GEqfdFop6q9g8xh6OkeyoQejVeDtViSWy/zV5m5
         p6Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1MdwSjx9JO8XVCTFQLq+wxeSF8HYjox1t1MpD7Ajw5s=;
        b=Emvy3MWQ7BQ/OdW/c5XI6ymV7Fxx7QlyAhjnSGMVV2Y+lG3WzNcCc0iN2Ib8aMFxKP
         vzoP+lovXbVwLzFVMxTPSnrfaFbMs4wb39GV9EqHmGZFZJ/oPasqVpqJUXplLvOzfuSy
         MC3X7CanXQFGzAv3oFOVdco/qXF5pgNxORvMtuodhKcPcZRC8UAWK2UIJjSWrS7Dmu5P
         ZXp+iGYTV9I6DoJVKsn4InS1je/XUEvETtbKL53HPMCQp211gcQIwt29LxbYotrI2rV/
         TDDtnDDbi/JuXeamYNk+TcRNhg3YYlDE7btfXQHB6PIXVQKmwGHYvBlgtFCfS4BDVZbh
         uYVQ==
X-Gm-Message-State: AOAM531Hqbh7nJ+di8UitCl0yWqBGBakIWF7qn936kEI3cZfdzH3+BZv
	5LTpI5zyLVhFNufriRW5m0Y=
X-Received: by 2002:aa7:c549:: with SMTP id s9mr23372390edr.326.1618230061014;
        Mon, 12 Apr 2021 05:21:01 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id ck29sm6408191edb.47.2021.04.12.05.20.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 05:21:00 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: dri-devel@lists.freedesktop.org,
	outreachy-kernel@googlegroups.com,
	"Daniel Vetter" <daniel.vetter@ffwll.ch>,
	"Melissa Wen" <melissa.srw@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@linux.ie>
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [PATCH 0/2] gpu: drm: Change types and format comments
Date: Mon, 12 Apr 2021 14:20:54 +0200
Message-Id: <20210412122056.28351-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replaced "unsigned" with "unsigned int" and formatted comments according
to the Linux style guidelines. Issues detected by checkpatch.pl.

Fabio M. De Francesco (2):
  gpu: drm: Replace "unsigned" with "unsigned int"
  gpu: drm: Correct comments format

 drivers/gpu/drm/drm_atomic_helper.c | 40 ++++++++++++++++++-----------
 1 file changed, 25 insertions(+), 15 deletions(-)

-- 
2.31.1


