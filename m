X-GM-THRID: 6473410411176656896
X-Received: by 10.107.156.81 with SMTP id f78mr26175ioe.99.1508280113776;
        Tue, 17 Oct 2017 15:41:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.232.14 with SMTP id f14ls622185ioh.20.gmail; Tue, 17 Oct
 2017 15:41:53 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+S+Rjd65NkBqajOf+QVL/aERRoxR+aXUP5pn8T0EHiwKWhhaOLFQpZLwqLj9Xoi3g1u4Y5R
X-Received: by 10.36.14.210 with SMTP id 201mr2291663ite.42.1508280113003;
        Tue, 17 Oct 2017 15:41:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508280112; cv=none;
        d=google.com; s=arc-20160816;
        b=KdkSvuZwMwuVTP5Ylm8l6IhV3F3VH4rXuaAR3cMiMulGsM7REMqa5IFOm29UYFiYwB
         aU3yuHS28rqwVHEjEnCx06mY+Ht7frKAEN+uz5Y5TwE5o+vZljL0k/MNecGNWtUcC5fM
         Z4nDWE3sTXYpeYWDkMipYXo7O5X693+KEBcTevauj7TY1F9sKgQX3xq2Fx2FjnEZASFH
         zAcIvp2P6mn/IDRw2IVYk2KPKtWk08uS4Z44b4GKKiLvbYkmRJzhZNEkhkSe8shxAgKO
         MmXehZ5V/PqMx771WvwqyeNujCtj7/gdJhmsIrYpDaHoA4Fns1cHDFSslwDTRex86uU9
         cY6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:arc-authentication-results;
        bh=NOdS3bD2VI0dYDbiiOb5cJ5s7n0HPC0V1+ILoZWbKzs=;
        b=IyTXzS5cPMWIAeDcX8Qm/2YBueGksLj63ofQxDoilK1XLVKaSr+kuzGv7sDMd2LpWG
         TbHwGgaC/R9lBni6GRxb6a9TAtAY/ZV22lYotNA7xaCgqJX9s4Eo0RN49N+FusxJkHKO
         LmZwJ1oZRXqdQ61p9WJdDBaNuM8YIeY+S+Dqj9Uc5T4B71hvQm8jSYayLJOTKs/feaR5
         R1A0g96EZHT2WtDN0U6Df1oqkTD+xxpgeQeOkNIkht+R0EDTHEI683GZEN2rx/vcj5Wo
         fURSxb+EM9EpePxtqFISppnxnmbH6Tm5XFTspoXTYh/mZmQWKjFAaeJOiCwKMEUjkM3B
         637A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andreas.dilger@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=andreas.dilger@intel.com
Return-Path: <andreas.dilger@intel.com>
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id c29si610789iod.3.2017.10.17.15.41.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 15:41:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of andreas.dilger@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of andreas.dilger@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=andreas.dilger@intel.com
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Oct 2017 15:41:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,392,1503385200"; 
   d="scan'208";a="1026224417"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
  by orsmga003.jf.intel.com with ESMTP; 17 Oct 2017 15:41:51 -0700
Received: from FMSMSX109.amr.corp.intel.com ([169.254.15.12]) by
 FMSMSX106.amr.corp.intel.com ([169.254.5.207]) with mapi id 14.03.0319.002;
 Tue, 17 Oct 2017 15:41:39 -0700
From: "Dilger, Andreas" <andreas.dilger@intel.com>
To: Aastha Gupta <aastha.gupta4104@gmail.com>
CC: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>,
	"Drokin, Oleg" <oleg.drokin@intel.com>, James Simmons
	<jsimmons@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v2 02/10] staging: lustre: fix comparisons should place
 the constant on the right side
Thread-Topic: [PATCH v2 02/10] staging: lustre: fix comparisons should place
 the constant on the right side
Thread-Index: AQHTQxMFP8kYZroMQEuWcoR0spTnmKLpIWIA
Date: Tue, 17 Oct 2017 22:41:38 +0000
Message-ID: <5BF7C09D-0DCC-401D-9365-3BF622A1EB36@intel.com>
References: <1507782683-12754-1-git-send-email-aastha.gupta4104@gmail.com>
 <1507782683-12754-3-git-send-email-aastha.gupta4104@gmail.com>
In-Reply-To: <1507782683-12754-3-git-send-email-aastha.gupta4104@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [10.252.142.85]
Content-Type: text/plain; charset="us-ascii"
Content-ID: <B5CD8322470E0A43B5B891901E3BE98B@intel.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0

On Oct 11, 2017, at 22:31, Aastha Gupta <aastha.gupta4104@gmail.com> wrote:
>=20
> This patch fixes checkpatch.pl warning:
>=20
> WARNING: Comparisons should place the constant on the right side of the t=
est
>=20
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>

Reviewed-by: Andreas Dilger <andreas.dilger@intel.com>

> ---
> drivers/staging/lustre/lustre/include/lu_object.h | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/staging/lustre/lustre/include/lu_object.h b/drivers/=
staging/lustre/lustre/include/lu_object.h
> index 4f213c4..a3c0481 100644
> --- a/drivers/staging/lustre/lustre/include/lu_object.h
> +++ b/drivers/staging/lustre/lustre/include/lu_object.h
> @@ -1130,7 +1130,7 @@ struct lu_context_key {
> 	{							 \
> 		type *value;				      \
> 								  \
> -		BUILD_BUG_ON(PAGE_SIZE < sizeof(*value));        \
> +		BUILD_BUG_ON(sizeof(*value) > PAGE_SIZE);        \
> 								  \
> 		value =3D kzalloc(sizeof(*value), GFP_NOFS);	\
> 		if (!value)				\
> --=20
> 2.7.4
>=20

Cheers, Andreas
--
Andreas Dilger
Lustre Principal Architect
Intel Corporation








