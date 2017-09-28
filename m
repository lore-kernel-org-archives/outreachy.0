X-GM-THRID: 6470705412124442624
X-Received: by 10.84.129.47 with SMTP id 44mr437952plb.45.1506590020476;
        Thu, 28 Sep 2017 02:13:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.159.194 with SMTP id v63ls1020933pfk.6.gmail; Thu, 28 Sep
 2017 02:13:39 -0700 (PDT)
X-Received: by 10.99.52.137 with SMTP id b131mr565166pga.51.1506590019720;
        Thu, 28 Sep 2017 02:13:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506590019; cv=none;
        d=google.com; s=arc-20160816;
        b=Hos8cJn/mZuhnJdJDtpkzDo/u1AMtzF8FWNH8MgJJb44N0wXpPQxIaoRwyBTifywH2
         ZKH9pZC138a7k9jpB7n8kxHrwae0hDyMFRGEqJHvzR3ITZj0c3GmLL3BhBhOjEEljwgd
         GeJEOfGOncXAbBurBmZRLIve3NMZJLIPYvoFrBC0J6NxarNeI53FMNqhjVfUwMvw640A
         6h/MV4b4mPT165HvTAvzQv7VtOD1BDjX6AgsgAk5hvOvYvhr2nXLvuSoy8r/yD++IFoj
         vhSAwupJk+b0jt7vh8PqdfQP5twmRZySFKRc1VNZuSXlqcTbB9D1sT29Y9mRN4mOfeNt
         UvtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=TGh3xb3ft97nmXtauVfTeVx8++Gx9uK+ptDmVHecK/8=;
        b=jrbJNdMOcZcamnOn52azeGe6LQzzb302uc+kSO1eXLWnooNkcSrK+5CJZU76v5uSlA
         0htLrzhjql+hKtiaLRtbyi3Ss4xu9BsgHt71vvFuBCCWEHNaP0fDxJrMD0VRgWrdAj+w
         uNAgmDVWLXa9kJvytx9j+ujrtFySxVqO+KHtuf7r1smn1fmFgyz7ypvfq2ZpV4w/Dl/y
         WtT6GvPkA+0OCmqIj/tpM3Gl8S0+JMjzlifJkm+zg59U0FndC9NFjlNs2x5v6jufEcY6
         SzXZW+EvCCRu4AY3sCn+F6HqHqbFWjTHlIrqFu3zXNNp5Pl1AgDH3FXNAUqkA+YlNZxs
         GSog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GX+niR2J;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id w11si153603pfk.4.2017.09.28.02.13.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 02:13:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GX+niR2J;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id u136so1323561pgc.0
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Sep 2017 02:13:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=TGh3xb3ft97nmXtauVfTeVx8++Gx9uK+ptDmVHecK/8=;
        b=GX+niR2JEKrvfXGo72pqjhm8LHRLHBwNHKZzAXZGa1WXgDY6k9bWXm5WCx6ME6a0Ih
         I7ejNZUfhMrMVj+TyKcX/yfeLtLdhtVMm6tNONCkOeThBzN1gEoFPLMRSeQrq37Sd1OE
         ReF4n1R/r27Tl0BGWZsAOFCSxQzuqcI6t4p9h1A/2JQaebVldcd77aLidCFoUzLnm92i
         vclaZe3myGHytTRHeyjICZdxyb8pNTm07RfbBQFIyXX3yOkT/uLhGIg5cyCfzEyN7k03
         A5u4dPSUr5LatZQ8WnD8fQaZl+BjzhCwmg6bg6YtvwWiCjL3pu5dwh5udZ0wGAVbOx/3
         v18Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=TGh3xb3ft97nmXtauVfTeVx8++Gx9uK+ptDmVHecK/8=;
        b=QTSseKuOxP6lg3IAXTZG3UhrSJV+SBv9chjlUq+PpxsibpNW5PdtXmlfgyhzo47NF1
         KRaULYXcmBdDI2Go7yZFnvpwWmGbp5RUQeUJZjT/jxby8pFInfeBN1lKsSrOTlryabsf
         xAvl6dqbMLpcpGkcE1B65R41UD70Zg8CIVbHIQA02i6ZigfGqhTw7HEBSOPrIaPJZhtY
         00NbxAfSducNKx3l/M/AV6S/zp+NIRuqvNSJLPC4K+mCd48iLwhRyyux1gCpgIBSPBS4
         tYvRyIePveNmU7ElTHu5zaW1pKmk6bsxWiGIOMd6dg+yergLRjDgQ1HLhM3bHs7jDQEU
         krfA==
X-Gm-Message-State: AHPjjUhMxfdOjzj3Ue++0CAklVF4AZUG0ACwXQeVkHwXvWOqZHZklWRI
	FfSr8YF9gvDhR5sexzeyeBiOuXVg
X-Google-Smtp-Source: AOwi7QCF/F1Skhj8vy9KocK4vvno38azr/vTSwqJ6GsgGn0s44BOW0Uet/52IWzzkiDpp6oCXeFX+w==
X-Received: by 10.84.129.229 with SMTP id b92mr3706116plb.362.1506590019494;
        Thu, 28 Sep 2017 02:13:39 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.171.83.22])
        by smtp.gmail.com with ESMTPSA id z9sm2254174pgc.85.2017.09.28.02.13.36
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 02:13:38 -0700 (PDT)
Date: Thu, 28 Sep 2017 14:43:32 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v3 0/2] drm/tinydrm: drm_of_find_backlight helper
Message-ID: <cover.1506589807.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patchset introduces some changes such as move
tinydrm_of_find_backlight to drm_of.c and rename it to
drm_of_find_backlight for better organizational structure.

Changes in v3:
-Changed it back to a single patch for the caller in mi0283qt.c
 and the removal and renaming of the helper function.

Meghana Madhyastha (2):
  drm/tinydrm: Move tinydrm_of_find_backlight into drm_of.c
  drm/tinydrm: Add devres versions of drm_of_find_backlight

 drivers/gpu/drm/drm_of.c                       | 92 ++++++++++++++++++++++++++
 drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 40 -----------
 drivers/gpu/drm/tinydrm/mi0283qt.c             |  3 +-
 include/drm/drm_of.h                           |  3 +
 include/drm/tinydrm/tinydrm-helpers.h          |  1 -
 5 files changed, 97 insertions(+), 42 deletions(-)

-- 
2.7.4


