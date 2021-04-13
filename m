X-GM-THRID: 6950506572644614144
X-Received: by 2002:a02:850a:: with SMTP id g10mr34300762jai.140.1618327707978;
        Tue, 13 Apr 2021 08:28:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5e:c911:: with SMTP id z17ls3222107iol.8.gmail; Tue, 13 Apr
 2021 08:28:27 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxDE+6sH6i66YH6g50cSNM9pMSwDGXPRM+Kuduv0+uWW66AahnkKHoTBzROg/rCMav9xr2P
X-Received: by 2002:a05:6602:2348:: with SMTP id r8mr27476651iot.77.1618327707302;
        Tue, 13 Apr 2021 08:28:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618327707; cv=none;
        d=google.com; s=arc-20160816;
        b=tMP7JDwkmFKWDGmu7PH0lW9EpmIVb8tZaIykxp5VbDxZ4wwEWlFtv9h0oSG0Bm1NyF
         yDzgj83SC/UIMLVCLHt6CFxKC4+v87sInK3LrJWii8F7QuOD/n9daXJHWrRa84bYrkaK
         fVF/x7LqGpIkqsqLOzZFLkty3EW7nyMZ2QlgdJ+SgvPj6e44RySR3lr5bypPKvq6bQKI
         Q6Ez7n3tlcHcotrGpzJTJlkk/6zFTnGMyZyMGMkoiBCV860KuXy9mTndv2AtwEO6HLQj
         4f1oOVTRLwTV6+fLbcuWGAVAfSotvS7MhjVEAmjEppPlaQjYkLSxDugLsdszGge3PvqC
         JpYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=txv1fgolWcizMYehBcvnnggRxVWanXigizl1Xf+Dky8=;
        b=Hlu3UHNjRIZNE9/2e+wBba0YhwXZ7DyMGgKuCqGw0TAMJX+6Ita4Cbytb1iEkEURBq
         MhVw1rHBGrxFvyhGPol61DUFI0BCoEiNC7VqDjpadAiBS1OnT1IM+qUrnMnD3XZBQrSs
         ccLDAsPAKbLkNfLtR8aKxaLGU8cNYhXzdjrpWvqjR6otawSIw2a/NOWdWngJZJXgRX87
         Hs+2qzPy2TFFibvciJj3gQJ56f8VwEUPuKMyEBF32T5mGPV/R2w67HDH5HYIYpHK19et
         2Hztfc9MPvssg+QSUAFAeFXH/MMdLM1jOVL5q5LQUh42phmG/UOkqMloHiWeH3gtZ+sP
         22RA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MWezdm9a;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com. [2607:f8b0:4864:20::429])
        by gmr-mx.google.com with ESMTPS id x7si583588iow.2.2021.04.13.08.28.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Apr 2021 08:28:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) client-ip=2607:f8b0:4864:20::429;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MWezdm9a;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x429.google.com with SMTP id y16so11655988pfc.5
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Apr 2021 08:28:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=txv1fgolWcizMYehBcvnnggRxVWanXigizl1Xf+Dky8=;
        b=MWezdm9avdfWuu/HZ27c6zuKllOS6Pl1/9SXUAcMD4YEPcyYZOPuEoJb5wsCLXOggi
         EykZ1z/CAiQTJ9FtPqD/3I6yYyf1VGMGl7lZN9U2zR9S13tV2piPddKNQa5SmOCL3VJx
         XppanDypKGNPDoZyommH1o2N6z32RC3GfWMkxA7cAsaAXw/z/S/xinlxDFDfhw977Cmm
         P/9mdU4A2MhkBgmByF4DwiNfKF2LnVJiHPNynXwTUVxVuXK0Wr+rPg0bgLEdwA+kAJGK
         NDAuXjtOfNNVyY6NP5rZ8TyXG5Uq2iVUk+jdL00LQvIfLzWQ4+fRyEws/Af2C5EXOp0l
         /5Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=txv1fgolWcizMYehBcvnnggRxVWanXigizl1Xf+Dky8=;
        b=mCGDKHmUX9AXoKmc1EadQby21fzHKFvx1ulh86455B7AXfQ5Ra9Au9Q7zqHWeeKdxC
         tEOrYEoeuClNkDwmiyZvY9verckCegP1QQNYd4kexFoHbRrWeJP8tv1fy3rcITTeDMTE
         HozjxjwO3zR3Kc8drdGxr8U0/97SlCfKDR6iUAkvSZ8fHsHoeJ7LY1gyjWrUDmNKk5Na
         4dMbvH63O9EuNioNqNraqLaMX7DxOL9RbQcq2kYekNeJ5F2c82pcCyP9Q6KjpPD5YpKf
         edszzD81LzUGoMPx0aqXA8z4xqTISpav9ilFJl+GElbmolhsbeeD9IFY59na8u2+mmtT
         bM/w==
X-Gm-Message-State: AOAM533l4AD3EWnUGoWJEyTz6VxLbKA2KOzAWXwRCcmzi8/oTZMTQEu5
	dsJxXWtRfvmtYMTRc+BYFPo=
X-Received: by 2002:a63:d58:: with SMTP id 24mr32958444pgn.171.1618327706735;
        Tue, 13 Apr 2021 08:28:26 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.253])
        by smtp.gmail.com with ESMTPSA id w75sm13360149pfc.135.2021.04.13.08.28.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 08:28:26 -0700 (PDT)
Date: Tue, 13 Apr 2021 20:58:19 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: sakari.ailus@linux.intel.com, bingbu.cao@intel.com,
	tian.shu.qiu@intel.com, mchehab@kernel.org,
	gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in
Subject: [PATCH v3 0/4] staging: media: intel-ipu3: Cleanup patchset for
 style issues
Message-ID: <cover.1618326535.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Changes from v2:- Rebased these four patces and made changes against
mailine code

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
  staging: media: intel-ipu3: line should not end with '['
  staging: media: intel-ipu3: remove space before tabs

 drivers/staging/media/ipu3/include/intel-ipu3.h | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

-- 
2.30.2


