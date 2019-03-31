X-GM-THRID: 6674500883205586944
X-Received: by 2002:a05:6830:1582:: with SMTP id i2mr4720943otr.45.1554028459060;
        Sun, 31 Mar 2019 03:34:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:eb8c:: with SMTP id j134ls1280633oih.0.gmail; Sun, 31
 Mar 2019 03:34:18 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy5YybfMXwcGeQAEWlwrMh3q+uJOng0N97Uj3Qb8vHHPKz3D9v51hRF14OVex8KKrQGtPQx
X-Received: by 2002:aca:57d5:: with SMTP id l204mr5534450oib.14.1554028458494;
        Sun, 31 Mar 2019 03:34:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554028458; cv=none;
        d=google.com; s=arc-20160816;
        b=kMGdLERuEZVcRTNvnNM+4eKS5k9MxlGGviu2j24f2+IxJwsdOTT6ovxijQKx3XV6rx
         KPIEQF0BfT2BoJAQkU3olxN3S8QdXnhmihLfBp4MbIjt9Jjf5zOWY9WVJckCCEUsLocK
         nqKYEvX8CLdiHoCvPKVRlesWQ/GgA202IaNf4LWsrX8BG4fayMsL3x98cWJprMgve6g3
         /fIk+1pEJmz+TfDmpmrQ9XQZug4jmKnwMhJiK8I4KDtU+dIzBorQLPiLKvJN/qqHNk9H
         MMYfeMIWyeA72K0E/CIG6NNhpbM8h4+veJ5sahR6Y20/Oqdpgont55z0ngC7PMVEvnIK
         CM4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=YgBepiOjWnrKFG35xqCqqWj+BPBDekjkpKm+zrICUVk=;
        b=h07qHx7RgeWhSDn1VAR3g9EhxVsCgwzurprlzCOJ2RW/zOOQnYMU525zXpKmDCeO7v
         izfIo9KF7iWdwkSCvEygTsLHLFlieDXZcQDenBVOVxqrVDRieJP6g0Fzk6aStq+d36pB
         Hv8ta0l5qPwrUfzCWhN845lsUNqJUZOE4t9Y0+8COoEbQ44m/ME0GsFKl8pnoCl9SSCl
         98YFe8DZm5HpKDjVZAjmotq3VHTQVyRZC2hUwuRqKqCQG9lyxsk0TzsvwHhdYghQsWcT
         M5ePfN6U3G4VUPBSPVFdvXhRZPMdVHU+rKk+X7xL2Zl2Nl/PMCk9jZ1bRlVAvwEzOHIt
         8oKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZqBr4R6s;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id j81si236684oia.5.2019.03.31.03.34.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 03:34:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZqBr4R6s;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id p19so3069396plo.2
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 03:34:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=YgBepiOjWnrKFG35xqCqqWj+BPBDekjkpKm+zrICUVk=;
        b=ZqBr4R6sq6GR0pJ/QPh8KLB9ISSNjrEm0AElPpkpblYTUH9Y01051YfM4/zAZesfAy
         TjGvADl2Dczhh/0IdFSOKlJfp6sc3r4q0OC6Yc1B1BDQm1cPnqU4Rs0/vZ4Y8gLHA7Oe
         +4VmetjjWASDLk/bLRzFmXBTHdf/SAylpeJW/kQjtw+CPMk0J+1rncZvP5ju1itrYz/w
         tY+0I+M0y5iMrot3ekvnenykr3WRZZaxLyoJ8cFtS7fPXUTnKr52gZOD6EbCLhvHZ0PW
         4Ld/w+vKBG/fGX5e0ZdOuG9OO+sj2yBpxFCpQBASr4FKM+OZI3IAntRynHks7T/fiXyv
         LMiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=YgBepiOjWnrKFG35xqCqqWj+BPBDekjkpKm+zrICUVk=;
        b=R5R3/VIfdMNu6zm0eB9VJ3QMAm6QYihl0Iy1geW1M3YX7K5loSiEzp4Iowq4Z5CrR0
         lNzFAd06hbpzPnLr1aBz0jRhmShMUgCI+5aorPSGlNZlXhIafFsJFjX6yw/oFIaFpTcf
         GCEW7XqUiG2Soq6dP0scrEOTTF1gJrDgUOiqP/32lH7qlb/i+PD9STC7HN43lZZ4ZLtn
         S1gOIuPXmDO4EU0sirCnm+BmpPtJ1xkkVGzcOxTqErY+TN3haW/69yTNelP83DegOzLI
         ac/wpuWZzPKAcI+mMTh4gkcxPbQNLpVJKgMZE7ceOUGvCKZvKYVg3O5dVlh4JvfZoJdB
         xIyw==
X-Gm-Message-State: APjAAAUwQ3tFYahfJKxjFN96AQkVL1oXvO/O65312yRJYPtVnx23S8OP
	td40OuS+aXTO/K/RZ8BclBL6j9EEV5I=
X-Received: by 2002:a17:902:b717:: with SMTP id d23mr40110434pls.260.1554028457697;
        Sun, 31 Mar 2019 03:34:17 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([123.201.105.95])
        by smtp.googlemail.com with ESMTPSA id z13sm2453158pgc.25.2019.03.31.03.34.15
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 03:34:17 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/6] staging: comedi: Prefer using the BIT macro
Date: Sun, 31 Mar 2019 16:04:08 +0530
Message-Id: <20190331103408.21506-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190331103204.21358-1-sanjana99reddy99@gmail.com>
References: <20190331103204.21358-1-sanjana99reddy99@gmail.com>

Challenge suggested by coccinelle.

Replace bit shifting on 1 with the BIT(x) macro.
Coccinelle script:

@@
constant c;
@@

-(1 << c)
+BIT(c)

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/comedi/drivers/ni_mio_common.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/comedi/drivers/ni_mio_common.c b/drivers/staging/comedi/drivers/ni_mio_common.c
index 5edf59ac6706..cdc9d0ed15c4 100644
--- a/drivers/staging/comedi/drivers/ni_mio_common.c
+++ b/drivers/staging/comedi/drivers/ni_mio_common.c
@@ -4780,7 +4780,7 @@ static int cs5529_do_conversion(struct comedi_device *dev,
 	if (data) {
 		*data = ni_ao_win_inw(dev, NI67XX_CAL_DATA_REG);
 		/* cs5529 returns 16 bit signed data in bipolar mode */
-		*data ^= (1 << 15);
+		*data ^= BIT(15);
 	}
 	return 0;
 }
@@ -6189,7 +6189,7 @@ static int ni_E_init(struct comedi_device *dev,
 		s->subdev_flags = SDF_READABLE | SDF_DIFF | SDF_INTERNAL;
 		/*  one channel for each analog output channel */
 		s->n_chan = board->n_aochan;
-		s->maxdata = (1 << 16) - 1;
+		s->maxdata = BIT(16) - 1;
 		s->range_table = &range_unknown;	/* XXX */
 		s->insn_read = cs5529_ai_insn_read;
 		s->insn_config = NULL;
-- 
2.17.1


