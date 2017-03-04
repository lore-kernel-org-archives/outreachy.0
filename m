X-GM-THRID: 6393354564445143040
X-Received: by 10.99.184.17 with SMTP id p17mr3610432pge.126.1488647037995;
        Sat, 04 Mar 2017 09:03:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.38.42 with SMTP id a39ls3487371otb.38.gmail; Sat, 04 Mar
 2017 09:03:57 -0800 (PST)
X-Received: by 10.157.17.29 with SMTP id g29mr3476114ote.86.1488647037606;
        Sat, 04 Mar 2017 09:03:57 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id u12si591099pfd.3.2017.03.04.09.03.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 09:03:57 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id s67so15669559pgb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 09:03:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:mime-version:content-disposition
         :user-agent;
        bh=4C2y090yLIMCOmunULRZjMVnyCdlXUfE2BS22D5Y9vQ=;
        b=UruLAkLlxXETzpwjrJV8cbbUltJ0vMaGWJwIOmLbALAzIV/tC0kgI3J+/JHawbAKvy
         NkYmTbJ1OPZFC8awIvqjijURu03ETqNPpI+3N9Q7HyEycwS8DnNpjwF+iztaZTmcaKeI
         ZDuonhro/iewGsXaoSJbPHVCLVKETrdL2kZ2oCt3roKtoo5bR925hWCWi8XZwYj65bEU
         z8LwEm8dClLQw8ZLOC9dhgqlSIfJzju8821BMI+HQ/kGIUU2FPCO20WOn1HGber6xQ2b
         xt/eTY6JNlBGGF2/r/v20r8TTM3mRsAYAIuqakOTeWnISdiOodgjQ5fQHbIvfyH/oqQn
         RyZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:mime-version
         :content-disposition:user-agent;
        bh=4C2y090yLIMCOmunULRZjMVnyCdlXUfE2BS22D5Y9vQ=;
        b=R434FiztCbkdcURBj4Cq2YHLLtX3vaqH+afVPRnqcUIDSDbyeFqE/72czaqmDOdEaG
         GQV6WOiZcxcKOQdH9phU42D300tu3BrYpjExSolFp0bdtqjSrTya52r3WCApssHiOLeq
         yAF2r542ajSz7z68XxwlebGetxGgCUiU62xWEtD/rqFW2o5CRnlRUYSzIrxIAAOFOAdS
         hyZ2HE5vpBrGBC3kmdaPgziJDjQIg4EdmXj796QVYK46UPihsRYHbmQC2gzYmHKbn9Vy
         208A8GaXRkT7z9L1rscv/wAqwAJflnmtOZaxQXIaendrN14Fccqe2M2ye48uC/JVE6EQ
         Jerg==
X-Gm-Message-State: AMke39m80Qx4uZQPkpJBZwiuwpb/zO9jkrabJSu+lDGYDsCsf0aTHDff+PrI+jpyemUq6g==
X-Received: by 10.98.69.139 with SMTP id n11mr10514047pfi.65.1488647037376;
        Sat, 04 Mar 2017 09:03:57 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.211.102.19])
        by smtp.gmail.com with ESMTPSA id l19sm17596037pgo.13.2017.03.04.09.03.56
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 09:03:56 -0800 (PST)
Message-ID: <58baf37c.5398630a.fec2a.21e7@mx.google.com>
X-Google-Original-Message-ID: <20170304170352.GA4899@<rvarsha016@gmail.com>>
Date: Sat, 4 Mar 2017 22:33:52 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v3 0/9] staging: media: atomisp: Fix multiple checkpatch
 issues.
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.1 (2016-10-04)

Fixes multiple checkpatch issues in media driver.

Changes in v2:
- Fixed commit message in patch 8.

Changes in v3:
- Added change log message in cover letter.

Varsha Rao (9):
  staging: media: atomisp: Removed unnecessary parentheses.
  staging: media: atomisp: Fix line over 80 characters.
  staging: media: atomisp: Added spaces around arithmetic and bitwise
    operators.
  staging: media: atomisp: Replace 'uint32_t' with kernel type u32.
  staging: media: atomisp: Fix block comments warning.
  staging: media: atomisp: Removes the FSF mailing address.
  staging: media: atomisp: Use unsigned int instead of unsigned.
  staging: media: atomisp: Fixed typo.
  staging: media: atomisp: Replace NULL comparison.

 drivers/staging/media/atomisp/i2c/gc0310.c         | 22 +++++++--------
 drivers/staging/media/atomisp/i2c/gc2235.c         | 24 +++++++----------
 drivers/staging/media/atomisp/i2c/ov2680.c         | 30 +++++++++------------
 drivers/staging/media/atomisp/i2c/ov2722.c         | 31 ++++++++++------------
 drivers/staging/media/atomisp/i2c/ov5693/ov5693.c  |  2 +-
 drivers/staging/media/atomisp/i2c/ov8858.c         |  2 +-
 .../css2400/isp/kernels/bnlm/ia_css_bnlm.host.c    | 16 +++++------
 .../isp/kernels/macc/macc1_5/ia_css_macc1_5.host.c | 16 +++++------
 .../isp/kernels/macc/macc1_5/ia_css_macc1_5.host.h |  6 ++---
 .../isp/kernels/s3a/s3a_1.0/ia_css_s3a.host.c      |  2 +-
 .../atomisp/pci/atomisp2/css2400/sh_css_mipi.c     | 19 ++++++-------
 11 files changed, 78 insertions(+), 92 deletions(-)

-- 
2.9.3


