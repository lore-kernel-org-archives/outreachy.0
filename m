X-GM-THRID: 6400147141672566784
X-Received: by 10.157.4.39 with SMTP id 36mr1408791otc.107.1490301709414;
        Thu, 23 Mar 2017 13:41:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.33.91 with SMTP id l27ls1128992otd.41.gmail; Thu, 23 Mar
 2017 13:41:49 -0700 (PDT)
X-Received: by 10.129.172.6 with SMTP id k6mr1500977ywh.52.1490301708982;
        Thu, 23 Mar 2017 13:41:48 -0700 (PDT)
Return-Path: <andreas.dilger@intel.com>
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id y203si22069pfb.0.2017.03.23.13.41.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Mar 2017 13:41:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of andreas.dilger@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@intel.com;
       spf=pass (google.com: domain of andreas.dilger@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=andreas.dilger@intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=intel;
  t=1490301708; x=1521837708;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=Jn8miW7P8GWQHIWRlIRImxt5Ts/dmjaoXHcDdSxryAw=;
  b=LDTlInp1WrrrLy/O6854VQn+0+i+u8Tz3eyEFuysT9wd4aMj7r5/72as
   /hRH0NMyx96Kd8J+9rW20IFKrBltRQ==;
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Mar 2017 13:41:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,211,1486454400"; 
   d="scan'208";a="80391354"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
  by fmsmga006.fm.intel.com with ESMTP; 23 Mar 2017 13:41:48 -0700
Received: from FMSMSX109.amr.corp.intel.com ([169.254.15.83]) by
 FMSMSX103.amr.corp.intel.com ([10.18.124.201]) with mapi id 14.03.0319.002;
 Thu, 23 Mar 2017 13:41:48 -0700
From: "Dilger, Andreas" <andreas.dilger@intel.com>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
CC: "Drokin, Oleg" <oleg.drokin@intel.com>, James Simmons
	<jsimmons@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	lustre-devel <lustre-devel@lists.lustre.org>, "devel@driverdev.osuosl.org"
	<devel@driverdev.osuosl.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "outreachy-kernel@googlegroups.com"
	<outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH v2] staging: lustre: Replace a bit shift by a use of BIT.
Thread-Topic: [PATCH v2] staging: lustre: Replace a bit shift by a use of
 BIT.
Thread-Index: AQHSoyR83I/Q6eGjCEugpD58SdvBD6GjWtYA
Date: Thu, 23 Mar 2017 20:41:47 +0000
Message-ID: <1BE44C84-0DDB-4D9E-B4CB-C8A979F48EC6@intel.com>
References: <20170322155333.GA17411@arushi-HP-Pavilion-Notebook>
In-Reply-To: <20170322155333.GA17411@arushi-HP-Pavilion-Notebook>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [10.255.66.79]
Content-Type: text/plain; charset="us-ascii"
Content-ID: <4BA25B65885F8949BC2FAD425E2DFBFE@intel.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0

On Mar 22, 2017, at 09:53, Arushi Singhal <arushisinghal19971997@gmail.com>=
 wrote:
>=20
> This patch replaces bit shifting on 1 with the BIT(x) macro.
> This was done with coccinelle:
> @@
> constant c;
> @@
>=20
> -1 << c
> +BIT(c)
>=20
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>

Reviewed-by: Andreas Dilger <andreas.dilger@intel.com>

> ---
> changes in v2
> - remove the unnecessary parenthesis.
> - removethe wrong changes.
>=20
> drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c | 8 ++++----
> drivers/staging/lustre/lnet/lnet/lib-ptl.c             | 2 +-
> drivers/staging/lustre/lustre/llite/lproc_llite.c      | 2 +-
> 3 files changed, 6 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c b/dri=
vers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
> index eaa4399e6a2e..2b93ceaa2844 100644
> --- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
> +++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
> @@ -1906,14 +1906,14 @@ ksocknal_connect(struct ksock_route *route)
> 		if (retry_later) /* needs reschedule */
> 			break;
>=20
> -		if (wanted & (1 << SOCKLND_CONN_ANY)) {
> +		if (wanted & BIT(SOCKLND_CONN_ANY)) {
> 			type =3D SOCKLND_CONN_ANY;
> -		} else if (wanted & (1 << SOCKLND_CONN_CONTROL)) {
> +		} else if (wanted & BIT(SOCKLND_CONN_CONTROL)) {
> 			type =3D SOCKLND_CONN_CONTROL;
> -		} else if (wanted & (1 << SOCKLND_CONN_BULK_IN)) {
> +		} else if (wanted & BIT(SOCKLND_CONN_BULK_IN)) {
> 			type =3D SOCKLND_CONN_BULK_IN;
> 		} else {
> -			LASSERT(wanted & (1 << SOCKLND_CONN_BULK_OUT));
> +			LASSERT(wanted & BIT(SOCKLND_CONN_BULK_OUT));
> 			type =3D SOCKLND_CONN_BULK_OUT;
> 		}
>=20
> diff --git a/drivers/staging/lustre/lnet/lnet/lib-ptl.c b/drivers/staging=
/lustre/lnet/lnet/lib-ptl.c
> index 63cce0c4a065..33332724ab94 100644
> --- a/drivers/staging/lustre/lnet/lnet/lib-ptl.c
> +++ b/drivers/staging/lustre/lnet/lnet/lib-ptl.c
> @@ -334,7 +334,7 @@ lnet_mt_test_exhausted(struct lnet_match_table *mtabl=
e, int pos)
> 	bmap =3D &mtable->mt_exhausted[pos >> LNET_MT_BITS_U64];
> 	pos &=3D (1 << LNET_MT_BITS_U64) - 1;
>=20
> -	return (*bmap & (1ULL << pos));
> +	return (*bmap & BIT(pos));
> }
>=20
> static void
> diff --git a/drivers/staging/lustre/lustre/llite/lproc_llite.c b/drivers/=
staging/lustre/lustre/llite/lproc_llite.c
> index 40f1fcf8b5c0..c742cba60199 100644
> --- a/drivers/staging/lustre/lustre/llite/lproc_llite.c
> +++ b/drivers/staging/lustre/lustre/llite/lproc_llite.c
> @@ -1308,7 +1308,7 @@ static void ll_display_extents_info(struct ll_rw_ex=
tents_info *io_extents,
> 			   r, pct(r, read_tot), pct(read_cum, read_tot),
> 			   w, pct(w, write_tot), pct(write_cum, write_tot));
> 		start =3D end;
> -		if (start =3D=3D 1 << 10) {
> +		if (start =3D=3D 1024) {
> 			start =3D 1;
> 			units +=3D 10;
> 			unitp++;
> --=20
> 2.11.0
>=20

Cheers, Andreas
--
Andreas Dilger
Lustre Principal Architect
Intel Corporation








