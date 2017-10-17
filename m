X-GM-THRID: 6473410411176656896
X-Received: by 10.55.20.105 with SMTP id e102mr11856790qkh.5.1508280180929;
        Tue, 17 Oct 2017 15:43:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.237.50.68 with SMTP id y62ls1241124qtd.5.gmail; Tue, 17 Oct
 2017 15:43:00 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+S69BzKEktAXAfZtd3IYiYttiNZpLWMIttTluWtWtxQEK5vcYccjExr5xnXGJ7s0ilfCnY7
X-Received: by 10.55.75.16 with SMTP id y16mr11688759qka.3.1508280180515;
        Tue, 17 Oct 2017 15:43:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508280180; cv=none;
        d=google.com; s=arc-20160816;
        b=kpiyFtsE+vzeEqK6JKflNbca8VHtFq6KgT/rKYoemY2swln+6tFGKnAQii4p8DUuVM
         Own2TvZ19cDY+ifSZCJbNf58wgQt45WA68bLjOr+V9cwxw3MHVrO6ZWEwKVZm+u+qT3Y
         RlbiWIYHnYbXeyUWZmBeV1LKOAP4QLCokzflVR0u/n+bO5vOjEtmqz5x4pXXrHA/I6ox
         1bd4K+Gkl2LQ2O56ZsIK/4+JMXULme7j0FAIwsZo52nURuJpr/ryzzLbeqjm38/ceyju
         5+YO3zn77x+CFmYpIgbyssfoBW5XM8qDP/OIMQ2KKWZx4Ndcth4qZLMyIY+7pbqmW1Pl
         s89Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:arc-authentication-results;
        bh=S4ryaUM7x+UTcc/GMZCN8PV6MiLod5tCvIkVK8prLhU=;
        b=s2bK3ROnTZpjwlwX2tWwJkq89wCcjDpZrl3PLFcuRC00iupZNsfFOTnnEW9BT8fN8e
         yMCYKoYn91y9m9Zgl5GbkDoFNiVAYZY7lwA+icx9yx+A8e2/ddzmTVZGEAaM9EtvmFUD
         2XXG1QtuPNdph8tzBwmk0oyEtHZe4WOhsR61mHt9brpzeeQB7Ple9tBcVEt3IHr/2WEU
         FI4I79E2LZ5bHR5fTjaTfeCv/AA3B0Pk6sUVsxX9r9zUNfEUAc90mvzB1vCoUNiCqOsR
         0GlSOXgEVb7lXSWf/ptg+nFto1dU83crQfm1hTHfKdQAgUZANhvV63bD9eyLUr9OfW9R
         eFUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andreas.dilger@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=andreas.dilger@intel.com
Return-Path: <andreas.dilger@intel.com>
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id v50si760200qta.0.2017.10.17.15.43.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 15:43:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of andreas.dilger@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of andreas.dilger@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=andreas.dilger@intel.com
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga105.jf.intel.com with ESMTP; 17 Oct 2017 15:42:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,392,1503385200"; 
   d="scan'208";a="324404875"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
  by fmsmga004.fm.intel.com with ESMTP; 17 Oct 2017 15:42:58 -0700
Received: from fmsmsx112.amr.corp.intel.com (10.18.116.6) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.319.2; Tue, 17 Oct 2017 15:42:58 -0700
Received: from FMSMSX109.amr.corp.intel.com ([169.254.15.12]) by
 FMSMSX112.amr.corp.intel.com ([169.254.5.121]) with mapi id 14.03.0319.002;
 Tue, 17 Oct 2017 15:42:58 -0700
From: "Dilger, Andreas" <andreas.dilger@intel.com>
To: Aastha Gupta <aastha.gupta4104@gmail.com>
CC: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>,
	"Drokin, Oleg" <oleg.drokin@intel.com>, James Simmons
	<jsimmons@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v2 03/10] staging: lustre: fix macro definitions warnings
Thread-Topic: [PATCH v2 03/10] staging: lustre: fix macro definitions
 warnings
Thread-Index: AQHTQxMZuKQpnMvEg0mLV92gPm0q/qLpIcCA
Date: Tue, 17 Oct 2017 22:42:57 +0000
Message-ID: <1F48CC83-AF2E-4410-997C-EA4D2D1CDE36@intel.com>
References: <1507782683-12754-1-git-send-email-aastha.gupta4104@gmail.com>
 <1507782683-12754-4-git-send-email-aastha.gupta4104@gmail.com>
In-Reply-To: <1507782683-12754-4-git-send-email-aastha.gupta4104@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [10.252.142.85]
Content-Type: text/plain; charset="us-ascii"
Content-ID: <6AE5CF8EF737DA43B49890DEBC3C3947@intel.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Return-Path: andreas.dilger@intel.com

On Oct 11, 2017, at 22:31, Aastha Gupta <aastha.gupta4104@gmail.com> wrote:
>=20
> This patch fixes the checkpatch.pl warnings related to macro
> definitions.
> 1. macros with complex values should be enclosed in parentheses.
> 2. macros with multiple lines should be enclosed in do-while block.
>=20
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>

Reviewed-by: Andreas Dilger <andreas.dilger@intel.com>

> ---
> drivers/staging/lustre/lustre/include/lu_object.h | 14 ++++++++------
> 1 file changed, 8 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/staging/lustre/lustre/include/lu_object.h b/drivers/=
staging/lustre/lustre/include/lu_object.h
> index a3c0481..c8d5e0b 100644
> --- a/drivers/staging/lustre/lustre/include/lu_object.h
> +++ b/drivers/staging/lustre/lustre/include/lu_object.h
> @@ -1151,8 +1151,10 @@ struct lu_context_key {
> 	struct __##mod##__dummy_fini {; } /* semicolon catcher */
>=20
> #define LU_KEY_INIT_FINI(mod, type)   \
> +do {					\
> 	LU_KEY_INIT(mod, type);	\
> -	LU_KEY_FINI(mod, type)
> +	LU_KEY_FINI(mod, type); \
> +} while (0)
>=20
> #define LU_CONTEXT_KEY_DEFINE(mod, tags)		\
> 	struct lu_context_key mod##_thread_key =3D {      \
> @@ -1161,10 +1163,8 @@ struct lu_context_key {
> 		.lct_fini =3D mod##_key_fini	      \
> 	}
>=20
> -#define LU_CONTEXT_KEY_INIT(key)			\
> -do {						    \
> -	(key)->lct_owner =3D THIS_MODULE;		 \
> -} while (0)
> +#define LU_CONTEXT_KEY_INIT(key) ((key)->lct_owner =3D THIS_MODULE)
> +
>=20
> int lu_context_key_register(struct lu_context_key *key);
> void lu_context_key_degister(struct lu_context_key *key);
> @@ -1223,10 +1223,12 @@ void lu_context_key_revive(struct lu_context_key =
*key);
> 	struct __##mod##_dummy_type_stop {; }
>=20
> #define LU_TYPE_INIT_FINI(mod, ...)	     \
> +do {						\
> 	LU_TYPE_INIT(mod, __VA_ARGS__);	 \
> 	LU_TYPE_FINI(mod, __VA_ARGS__);	 \
> 	LU_TYPE_START(mod, __VA_ARGS__);	\
> -	LU_TYPE_STOP(mod, __VA_ARGS__)
> +	LU_TYPE_STOP(mod, __VA_ARGS__);		\
> +} while (0)
>=20
> int lu_context_init(struct lu_context *ctx, __u32 tags);
> void lu_context_fini(struct lu_context *ctx);
> --=20
> 2.7.4
>=20

Cheers, Andreas
--
Andreas Dilger
Lustre Principal Architect
Intel Corporation








