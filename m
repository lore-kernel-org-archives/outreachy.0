X-GM-THRID: 6473410411176656896
X-Received: by 10.99.171.4 with SMTP id p4mr4170425pgf.117.1509326174010;
        Sun, 29 Oct 2017 18:16:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.159.249.3 with SMTP id bf3ls2177938plb.9.gmail; Sun, 29 Oct
 2017 18:16:13 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+TfHcGp0cv005sb/KdGiLXDe4lJwjJJUQZYJJU0LTELqhz1pxptZ8SOrzyF5lrUIT1tO3nP
X-Received: by 10.99.127.3 with SMTP id a3mr4156512pgd.145.1509326173197;
        Sun, 29 Oct 2017 18:16:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1509326173; cv=none;
        d=google.com; s=arc-20160816;
        b=XjzQVFxiFYrNNfiHufEOLLgofKzH4h8wI5JX4FeahC/69zle6p256bpfjLDaF6KaVq
         1IhY58ZRJQJFWFZqncx+RPMVzaf4byNnkZLzr2aNFVkO5qYuJfXVq4qMjfPnrqcKLcl4
         kMcE5dyShnuH7PWsAiF9x59TD2yjgEP5zHHsHp3AmhDZjP0MsQSShZ/FAtLQuJiHVVJe
         mqY3gctNuFMg464gRWSQX4A9UeXIP0H9M4jk+A872u1ruw5I9W3+iraBofm9pgvBfgia
         oKNEQ5xLClHdpW8Sytl2T8WiIPKK5dkszCZsrXhMaZTs12wipSSeH6v74IHzcJhF57lB
         14hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:arc-authentication-results;
        bh=I7YWuE5bLpb+4ySvrYz6OaQv+/EpxHovdGqq14BxfLA=;
        b=Q488LGWHpWlC4ARPt7u5OeO+tvV8CHw0cuztTXTNpPO1S1r9ay2UgUzIBJmniGpjSO
         UnhXlgdIWKALCV6kJIRCoblQmEL3H7NLxgwIEyrY1t80xY4AjoksLO4itJMy+B29PAyB
         SAAXF2TZUUvCcbgxxQKFwVV8RFUt4v99dqa2l1BM/SqE7G8LeyhsVNVV4B/oly3Y4Xzu
         0A/qCFsIsPA+A2gTFUJtZXys6ugX038LM4BR9myP390wKRNzWSa9ddZqLT7/YQBDXzZo
         RH8DHH+xRum7BQavhz2ieEWRfwlaA3VKhcZXWmtZ4d6TJeIfG+lRbWDSbb3eL6rOXfvh
         3wMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andreas.dilger@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=andreas.dilger@intel.com
Return-Path: <andreas.dilger@intel.com>
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id i72si1192072pfe.0.2017.10.29.18.16.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Oct 2017 18:16:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of andreas.dilger@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of andreas.dilger@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=andreas.dilger@intel.com
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 29 Oct 2017 18:16:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,317,1505804400"; 
   d="scan'208";a="169303478"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
  by fmsmga006.fm.intel.com with ESMTP; 29 Oct 2017 18:16:12 -0700
Received: from fmsmsx154.amr.corp.intel.com (10.18.116.70) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.319.2; Sun, 29 Oct 2017 18:16:12 -0700
Received: from FMSMSX109.amr.corp.intel.com ([169.254.15.50]) by
 FMSMSX154.amr.corp.intel.com ([169.254.6.161]) with mapi id 14.03.0319.002;
 Sun, 29 Oct 2017 18:16:11 -0700
From: "Dilger, Andreas" <andreas.dilger@intel.com>
To: Aastha Gupta <aastha.gupta4104@gmail.com>
CC: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>,
	"Drokin, Oleg" <oleg.drokin@intel.com>, James Simmons
	<jsimmons@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v4 2/7] staging: lustre: fid: fix line over 80 characters
Thread-Topic: [PATCH v4 2/7] staging: lustre: fid: fix line over 80
 characters
Thread-Index: AQHTSEHv6mQ4YSxOpk6sgIQXi3a4uqL8HfsA
Date: Mon, 30 Oct 2017 01:16:11 +0000
Message-ID: <5C9FEFE6-B967-43CD-9C3A-F64407711115@intel.com>
References: <1508352586-25475-1-git-send-email-aastha.gupta4104@gmail.com>
 <1508352586-25475-3-git-send-email-aastha.gupta4104@gmail.com>
In-Reply-To: <1508352586-25475-3-git-send-email-aastha.gupta4104@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [10.238.139.56]
Content-Type: text/plain; charset="us-ascii"
Content-ID: <C9C62FD02F61864A83A0AE116BFB3868@intel.com>
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








