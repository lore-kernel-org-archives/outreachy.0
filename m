X-GM-THRID: 6473410411176656896
X-Received: by 10.13.209.6 with SMTP id t6mr220435ywd.146.1508280773275;
        Tue, 17 Oct 2017 15:52:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.145.19 with SMTP id i19ls200096ywg.35.gmail; Tue, 17 Oct
 2017 15:52:52 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCjmJ9k83prPe4vCWXIUrKQrHxsKJwbM0+2i2VIB+23Yq9lioPUYNuZiih09+5kneBMI/ar
X-Received: by 10.37.97.1 with SMTP id v1mr8406647ybb.85.1508280772142;
        Tue, 17 Oct 2017 15:52:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508280772; cv=none;
        d=google.com; s=arc-20160816;
        b=nipc8x201bOEVCn9vd/kq/C0W45Wn+CvPwKbaIFsMObcC3ce9rauGGa6hZcGy9eVli
         Xj69Jgee46pNNWmN8JQO0IQKD7lduYXWsJeH4TrkPsVclN2qY+l9J+F7NP0XXJqZJrne
         Rnnh2Yhq6YiyLzWovwofuiPoplaJ8MbnVEyNsrRue6y5xsaA5/59wYuPbPtNXmUS2xvs
         +y8t29lYIMJVmoNtqLQ4ocnWVOyj7P0FGhbUZuq6BSSVkJ4hx+Fma3/0D/J1EXwZzHVa
         HOW1MFbRm+IQYkhJykscKxJRL8MYe4QZIQCfIYSkdlKEjDXYOP9+QgAQQEkvUTPthxmz
         RFAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:arc-authentication-results;
        bh=PFgcF8jdDNz00DZEa5pruJq4V6sywERSPhOEeqY2mh0=;
        b=qaDE0QLWsq5cSX3ZBgMN3M+JkIsUsB3TQGX33GfAOF8tdafwtMVHziBEVABIeJLp9g
         PfbSQhZ2gs2kSKMDL74+PIwQKTsKX+5zM1/wOLBOflXRvHabDvdGcoKCK6YU0zwnWwjl
         v4rjcRYSRmrjJ+kRv9dqS3+v1KkS0c/fyUda4FLa99n+YbXPylkaacOs9EcMamTR7Xjs
         CpFRxD3ziW04cyYZW+e/3eA8IkJBDt/LsH8Q3cl8aGk4u64jzJxCFq8kwxW0SoofufRe
         KjJ0agJWfPHGjNnYMrh6i80ZBCAv6xOYKn0ZU5kGQNMTbyNYd1oHrJN0xSqUW1c0U051
         zovA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andreas.dilger@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=andreas.dilger@intel.com
Return-Path: <andreas.dilger@intel.com>
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id a4si638400ywb.5.2017.10.17.15.52.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 15:52:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of andreas.dilger@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of andreas.dilger@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=andreas.dilger@intel.com
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga105.fm.intel.com with ESMTP; 17 Oct 2017 15:52:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,392,1503385200"; 
   d="scan'208";a="1026226887"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
  by orsmga003.jf.intel.com with ESMTP; 17 Oct 2017 15:52:50 -0700
Received: from fmsmsx151.amr.corp.intel.com (10.18.125.4) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.319.2; Tue, 17 Oct 2017 15:52:49 -0700
Received: from FMSMSX109.amr.corp.intel.com ([169.254.15.12]) by
 FMSMSX151.amr.corp.intel.com ([169.254.7.181]) with mapi id 14.03.0319.002;
 Tue, 17 Oct 2017 15:52:49 -0700
From: "Dilger, Andreas" <andreas.dilger@intel.com>
To: Aastha Gupta <aastha.gupta4104@gmail.com>
CC: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>,
	"Drokin, Oleg" <oleg.drokin@intel.com>, James Simmons
	<jsimmons@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v2 07/10] staging: lustre: ldlm: fix lines over 80
 characters in ldlm files
Thread-Topic: [PATCH v2 07/10] staging: lustre: ldlm: fix lines over 80
 characters in ldlm files
Thread-Index: AQHTQxMazKgYQ0Qrw0Klc82imGGCYqLpJIAA
Date: Tue, 17 Oct 2017 22:52:49 +0000
Message-ID: <BD0351BD-4632-4E0A-AD31-F07923D451D9@intel.com>
References: <1507782683-12754-1-git-send-email-aastha.gupta4104@gmail.com>
 <1507782683-12754-8-git-send-email-aastha.gupta4104@gmail.com>
In-Reply-To: <1507782683-12754-8-git-send-email-aastha.gupta4104@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [10.252.142.85]
Content-Type: text/plain; charset="us-ascii"
Content-ID: <EC3F5D047E20F249B46606FE7E70401A@intel.com>
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

Patch is OK as-is, but some minor improvements possible if refreshed (inlin=
e).

Reviewed-by: Andreas Dilger <andreas.dilger@intel.com>


> diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_internal.h b/drivers=
/staging/lustre/lustre/ldlm/ldlm_internal.h
> index 36808db..9776c39 100644
> --- a/drivers/staging/lustre/lustre/ldlm/ldlm_internal.h
> +++ b/drivers/staging/lustre/lustre/ldlm/ldlm_internal.h
> @@ -88,7 +88,9 @@ struct ldlm_namespace *ldlm_namespace_first_locked(enum=
 ldlm_side client);
> /* ldlm_request.c */
> /* Cancel lru flag, it indicates we cancel aged locks. */
> enum {
> -	LDLM_LRU_FLAG_AGED	=3D BIT(0), /* Cancel aged locks (non lru resize). *=
/
> +	LDLM_LRU_FLAG_AGED	=3D BIT(0), /* Cancel aged locks (non
> +					   * lru resize).
> +					   */

Would prefer to keep this on a single line, like:

					  /* Cancel old non-LRU resize locks */

> 	LDLM_LRU_FLAG_PASSED	=3D BIT(1), /* Cancel passed number of locks. */
> 	LDLM_LRU_FLAG_SHRINK	=3D BIT(2), /* Cancel locks from shrinker. */
> 	LDLM_LRU_FLAG_LRUR	=3D BIT(3), /* Cancel locks from lru resize. */
> diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_request.c b/drivers/=
staging/lustre/lustre/ldlm/ldlm_request.c
> index f3bf238..4660aa7 100644
> --- a/drivers/staging/lustre/lustre/ldlm/ldlm_request.c
> +++ b/drivers/staging/lustre/lustre/ldlm/ldlm_request.c
> @@ -473,7 +478,8 @@ int ldlm_cli_enqueue_fini(struct obd_export *exp, str=
uct ptlrpc_request *req,
>=20
> 		if (!ldlm_res_eq(&reply->lock_desc.l_resource.lr_name,
> 				 &lock->l_resource->lr_name)) {
> -			CDEBUG(D_INFO, "remote intent success, locking " DLDLMRES
> +			CDEBUG(D_INFO,
> +			       "remote intent success, locking " DLDLMRES
> 				       " instead of " DLDLMRES "\n",

This string could be on a single line.

Cheers, Andreas
--
Andreas Dilger
Lustre Principal Architect
Intel Corporation








