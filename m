X-GM-THRID: 6950399749246681088
X-Received: by 2002:a5d:4e81:: with SMTP id e1mr14381797wru.305.1618327794060;
        Tue, 13 Apr 2021 08:29:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:d1c8:: with SMTP id b8ls3295976wrd.3.gmail; Tue, 13 Apr
 2021 08:29:52 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwlcq9kHkJF9uhzSs6eqXPrjlWo6Pq2RCa9uqAd2y++o1W2ns/6drCJBCLcbw1P+FHIkIJ7
X-Received: by 2002:a05:6000:1091:: with SMTP id y17mr10829484wrw.270.1618327792546;
        Tue, 13 Apr 2021 08:29:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618327792; cv=none;
        d=google.com; s=arc-20160816;
        b=fZ9nVkcM3uCUUloiSELgS6/CHmZqFvjc7eqRue7zl3F3GCMl9ngRkHUXc/0cojKTT2
         FOuEKHUMmW0wcb58OMCruZuShg0EKiSV6ZXNOxz+ssnn0cBNtTTEal0O59fkWtGjpuRT
         K/oCQeCMMt9Qz526BqK8z0XKuCd1vGf7Wejy11XWsmz+SL3S3rQz4qfdp3fsZbxbq7HV
         uYLHxPA49HEl9br3vTZsickeY20wXIvfJIkYEJQ8YtO5AU8gstKILJVWH/cSC2qPEFiP
         OH3xScgFo6VcUju64geBdYF60K9FsBsK2mISghKswl4KLRWuTBc9xaPifnPH+Cx+0nra
         SKYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=pLUmeAGbyxS4gCgJNLnU1TDnjgxiRdNMqdxBHojttNA=;
        b=LJ+vi8ehB6g6H5sQEdxVYnch6giy8ghM6wKgtNSJ6cAK+J1//MbBA8us6ufpuvwo3x
         KGNguhznDMNASENlN0fwx7ggbEWSYwABpL7C7wAj8kpRk0LK0JTdGUSVVQ78oYLNnRxQ
         pfId3FwQJPNlLjAFvIHXlFopfajW1WEgyUc7aCdrA1sphk2kZtvrDLMAHqGdEZtyEVLr
         5aHi18CRpPWTqaVTrs3ot8fbkqOXf2NzPhCLAKBwo7qkTFPzHlGZCIppViwHCHlyTUZ8
         Qt8qy0UQMKzb+DyXrcL8FP8IyBi6bxi6qooARRQgijwc3916TTt2Nh9MZpwA3AsQ4Gr4
         FhJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sMbM04Wz;
       spf=pass (google.com: domain of thierry.reding@gmail.com designates 2a00:1450:4864:20::536 as permitted sender) smtp.mailfrom=thierry.reding@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <thierry.reding@gmail.com>
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com. [2a00:1450:4864:20::536])
        by gmr-mx.google.com with ESMTPS id 187si116709wmb.0.2021.04.13.08.29.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Apr 2021 08:29:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of thierry.reding@gmail.com designates 2a00:1450:4864:20::536 as permitted sender) client-ip=2a00:1450:4864:20::536;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sMbM04Wz;
       spf=pass (google.com: domain of thierry.reding@gmail.com designates 2a00:1450:4864:20::536 as permitted sender) smtp.mailfrom=thierry.reding@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x536.google.com with SMTP id m3so19903630edv.5
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Apr 2021 08:29:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=pLUmeAGbyxS4gCgJNLnU1TDnjgxiRdNMqdxBHojttNA=;
        b=sMbM04Wz25J4jyg8B5uaDTpUkEIXYbtEOMrzFIBsFKx+oF78SYyeA+Nbu9VCtdSXpb
         AXSm3jUPry80zckyKZRlYNwaFGydX2ao18WDnDGmzlGaiSdw6ClXsIeY5+uLSXxen9F9
         hgx+xraDuXKfR8q7PrKX8ik2zlLwfB/DZbXi1ihQ3ijfy1KwdGcult5v2bD8mDd1qb2k
         ZQsf1GXnHxmC8PrlYJskIhkvsrMwzUxMVg5W19pDjp7RGjBegIM0w1z95ufBcDDvMHHC
         UZ+vQOXbZoy4V3nHRvjQmExU36VhLM4UtTTvkBVXVH/Ycw87DbQr3S/AxCMrU3LTmZo8
         K8Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=pLUmeAGbyxS4gCgJNLnU1TDnjgxiRdNMqdxBHojttNA=;
        b=KT3o+nvHT+9B2fJYA7b+2i1oJTQUSFfXFPc6qCaKQJhRhxr206CIKTuMjxAUUzIzz6
         rzz3YU8sEw0kWxALyubt8rU+G0LIRfeOyPsuglbak70jqZt3V2eN+UiIOIi3iTURyYD2
         KmHsWy01kHhJ135+A3b0PrONpw405bIFdIiiNWRAJLN8iq/SFMygqfNoXVjnG2ZrFBhs
         tDQpd/gYzD0VTRGJSSKeLEyPzK1Qiny7HiTkMn7aa8zw12QWAJKqFCb164Mc99oDNJTX
         Nm1huBKqH+4HPE1PKdFU14nKvWWBgAebV3SH/05ufF9h2k4UMWKgsZbUCdIm4gHg/jWz
         y47g==
X-Gm-Message-State: AOAM531sFXKercKLqWjaJNxBz5t/zj8MSVc4BX3exphY39Bu+H/3O91v
	hz6TtQSxcOFGZRlKXIGsHnY=
X-Received: by 2002:a05:6402:1013:: with SMTP id c19mr35547003edu.213.1618327792278;
        Tue, 13 Apr 2021 08:29:52 -0700 (PDT)
Return-Path: <thierry.reding@gmail.com>
Received: from localhost ([62.96.65.119])
        by smtp.gmail.com with ESMTPSA id hs26sm3880558ejc.23.2021.04.13.08.29.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 08:29:51 -0700 (PDT)
Date: Tue, 13 Apr 2021 17:30:31 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>,
	Andy Whitcroft <apw@canonical.com>, Joe Perches <joe@perches.com>,
	Dwaipayan Ray <dwaipayanray1@gmail.com>,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Dmitry Osipenko <digetx@gmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Hunter <jonathanh@nvidia.com>, linux-media@vger.kernel.org,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: media: tegra-vde: Align line break to match
 with the open parenthesis in file trace.h
Message-ID: <YHW5Fwl55c7NJAeo@orome.fritz.box>
References: <20210412222040.GA13659@focaruja>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="PjdKBxAW1cKHRKT6"
Content-Disposition: inline
In-Reply-To: <20210412222040.GA13659@focaruja>
User-Agent: Mutt/2.0.6 (98f8cb83) (2021-03-06)


--PjdKBxAW1cKHRKT6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 12, 2021 at 07:20:40PM -0300, Aline Santana Cordeiro wrote:
> Align line break to match with the open parenthesis.
> Issue detected by checkpatch.pl.
> It consequently solved a few end lines with a '(',
> issue also detected by checkpatch.pl
>=20
> Signed-off-by: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
> ---
>  drivers/staging/media/tegra-vde/trace.h | 111 ++++++++++++++------------=
------
>  1 file changed, 50 insertions(+), 61 deletions(-)

Ugh... I'd say this is one case where checkpatch.pl really shouldn't be
complaining since this isn't a function call or declaration. It's more
like a code snippet written with macros, so I don't think the same rules
should apply.

Adding checkpatch folks (hence quoting in full): is there anything we
can do about this without too much effort? Or should we just accept this
the way it is?

Thierry

> diff --git a/drivers/staging/media/tegra-vde/trace.h b/drivers/staging/me=
dia/tegra-vde/trace.h
> index e571410..1fcc573 100644
> --- a/drivers/staging/media/tegra-vde/trace.h
> +++ b/drivers/staging/media/tegra-vde/trace.h
> @@ -11,79 +11,68 @@
>  #include "vde.h"
> =20
>  DECLARE_EVENT_CLASS(register_access,
> -	TP_PROTO(struct tegra_vde *vde, void __iomem *base,
> -		 u32 offset, u32 value),
> -	TP_ARGS(vde, base, offset, value),
> -	TP_STRUCT__entry(
> -		__string(hw_name, tegra_vde_reg_base_name(vde, base))
> -		__field(u32, offset)
> -		__field(u32, value)
> -	),
> -	TP_fast_assign(
> -		__assign_str(hw_name, tegra_vde_reg_base_name(vde, base));
> -		__entry->offset =3D offset;
> -		__entry->value =3D value;
> -	),
> -	TP_printk("%s:0x%03x 0x%08x", __get_str(hw_name), __entry->offset,
> -		  __entry->value)
> +		    TP_PROTO(struct tegra_vde *vde, void __iomem *base,
> +			     u32 offset, u32 value),
> +		    TP_ARGS(vde, base, offset, value),
> +			    TP_STRUCT__entry(__string(hw_name, tegra_vde_reg_base_name(vde, b=
ase))
> +					     __field(u32, offset)
> +					     __field(u32, value)
> +			    ),
> +			    TP_fast_assign(__assign_str(hw_name,
> +							tegra_vde_reg_base_name(vde, base));
> +					   __entry->offset =3D offset;
> +					   __entry->value =3D value;
> +			    ),
> +			    TP_printk("%s:0x%03x 0x%08x", __get_str(hw_name), __entry->offset,
> +				      __entry->value)
>  );
> =20
>  DEFINE_EVENT(register_access, vde_writel,
> -	TP_PROTO(struct tegra_vde *vde, void __iomem *base,
> -		 u32 offset, u32 value),
> -	TP_ARGS(vde, base, offset, value));
> +	     TP_PROTO(struct tegra_vde *vde, void __iomem *base,
> +		      u32 offset, u32 value),
> +	     TP_ARGS(vde, base, offset, value));
>  DEFINE_EVENT(register_access, vde_readl,
> -	TP_PROTO(struct tegra_vde *vde, void __iomem *base,
> -		 u32 offset, u32 value),
> -	TP_ARGS(vde, base, offset, value));
> +	     TP_PROTO(struct tegra_vde *vde, void __iomem *base,
> +		      u32 offset, u32 value),
> +	     TP_ARGS(vde, base, offset, value));
> =20
>  TRACE_EVENT(vde_setup_iram_entry,
> -	TP_PROTO(unsigned int table, unsigned int row, u32 value, u32 aux_addr),
> -	TP_ARGS(table, row, value, aux_addr),
> -	TP_STRUCT__entry(
> -		__field(unsigned int, table)
> -		__field(unsigned int, row)
> -		__field(u32, value)
> -		__field(u32, aux_addr)
> -	),
> -	TP_fast_assign(
> -		__entry->table =3D table;
> -		__entry->row =3D row;
> -		__entry->value =3D value;
> -		__entry->aux_addr =3D aux_addr;
> -	),
> -	TP_printk("[%u][%u] =3D { 0x%08x (flags =3D \"%s\", frame_num =3D %u); =
0x%08x }",
> -		  __entry->table, __entry->row, __entry->value,
> -		  __print_flags(__entry->value, " ", { (1 << 25), "B" }),
> -		  __entry->value & 0x7FFFFF, __entry->aux_addr)
> +	    TP_PROTO(unsigned int table, unsigned int row, u32 value, u32 aux_a=
ddr),
> +	    TP_ARGS(table, row, value, aux_addr),
> +		    TP_STRUCT__entry(__field(unsigned int, table)
> +				     __field(unsigned int, row)
> +				     __field(u32, value)
> +				     __field(u32, aux_addr)
> +		    ),
> +		    TP_fast_assign(__entry->table =3D table;
> +				   __entry->row =3D row;
> +				   __entry->value =3D value;
> +				   __entry->aux_addr =3D aux_addr;
> +		    ),
> +		    TP_printk("[%u][%u] =3D { 0x%08x (flags =3D \"%s\", frame_num =3D =
%u); 0x%08x }",
> +			      __entry->table, __entry->row, __entry->value,
> +			      __print_flags(__entry->value, " ", { (1 << 25), "B" }),
> +			      __entry->value & 0x7FFFFF, __entry->aux_addr)
>  );
> =20
>  TRACE_EVENT(vde_ref_l0,
> -	TP_PROTO(unsigned int frame_num),
> -	TP_ARGS(frame_num),
> -	TP_STRUCT__entry(
> -		__field(unsigned int, frame_num)
> -	),
> -	TP_fast_assign(
> -		__entry->frame_num =3D frame_num;
> -	),
> -	TP_printk("REF L0: DPB: Frame 0: frame_num =3D %u", __entry->frame_num)
> +	    TP_PROTO(unsigned int frame_num),
> +	    TP_ARGS(frame_num),
> +	    TP_STRUCT__entry(__field(unsigned int, frame_num)),
> +	    TP_fast_assign(__entry->frame_num =3D frame_num;),
> +	    TP_printk("REF L0: DPB: Frame 0: frame_num =3D %u", __entry->frame_=
num)
>  );
> =20
>  TRACE_EVENT(vde_ref_l1,
> -	TP_PROTO(unsigned int with_later_poc_nb,
> -		 unsigned int with_earlier_poc_nb),
> -	TP_ARGS(with_later_poc_nb, with_earlier_poc_nb),
> -	TP_STRUCT__entry(
> -		__field(unsigned int, with_later_poc_nb)
> -		__field(unsigned int, with_earlier_poc_nb)
> -	),
> -	TP_fast_assign(
> -		__entry->with_later_poc_nb =3D with_later_poc_nb;
> -		__entry->with_earlier_poc_nb =3D with_earlier_poc_nb;
> -	),
> -	TP_printk("REF L1: with_later_poc_nb %u, with_earlier_poc_nb %u",
> -		  __entry->with_later_poc_nb, __entry->with_earlier_poc_nb)
> +	    TP_PROTO(unsigned int with_later_poc_nb,
> +		     unsigned int with_earlier_poc_nb),
> +	    TP_ARGS(with_later_poc_nb, with_earlier_poc_nb),
> +		    TP_STRUCT__entry(__field(unsigned int, with_later_poc_nb)
> +				     __field(unsigned int, with_earlier_poc_nb)),
> +		    TP_fast_assign(__entry->with_later_poc_nb =3D with_later_poc_nb;
> +				   __entry->with_earlier_poc_nb =3D with_earlier_poc_nb;),
> +		    TP_printk("REF L1: with_later_poc_nb %u, with_earlier_poc_nb %u",
> +			      __entry->with_later_poc_nb, __entry->with_earlier_poc_nb)
>  );
> =20
>  #endif /* TEGRA_VDE_TRACE_H */
> --=20
> 2.7.4
>=20

--PjdKBxAW1cKHRKT6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmB1uRcACgkQ3SOs138+
s6F1+w//dI7mbL+cWPPwzJnTQ3rk7zrx08DAu4X58g9FqOLjLqPySAhloCsuAekq
6BZ25/hETrEKi3ehIVlpIICXX/auix4qvrW1U2hNZ9go2hfznFABxJ3jqMGgf/3G
rLeDr7xoD0Ed1s4dN0oDFPv1eZ6lXwTjHdlsKbQ9U4hhkH7wEohOokDqESoifg9s
y/AgfooVQ1IKaRCfL8Ls4yH2uT2FaQKh2y5p28uzhIYrVWJ+0ItJLSXrul8Jqd6M
EKqCg8N8iIwopzSTqWhS7IlGmcWLCox7BJs6VvF3LkDnWxa5VeZx+Ha0g+tvhlMS
O2R9KiwMhMM2sUhqFeqOTIp4oTqI6X4B8qh4IwfLgiHRHhUiMIkfbpAo4K9Mfnv/
yXs2tgR6MkNdn8IQc+9Bo5QaD42NwzxA+fb1lu2B/SHS+9/b4zTay6b8GTB/9Jjz
fmoi4gHu1FLPOqfz94mWQDaRkrDeb3PEVT4G6gJ+4I/xnPnQ3jlY3tJ7fFDx/tqK
/em1uhy8H+f/5zTMr8nH/fTUNFh0TI2bkyQOwP4lpHaYhxnax9/CRmp2FCozqFS1
9eiuKbJU4XDJVVDPoSbYVjeMhri7//KqcyS7+UEicsMCV/4hES5zHBVrb8H+Z9Vs
RWANoklSAgIjBUqCunzIiNhCHTQ75eaqXGgqE6XVILBTuXp2Am8=
=cpEt
-----END PGP SIGNATURE-----

--PjdKBxAW1cKHRKT6--

