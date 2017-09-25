X-GM-THRID: 6469221009179279360
X-Received: by 10.46.66.81 with SMTP id p78mr387995lja.33.1506325125626;
        Mon, 25 Sep 2017 00:38:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.71.206 with SMTP id u197ls1027452lja.16.gmail; Mon, 25 Sep
 2017 00:38:44 -0700 (PDT)
X-Received: by 10.46.43.93 with SMTP id q90mr362192lje.3.1506325124316;
        Mon, 25 Sep 2017 00:38:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506325124; cv=none;
        d=google.com; s=arc-20160816;
        b=xLXYn3PSnKlb8EyJ0Befz5puq51ZCR3/UjnQVsjKNBpacsFnEB70XWCjKQx3FwjtSC
         qrzRpPWvb+Ck9iyoXMzRk8CMCtMxdznbhk0fjlyUh9ltMzrzS0qgRzdVd5dirmoS9oMz
         ot1HlnPocGCXquJ2Pu/zbHPJTyhOncTahbRVCpyFcJ4F740nAGX0J5oKC7IH4qaI9hAA
         aCBE9oULE7Qj/Kjyo1rRMYqlwDYTjDsoNydNkWoh4gx5FKCdiNwR2+LaO199ECcGVjXA
         t+yfxv21EfV3jN/d5AOd4ABfanFYILkL8obWIQ7LwpNon4UhTaRW4tCzUmaTDIyoEGcb
         IHLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=45DC9HQc345Y4FfLljKPILuzRjTmlHbCYAcoABz3H8g=;
        b=aVWqmdtIucC5VwmdVY7JON5sQQv71X1fP3QlM4D+fwnYGlcjqKi7mZlXwTOXAsTf5f
         OhNhoAEA5YcoCUKBSUg8e6fGFioKA1QJDH6sdcx7AXIiFIybFXe9qHRpO3l+6DeAFsnO
         lxY1MRdXnLiNR1MoeQKrRGeIp6N5luAQUSCKOrmNXk7LpB5f5tTTeMkQuVNhzjtgtvQJ
         aBUSaRnb+Opg99Kam5K4/8DFoGC0SFt/uCecNB2TlOWpr0Y/O0A8XmSvvJsPIdV47nP2
         hPiLBm/sdlGS2rOnLOv11M3qdfrD2RbVnhUmR/6KR/sTZiRhe4Mfzs01u+jSoBEMU12c
         9qgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DzEkIuG4;
       spf=pass (google.com: domain of thierry.reding@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=thierry.reding@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <thierry.reding@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id 200si661813wmj.0.2017.09.25.00.38.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Sep 2017 00:38:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of thierry.reding@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DzEkIuG4;
       spf=pass (google.com: domain of thierry.reding@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=thierry.reding@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id e64so6377083wmi.2
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Sep 2017 00:38:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=45DC9HQc345Y4FfLljKPILuzRjTmlHbCYAcoABz3H8g=;
        b=DzEkIuG4mN6wTU6HNTxtnU+offOUiuNZElqUS7JY3qbOsvVamgIScsqwSuletqTdF5
         BhVxqRujehiFZqIM5Hxd2n1JSA0ucimAX+un1xfdNg1pUHdd1U2hV5wt9ZVoNQ7vtam8
         jsJcJCSDXyzgbI0WlLUP2doi5NvWTHWZrtkaxcGBfbRh7frYuMCPka0DVEXNGqcJWvbP
         UyqyrlFAC6ZQ3QN+rEACaPApdJhxIF8tNecCmN8ejCvG5k4oOVgBLrO7D3zuJmiobWcH
         zgWHA1EcSkEtooWvONBdP6FGka/9VXTC3P8/ep8b4TQ1zr0ZNTUWoI6aQ86O5SAsPOzG
         hy+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=45DC9HQc345Y4FfLljKPILuzRjTmlHbCYAcoABz3H8g=;
        b=DmRjlUSoMXRcqzn1K8XeYX7ohbWVwZp5aRcX9JrkYd2RNa90FW4hnAzbIVtg5a4cy5
         CHpvl/g3wVm7IYAXUMu2Jgzhqx1LpmpTsBb1/R6h119AOzN/UMrVsQOSyCaDzzuLX+ML
         ubeLla1nPu4H63RdnUUn/7lUBx6vaUOnUpd2/5BUf21QNPuTOJSpV6eHwjKYCJrmVqzR
         tBvdR/0cBdbgxwOIbJybPrsZaZkR8v6QFeFu1r9rXMC8RVtcOAgX3ibBS/sDI9Vca3zo
         vJwJ9fu+rD53u8pQyPEPwdVG1zAsXC4/4SsUncgly+HObTsj2Uz/T4DJThbaXyKrtNjv
         MQSw==
X-Gm-Message-State: AHPjjUgFkMFIqcU+U0MVdIejtzw3neXg8WBXdp001S8FR89iVBZxNAES
	wO0H62rpD08y3Oz7cSlWR4yQ4A==
X-Google-Smtp-Source: AOwi7QDi1CngjqALGQGX3JdCn9QEvWVXa9P/ew+piheui4x2HJrTSoqDfFKP1nUq1I7O2qp1xZrnuw==
X-Received: by 10.28.156.18 with SMTP id f18mr8801338wme.63.1506325123899;
        Mon, 25 Sep 2017 00:38:43 -0700 (PDT)
Return-Path: <thierry.reding@gmail.com>
Received: from localhost (p200300E41BC1860076D02BFFFE273F51.dip0.t-ipconnect.de. [2003:e4:1bc1:8600:76d0:2bff:fe27:3f51])
        by smtp.gmail.com with ESMTPSA id b72sm3723884wmf.30.2017.09.25.00.38.42
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 25 Sep 2017 00:38:43 -0700 (PDT)
Date: Mon, 25 Sep 2017 09:38:41 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Harsha Sharma <harshasharmaiitr@gmail.com>
Cc: dri-devel@lists.freedesktop.org, linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] drm/tegra: Replace dev_* with DRM_DEV_*
Message-ID: <20170925073841.GA12494@ulmo.fritz.box>
References: <1506271437-23058-1-git-send-email-harshasharmaiitr@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="82I3+IH0IqGh5yIs"
Content-Disposition: inline
In-Reply-To: <1506271437-23058-1-git-send-email-harshasharmaiitr@gmail.com>
User-Agent: Mutt/1.8.3 (2017-05-23)


--82I3+IH0IqGh5yIs
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Sep 24, 2017 at 10:13:57PM +0530, Harsha Sharma wrote:
> Replace all occurences of dev_info/err/dbg with DRM_DEV_INFO/
> ERROR/DEBUG as we have DRM_DEV_* variants of drm print macros
> Done using following coccinelle semantic patch
>=20
> @r@
> @@
>=20
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
>=20
> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
> ---
> Changes in v2:
>  -Break line over 80 characters
>  -Changes in comments not required

Please don't do this. Most of the functions that you're trying to
replace here are not DRM_DEV_*() for a very specific reason: none of
them have anything to do with DRM/KMS in particular. This is important,
in my opinion, because these messages are very device-specific and the
additional information added by the DRM format string aren't useful in
the context.

Perhaps the only ones I consider to be good candidates for this
conversion are the ones in drivers/gpu/drm/tegra/fb.c because they deal
with the DRM fbdev setup and hence are not device specific. And even in
those cases I'm not sure we gain very much by this conversion,
especially since most of the replacements now end up having to split up
argument lists.

Sorry if this isn't documented anywhere. I also suspect other driver
maintainers will be less picky about this sort of thing, so you might
have more luck there.

Thierry

--82I3+IH0IqGh5yIs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAlnIsn4ACgkQ3SOs138+
s6G/ehAArmURYZKqKKYoGJHDf0BQQXrr5S0e9jC23G2G9Ka3H7wy3vP99NzSubLX
U0YJXIR0bLK/g/q0GaOCb9KMG3Wdqs3CNbovKPf0s34/lgsSgU7OLhGo78p3mkD1
JTNgTeaffNvXnmO9tbcsKHYK+A6fVa4F4oxZpSO/zmAxtMsPQUIMqFcVON9g4GPl
oqvy02477gfCNkdI1ZysxXyI9C8ioKeuGAN8IF0NWroQOkxmu/hQ70DC+lhDNlOU
3Dep2p5tyfVj2MRXgE5gWl4rxtmSlXg+kYZuQpYH58NbYL7V5cVQlQzWmWa9njiM
yAdD1V1m1wYA/P5VV8RpVvmMAB5NoPwfXdbgRvRmQdeY/E84Nf33LM83OJo3yFc4
6ef7T5w0s93BxUGg/BPdpuEUgSCZjMhlxFhN2kaSvF9OO6MKpPkrAHRqvj2LuY9x
Vi6f/OI8CRRlZ3Gv27FmYb6RKTkjiM+uKswviiw/A35Nw8FdA1X4h7XEiA2/nQSW
Zbxo4BRhwGzPenn03yw/NQNVRZm39wYC6o2BBV91cBGcSpprtZk8teF/LM8ilLRt
p5+JSkjVey82k7eOrs1f6PROfWXLngsxUa/lyaIDOdSzRJOqr26nDkDfE+sx2vSs
kQbtbYy1+GkowenQFOA5ND4eNFCOyUoYDgxapvl4/Rhn+FirNMw=
=ci1u
-----END PGP SIGNATURE-----

--82I3+IH0IqGh5yIs--

