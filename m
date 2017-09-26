X-GM-THRID: 6470133937327833088
X-Received: by 10.101.76.74 with SMTP id l10mr7424625pgr.43.1506445449941;
        Tue, 26 Sep 2017 10:04:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.202.252.135 with SMTP id a129ls6726916oii.8.gmail; Tue, 26 Sep
 2017 10:04:09 -0700 (PDT)
X-Received: by 10.202.213.16 with SMTP id m16mr6434991oig.43.1506445449029;
        Tue, 26 Sep 2017 10:04:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506445448; cv=none;
        d=google.com; s=arc-20160816;
        b=ybkfDlbhLCSJ7edtLkSVRJyIjHHHyjIirz8v0zuDj+wolKTwgBcMPGLkosUGLUo4Ke
         lTsfr5ULXVDlexPkbAw/gRuXAoelyQyDTPJ8XLBDp1VsnI3RzC/qbqIqB5ntgaFj0jSB
         okkG5PIIFCfrbz/4qasU7YEv5Asfqtd3M2lVAXbGAdYQhQF/9QLalnUK6/qQ/m9R1eZq
         j8pEkijM2chZEEXpOzbWzANPFyLgBKqyd9EX7R9u6UUbLuZWe/qC4HLtARLjIijeXbWC
         c98Ggik7yopH4mqJI93VUMzgf/KKe+yGUODltuXrDdsHIYgACNqSJR/di6e+hOiMn/Em
         akPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=kCOCTkKzaR5z+WymGxwnMIoXY+swg9rMRh0Q6Hqy2Uw=;
        b=oqpXssu1k2uQBcR1bESmOlGzpGC0sADVoatWkMvZykinZA89PF0L1od5mGc1TodlyB
         yGsAIMQUX/bccpwQi6dKd6w4cMHRICtLNfRmqBWsXMgWronBI8dOKqYC6lzZGwJyj1+C
         ZRsk3RNIUpLNNd8utAvkTEnBGGzCdQwpr7Wyiblb/W3ZhesaPc++V5okgbbY4Mm3z8KU
         MoJbohNvEoCfBj0WspqQsEHrsJg51ctiu+BpCkMWM+Ri72X99axKXgE+oQEsJ/1IGTv9
         miA7OkLBZ8SG3Wgdr78jKN27gjWflq5Xt7tnFPaiK5i/wl8O9KcvV8ApmOuVmSIsHN+j
         yCcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NmcjXVrP;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id d207si685783pfd.16.2017.09.26.10.04.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 10:04:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NmcjXVrP;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id h4so5248882pfk.0
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Sep 2017 10:04:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=kCOCTkKzaR5z+WymGxwnMIoXY+swg9rMRh0Q6Hqy2Uw=;
        b=NmcjXVrPg5FylmLUtKWm4gmyM5aTtLLE57w0ZqDQB63lVtXk2B+7eQ7ldZB0USgsrm
         rKkgIJmHa34fG91M4Ltc2A3Ac4FmdRnSPnrYJm7VtwRtLHnaezn9BpC5KAH/NVnPIEog
         J0h+iugQ2lQEQjCoad3DCXAEprTQWnL48Gc0GgukET01Nesg2DnaVmBIpC6R1Pt37OPK
         USkPC+EFRXTtOKomJ20zrbSdksVFD+I4pgE/eS/8pINq7vVdPJwCMUEg+yzAnznhrPxk
         UxbweHyZj264O2R2gshcuvFTu0nN7Qeu7SSopU8qKGPXV89fIj9TY82JQhSgJLkCZkwJ
         EY+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=kCOCTkKzaR5z+WymGxwnMIoXY+swg9rMRh0Q6Hqy2Uw=;
        b=rczzXoMwsB3FRmV8t/5o+UnCUiIMR3YwgQCKKarE7dezNXQIYgrG9JLAwaRqgvSZZS
         gRJGvLFJP13yGrl4XfcbShGRYVGZPdh05pxrYA/zL70Mo7NGtLeKaVne4f9LT9eKAXD3
         GVXtLxTYtNX82NUMUj5+fdx01etKXehA2LtGgV9xAucrhIsEXDW0U5rA+OBXBKZUUiKn
         i0BhNKAK3Uq9Ba3siLCz2hMzZPk0GvLHTBZMz8AKzRiSJjQuNTCYhAA67IfdSdUJFYMT
         MAYdMn0L6CgwyBmuH9FD992/N5cwhvYS1CCg4Xmd49lbr9jDddWHpw6PS8jpZg7/nlJg
         l+Og==
X-Gm-Message-State: AHPjjUivK5m7QvajBXtnzyqonqIXti1q82KnEjM5BtX38VtboHvE4Gk7
	dLPf//rPEYfBf7If53Hs+/k=
X-Google-Smtp-Source: AOwi7QCJCHjwujYc93zToMkjJkfCayYI1av1Z3dUpvga6SH/mrHUWsbAYj0z3YCjWDo7N4kKvlKAxg==
X-Received: by 10.98.237.20 with SMTP id u20mr11247466pfh.129.1506445448711;
        Tue, 26 Sep 2017 10:04:08 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([27.59.60.239])
        by smtp.gmail.com with ESMTPSA id u20sm15518619pfh.171.2017.09.26.10.04.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 10:04:08 -0700 (PDT)
Date: Tue, 26 Sep 2017 22:34:00 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Daniel Vetter <daniel.vetter@intel.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>,
	dri-devel@lists.freedesktop.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] drm/core: clean up references to drm_dev_unref()
Message-ID: <20170926170400.GA7671@aishwarya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This is a continuation of a previous commit ("drm: introduce drm_dev_{get/put}
functions") to replace all references to drm_dev_unref() in drm core files with
drm_dev_put().

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
This patch is on top of branch drm-misc-next of drm-misc tree. I hope that's the
right one.

 drivers/gpu/drm/drm_pci.c   | 2 +-
 drivers/gpu/drm/drm_prime.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/drm_pci.c b/drivers/gpu/drm/drm_pci.c
index 1235c98..4db9c51 100644
--- a/drivers/gpu/drm/drm_pci.c
+++ b/drivers/gpu/drm/drm_pci.c
@@ -274,7 +274,7 @@ int drm_get_pci_dev(struct pci_dev *pdev, const struct pci_device_id *ent,
 	drm_pci_agp_destroy(dev);
 	pci_disable_device(pdev);
 err_free:
-	drm_dev_unref(dev);
+	drm_dev_put(dev);
 	return ret;
 }
 EXPORT_SYMBOL(drm_get_pci_dev);
diff --git a/drivers/gpu/drm/drm_prime.c b/drivers/gpu/drm/drm_prime.c
index 782b95e..8de93a2 100644
--- a/drivers/gpu/drm/drm_prime.c
+++ b/drivers/gpu/drm/drm_prime.c
@@ -342,7 +342,7 @@ void drm_gem_dmabuf_release(struct dma_buf *dma_buf)
 	/* drop the reference on the export fd holds */
 	drm_gem_object_put_unlocked(obj);
 
-	drm_dev_unref(dev);
+	drm_dev_put(dev);
 }
 EXPORT_SYMBOL(drm_gem_dmabuf_release);
 
-- 
2.7.4


