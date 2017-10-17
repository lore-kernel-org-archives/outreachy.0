X-GM-THRID: 6473410411176656896
X-Received: by 10.237.53.200 with SMTP id d8mr257034qte.14.1508280200528;
        Tue, 17 Oct 2017 15:43:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.200.17.4 with SMTP id c4ls1253184qtj.4.gmail; Tue, 17 Oct 2017
 15:43:20 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+T8jVVT1UBLX0cRrSSW3iwrK8ATYbUUPa/QIbUeaJd2AQFcGo623VOceX1af/qrTgYD7IeR
X-Received: by 10.55.71.146 with SMTP id u140mr11676093qka.7.1508280200079;
        Tue, 17 Oct 2017 15:43:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508280200; cv=none;
        d=google.com; s=arc-20160816;
        b=I8MJ6ZEUkarjhZPGqANGPX2xTorwzBRsht98AngloDpyQyxHPmz67g9AS+voasvhJX
         FH5VE22i3nviaOus/ofQWMbCcVgwoYUZrIqvS/h4ShCyZdaKFUSSM/jpvHX85Tl/XcK1
         +T+PWBi5Ijz4xEp/wwjEFoM/bcugJiW0ahokNRXIZfSw0a8CST/hrID+t4WMja5qJdFE
         x7ZHMTnHRlK4NT+qdmrUUv0ai2Rrse1gkrc7ywPvTkgzV4xI0C2FlBKqx14wtdDJZEdw
         fgLB/qp8nyO76Y9NjanY/440YdNusoCQLNgn6JR4olrEmFl/Cnun5ax6KLhcolXsojq0
         +NLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:arc-authentication-results;
        bh=9x4F5iUzaW008TWBOctH4a+ifKJFW+j/P7apE8SF4Xs=;
        b=xFaZ/9Z3o7N0wcMJzzMgHYg7Fp3X1s+LlR8cJtVBQ5zRDDsVFvcBPOWzYGjsr9Ps3P
         Mr6MRey1iXLxRzFB2uDPrUWB6Q4zqeiwLTu0IqjjCFzepk54wr8JyyxSfOntVoxxpHMA
         GRkagLerwkZo+hyL4sltrubXKEcaQCFekW/5g1Ji9EmO+D2cgecqb9Y8NUja5ywmSxK5
         Y8M8TpTKV4xG3QzV34N2v8qmVfZFpUL5VqkTa+3QmOkOG+8rxJwkXn+aToRHDo+w6BXV
         CjO6VvntpaGpEMRCT/Z2js5sG61grX9ZgwapPeAUpty6ltyfBsGxr0eByHuK3FR6003i
         dOIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andreas.dilger@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=andreas.dilger@intel.com
Return-Path: <andreas.dilger@intel.com>
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id w140si518355qkb.4.2017.10.17.15.43.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 15:43:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of andreas.dilger@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of andreas.dilger@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=andreas.dilger@intel.com
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga105.fm.intel.com with ESMTP; 17 Oct 2017 15:43:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,392,1503385200"; 
   d="scan'208";a="139421844"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
  by orsmga004.jf.intel.com with ESMTP; 17 Oct 2017 15:43:18 -0700
Received: from fmsmsx156.amr.corp.intel.com (10.18.116.74) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.319.2; Tue, 17 Oct 2017 15:43:18 -0700
Received: from FMSMSX109.amr.corp.intel.com ([169.254.15.12]) by
 fmsmsx156.amr.corp.intel.com ([169.254.13.144]) with mapi id 14.03.0319.002;
 Tue, 17 Oct 2017 15:43:17 -0700
From: "Dilger, Andreas" <andreas.dilger@intel.com>
To: Aastha Gupta <aastha.gupta4104@gmail.com>
CC: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>,
	"Drokin, Oleg" <oleg.drokin@intel.com>, James Simmons
	<jsimmons@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v2 05/10] staging: lustre: fid: fix line over 80
 characters
Thread-Topic: [PATCH v2 05/10] staging: lustre: fid: fix line over 80
 characters
Thread-Index: AQHTQxMRoJatl08xikmkZrQkH9c1A6LpIdiA
Date: Tue, 17 Oct 2017 22:43:17 +0000
Message-ID: <B52FB460-29AE-4A3B-92A7-2E20656C84C0@intel.com>
References: <1507782683-12754-1-git-send-email-aastha.gupta4104@gmail.com>
 <1507782683-12754-6-git-send-email-aastha.gupta4104@gmail.com>
In-Reply-To: <1507782683-12754-6-git-send-email-aastha.gupta4104@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [10.252.142.85]
Content-Type: text/plain; charset="us-ascii"
Content-ID: <BF29713C4EA6424CA2D1DF28CC28ADD5@intel.com>
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
> drivers/staging/lustre/lustre/fid/fid_request.c | 3 ++-
> 1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/staging/lustre/lustre/fid/fid_request.c b/drivers/st=
aging/lustre/lustre/fid/fid_request.c
> index ba73623..6a98225 100644
> --- a/drivers/staging/lustre/lustre/fid/fid_request.c
> +++ b/drivers/staging/lustre/lustre/fid/fid_request.c
> @@ -279,7 +279,8 @@ int seq_client_alloc_fid(const struct lu_env *env,
> 	*fid =3D seq->lcs_fid;
> 	mutex_unlock(&seq->lcs_mutex);
>=20
> -	CDEBUG(D_INFO, "%s: Allocated FID " DFID "\n", seq->lcs_name,  PFID(fid=
));
> +	CDEBUG(D_INFO,
> +	       "%s: Allocated FID " DFID "\n", seq->lcs_name,  PFID(fid));
> 	return rc;
> }
> EXPORT_SYMBOL(seq_client_alloc_fid);
> --=20
> 2.7.4
>=20

Cheers, Andreas
--
Andreas Dilger
Lustre Principal Architect
Intel Corporation








