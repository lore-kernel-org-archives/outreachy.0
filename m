X-GM-THRID: 6950506572644614144
X-Received: by 2002:a63:ff4d:: with SMTP id s13mr30708806pgk.310.1618290919670;
        Mon, 12 Apr 2021 22:15:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:1062:: with SMTP id 34ls8269622pgq.6.gmail; Mon, 12 Apr
 2021 22:15:18 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxo+fc8oH1X7Pes9+uEzny5Xio6E4yYVlZsltYglle/q2FQaEFIgD3epQ6b832HQhLN5VEY
X-Received: by 2002:a63:1d18:: with SMTP id d24mr31596406pgd.402.1618290918517;
        Mon, 12 Apr 2021 22:15:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618290918; cv=none;
        d=google.com; s=arc-20160816;
        b=kaua6xyT291gjVIlTjVymNKz0JYuwAQw00hOCzklGay7xw5Ar+O7za92bLynLqOq7t
         /xS4q7nt86KDlg+C2wI9iEO/VvwqMme87Q4nH/udcZzY9RjTcsS9KFAzL13nfrn3wfma
         iUtpHQren1f8ADHJUwHrcl4mxEDFfwhCIdSEY3vjsMvK7Irt4w/0V4xoPTLdvzCvuRMz
         Zj4K7ZKplpj86BMRvtG5LGqQBKQIQKzfMA84OXIJQvQavT+WrOJhfhQPHQNzeE0mPTqk
         NtBN2+vTS6rJDjHI4zCy5qh7LFzweJ8RCT5Q6pZll9xUcu6QSGiF3AJviV8YN8yT8nHa
         SS0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=TrWrFryNSzPKJP5fTzUG9PfiRUJAobg9pZY4O3rR+fc=;
        b=Y1KwmLFIld+3AUI63apGQRGW7ewdWqYKxitgyQFxPP1Py3IwHwBbSfzUk9QAl4mSZI
         u5/Ka9QGej3wur4c3/AqDZ82U68g6y4HOhHyJhjLJ+4UQ3poRjIazCMcd/clA42078ha
         fTLx30I9RWzF/yPvJcsESLbJfBf0k0D0F246wuaXDk89eLMpBPDuLXCvCf/rb3n0RBNt
         szsrsPit08GzYlj5KHHd8f5I5HGRoPv4RL+Bnbn0neBk3Qgvr/dJI1HWaQ/FeOTycsOY
         FFZ2/byeW9y+hTFk/ktt+5mghi7EGwrTPghgaoAgQFk7pwqSTPiHIUPYV9Lf+/KJUNEy
         zN7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=acpu65aV;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::633 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com. [2607:f8b0:4864:20::633])
        by gmr-mx.google.com with ESMTPS id q5si292270pfs.5.2021.04.12.22.15.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 22:15:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::633 as permitted sender) client-ip=2607:f8b0:4864:20::633;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=acpu65aV;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::633 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x633.google.com with SMTP id m18so5358425plc.13
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 22:15:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=TrWrFryNSzPKJP5fTzUG9PfiRUJAobg9pZY4O3rR+fc=;
        b=acpu65aV+rMpf10pSGE9y4X0HC+bdtGZqcJ+hEUAk1WgUA5Bp5JSmQa9u6CvjNEZAF
         9o6g4dsncgcMCcbRJ/m/rVSnk8AMOqLy5G0KxeuQuLYyI5BS5BI9je24yggsn3V1Tx2g
         0kzW/8aZm4Y748iWMNGsNNu9H4oL4D96PiVDu7G6ZkQ5vUdgfFXfPgB/fJydOX8a3A/C
         KGiCgf2ZHnFP34u2bWNrMWtudBkqIezsYaUam2fveKquWx9YweNRPIFTI9913fuvyr4O
         7qkfkASoW48dYOu6oQbx5euWT552QYXo7mLkB53h8ElUrA+SiFZFfiYknXIpqc7+RGrz
         f/Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=TrWrFryNSzPKJP5fTzUG9PfiRUJAobg9pZY4O3rR+fc=;
        b=nxL8y85U02l49XFWSHhxFRkqnKzDcqizx0MN+oSA/iaE5zglHYUE5yja/jsGkJCcYj
         DAa7IP4CNS+R2mEwLAZBTpDh8aW/ri+V0tAe1igKFaHZum8susILVW5js9praOWNvdp6
         fAp82eDA4vSyymK+OLjPi/Ho+eYp5Je8lp849H3VMilCrz84vkZ19TNh6Qr6Ax9Kllma
         BDSuvJ1OHW1WRfF8oZxCIlUuT+TzN7VcaPfkFUw5X1/O+dPV5RTG2hBYFNBczjQhEnD7
         /wuAbAaJciQBAVDz6hCaVywQ2avLzrxOFUPt8vi6sdeHa6N8+5gUczWDrnSH04k4tQH/
         3Anw==
X-Gm-Message-State: AOAM531iamouuNgjJ6AwDqCA5Z/HXzvNMbDg4a/3Z3U1cQeZS+hpW08Q
	Me1RC1R4b/4QJ5VPqmxDJhRlegViryGMag==
X-Received: by 2002:a17:902:d64a:b029:e6:30a6:64e3 with SMTP id y10-20020a170902d64ab02900e630a664e3mr30785825plh.28.1618290918006;
        Mon, 12 Apr 2021 22:15:18 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id l35sm13144853pgm.10.2021.04.12.22.15.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 22:15:17 -0700 (PDT)
Date: Tue, 13 Apr 2021 10:45:11 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: sakari.ailus@linux.intel.com, bingbu.cao@intel.com,
	tian.shu.qiu@intel.com, mchehab@kernel.org,
	gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in
Subject: [PATCH v2 0/4] staging: media: intel-ipu3: Cleanup patchset for
 style issues
Message-ID: <cover.1618289130.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Changes from v1:-
Dropped patches 1/6 and 2/6 and compiled this as a patchset of 4
patches.
[PATCH 1/4]:- No changes.
[PATCH 2/4]:- No changes.
[PATCH 3/4]:- Reduced length of a line under 80 characters. This was
patch 5/6 previously.
[PATCH 4/4]:- No changes.

Mitali Borkar (4):
  staging: media: intel-ipu3: remove unnecessary blank line
  staging: media: intel-ipu3: reduce length of line
  staging: media: intel-ipu3: reduce length of line
  staging: media: intel-ipu3: remove space before tabs

 .../staging/media/ipu3/include/intel-ipu3.h    | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

-- 
2.30.2


