X-GM-THRID: 6473410411176656896
X-Received: by 10.36.73.67 with SMTP id z64mr4020104ita.44.1508280218610;
        Tue, 17 Oct 2017 15:43:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.114.1 with SMTP id n1ls630654ioc.23.gmail; Tue, 17 Oct
 2017 15:43:38 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+T65aIqOHjg6km0FBlYX9IA01QJ9arR+bIRYLiLrcpPITIoGvYNJE4sJEMmQer1E/dqsYsd
X-Received: by 10.36.228.142 with SMTP id o136mr3235627ith.55.1508280218134;
        Tue, 17 Oct 2017 15:43:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508280218; cv=none;
        d=google.com; s=arc-20160816;
        b=tMKAtptXI4C1P4zVE0KnesCZONAaonyD4TGS77Mrnask5NpWGVzBsTYAEfut7zJ+Fq
         LdMHE6gK6P67jr/7bx3H8FWxYirzaAoQK+tZr6Z2ttt6N8vrWgvUJAFWwNwXgW3NWz6D
         osHAvu4kIuVtAPpVWdTdv4nQXFWR/OfGRjPgaF5mn1pbqHl0gVs0by5hLRXyM3oG3IA5
         l5gUL1mKHuEYbkwEMSraGiTvHAIqjAuOLH2ML0r8vyCn24w4RxD5mmxrNCw60HCuDbZW
         6fmeiF6PJQvjnr2dZv8Pdoca0PBdwPTn1KRu/zoIYNYLdTFYgtVjewMurMbhxj+j3kNd
         5ubw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:arc-authentication-results;
        bh=l5sgssg5Ah52q9M51CK81UC5M0lkJJdfmfQ1QtJJLWs=;
        b=WhfZhE8Qu3ftXiU0jBKpJfnsWJtPCL8r0Aq4fSzTxv+mPV1jUI71v6gI3tli43pMK7
         9VpRX/ma1WzG/yzI8Wx8P2fZqWGbk7kUxR2RD59cEZo/eqfd0GASQyIm6hNJPUbljRuy
         RtolZEE26IUzdmACt9nZgnCYXuEXYJvM2LpR4XizLoTj0Z+yw3kZ9qmTQ5ivLQoLVSYj
         LQCy4tCWicR2c3Sl+2PSj0ZCH9xObZSMtfUwyjGptYHPkoqzGEEzX9VpNUdptd9xr7iw
         xq9N+kb+zAr8LiSoR0k0Wqk/A9a9GeCvuq2sL8fl0A/JzfA1f/IzzTKN9whjB0T3NuLB
         QrEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andreas.dilger@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=andreas.dilger@intel.com
Return-Path: <andreas.dilger@intel.com>
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id d125si151053itg.0.2017.10.17.15.43.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 15:43:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of andreas.dilger@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of andreas.dilger@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=andreas.dilger@intel.com
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Oct 2017 15:43:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,392,1503385200"; 
   d="scan'208";a="163790619"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
  by fmsmga005.fm.intel.com with ESMTP; 17 Oct 2017 15:43:36 -0700
Received: from fmsmsx102.amr.corp.intel.com (10.18.124.200) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.319.2; Tue, 17 Oct 2017 15:43:36 -0700
Received: from FMSMSX109.amr.corp.intel.com ([169.254.15.12]) by
 FMSMSX102.amr.corp.intel.com ([169.254.10.148]) with mapi id 14.03.0319.002;
 Tue, 17 Oct 2017 15:43:36 -0700
From: "Dilger, Andreas" <andreas.dilger@intel.com>
To: Aastha Gupta <aastha.gupta4104@gmail.com>
CC: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>,
	"Drokin, Oleg" <oleg.drokin@intel.com>, James Simmons
	<jsimmons@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v2 06/10] staging: lustre: fld: fix line over 80
 characters
Thread-Topic: [PATCH v2 06/10] staging: lustre: fld: fix line over 80
 characters
Thread-Index: AQHTQxMk4cDHO/vu00mA1PSuba3mr6LpIewA
Date: Tue, 17 Oct 2017 22:43:35 +0000
Message-ID: <C127F673-AF58-4D74-913E-2FBB1D705631@intel.com>
References: <1507782683-12754-1-git-send-email-aastha.gupta4104@gmail.com>
 <1507782683-12754-7-git-send-email-aastha.gupta4104@gmail.com>
In-Reply-To: <1507782683-12754-7-git-send-email-aastha.gupta4104@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [10.252.142.85]
Content-Type: text/plain; charset="us-ascii"
Content-ID: <6B3710609B66614F99C5D20410549A4E@intel.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Return-Path: andreas.dilger@intel.com

On Oct 11, 2017, at 22:31, Aastha Gupta <aastha.gupta4104@gmail.com> wrote:
>=20
> This patch fixes checkpatch.pl warning:
>=20
> WARNING: line over 80 characters
>=20
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>

Reviewed-by: Andreas Dilger <andreas.dilger@intel.com>

> ---
> drivers/staging/lustre/lustre/fld/fld_request.c | 3 ++-
> 1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/staging/lustre/lustre/fld/fld_request.c b/drivers/st=
aging/lustre/lustre/fld/fld_request.c
> index 5b18083..081e137 100644
> --- a/drivers/staging/lustre/lustre/fld/fld_request.c
> +++ b/drivers/staging/lustre/lustre/fld/fld_request.c
> @@ -425,7 +425,8 @@ int fld_client_lookup(struct lu_client_fld *fld, u64 =
seq, u32 *mds,
> 	target =3D fld_client_get_target(fld, seq);
> 	LASSERT(target);
>=20
> -	CDEBUG(D_INFO, "%s: Lookup fld entry (seq: %#llx) on target %s (idx %ll=
u)\n",
> +	CDEBUG(D_INFO,
> +	       "%s: Lookup fld entry (seq: %#llx) on target %s (idx %llu)\n",
> 	       fld->lcf_name, seq, fld_target_name(target), target->ft_idx);
>=20
> 	res.lsr_start =3D seq;
> --=20
> 2.7.4
>=20

Cheers, Andreas
--
Andreas Dilger
Lustre Principal Architect
Intel Corporation








