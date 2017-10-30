X-GM-THRID: 6473410411176656896
X-Received: by 10.129.94.214 with SMTP id s205mr19265396ywb.206.1509326123844;
        Sun, 29 Oct 2017 18:15:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.167.130 with SMTP id e124ls853063ywh.6.gmail; Sun, 29 Oct
 2017 18:15:23 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+SmkHtMDT3w8Xo5Qv36u+gWr/Hruwv/+577ka38QwVmbbaZGh0HWioDURI96m9y5JB9vaOa
X-Received: by 10.13.206.66 with SMTP id q63mr12223628ywd.147.1509326123021;
        Sun, 29 Oct 2017 18:15:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1509326122; cv=none;
        d=google.com; s=arc-20160816;
        b=kKmjQc4N3PrNS5JBzCMbcGbB7Z26XSW+56snpcvsTT8uBhm1wLxKLqOzVGL8sLFCjQ
         xJIjABUdeqCBy8k6b43TljiILIIkt88LSPW6hdWXc/sQm2JmQ6t34Niz/rhBa24x1cBp
         +ff0j6ItSnq24KjlQ0vf11UYvokGHPl8oi1lO8ZQHbSW1geMNWZNahMtVmCVu9HBfDQO
         LFmh2DWIuw0cZPTw6mk0nu6HiyEbAWRgLYmL7oieO7q2eSHwoTDZlcNPHVVkzLNzBZ9N
         S5icN+m465zvmWxCvYFAhr9FA7wY7JTaiq2UHJVSM2yKibaWMpUtAy6iE9aiQ5v6EpjG
         t85g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:arc-authentication-results;
        bh=AIOU8z94mzZQfy4Ljw0wzMT7dV6atM9NZcj/qHa/lRk=;
        b=0a3zWrT12Mf4MiawOjeijs56HWbUvf4+yDYVzsmaD0J9da6IIfUTt5NF0d8rA7L4fg
         YOVC58lOSg2zS4xstpOAXuVC6NHINkbdmw/EGFyueaBN63rrqktRMmyux2ElAatgefl6
         5inl8/m6NjFU43c5QAOq5tLZrmX4EPvHwwzsVnIGZnoD7iriGmRK3OQL4i5UU3SIrHpR
         PaQTct3nQ34VoLX3iAbw6g/cLsZcxcY5xB2yV3tzTBzHpqc1CS+40EVpkVRjUCYYCRx7
         HDlZySwVXSygk9i4X98e3eaHs9hxr8+EaGyxfRtNBlPCLbjatUaUty6QtKhertL0nOax
         Iyng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andreas.dilger@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=andreas.dilger@intel.com
Return-Path: <andreas.dilger@intel.com>
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id a13si1023710ywe.0.2017.10.29.18.15.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Oct 2017 18:15:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of andreas.dilger@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of andreas.dilger@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=andreas.dilger@intel.com
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 29 Oct 2017 18:15:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,317,1505804400"; 
   d="scan'208";a="329375183"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
  by fmsmga004.fm.intel.com with ESMTP; 29 Oct 2017 18:15:21 -0700
Received: from fmsmsx155.amr.corp.intel.com (10.18.116.71) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.319.2; Sun, 29 Oct 2017 18:15:21 -0700
Received: from FMSMSX109.amr.corp.intel.com ([169.254.15.50]) by
 FMSMSX155.amr.corp.intel.com ([169.254.5.163]) with mapi id 14.03.0319.002;
 Sun, 29 Oct 2017 18:15:21 -0700
From: "Dilger, Andreas" <andreas.dilger@intel.com>
To: Aastha Gupta <aastha.gupta4104@gmail.com>
CC: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>,
	"Drokin, Oleg" <oleg.drokin@intel.com>, James Simmons
	<jsimmons@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v4 3/7] staging: lustre: fld: fix line over 80 characters
Thread-Topic: [PATCH v4 3/7] staging: lustre: fld: fix line over 80
 characters
Thread-Index: AQHTSEH82qpgbswJ9EWA+y9toISdoKL63MoA
Date: Mon, 30 Oct 2017 01:15:20 +0000
Message-ID: <CA222036-3D26-40A8-A177-9BC38E6EC7FC@intel.com>
References: <1508352586-25475-1-git-send-email-aastha.gupta4104@gmail.com>
 <1508352586-25475-4-git-send-email-aastha.gupta4104@gmail.com>
In-Reply-To: <1508352586-25475-4-git-send-email-aastha.gupta4104@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [10.238.139.56]
Content-Type: text/plain; charset="us-ascii"
Content-ID: <6E47A6AA080BA2428352F57835D15CBE@intel.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Return-Path: andreas.dilger@intel.com

On Oct 18, 2017, at 12:49, Aastha Gupta <aastha.gupta4104@gmail.com> wrote:
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








