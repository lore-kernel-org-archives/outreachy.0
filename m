X-GM-THRID: 6465542343215808512
X-Received: by 10.99.114.29 with SMTP id n29mr12826256pgc.88.1505376867938;
        Thu, 14 Sep 2017 01:14:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.222.13 with SMTP id v13ls4432356iog.40.gmail; Thu, 14 Sep
 2017 01:14:27 -0700 (PDT)
X-Received: by 10.107.174.201 with SMTP id n70mr639910ioo.112.1505376867364;
        Thu, 14 Sep 2017 01:14:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505376867; cv=none;
        d=google.com; s=arc-20160816;
        b=awPpl0gMTGLD9/SWZMpErAcz6MOw9Z+zBX+9W1KyhMjZS7p2Fs9z7RLcg6YTP8HU8l
         1JQZEi31FBSYF8tDdZVFLF6Ffrwf7qwe6HH9o4ywAYVTQ3ozmMlaqm1DFwGL1EZSjaNQ
         Bg023XDQ6RXY804VJyaLy6WSAIn+6FeyT7q4zDceanqiHNPUTJBptZhvVUtdnpwp+YKa
         ka1lrGJa0gZPRHiTjv/EQNRqX7AyCAn4cSZTTdpku/G9vesN/TyP2sDtL28yerAdSnuG
         qDxwFkqFMULlpWXwmCl8os2pWDfy2B3AdHpl39IsZu8kO+Ja0KTSSMiy7aUngb2uoLYm
         avWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=8zl6tQdoL/Dvqwz+/VsoxKkRvvGl3KNkniSbiQtNDbc=;
        b=kwBVFMeYXkNGJE72yVZq1VhzK55VDxh2OdUpDyCyPBCOjLHiZF0WmsqUdKZgZVtISv
         8bkksj+hOhizSMdBrQahB0Ou5ggy730LNlD4gUjEWfKsz8+vLiV19Dq2xnS4/fhaHQhf
         bis+hON/OHrP3Ohjw4dLCW2PZDqkj7Fd/VDUIVyuFgICV//vLZZrDZsYav/zXdgnzIrS
         c0DSCIgCO+Gon/xRHgkJGuhLpIdT9W5vlQU51Cf0Ic+b9YuZIgFMKK5svYtPGavJrqoH
         fTdN1Bc5NxvY+fKn1DN5XIcG2RqDXteHpGDw3+suRR/eNm9EOAs0a10EULzO9EQS6v/R
         7lsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aLrvfvjU;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id e63si584593pfm.12.2017.09.14.01.14.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 01:14:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aLrvfvjU;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id g65so1195525pfe.1
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 01:14:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=8zl6tQdoL/Dvqwz+/VsoxKkRvvGl3KNkniSbiQtNDbc=;
        b=aLrvfvjUwuuvpyvg05y7qf0Y4LflN0oq+C4ey2zUzbp62N/O9p+1oapuLbxlS4Gb4a
         hBG3hlmGPhBYjGsws29MOmGekDfCuxsiWK4zhI5AbR+oOsf30btYAgbXEmcRN8HG7G3c
         5FIT1ZFpwjndgyuwhd1PTQMGIoMXsRBnemdyxzXI6Zvu/ReEI/rXrLSMLWRoDGC5cNpm
         JvgAYpLPCB0qk+dN1KhSSFOq0EumB5LP/7laqnwuYMnXVKK1dDxdtW6hjG9NXDXM4Lmd
         uUytDAWHgLPvrxpj2dEO3rbxLFSOlWt1DUj2HbZlgK6U+sGpozYKg1nn2pf+IHbce6bm
         smwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=8zl6tQdoL/Dvqwz+/VsoxKkRvvGl3KNkniSbiQtNDbc=;
        b=gcA8HO9iDKor8hzUXgyfaKndCfUkM2+pUd9XbOq4P0PVaEL64J0n8oy99BeKAdbhDq
         apJ9dLBSxyxg/Az9W2e+xPpiEMdai59aQN5/nYhe+bz4Ol5CQnTavR0u4Jb/43pif+4j
         hT30K0GlqrAN7B0NbKhxXtesSTp52TNO8dw84qt/1tkrWkO58VUW/3l9ZDEG0uJGtlQl
         pTyXewQnwFqaq2HyNQQvktSHKyq3Gv4dhd2dsmr4LVQ1L82VTO7w0ST7Dc9qzn2txUXf
         CwUHWcLv5X70PYHF1QEQCxEmPVqlJ0WV1BYCwEhLIHyYk8e9tjszrblhTorRMmV6p0lJ
         Y9Tg==
X-Gm-Message-State: AHPjjUiQ7LGOKddBUwAGwotZpXjsJQ5jYfejph5ygK4fQRmdS1vgd5CE
	qGdBy+MynOlCuDATDyc=
X-Google-Smtp-Source: ADKCNb7c+ICRdIOob3J3qTT+dQKciNd1OTfJQ37Z1RqhnnId8pVdcz7ltTfdyi/BDKS4iWUhoNtL2g==
X-Received: by 10.101.77.4 with SMTP id i4mr20757625pgt.119.1505376866630;
        Thu, 14 Sep 2017 01:14:26 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.172.87.17])
        by smtp.gmail.com with ESMTPSA id c30sm26062572pgn.33.2017.09.14.01.14.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 01:14:25 -0700 (PDT)
Date: Thu, 14 Sep 2017 13:44:20 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Jani Nikula <jani.nikula@linux.intel.com>,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v3 4/4] drm/agpsupport: Remove extra blank line
Message-ID: <9cfc7e7535908f3fe3b1df706f2999687c90d4e7.1505376068.git.meghana.madhyastha@gmail.com>
References: <cover.1505376068.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1505376068.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove extra blank line to adhere to standard coding style.
Found by checkpath.pl..

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
Changes in v3:
 -This was part of another commit in v2 and v1.
  Now made this a separate commit

 drivers/gpu/drm/drm_agpsupport.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_agpsupport.c b/drivers/gpu/drm/drm_agpsupport.c
index a0510557..737f028 100644
--- a/drivers/gpu/drm/drm_agpsupport.c
+++ b/drivers/gpu/drm/drm_agpsupport.c
@@ -373,7 +373,6 @@ int drm_agp_free(struct drm_device *dev, struct drm_agp_buffer *request)
 EXPORT_SYMBOL(drm_agp_free);
 
 
-
 int drm_agp_free_ioctl(struct drm_device *dev, void *data,
 		       struct drm_file *file_priv)
 {
-- 
2.7.4


