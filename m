X-GM-THRID: 6469221009179279360
X-Received: by 10.28.72.135 with SMTP id v129mr351164wma.14.1506272423375;
        Sun, 24 Sep 2017 10:00:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.74.66 with SMTP id x63ls839347wma.10.gmail; Sun, 24 Sep
 2017 10:00:22 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBB5WZacc0/dkN4WhDGH5FUtfKDf8RUBMZ9svONv23nGmsOqGOkepxs8pLBhSjFhrpbxX/D
X-Received: by 10.28.131.14 with SMTP id f14mr328863wmd.25.1506272422541;
        Sun, 24 Sep 2017 10:00:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506272422; cv=none;
        d=google.com; s=arc-20160816;
        b=xksEsfWDVi3cgthyw/YBw0DPcBoYyBqSVADhQCy+bezft4LOX4BSPa8LXio3TrVc1X
         SYY5pgHi+pZYvmTLb1bsuS9Bnl/hP56Og/2O2UibQrkWBMZsRkRDgpDScimbzzW/4eVl
         WWlYN5oXtanAcpvzfg9ttFPGwr9LbTWptJCNTtafH97HFxuY6JODSUVu4SH91hQwi/H8
         mdW+Fn9jRuCi6f2eJejMl1HR/1TpZQ1akapDdH4ayH9oRpYKiJMJ7clzEAYKrc6hDmy8
         OF8CRpfdDU6pi2l3dHoYIQSZaMs2KJ415wJCYvhg8vAhWJmARLA+8diZ5Cict5itpwgv
         yQ/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=nJnNRoRLjN9cDhWLTkWiyx04PI0ibrOJKkeTAaQAGzY=;
        b=IwArXPNPh6Pmmh0GCvVHaF79dGs/Ft6rel5og/8AycI0aHl+tasizKk7mUtNaaCaQq
         H6vjxJsw4P1GHsNIY4L+3sNVcgetg75Sb35sn1XsEHgJLWzxf+pXwbyL+90CAFhveK3l
         39zkYbvtvSAdd0+27JoxfzYgybyhhNMyWfe4B/GST3/RP59HMC2e0cZFxd1FtSGw/FQJ
         kxR28lYQsLV6iU9TxkfGqOLdCv8FueGUlOaY8Z1HgZLqDYldiQNownmcyzPJQl1oLW1+
         SIIJHUw4vubo1HfBIhvP0wwiLqWZoV6A8hYLlNz9QSIkR/wwBZVhEbTNO3ZO8U/sBXmJ
         R/eQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id b62si262344wmd.3.2017.09.24.10.00.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 24 Sep 2017 10:00:22 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,433,1500933600"; 
   d="scan'208";a="238538896"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Sep 2017 19:00:21 +0200
Date: Sun, 24 Sep 2017 19:00:21 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Harsha Sharma <harshasharmaiitr@gmail.com>
cc: thierry.reding@gmail.com, dri-devel@lists.freedesktop.org, 
    linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] drm/tegra: Replace dev_* with
 DRM_DEV_*
In-Reply-To: <1506271437-23058-1-git-send-email-harshasharmaiitr@gmail.com>
Message-ID: <alpine.DEB.2.20.1709241854120.2366@hadrien>
References: <1506271437-23058-1-git-send-email-harshasharmaiitr@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 24 Sep 2017, Harsha Sharma wrote:

> Replace all occurences of dev_info/err/dbg with DRM_DEV_INFO/
> ERROR/DEBUG as we have DRM_DEV_* variants of drm print macros
> Done using following coccinelle semantic patch
>
> @r@
> @@
>
> (
> -dev_info
> +DRM_DEV_INFO
> |
> -dev_err
> +DRM_DEV_ERROR
> |
> -dev_dbg
> +DRM_DEV_DEBUG
> )
>
> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
> ---
> Changes in v2:
>  -Break line over 80 characters
>  -Changes in comments not required
>
>  drivers/gpu/drm/tegra/dc.c     |  53 +++++++-----
>  drivers/gpu/drm/tegra/dpaux.c  |  24 +++---
>  drivers/gpu/drm/tegra/dsi.c    |  68 ++++++++-------
>  drivers/gpu/drm/tegra/falcon.c |  16 ++--
>  drivers/gpu/drm/tegra/fb.c     |  22 +++--
>  drivers/gpu/drm/tegra/gem.c    |   8 +-
>  drivers/gpu/drm/tegra/gr2d.c   |  10 ++-
>  drivers/gpu/drm/tegra/gr3d.c   |  20 +++--
>  drivers/gpu/drm/tegra/hdmi.c   |  66 +++++++++------
>  drivers/gpu/drm/tegra/output.c |   8 +-
>  drivers/gpu/drm/tegra/rgb.c    |  12 +--
>  drivers/gpu/drm/tegra/sor.c    | 184 +++++++++++++++++++++++++----------------
>  drivers/gpu/drm/tegra/vic.c    |  15 ++--
>  13 files changed, 304 insertions(+), 202 deletions(-)
>
> diff --git a/drivers/gpu/drm/tegra/dc.c b/drivers/gpu/drm/tegra/dc.c
> index 4df3911..fbc9cc1 100644
> --- a/drivers/gpu/drm/tegra/dc.c
> +++ b/drivers/gpu/drm/tegra/dc.c
> @@ -1137,7 +1137,7 @@ static void tegra_dc_commit_state(struct tegra_dc *dc,
>
>  	err = clk_set_parent(dc->clk, state->clk);
>  	if (err < 0)
> -		dev_err(dc->dev, "failed to set parent clock: %d\n", err);
> +		DRM_DEV_ERROR(dc->dev, "failed to set parent clock: %d\n", err);
>
>  	/*
>  	 * Outputs may not want to change the parent clock rate. This is only
> @@ -1150,7 +1150,7 @@ static void tegra_dc_commit_state(struct tegra_dc *dc,
>  	if (state->pclk > 0) {
>  		err = clk_set_rate(state->clk, state->pclk);
>  		if (err < 0)
> -			dev_err(dc->dev,
> +			DRM_DEV_ERROR(dc->dev,
>  				"failed to set clock rate to %lu Hz\n",
>  				state->pclk);
>  	}
> @@ -1195,7 +1195,7 @@ static int tegra_dc_wait_idle(struct tegra_dc *dc, unsigned long timeout)
>  		usleep_range(1000, 2000);
>  	}
>
> -	dev_dbg(dc->dev, "timeout waiting for DC to become idle\n");
> +	DRM_DEV_DEBUG(dc->dev, "timeout waiting for DC to become idle\n");
>  	return -ETIMEDOUT;
>  }
>
> @@ -1763,7 +1763,8 @@ static int tegra_dc_init(struct host1x_client *client)
>  	if (tegra->domain) {
>  		err = iommu_attach_device(tegra->domain, dc->dev);
>  		if (err < 0) {
> -			dev_err(dc->dev, "failed to attach to domain: %d\n",
> +			DRM_DEV_ERROR(dc->dev,
> +				"failed to attach to domain: %d\n",
>  				err);
>  			return err;
>  		}
> @@ -1801,7 +1802,8 @@ static int tegra_dc_init(struct host1x_client *client)
>
>  	err = tegra_dc_rgb_init(drm, dc);
>  	if (err < 0 && err != -ENODEV) {
> -		dev_err(dc->dev, "failed to initialize RGB output: %d\n", err);
> +		DRM_DEV_ERROR(dc->dev,
> +			"failed to initialize RGB output: %d\n", err);
>  		goto cleanup;
>  	}
>
> @@ -1812,13 +1814,15 @@ static int tegra_dc_init(struct host1x_client *client)
>  	if (IS_ENABLED(CONFIG_DEBUG_FS)) {
>  		err = tegra_dc_debugfs_init(dc, drm->primary);
>  		if (err < 0)
> -			dev_err(dc->dev, "debugfs setup failed: %d\n", err);
> +			DRM_DEV_ERROR(dc->dev,
> +				"debugfs setup failed: %d\n", err);

The string could be on the same line as the function name.  Just the err
could be moved to the next line, and lined up with the right side of the (.

Overall, looking through the rest, it would probably really be nicer to
line the extra arguments up with the right side of the (.


>  	}
>
>  	err = devm_request_irq(dc->dev, dc->irq, tegra_dc_irq, 0,
>  			       dev_name(dc->dev), dc);
>  	if (err < 0) {
> -		dev_err(dc->dev, "failed to request IRQ#%u: %d\n", dc->irq,
> +		DRM_DEV_ERROR(dc->dev,
> +			"failed to request IRQ#%u: %d\n", dc->irq,

Same here.  Try to keep the string on the first line.

>  			err);
>  		goto cleanup;
>  	}
> @@ -1850,12 +1854,14 @@ static int tegra_dc_exit(struct host1x_client *client)
>  	if (IS_ENABLED(CONFIG_DEBUG_FS)) {
>  		err = tegra_dc_debugfs_exit(dc);
>  		if (err < 0)
> -			dev_err(dc->dev, "debugfs cleanup failed: %d\n", err);
> +			DRM_DEV_ERROR(dc->dev,
> +				"debugfs cleanup failed: %d\n", err);

Same here.  And so on.

[...]

> diff --git a/drivers/gpu/drm/tegra/dsi.c b/drivers/gpu/drm/tegra/dsi.c
> index 046649e..f9e4ad3 100644
> --- a/drivers/gpu/drm/tegra/dsi.c
> +++ b/drivers/gpu/drm/tegra/dsi.c
> @@ -854,7 +854,8 @@ static void tegra_dsi_unprepare(struct tegra_dsi *dsi)
>
>  	err = tegra_mipi_disable(dsi->mipi);
>  	if (err < 0)
> -		dev_err(dsi->dev, "failed to disable MIPI calibration: %d\n",
> +		DRM_DEV_ERROR(dsi->dev,
> +		"failed to disable MIPI calibration: %d\n",

Here the string is much too far to the left.

julia

