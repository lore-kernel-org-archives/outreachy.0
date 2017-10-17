X-GM-THRID: 6473410411176656896
X-Received: by 10.36.137.212 with SMTP id s203mr3974154itd.6.1508280894019;
        Tue, 17 Oct 2017 15:54:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.134.134 with SMTP id u128ls607806itd.2.canary-gmail; Tue,
 17 Oct 2017 15:54:53 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBdh2i2sQjvlejwpdYtAYqWowYblANfzBlnFDqaBqDEVFqt73zYoswI7UjvOEAhewsJ4yNd
X-Received: by 10.107.17.87 with SMTP id z84mr11090352ioi.51.1508280893329;
        Tue, 17 Oct 2017 15:54:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508280893; cv=none;
        d=google.com; s=arc-20160816;
        b=LTafgSGt34/ft5pNCxM2X0vPj/Mzs1NDJKHol1B/SJhu56I1v1gbswCZBPLTTSwrKr
         v4h9xMyt0wgcFCX+BkoweH82bvlzTvEdmZ+AjEVOMFEs/RhBHK2MdLG0FMoJc6soUvLz
         +f2P5iktRJkpxjyeSkRZPxPWODYn//IZM9qKxzetb040B0rNtOiBFrtSdZ9fML/jALCJ
         l7cKZDuvQvwoIIucg+/a85h3RACwd9hHTsHhKQhaPPWLXxytYuELOxwaHusyaFvtsMzk
         RxSlWh5wfaFY2z1gSX2zGtXeETe72wMMdQy4uZh61ufC2R3aLaoTXHyxj5S2dYxYnacx
         soqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:arc-authentication-results;
        bh=/3jwm3dsgHlpvdS7OyigAT5V6RLniDb1d+Ujn9P6yp4=;
        b=dtxeN/xaxTbjCQd+ln4dYJlUBtaTTIZR0RTIQ3dDt5nd4jIJBm+Vy9fxXhCXR/wnck
         sv5+kdcJpqNCylllnWZSbk0MGRx29VlOiF4OlGRV72clwIJzmBcZG6+QezMAcNfnl6dY
         cFQzkMn8ZZGya7ZU5Jr3xgCrNy6gETitAN+l4ydE5p3MLOLyOyvEEPa2TVl61VqVTlUq
         SNOaFfpAVKGfuoHMt+JEUvaygJ0uE3/23xSZWhKeFRh8+GwxbUkzsSkDC3MZlV6lmd/c
         uIF2UNQKzikGGrOpxV217nT+u+Y5eCFmuIB03f+AqXFbRNSxmag/wDo1xkkO1B8pGe84
         rbuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andreas.dilger@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=andreas.dilger@intel.com
Return-Path: <andreas.dilger@intel.com>
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id d125si152124itg.0.2017.10.17.15.54.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 15:54:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of andreas.dilger@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of andreas.dilger@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=andreas.dilger@intel.com
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Oct 2017 15:54:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,392,1503385200"; 
   d="scan'208";a="1231941388"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
  by fmsmga002.fm.intel.com with ESMTP; 17 Oct 2017 15:54:44 -0700
Received: from fmsmsx102.amr.corp.intel.com (10.18.124.200) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.319.2; Tue, 17 Oct 2017 15:54:43 -0700
Received: from FMSMSX109.amr.corp.intel.com ([169.254.15.12]) by
 FMSMSX102.amr.corp.intel.com ([169.254.10.148]) with mapi id 14.03.0319.002;
 Tue, 17 Oct 2017 15:54:43 -0700
From: "Dilger, Andreas" <andreas.dilger@intel.com>
To: Aastha Gupta <aastha.gupta4104@gmail.com>
CC: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>,
	"Drokin, Oleg" <oleg.drokin@intel.com>, James Simmons
	<jsimmons@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v2 09/10] staging: lustre: llite: fix coding style for
 error messages
Thread-Topic: [PATCH v2 09/10] staging: lustre: llite: fix coding style for
 error messages
Thread-Index: AQHTQxMqozDQZk6olUmYy3ODX3IwYKLpJQgA
Date: Tue, 17 Oct 2017 22:54:42 +0000
Message-ID: <FB5B4ACE-7996-45BF-87A5-4E0C234A2DA5@intel.com>
References: <1507782683-12754-1-git-send-email-aastha.gupta4104@gmail.com>
 <1507782683-12754-10-git-send-email-aastha.gupta4104@gmail.com>
In-Reply-To: <1507782683-12754-10-git-send-email-aastha.gupta4104@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [10.252.142.85]
Content-Type: text/plain; charset="us-ascii"
Content-ID: <E916F0CCF85F6640B15CA9B6B9DAF162@intel.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Return-Path: andreas.dilger@intel.com

On Oct 11, 2017, at 22:31, Aastha Gupta <aastha.gupta4104@gmail.com> wrote:
>=20
> The "DFID" part should be added to the same line as the rest of
> the message, to match current coding style.
>=20
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>

Reviewed-by: Andreas Dilger <andreas.dilger@intel.com>

> ---
> drivers/staging/lustre/lustre/llite/dir.c | 11 +++++------
> 1 file changed, 5 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/staging/lustre/lustre/llite/dir.c b/drivers/staging/=
lustre/lustre/llite/dir.c
> index 58d832d..ec9b1ba 100644
> --- a/drivers/staging/lustre/lustre/llite/dir.c
> +++ b/drivers/staging/lustre/lustre/llite/dir.c
> @@ -734,10 +734,10 @@ static int ll_ioc_copy_start(struct super_block *sb=
, struct hsm_copy *copy)
> 		rc =3D ll_data_version(inode, &data_version, LL_DV_RD_FLUSH);
> 		iput(inode);
> 		if (rc !=3D 0) {
> -			CDEBUG(D_HSM, "Could not read file data version of "
> -				      DFID " (rc =3D %d). Archive request (%#llx) could not be done.=
\n",
> -				      PFID(&copy->hc_hai.hai_fid), rc,
> -				      copy->hc_hai.hai_cookie);
> +			CDEBUG(D_HSM,
> +			       "Could not read file data version of " DFID " (rc =3D %d). Arc=
hive request (%#llx) could not be done.\n",
> +			       PFID(&copy->hc_hai.hai_fid), rc,
> +			       copy->hc_hai.hai_cookie);
> 			hpk.hpk_flags |=3D HP_FLAG_RETRY;
> 			/* hpk_errval must be >=3D 0 */
> 			hpk.hpk_errval =3D -rc;
> @@ -835,8 +835,7 @@ static int ll_ioc_copy_end(struct super_block *sb, st=
ruct hsm_copy *copy)
> 		 */
> 		if ((copy->hc_hai.hai_action =3D=3D HSMA_ARCHIVE) &&
> 		    (copy->hc_data_version !=3D data_version)) {
> -			CDEBUG(D_HSM, "File data version mismatched. File content was changed=
 during archiving. "
> -			       DFID ", start:%#llx current:%#llx\n",
> +			CDEBUG(D_HSM, "File data version mismatched. File content was changed=
 during archiving. " DFID ", start:%#llx current:%#llx\n",
> 			       PFID(&copy->hc_hai.hai_fid),
> 			       copy->hc_data_version, data_version);
> 			/* File was changed, send error to cdt. Do not ask for
> --=20
> 2.7.4
>=20

Cheers, Andreas
--
Andreas Dilger
Lustre Principal Architect
Intel Corporation








