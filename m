X-GM-THRID: 6805399652543758336
X-Received: by 2002:a17:902:aa04:: with SMTP id be4mr5437258plb.41.1584558512995;
        Wed, 18 Mar 2020 12:08:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:ff15:: with SMTP id f21ls14189129plj.0.gmail; Wed,
 18 Mar 2020 12:08:31 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuFpWreFjvWnyTnwGrClC8oPwShO3JdcUCRTKkil4AZdN5uQgDxu3pCvpQI5txLngk5djoK
X-Received: by 2002:a17:902:ee93:: with SMTP id a19mr5407976pld.258.1584558511253;
        Wed, 18 Mar 2020 12:08:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584558511; cv=none;
        d=google.com; s=arc-20160816;
        b=A1weJAMpE/ADY68ydhWBDoP0d79kesQ0+fOrKUWSV/NE6q0yYaqdwEriOvy4d2GKbP
         0WZnLMbxzx8OCJvqp/GX9U/UxjP2Iaf3hzIj72QUeGSQmEkaGlY/UnFRQddHXcowocyz
         Mrq23+3pLyunxSG94u8H+2ePAPxczQO+I9m/O2dUDkrlFKZ7jfYkv9z5hvl9aZMb0mb4
         /k+OJGWwWTarUm4jCZzgHDpozGdn06yd8DxJoqw8BYVGa/IWl8VWqH+plLHhMM42PQ5P
         eSROSZCbb5T+HMdCQxbXDq2LtYN3EW5Z2Ks0EqwJ4W5GECHI4h2onMmS8RXKePLDqw0A
         z9SA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=7tweYNsahvHJxsolfg9Oq0fKb7Kxbn1C7cGKh/PxQeY=;
        b=WMHsztjvkkvHzT9xnXXdEZaS4/g5QtCvxFQ7R25qrbXvfcL+tWbdig98+czr7kpKCx
         KOo8YhGbGKejeJLTfyGf0X65FCCvChiPSBjBnCMZOLeIUWiU5LXYJWgdoOyFA1EMPLDq
         JtTXV4AsHGtB9LSDz35NK1vNd8CHQSWKMZyqqcj01puoRF/TLWGZls+MVP4/uK2Yqxo2
         hQiFnPeA+waY85iCb0j2hQetzB93M+rW5ePeD+gpWhiqGgcslz+2uFWOI2aFuGFU3gg4
         lJQ/aPDThnpeg9r7AQw7S402eoZSxsL++PfEYiEQk960db649UfdNcA6eEN/cKILrGQS
         ALmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=azQmYBSZ;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id b10si499810pfo.6.2020.03.18.12.08.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2020 12:08:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=azQmYBSZ;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id f206so3387232pfa.10
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Mar 2020 12:08:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=7tweYNsahvHJxsolfg9Oq0fKb7Kxbn1C7cGKh/PxQeY=;
        b=azQmYBSZ8HPyU0jIA3EK0F71XgH4sUGOL0Z7Ar9iC2WP7P2sJh9LakH2k7g11UZAXk
         1zmAR787av3BvLfvsrs7ntaf1RhC3Giu0uvKQ7HI0QF0opPmZ8uECU+4CPz/CjSS1fbr
         o7Msy3CSJiBnTjGm/RpcpR8cVPpX32f5zOqS2rRXtq5I3Um8bbR1bZsL4vF2OGXhB/fx
         Zt0nKJbW+BlT/C5RT80kgFLvfNXM6UxHWdfvvjs3Aj6X2596HC6+lXkG1uILkOfVxSrC
         TNgMI2/MdDMuZANZlg+N1LbvenEbqoUo47Ro1TGtzoDwwHzgM0kLYpsEHUpo5s8/4dAJ
         K+KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=7tweYNsahvHJxsolfg9Oq0fKb7Kxbn1C7cGKh/PxQeY=;
        b=Z0zdKSAbPan1+y1SNAz1Dqp2PFme3UHIWsxj8dJScAFKXnrzy+q2lT9uoBPmsGen5N
         VezOKm1QvXuZOf/+4KCVnzszsxviXf5UoFSJ05JnJf/LTj6rgTjtb0BRz+UIF3owCDaI
         dK4qYCLI5cSf57J1no0WqLraPJAd/MpEGc6Ab+Y7b+ekOR8fYzgPHL1q/MO6vZ2bhVH3
         veLQKNPiBGw7Vdbbc7e8K8++T6O622xI29NOQnLEhobVIRst4xfx32Z8rSaGe+r7sGMg
         DQ/1U5hcBifKQFuxKXj4/kFPdgLdR487IXjyXgSruQxPyWy78ReP0i5RQzcwDDCawZg7
         NdIA==
X-Gm-Message-State: ANhLgQ2HAXMssrgL/P52WOxJX88hl5+lBFYAd55zoVhs20nzzLVk+6WT
	AVUqd3KZnqq7i7hB11gUl/ccUZx5
X-Received: by 2002:a63:8c18:: with SMTP id m24mr6228929pgd.70.1584558510837;
        Wed, 18 Mar 2020 12:08:30 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.241.226.97])
        by smtp.gmail.com with ESMTPSA id z16sm3105758pjt.40.2020.03.18.12.08.27
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 18 Mar 2020 12:08:30 -0700 (PDT)
Date: Thu, 19 Mar 2020 00:38:24 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	daniel.baluta@gmail.com, kieran.bingham@ideasonboard.com
Cc: lars@metafoo.de, Michael.Hennerich@analog.com, jic23@kernel.org,
	knaack.h@gmx.de, pmeerw@pmeerw.net, gregkh@linuxfoundation.org,
	linux-iio@vger.kernel.org
Subject: [PATCH 1/3] staging: iio: adc: ad7192: Re-indent enum labels
Message-ID: <7aa18b6226a644e12302a055cbc17b41a2ccb02a.1584557481.git.mh12gx2825@gmail.com>
References: <cover.1584557481.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1584557481.git.mh12gx2825@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

Re-indent enum labels as per coding style guidelines. Problem
detected by checkpatch script.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
 drivers/staging/iio/adc/ad7192.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
index bf3e2a9cc07f..51b1cd3ad1de 100644
--- a/drivers/staging/iio/adc/ad7192.c
+++ b/drivers/staging/iio/adc/ad7192.c
@@ -156,8 +156,8 @@
  */
 
 enum {
-   AD7192_SYSCALIB_ZERO_SCALE,
-   AD7192_SYSCALIB_FULL_SCALE,
+	AD7192_SYSCALIB_ZERO_SCALE,
+	AD7192_SYSCALIB_FULL_SCALE,
 };
 
 struct ad7192_state {
-- 
2.17.1


