X-GM-THRID: 6608456604457107456
X-Received: by 2002:a25:3610:: with SMTP id d16-v6mr2728266yba.98.1538651204484;
        Thu, 04 Oct 2018 04:06:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:3d4:: with SMTP id 203-v6ls1115756ybd.11.gmail; Thu, 04
 Oct 2018 04:06:43 -0700 (PDT)
X-Google-Smtp-Source: ACcGV60Iydkj4XsF2zx4yrI+u/LGRAnjNs57FEtc+FhaMQvbRD8Fl6+zEUO8DRc2hZAXEguUos1q
X-Received: by 2002:a25:330a:: with SMTP id z10-v6mr3103844ybz.100.1538651203602;
        Thu, 04 Oct 2018 04:06:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538651203; cv=none;
        d=google.com; s=arc-20160816;
        b=NxX0/J5iktyn6tWiutskxA7YyTZ6bjf1ArSDGLsVz9+e5OmD7eyruStC/GB0+IdFa2
         ST0lUpeAvX33VdFfZ7S2eSw3+Ul+fNbTFF33xLPpfOUBLmeI7NBwE3IVDqzZjYm4VUyd
         kmOeuPPu+eVq+EaHpuOyn3oATFOH15Nl2TfLWMzRNm6RS6KtkUiXgb3vPkYOvWfCcPQP
         HOFMhP9/9Q3ImU34c+yJ8Wyn/jzSst5C6FnbKyZSo6/jROQp3lDRpWzGP/jae4Cpmaa9
         G8iUDXHunpR0Gfiq528wzi/4ET3U6Ed/hbaO8x2UF/7Q9FVs5j6rGCOoEpsWRecdX4VH
         uiuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=T5s3tOlKCTAbsxDoqj8ZP8bs+Bv6D+AKADw4kfPXp5A=;
        b=P6lo8UT+F1HcLMg2edQTO/RFqse2kB2fLRSkt34oM32ZLbZniUZcovdEZX7VbvOvrs
         2OxafItwNJymq0M3NsONzPvUNXQq4jA4XbszuFJbGInxEo2H7bnHQDw9MGMlMMOm1mw7
         pRLBfbdoHmIHy1ukoChVkQvmcKDZD/CP/k1MuPzTyGZCVljk11NvU4XafIHQK8PqE23K
         3kfEIjAc6pQnvDsYIy8ty/nqqhDy7jtwYXIP7w4GAUHBmF8kEB9lVrE1FhBrTOw+nIyf
         C2RRojrddbbzbT7z+OSpEHk2TcimIrWHdSAXtE5rGkQAMM3PZ1L1sL48RyMvxPdaOZxe
         E7dw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LbWlEFI5;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id j12-v6si176923ywb.1.2018.10.04.04.06.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Oct 2018 04:06:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LbWlEFI5;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id g2-v6so2986192pgu.11
        for <outreachy-kernel@googlegroups.com>; Thu, 04 Oct 2018 04:06:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=T5s3tOlKCTAbsxDoqj8ZP8bs+Bv6D+AKADw4kfPXp5A=;
        b=LbWlEFI5lYqAdiKzS+HDy2dMNMO+zF5NoReU6cTgY7U4gPYDCIDhCXXdGvUFymmd0J
         zxsZqG6QNaob7tu/RZDbwhV4hXHYqNKoWGfaKrUEUv5qSjO/aQzwMx0VHArUvXwfjqlF
         HjjB7GtL1rGpc7LTYOWgyC4oTUVK3sjssKT74IeoaTGbr9eikKBtSkZld66S/SphOut7
         yuBJGJLpOZeqActziVE4H62lBDQKxrJaaJkbcg8opNyvisv+KVlF7/Ns6/W9shMBDstA
         LdCFDHDNWj9rgiB9LVDg76UwtSryossFfhhjn1U4z7UhTXXeWd+4F8MOwbvXPB8//cpk
         iO8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=T5s3tOlKCTAbsxDoqj8ZP8bs+Bv6D+AKADw4kfPXp5A=;
        b=rsovPZyMRvbIm2ys0jVrPj0XeJM0MGOCwyCkNrGH5RQZZ+sDGoMW7z04GLSI9/P1IT
         TApLA6mTwHiDFsgmGEb9d3TejIVDMXR2dD+baX9GPxGQAfZN29TmpcPtzpza8uekRqU5
         W9n89rRTSlVi/q7TnmA4rFY5uHkV0uQ/dKKaEjfP8xCHvGsvf6WmIhi0kLbGDf47BthD
         wbWRs164Q1AEOjOtujkgWe2J31qj2NoXjcOFIx538GssCCbhroQ0qGCV0xWucaYBa1E+
         KMkmO6KOPhtU19M3FDQjRQ4Ys/FGOEBuLZ9WtfiNUBEBzbb/fQsBrNnDfnz7hQMjjDa4
         0k8w==
X-Gm-Message-State: ABuFfogyz3xo9gCy1CZWMgQk6UrsNAn59MdnfdSdkbOLYoB+S4n6SYWg
	MksrSfxrCPuLLbWltrUdXks=
X-Received: by 2002:a65:6409:: with SMTP id a9-v6mr5329859pgv.204.1538651202736;
        Thu, 04 Oct 2018 04:06:42 -0700 (PDT)
Return-Path: <mamtashukla555@gmail.com>
Received: from armorer ([117.195.35.235])
        by smtp.gmail.com with ESMTPSA id u9-v6sm10205874pfi.104.2018.10.04.04.06.41
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 04 Oct 2018 04:06:42 -0700 (PDT)
Date: Thu, 4 Oct 2018 16:36:11 +0530
From: Mamta Shukla <mamtashukla555@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, mamtashukla555@gmail.com
Subject: [PATCH 0/4] staging: mt7621-pci: cleanup
Message-ID: <cover.1538646749.git.mamtashukla555@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fix issues found with checkpatch.pl for mt7621-pci staging driver.

Mamta Shukla (4):
  staging: mt7621-pci: do not initialise statics to 0
  staging: mt7621-pci: spaces preferred around that '&'
  staging: mt7621-pci: spaces preferred around that '|'
  staging: mt7621-pci: spaces preferred around that '<<'

 drivers/staging/mt7621-pci/pci-mt7621.c | 50 ++++++++++++++++-----------------
 1 file changed, 25 insertions(+), 25 deletions(-)

-- 
1.9.1


