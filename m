X-GM-THRID: 6470525432105009152
X-Received: by 10.129.88.212 with SMTP id m203mr3041062ywb.43.1506542783690;
        Wed, 27 Sep 2017 13:06:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.13.225.144 with SMTP id k138ls259455ywe.10.gmail; Wed, 27 Sep
 2017 13:06:22 -0700 (PDT)
X-Received: by 10.129.162.208 with SMTP id z199mr3067605ywg.135.1506542782846;
        Wed, 27 Sep 2017 13:06:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506542782; cv=none;
        d=google.com; s=arc-20160816;
        b=N5GAo1d4ewsAd2/xHbghofSoXikbtd1q35dJc+h+e6gLSZaYaHjztjhjP4xOqlwL7D
         Gj8ptSwARFCWex+Dd6NJA5Tx6HClZl/ldkAJJsF/RwV1a9kitffmapaG/v7Pvlmk1fvz
         QoDR4SBTTc+Hho2yso9x/izONTPM9GRO6diklpLhB07zFpjpCRnxSkpZ4qgEwYu5Ujb5
         AaRuhb/HKvA0AXH9ceB6jybSVqwfXmQAxg2pirhdAw/SxWfzBbpurcaRZEHCM2q1sfV/
         Z8W+PkTIoxWbIHVTA+so9vefEkdzKL5A7TbKMRZ7rsP8heLo8W+FCVgSpI6HR0+WTUIL
         VfLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=Gg1oSnIuXWChyy7mhksZmmHAimTyKmjv1Wqknass1oA=;
        b=CqTxwv7VvTDo27TW29K1sptqVvK16+1B9ovjjswQvdeIRrTuiq4d5g9XzduQL0S9O+
         AzTnC5Pao7ORH30B/aymTjXUgiXwavHFYHevjY2FTx58Q8agtqzk+8JQ5zcI9OezHGdb
         cn8L+djxsFtuJIfViMKk/wbE9KkJhWfpZ5x04UdkyXxpx1CvtU2yg5vC1UcJzz4987lb
         I7EIRxd0pXyodfOVtl2R3qZ4I2ICD/RBmRSdmMXnwUApBze3igVHmQjva4cImIPG9aHA
         q1cNZ2qsO+VdPQVTrBZ/aYSNZCc3NI+BOD1zZfF/MjX+T+F3880A5m7wOWtCGsU/uZ6V
         Ylqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=QmAOdxMq;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:4002:c05::22d as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Return-Path: <seanpaul@chromium.org>
Received: from mail-yw0-x22d.google.com (mail-yw0-x22d.google.com. [2607:f8b0:4002:c05::22d])
        by gmr-mx.google.com with ESMTPS id z207si614401ywz.6.2017.09.27.13.06.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Sep 2017 13:06:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:4002:c05::22d as permitted sender) client-ip=2607:f8b0:4002:c05::22d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=QmAOdxMq;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:4002:c05::22d as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: by mail-yw0-x22d.google.com with SMTP id p10so10122813ywh.8
        for <outreachy-kernel@googlegroups.com>; Wed, 27 Sep 2017 13:06:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Gg1oSnIuXWChyy7mhksZmmHAimTyKmjv1Wqknass1oA=;
        b=QmAOdxMqqC4Bv6eN435cWPl6XYIPBpPz2exHRQggW+KbFDQ6cGvhL1xXk8pt3N4MvK
         vqs6jfaDWtMGwEQciC033mgprCJUMJTYPyJoFk/fG3hCfMaMS70nCv8BVwrzqDRdSquu
         zW2lnS+a5zDdU4eG0DoI/B+oIbOIRvLo8cJ58=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Gg1oSnIuXWChyy7mhksZmmHAimTyKmjv1Wqknass1oA=;
        b=LB1PeiQ+czS0aihniiJB03KWdaX2KBX5JvVXGtQd4bliJqMyBBp8cNWPeSzH4h2y9/
         qhErTpKXTMo4DylFpF6sGpE119PAsNGP7sfIOmbE8tzg7KwFC4R2TDPCKyTUy8UFy6AF
         tGpogNs5VcaKMNUCPg6/Od88SsiouZlBlzsVVnBArhYhjIzn1dMpfuaJ6b7lLJmJ3iuW
         7pbyRrqlLNsjJlol1LSYmc7chJaB2nRxCIFsHW8g/WLufNSEEh+SEsyLsUlV8AngqP8Y
         E+OlwcNNb636Oow8viuGlyoCsxeEUssJsu8amabRtC8nNNeq9NoWWXQrbuCGXiAjWiXu
         fnOw==
X-Gm-Message-State: AHPjjUgs+DkfKJG57tuS2vBk2DbvoPp/YXQg5R0hAuKgcGpUj5uNVyvY
	6Veil2mAIyswZONyovjsMWld3w==
X-Google-Smtp-Source: AOwi7QCUUD4+G2PNA+Yy5pPWMCQGi7Pc4uaWHMlNlFW9MOWrcfynFd6z05Ud4qpX1Xwj9eGgTjOqWg==
X-Received: by 10.37.189.210 with SMTP id g18mr1845530ybk.281.1506542782536;
        Wed, 27 Sep 2017 13:06:22 -0700 (PDT)
Return-Path: <seanpaul@chromium.org>
Received: from localhost ([2620:0:1013:0:f685:3152:9ba1:429a])
        by smtp.gmail.com with ESMTPSA id s187sm4017804yws.55.2017.09.27.13.06.21
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 27 Sep 2017 13:06:22 -0700 (PDT)
Date: Wed, 27 Sep 2017 16:06:21 -0400
From: Sean Paul <seanpaul@chromium.org>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: dri-devel@lists.freedesktop.org, Mark Yao <mark.yao@rock-chips.com>,
	David Airlie <airlied@linux.ie>, Heiko Stuebner <heiko@sntech.de>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>,
	gregkh@linuxfoundation.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
	Sean Paul <seanpaul@chromium.org>
Subject: Re: [PATCH] drm/rockchip: Rely on the default best_encoder() behavior
Message-ID: <20170927200621.txav576zblby3i2z@art_vandelay>
References: <20170927182317.GA8249@Haneen>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170927182317.GA8249@Haneen>
User-Agent: NeoMutt/20170113 (1.7.2)

On Wed, Sep 27, 2017 at 12:23:17PM -0600, Haneen Mohammed wrote:
> Since the output has 1:1 relationship between connectors and encoders,
> and the driver is relying on the atomic helpers, remove the custom
> best_encoder() and let the core call drm_atomic_helper_best_encoder().
> 
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>

Thanks for the patch, I've applied it to drm-misc-next.

I noticed a few instances of .best_encoder = drm_atomic_helper_best_encoder
hanging around. Any interest in removing those as well?

Sean


> ---
>  drivers/gpu/drm/rockchip/cdn-dp-core.c | 9 ---------
>  1 file changed, 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/cdn-dp-core.c b/drivers/gpu/drm/rockchip/cdn-dp-core.c
> index a57da05..275844d 100644
> --- a/drivers/gpu/drm/rockchip/cdn-dp-core.c
> +++ b/drivers/gpu/drm/rockchip/cdn-dp-core.c
> @@ -287,14 +287,6 @@ static int cdn_dp_connector_get_modes(struct drm_connector *connector)
>  	return ret;
>  }
>  
> -static struct drm_encoder *
> -cdn_dp_connector_best_encoder(struct drm_connector *connector)
> -{
> -	struct cdn_dp_device *dp = connector_to_dp(connector);
> -
> -	return &dp->encoder;
> -}
> -
>  static int cdn_dp_connector_mode_valid(struct drm_connector *connector,
>  				       struct drm_display_mode *mode)
>  {
> @@ -346,7 +338,6 @@ static int cdn_dp_connector_mode_valid(struct drm_connector *connector,
>  
>  static struct drm_connector_helper_funcs cdn_dp_connector_helper_funcs = {
>  	.get_modes = cdn_dp_connector_get_modes,
> -	.best_encoder = cdn_dp_connector_best_encoder,
>  	.mode_valid = cdn_dp_connector_mode_valid,
>  };
>  
> -- 
> 2.7.4
> 

-- 
Sean Paul, Software Engineer, Google / Chromium OS

