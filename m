X-GM-THRID: 6664942000953884672
X-Received: by 2002:a6b:3115:: with SMTP id j21mr2258815ioa.33.1551849801982;
        Tue, 05 Mar 2019 21:23:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:8154:: with SMTP id f20ls303725ioo.2.gmail; Tue, 05 Mar
 2019 21:23:21 -0800 (PST)
X-Google-Smtp-Source: APXvYqxsmBZxvlB+2TcLXhro0KnxpzuYa79nTZL4jM9HCtV9VHSxB3PIOrEwPp3iwW85Mp+M2jKt
X-Received: by 2002:a6b:da15:: with SMTP id x21mr2261962iob.26.1551849801280;
        Tue, 05 Mar 2019 21:23:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551849801; cv=none;
        d=google.com; s=arc-20160816;
        b=M1HixfVgW0uheHqmQwVtrCQrn7iwu6XuGUSPywu1zecCA+h2GuBCNmNV79h/GztOeD
         yDNVc486ULBduMIgMVHNiY/qGGFcABbMmW/8gvvOl3b5niXdsTPzvNk0DnbmpTfjJ/uZ
         dtbZZPafnaGiag1lKF3BeMABalZ4Q0CjP2BRXGOqthZw+0n/fltzG6sayLtmpTfV88Zp
         rtJF2c2Vbdy4tEtyXWPAXAgHD552nWKHulJ3rni9qx24/7fcTbon+/iJMLM0dnnapOMX
         Pzn7F6G+crXcQYDYIhebNPN2cj7fY/cRpbrGZmf4gIo/0ncxx1hu0czAbDs20LqOyPbT
         qf7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=+3LQhyXVvxJsTtkBxF1kED2lw6wMKyFbEhJgMpfa/wU=;
        b=FmjFOSshQjcad1tUo+PZIAFtGktq3ZZ/SlUe49ds2Pre95/rP0vkkvgoA9SJ38W1JV
         6jXEwhRBV5t099VYGBj9vzf4DW8lY44pkx3g5w6hosSTrCieAPcGnmLbnMTYz1rFEEUB
         gcd2pWTkm0ecwqE2ceZ2jvo8i1MvwI6nRp4H54QK0JxcTYx4Qlhk4dvWKnZW/xvfKpA1
         ONlOKbjP/BEzfgHu/rU5QGnk56VYCDWZrxBx3czmvzmNGsMIMLMn21qF6JUKe6f63uFG
         acyKRIt8ijeulBqL+jDN4rOedEmNF+ded5UaAYDaJuEs/0FEMFonNxGv6Iv8VCTeQzNv
         ssUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tq4LTAVx;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id n185si69483itn.3.2019.03.05.21.23.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 21:23:21 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tq4LTAVx;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id g6so7567542pfh.13
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 21:23:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=+3LQhyXVvxJsTtkBxF1kED2lw6wMKyFbEhJgMpfa/wU=;
        b=tq4LTAVxXVA+cHBRosT3Fh6tSd9HtmClWTipr50KuNwyroiiEUneAQ645fyB2LedFN
         lcIJmq/xm62h1duK7iToT1N62X34GqRJrtTOAh4p0/6nanH/FVxweo6ffvr51PDqpsbS
         Cmmmwju3a0vy7C9DDaVJ72wbGvWkFwQSBumzyhL5KIQMhsUU/O9qS4tYrnFwq+cH3ZKE
         aok3GrTs/ODHmaXBmS/0tsO3lgg3vgYsszCDCkqTqkX76rf7ZDJnSMjm/T0Kvcw9ctQD
         o2waLC0nVKUta5hfsMO80MZST+W83K+SJ/IawDuCvrcsFS28bqt/yb6fQMeRySGeDyk7
         rTHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=+3LQhyXVvxJsTtkBxF1kED2lw6wMKyFbEhJgMpfa/wU=;
        b=nVYNAjwYslQHzHMK3S1wstLrw2wZgGLIdcXIauUXDze0B9i7IjdcB1Ktccz1ipuvgq
         zTnJOYv8j+DAuJVpqo2cBiN19iwq16urf2iecLPtKXgLTjjCbO+yDJi9SEIRKofR+BXY
         Oz1xEU5VGOipaPLV2sl3rLwi4UEdmtgf9BxoviLR1khddgCpiTGkvxteLvGbPs/+Ivjm
         9xwKJ6CYmSx/Y9wZBpXieWSCFIPgxXTxc6FBPY5rVfV99ZkX9ku5hmW+RG4MFv7BRBdu
         4QgVuQCN+TvFmlMmFxIWp8df2SZyjoGU3QmEkee4C1ORqdx4NvfntW/P38aExEp1tWLw
         Zjjg==
X-Gm-Message-State: APjAAAXBuOoH52QCVVLUwcaJKirf8lv4I64ZjM1hctl0LWitrW+75qCf
	aiwxL9JgZzPPHKx4l/Z9BniSIu6nm2rtNA==
X-Received: by 2002:a17:902:bb0c:: with SMTP id l12mr5164199pls.108.1551849800291;
        Tue, 05 Mar 2019 21:23:20 -0800 (PST)
Return-Path: <digholebhagyashri@gmail.com>
Received: from bhagyashri-Lenovo-G570 ([2409:4042:2e93:b9ba:c1b4:4aa8:71c5:d127])
        by smtp.gmail.com with ESMTPSA id x1sm850484pge.73.2019.03.05.21.23.18
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 05 Mar 2019 21:23:19 -0800 (PST)
Date: Wed, 6 Mar 2019 10:53:13 +0530
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: [PATCH v3 1/2] staging: fbtft: Remove unused #defines.
Message-ID: <20190306052313.GA3924@bhagyashri-Lenovo-G570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove unused #defines detected by checkpatch.pl.

Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
---
Changes in v3:
  -- Change the subject line according to log messages.
  -- Remove extra spaces.

Changes in v2:
  - Remove unused macro.

 drivers/staging/fbtft/fb_watterott.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/staging/fbtft/fb_watterott.c b/drivers/staging/fbtft/fb_watterott.c
index 0a5206d..502d67f 100644
--- a/drivers/staging/fbtft/fb_watterott.c
+++ b/drivers/staging/fbtft/fb_watterott.c
@@ -90,15 +90,9 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
 	return 0;
 }
 
-#define RGB565toRGB323(c) ((((c) & 0xE000) >> 8) |\
-			   (((c) & 000600) >> 6) |\
-			   (((c) & 0x001C) >> 2))
 #define RGB565toRGB332(c) ((((c) & 0xE000) >> 8) |\
 			   (((c) & 000700) >> 6) |\
 			   (((c) & 0x0018) >> 3))
-#define RGB565toRGB233(c) ((((c) & 0xC000) >> 8) |\
-			   (((c) & 000700) >> 5) |\
-			   (((c) & 0x001C) >> 2))
 
 static int write_vmem_8bit(struct fbtft_par *par, size_t offset, size_t len)
 {
-- 
2.7.4


