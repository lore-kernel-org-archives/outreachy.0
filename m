X-GM-THRID: 6473410411176656896
X-Received: by 10.101.88.207 with SMTP id e15mr4105000pgu.118.1509326173751;
        Sun, 29 Oct 2017 18:16:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.102.69 with SMTP id a66ls3773669pfc.11.gmail; Sun, 29 Oct
 2017 18:16:13 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+TGAArCH72Djs3a7uJwC3d9m28Aoo6HbQP/fkNQVLfGmmuq1k9CpHaHywRXcOcde7yZDmGF
X-Received: by 10.98.19.155 with SMTP id 27mr4173222pft.29.1509326173043;
        Sun, 29 Oct 2017 18:16:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1509326173; cv=none;
        d=google.com; s=arc-20160816;
        b=MUjirLrQjzQY6icLmezeQOSU7kFVzUNy7JzoQ1rZO/RAR6CCeNYUW4AdYBYlRTPNc0
         fMXBJ+StzAtvoAaAixE3TCvqFwkLdKJWhEXXAoL+i4iWoiOlq6oOs/EeKeCFKegH2yBW
         jaubc3Dq1jgFZ/r10KUTpMfJcT/gsKs7+80P9ie6htaIvSuyJZ0kPjFRZWpqy2MYjsIg
         mTDrkrIeH2jX4q16EpZ5ioE1anSzL99ammqFNzoiiXKWokSnEDClyZPEHFgEN0sKm1EU
         t9sZRFvts1WWSotjfG7V68WUOQ570X7jaksTPv9ANRjukkXqo7Xed8c9njtzxcNtGrT1
         eHmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:arc-authentication-results;
        bh=GgdsPhlXIHoRiBXmldthPABZMRFnW1MSrS3xcb8MQkk=;
        b=meXToFk7shMaSbFWh7/A9bTzinqSTaUNvtebTO177jsa5GRcHzY+/FIjKSl+PQLVtR
         NArXgGAU8ZUehLsvavzmlIrbW89tl5jgByvhEF+6doZvCZLKh45ZFPGXh3bTXlA2hgMj
         hbsQGjzsTTc6NK+o09Z5pS1UOWSX+0g15UKXPgLF/1/of36pc2ro2vci1KnpKWCH/8N1
         N4f6rK+mHWZfSX6QMk7R+FbCvyi5Z7NVjBFvdBBHu7cBrrpgZEBrQnM2avKgaDe1SjeM
         A5EGvew0zeI2irJDCbQY6HNVke4a2cnjFilILjb+xG/2JwgjFnkjnGVwXYF8nc4gXc1N
         wBsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andreas.dilger@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=andreas.dilger@intel.com
Return-Path: <andreas.dilger@intel.com>
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id w23si1004564plk.2.2017.10.29.18.16.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Oct 2017 18:16:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of andreas.dilger@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of andreas.dilger@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=andreas.dilger@intel.com
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 29 Oct 2017 18:16:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,317,1505804400"; 
   d="scan'208";a="329375398"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
  by fmsmga004.fm.intel.com with ESMTP; 29 Oct 2017 18:16:12 -0700
Received: from fmsmsx115.amr.corp.intel.com (10.18.116.19) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.319.2; Sun, 29 Oct 2017 18:16:12 -0700
Received: from FMSMSX109.amr.corp.intel.com ([169.254.15.50]) by
 fmsmsx115.amr.corp.intel.com ([169.254.4.50]) with mapi id 14.03.0319.002;
 Sun, 29 Oct 2017 18:16:12 -0700
From: "Dilger, Andreas" <andreas.dilger@intel.com>
To: Aastha Gupta <aastha.gupta4104@gmail.com>
CC: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>,
	"Drokin, Oleg" <oleg.drokin@intel.com>, James Simmons
	<jsimmons@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v4 6/7] staging: lustre: llite: fix coding style for
 error messages
Thread-Topic: [PATCH v4 6/7] staging: lustre: llite: fix coding style for
 error messages
Thread-Index: AQHTSEH5qu6jKQmpoUaQYgFs/cpVuKL8HgGA
Date: Mon, 30 Oct 2017 01:16:11 +0000
Message-ID: <9CC5D5F1-D094-4FBF-80F1-214E02E7E5FD@intel.com>
References: <1508352586-25475-1-git-send-email-aastha.gupta4104@gmail.com>
 <1508352586-25475-7-git-send-email-aastha.gupta4104@gmail.com>
In-Reply-To: <1508352586-25475-7-git-send-email-aastha.gupta4104@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [10.238.139.56]
Content-Type: text/plain; charset="us-ascii"
Content-ID: <481E0145107F3648AA88FA9729B5A94C@intel.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Return-Path: andreas.dilger@intel.com

On Oct 18, 2017, at 12:49, Aastha Gupta <aastha.gupta4104@gmail.com> wrote:
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








