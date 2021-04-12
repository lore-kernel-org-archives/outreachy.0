X-GM-THRID: 6950250971878391808
X-Received: by 2002:a05:600c:4f8e:: with SMTP id n14mr27106534wmq.166.1618231407149;
        Mon, 12 Apr 2021 05:43:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6000:162d:: with SMTP id v13ls2161175wrb.1.gmail; Mon,
 12 Apr 2021 05:43:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzMX3JoUoKcpS4jgI97IAoWuPgXuc1kw814bZ4Chfg7YXTGZ1T5W32hVO3eqCma2/2f7rJU
X-Received: by 2002:a05:6000:83:: with SMTP id m3mr30412652wrx.321.1618231405815;
        Mon, 12 Apr 2021 05:43:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618231405; cv=none;
        d=google.com; s=arc-20160816;
        b=a2nA458GP+bBgzi4J3W0N/Gi87BvcPywdvDgRQPgID3/VFUcXL8iZTjP+G9AF73TtH
         Ae462ENS0eD1ttZhd1wpysmUkFHv1fi6glOyO9cXodxspmomM2t4WA9VkDx5zG2AFUgq
         r5VOhhKetkyMJ/aZ5mw+MMaj5X7Vn5CuUegOgzPmlsJDzHNjn2oyDXGhHupQ6bx0/S2f
         p2p7GXD+8Tt768CGoZGr3+nqrvb1Oc2xz1ja3AAICZe31fF227qAecP9Ua/+u2D93Vyx
         92axYzxj7ccqUUypMZNj/3VpGFCmt4hhHD0z562YPUPsyKNxMqw1mBJkwwG+9lyTM86t
         y/yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Dl2dcv2j0SH5o5oYkFtGVe/TTES0EMAAwfTwKxscV88=;
        b=QHiymCCDgHMPYDleyDWBmlqtn678IuRLv8TYZQI85+qRdERHfjkIlwlYehBlFCH2Ab
         XAegZ7Rz+E9CaSwdN4PnLZFu0ADXhLmx+QLlhRmMkOOcqZ4tXaDWcXwzxhUTwkcigRc5
         Y5t5wQjKkeWLirJVL8juvDkezuVan+LJdQPYmwalgrOXWkSC9ELEhRSP7U+v82yFf0qa
         w90fbORC2PU7ILRodU1ky6SHehcAGuIUFmihqQdBc8zsrcM+TzD+tnkp4lXTaWc+B/4B
         mOt2K+wLlwkmBd7LaM5XOMHBNHqPi4+btwYX+RRYlzXc4M9zGnLgr+VEtb6wRMj5Nkjl
         2IiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CUlAmIDY;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62c as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com. [2a00:1450:4864:20::62c])
        by gmr-mx.google.com with ESMTPS id s8si1126995wrn.5.2021.04.12.05.43.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 05:43:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62c as permitted sender) client-ip=2a00:1450:4864:20::62c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CUlAmIDY;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62c as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x62c.google.com with SMTP id r12so20035216ejr.5
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 05:43:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Dl2dcv2j0SH5o5oYkFtGVe/TTES0EMAAwfTwKxscV88=;
        b=CUlAmIDYxwHPS+G/GXJBiuKltOaw2X7J3Nt8qz96HVkGuM8NIYNAmkZYMo4vbbGIgJ
         wPvEY0XSjrL7J1+pNpN217IFUOzmrXS0U23eFM6YjELcl4X2V23heYJzHeLphHpKMKIe
         0kuZpoc5qYeUGejFqGsv51H0P8f9pQ2IgyIxf7QMQy3dH6eeXYSF/hS8TVHl8bjFveAG
         yOf9yHUFoO8uN2aOF0hndLiPZziJl33g8JazwvWUZcGrcEFDqOYDaGhet67n83uQ2hD3
         yXbZuApD7wg9uOsuIfWPAQuUrLExbNURUpTp8GXcwXZQ4H6tVhTjCoviDOjdcQ5bi0Jg
         6iIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Dl2dcv2j0SH5o5oYkFtGVe/TTES0EMAAwfTwKxscV88=;
        b=dfvZ1xAlsSqMI+4RCDSg4Rrx3ZBeDiU7CE6dFP1me6Y5t1htrB7q3qHJCcjjkJ+Wp6
         wZVUlkYEGCzQQC9MycU0y688ot60OThGZ9I+RTJuvhl7svaWAzXCxzN+3PMjQgL5hmHQ
         VtDTkqFHYFRlun45F8qUCmvrII9XA1KTV976Iw+sqWrL21izX+OoHrYEEINs2uMJb4mq
         e+NNnrc2cgmvm00mLBSzAnsZTonep2NS28naZpQ2+DsEe01FMpN7vJTZpGo2qIaIQVq3
         VudNnDU6FNykZ6QJTKb1EwQZu+6oCwOjt7yQ4C9g3L54QAHhIJCGvrDiplXFVZygGfkM
         r+4g==
X-Gm-Message-State: AOAM531++U1Q+PqGgPG1LJmcCQEFSZ01uKuZZq+Xw0Y6+ZQq8RuJ7GEG
	axHud1ZGvIgNv4DvfzXZVwQ=
X-Received: by 2002:a17:906:f949:: with SMTP id ld9mr6001231ejb.236.1618231405624;
        Mon, 12 Apr 2021 05:43:25 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id m6sm5939452eds.49.2021.04.12.05.43.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 05:43:25 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: dri-devel@lists.freedesktop.org,
	outreachy-kernel@googlegroups.com,
	Daniel Vetter <daniel.vetter@ffwll.ch>,
	Melissa Wen <melissa.srw@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@linux.ie>
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [PATCH v2 0/2] drm: drm_atomic_helper.c: Change types and format comments
Date: Mon, 12 Apr 2021 14:42:12 +0200
Message-Id: <20210412124213.4628-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replaced "unsigned" with "unsigned int" and formatted comments according
to the Linux style guidelines. Issues detected by checkpatch.pl.

Changes from v1: Rewrote the "Subject" of the patches in the series.

Fabio M. De Francesco (2):
  gpu: drm: Replace "unsigned" with "unsigned int"
  gpu: drm: Correct comments format

 drivers/gpu/drm/drm_atomic_helper.c | 40 ++++++++++++++++++-----------
 1 file changed, 25 insertions(+), 15 deletions(-)

-- 
2.31.1


