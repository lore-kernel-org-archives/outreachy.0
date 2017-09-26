X-GM-THRID: 6468320417923727360
X-Received: by 10.31.154.14 with SMTP id c14mr5822444vke.37.1506421316104;
        Tue, 26 Sep 2017 03:21:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.126.83 with SMTP id o19ls2376423pgn.30.gmail; Tue, 26 Sep
 2017 03:21:55 -0700 (PDT)
X-Received: by 10.99.124.30 with SMTP id x30mr6561183pgc.39.1506421315204;
        Tue, 26 Sep 2017 03:21:55 -0700 (PDT)
Received: by 10.129.50.215 with SMTP id y206msywy;
        Tue, 26 Sep 2017 02:18:11 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDbe5JogjR98rKIPUc8ZANVn1INq6f1v2mLGXbv86aCGHiLoWrtYUJpcJSxeeLJG0QHX8ue
X-Received: by 10.176.26.150 with SMTP id j22mr7116741uai.24.1506417491515;
        Tue, 26 Sep 2017 02:18:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506417491; cv=none;
        d=google.com; s=arc-20160816;
        b=orwecksu2a6MjHkQkrxSHDsdMnsy/+cgGpUke8Q8faD9Dq/pWluVP387h7BB9FtHsp
         5b1IgJSsv8PcGE1v08LYuTlZtZnQnZJEfYBalF5MxponRDdatZh4J0QwZxt68YoFV4u+
         mijlEUNoBMtZua8/YmJv8/fDXlg9iETFB4etPiTfnQMCJ3kFF4o6XkpIM6im+LsX5wNi
         M7TkL2nNUYwV02EoNRxEu1Stcfi3ArDesWuuSSwg037D1PC+XkhFtAilnpOlkj1MBzKr
         zjs8QC8Q3UxxBhpEg3HuZV9ZMu4jW2lgolTcRkAimqXe3yaZJFpspbFh7d2jXoimZU2/
         GFDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature:arc-authentication-results;
        bh=kHMJm3P65YL9m+dlgA4DyhsToX4CzIWiufJ8ZjNlWiQ=;
        b=b1JwTe/ALHlqMl/jorqXeFX7dE4J+edGSOT7H9ckZVafesPscqyocExmipKrQ1dYpw
         EqKY1bv1h9FJW7xr+Tfa7ZU/6C+sI6/rZRCdHzuRF3DYItelRBuLF7NFESJvi8GLst+e
         LLy3fGQ4+zbrfl4a91Rdlsbpp/AH+o+ht3n6usADOfegDT/efLLrLjkXUiVzKR4/Orui
         KXR0ro/wbj7o20b7L3/mB3WpsKIbiehdiba615KBjiaLqrkGH8iinEZAQ9mDLknhYo7G
         hQnm/vu4Nn2eZqQGpydkanOyq9UNcPoh7OPOPl+KyyMUawvGjUbSttERzZiwz+vCuuHG
         EVMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=vX9OgIFY;
       spf=pass (google.com: domain of jsarha@ti.com designates 198.47.27.77 as permitted sender) smtp.mailfrom=jsarha@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Return-Path: <jsarha@ti.com>
Received: from lelnx193.ext.ti.com (lelnx193.ext.ti.com. [198.47.27.77])
        by gmr-mx.google.com with ESMTPS id d125si649035itg.0.2017.09.26.02.18.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 26 Sep 2017 02:18:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of jsarha@ti.com designates 198.47.27.77 as permitted sender) client-ip=198.47.27.77;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=vX9OgIFY;
       spf=pass (google.com: domain of jsarha@ti.com designates 198.47.27.77 as permitted sender) smtp.mailfrom=jsarha@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from dlelxv90.itg.ti.com ([172.17.2.17])
	by lelnx193.ext.ti.com (8.15.1/8.15.1) with ESMTP id v8Q9IAGA005496;
	Tue, 26 Sep 2017 04:18:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ti.com;
	s=ti-com-17Q1; t=1506417490;
	bh=ChArxqL6Jc6pEwLO7zyDv9u7p3ArqhJv70vluDD37nU=;
	h=Subject:To:CC:References:From:Date:In-Reply-To;
	b=vX9OgIFYR4AL+Cx9R43rISiWjUB9SJfJHiSMIAmX30XYO14WlCC1YzTpKFSz6W17P
	 2UEJTa19IfulxiKZV0YDn5uNPlmWbX4kNgkWfllXlnxuQgYT0trgOFfxRgpc0CRVc7
	 6CqPKbCz0Y7g7GzefxbgmJ7KK8wxKuOILURB9D3g=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
	by dlelxv90.itg.ti.com (8.14.3/8.13.8) with ESMTP id v8Q9IAnf023162;
	Tue, 26 Sep 2017 04:18:10 -0500
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.1.845.34; Tue, 26
 Sep 2017 04:18:09 -0500
Received: from dflp32.itg.ti.com (10.64.6.15) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_0,
 cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.1.845.34 via Frontend Transport;
 Tue, 26 Sep 2017 04:18:09 -0500
Received: from [10.1.3.6] (ileax41-snat.itg.ti.com [10.172.224.153])
	by dflp32.itg.ti.com (8.14.3/8.13.8) with ESMTP id v8Q9I79j009869;
	Tue, 26 Sep 2017 04:18:08 -0500
Subject: Re: [PATCH v2 2/2] drm/tilcdc: replace reference/unreference() with
 get/put
To: Aishwarya Pant <aishpant@gmail.com>,
        Tomi Valkeinen
	<tomi.valkeinen@ti.com>,
        David Airlie <airlied@linux.ie>, <dri-devel@lists.freedesktop.org>,
        Daniel Vetter <daniel.vetter@intel.com>,
        Jani Nikula <jani.nikula@linux.intel.com>,
        Sean Paul <seanpaul@chromium.org>
CC: <outreachy-kernel@googlegroups.com>
References: <cover.1506413698.git.aishpant@gmail.com>
 <3f2f592f6ea28adfea3fd8b70421b2fab38f0b94.1506413698.git.aishpant@gmail.com>
From: Jyri Sarha <jsarha@ti.com>
Message-ID: <093fde5b-5043-48d4-e595-7b35fce1a8c7@ti.com>
Date: Tue, 26 Sep 2017 12:18:06 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <3f2f592f6ea28adfea3fd8b70421b2fab38f0b94.1506413698.git.aishpant@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

=EF=BB=BF
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Bu=
siness ID: 0615521-4. Kotipaikka/Domicile: Helsinki

On 09/26/17 11:30, Aishwarya Pant wrote:
> For maintaining consistency with kernel coding style replace
> reference/unreference in ref counting functions with get/put.
>=20
> The following cocci script was used to generate the tilcdc patch:
>=20
> @@
> expression ex;
> @@
>=20
> (
> -drm_framebuffer_unreference(ex);
> +drm_framebuffer_put(ex);
> |
> -drm_dev_unref(ex);
> +drm_dev_put(ex);
> |
> -drm_framebuffer_reference(ex);
> +drm_framebuffer_get(ex);
> )
>=20
> Signed-off-by: Aishwarya Pant <aishpant@gmail.com>

Acked-by: Jyri Sarha <jsarha@ti.com>

I guess this should go in via drm-misc at the same time with
"drm: introduce drm_dev_{get/put} functions".

Best regards,
Jyri


> ---
> No changes in v2
>=20
> drivers/gpu/drm/tilcdc/tilcdc_crtc.c | 6 +++---
>  drivers/gpu/drm/tilcdc/tilcdc_drv.c  | 2 +-
>  2 files changed, 4 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/tilcdc/tilcdc_crtc.c b/drivers/gpu/drm/tilcd=
c/tilcdc_crtc.c
> index 406fe45..d2589f310 100644
> --- a/drivers/gpu/drm/tilcdc/tilcdc_crtc.c
> +++ b/drivers/gpu/drm/tilcdc/tilcdc_crtc.c
> @@ -75,7 +75,7 @@ static void unref_worker(struct drm_flip_work *work, vo=
id *val)
>  	struct drm_device *dev =3D tilcdc_crtc->base.dev;
> =20
>  	mutex_lock(&dev->mode_config.mutex);
> -	drm_framebuffer_unreference(val);
> +	drm_framebuffer_put(val);
>  	mutex_unlock(&dev->mode_config.mutex);
>  }
> =20
> @@ -456,7 +456,7 @@ static void tilcdc_crtc_set_mode(struct drm_crtc *crt=
c)
> =20
>  	set_scanout(crtc, fb);
> =20
> -	drm_framebuffer_reference(fb);
> +	drm_framebuffer_get(fb);
> =20
>  	crtc->hwmode =3D crtc->state->adjusted_mode;
>  }
> @@ -633,7 +633,7 @@ int tilcdc_crtc_update_fb(struct drm_crtc *crtc,
>  		return -EBUSY;
>  	}
> =20
> -	drm_framebuffer_reference(fb);
> +	drm_framebuffer_get(fb);
> =20
>  	crtc->primary->fb =3D fb;
>  	tilcdc_crtc->event =3D event;
> diff --git a/drivers/gpu/drm/tilcdc/tilcdc_drv.c b/drivers/gpu/drm/tilcdc=
/tilcdc_drv.c
> index b0d70f9..74276ef 100644
> --- a/drivers/gpu/drm/tilcdc/tilcdc_drv.c
> +++ b/drivers/gpu/drm/tilcdc/tilcdc_drv.c
> @@ -225,7 +225,7 @@ static void tilcdc_fini(struct drm_device *dev)
> =20
>  	pm_runtime_disable(dev->dev);
> =20
> -	drm_dev_unref(dev);
> +	drm_dev_put(dev);
>  }
> =20
>  static int tilcdc_init(struct drm_driver *ddrv, struct device *dev)
>=20



