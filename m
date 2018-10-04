X-GM-THRID: 6608518464000753664
X-Received: by 2002:a9d:2a77:: with SMTP id t110mr4623448ota.5.1538665607701;
        Thu, 04 Oct 2018 08:06:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:45c6:: with SMTP id s189-v6ls3344981oia.1.gmail; Thu, 04
 Oct 2018 08:06:46 -0700 (PDT)
X-Google-Smtp-Source: ACcGV60LYozQ1MFNATsPIVMEEKvDLJ9hHzlWgOvZfDl084P8BoSWcrXoiGRkhRGt/W/8jAp47udU
X-Received: by 2002:aca:b1c3:: with SMTP id a186-v6mr4893023oif.38.1538665606980;
        Thu, 04 Oct 2018 08:06:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538665606; cv=none;
        d=google.com; s=arc-20160816;
        b=JFZxEg9G8QwHYfbtSAxXKW+QmaKTwjAjAaPw3WV0r70RWLt335YH+IB0kpgjmEcDDD
         AdsWamoG7p68rpC0tmJrYhlAZMiaSYrO2wQx2KDga03Spcqh3A4Agm+suVGqIvyDLL0m
         b002Ya+V7/9+3erkOhJOGq/Adl5KomKdC97C9cdqw0jbgXMz/ghq4ZgPqfOgclmNkMBB
         +uJD2FrtYceZtHbhsOOYpVXKzSFvt/94zBKDSzmraZEZtGMHkRYgzWduaMtGpaWxXHKs
         UxKjgHxS0rJnsNOL6VLb+x3XT08O19uX8PK1JflJJmrHFXDgn8u9D/I19Y2W0P2XWjy0
         3Hqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:subject:cc:to:from:date
         :message-id:dkim-signature;
        bh=3C3sexSYD0cQnjgCadQL8lbPPz7WSB0sjWHtF1kgMeg=;
        b=zxYcPfy2W4Ks+psFulWeOCC4v0KS2qaCaiVQ8DG2hB67/oPAjGbLoGjl59BrUbIEnG
         pv8uv6Wu7sKS/4od/KrC+VwpMYxth5abNWxLbLbb6uEHupVTsIvX6yWvPkexh7pTEvd2
         kjnsG74p6bIa3wNlUnKG33Ni/q2r9KcE0e7iDRBPVQ4Rj8QnkBQdnatUJHg11oP1gBcf
         jL6e00U4Yr8lMlFQy1Gga+IvZy6aT05FR9MSjfAynYaxt1zOCidNf8JuMG3Gg3w+Qky5
         hvCss1yEQoPSBgPwR09Em9C67cQg3gLMnHoTTC+kwwLUNJRRM0oUWztyHqgz9utzqMf6
         BRfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Y67Ddx6S;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id a84-v6si250363oii.1.2018.10.04.08.06.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Oct 2018 08:06:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Y67Ddx6S;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id c25-v6so3205163pfe.6
        for <outreachy-kernel@googlegroups.com>; Thu, 04 Oct 2018 08:06:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:mime-version:content-disposition
         :user-agent;
        bh=3C3sexSYD0cQnjgCadQL8lbPPz7WSB0sjWHtF1kgMeg=;
        b=Y67Ddx6SEUO2SsqLKljwv185NE6c6UOcT7SQUepfCRVMl1dTc2RRITmpPN5VBAgltl
         tl630PZqVOQxZfj9EovLLKqTNHJl0Sgj1XxL7/iVf7WCt1s7bT4N6Vu5M7RHgsJukQIx
         CyS7aqJGxOysmq8TJnVM7pykbELucozDXw0wRi0RmoWio6mC793UBVY0fGZJCTAlJlPc
         6cO8aEQy8988UsezahX7Dd6A35X6qM4zw8Gq3YH0EfdbkRw645fZNU29rc0UoFULUX49
         PN33O/swIAcnKgTtsme073+6Q90NiRGTTW1NpCDuBFVTCOPrn3z1B9qvp2ILxe3iiyvA
         k+nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:mime-version
         :content-disposition:user-agent;
        bh=3C3sexSYD0cQnjgCadQL8lbPPz7WSB0sjWHtF1kgMeg=;
        b=j5Gx50VWaGYOMVqfn5rIATYBzH+ZA0eCl88RJeeLUCGBkgiqdCcEu36IcqIpXb3Zdj
         FdF+nfhGbz9+DdnXUNNmp0s0sb18QldXyoYxsJFpo5z+9XoaLPmPv/CMxSB0vB3DjO0P
         +5FyVp/LM21YdbIfjCvI1mRuX76kRUmbEPGO2zBa+LZXOJE64IJu2wAhAduVyF+dKsTS
         QPa6Pl/+6FG6BIOp0A8SgC7Ir7UpunVsq4JcZggVgIC1AXKqp+60NVt2o/3Qqyl8dwIX
         qUftMxyJGE4yO9RNgrMomLboInzmO33w6FxaVGToruSqTc8Z0XE6AA5/LEPvfxv4I6Aa
         1V2Q==
X-Gm-Message-State: ABuFfoiatcwIJj1/lMPp5D2Hi+9w2DCku7BELUmoHxK2TC+WXvYeK84Q
	NXXiAPDeS4ctU5dCXDc7LSzOvV/P
X-Received: by 2002:a63:df06:: with SMTP id u6-v6mr6099924pgg.202.1538665606252;
        Thu, 04 Oct 2018 08:06:46 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from bhanu-MacBookAir ([183.83.92.101])
        by smtp.gmail.com with ESMTPSA id v5-v6sm13282816pfd.64.2018.10.04.08.06.44
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 04 Oct 2018 08:06:45 -0700 (PDT)
Message-ID: <5bb62c85.1c69fb81.9de38.b242@mx.google.com>
X-Google-Original-Message-ID: <20181004150643.GA29463@bhanusreemahesh@gmail.com>
Date: Thu, 4 Oct 2018 20:36:43 +0530
From: Bhanusree <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [Outreachy kerne][PATCH dri-devel]drm/ati_pcigart.c SPDX License
 Identifier is added in form of a comment.
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

SPDX License added Identifier in the first line

Signed-off-by: Bhanusree<bhanusreemahesh@gmail.com>
---
 drivers/gpu/drm/ati_pcigart.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/ati_pcigart.c b/drivers/gpu/drm/ati_pcigart.c
index 6c4d4b6..4825211 100644
--- a/drivers/gpu/drm/ati_pcigart.c
+++ b/drivers/gpu/drm/ati_pcigart.c
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
 /**
  * \file ati_pcigart.c
  * ATI PCI GART support
-- 
2.7.4


