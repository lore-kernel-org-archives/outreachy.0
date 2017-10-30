X-GM-THRID: 6473410411176656896
X-Received: by 10.84.176.129 with SMTP id v1mr3626588plb.34.1509326173769;
        Sun, 29 Oct 2017 18:16:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.101.78.193 with SMTP id w1ls3775273pgq.27.gmail; Sun, 29 Oct
 2017 18:16:12 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+ShuMz4xQ7jknygCOohrYmkiWBU2qV2UN34yCZE4Co/xi8iScyF0Cm+KALegso4yL12SsT2
X-Received: by 10.84.177.36 with SMTP id w33mr3633107plb.31.1509326172855;
        Sun, 29 Oct 2017 18:16:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1509326172; cv=none;
        d=google.com; s=arc-20160816;
        b=WbRbfoIX7rN/sLnvY5j0NLKAVFfyZUC6jG/HkjbitTTpTmBAPPUZJQ/c27w4d6zrmp
         MwGMgdS7OxU27Ax2axRAGtClUn9nAzpJ7QJTUSLtVNzvosty0Vr6sOOLx+Zyut7IJO/m
         vaSCE3na+GLQEwQgNBTufycLfejmGbFftJe7ZcK1ajpnp1klfuV+fygwh/zp9MLHNZqt
         WG9Vs92u7+5DWQC1RElhenMdPjL/sXqbg+MPDYQnGw4+MDkKTwGWkeViMwe4nr73PTU7
         607rHu+30AfcnimLItmo8VuHOLxPYiaP1f+tNHCs7qfBe+nwa19O2BynVHdEtrKh2F4t
         ijUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:arc-authentication-results;
        bh=XAm+DSjYHoNIyuGNHcXPZ1lZaD+CU2sf4kos1MDPEcs=;
        b=h/J+vjoyeXxRLFlPiIqCRPptsvgO3qajJ6sSEch4ccUThYffTmnh50uWC+gO0UItpL
         VUMLHKgfgNJPib3chUTKnTO4uVfX5sLhUrUeqfjQSkZbWIXj9TiDMmQNcJ68NilTo3Wu
         M4dPwaueRJBlK9W+yi8Ie5Ne+fHx5581zA3qMH08AC7hkV0rR5VRZCQjekL/qsEJREGV
         3J5OWi2++cJLHikXK4ee+qpyJIFflmHeLr2JW+voRk6u4/kf9zmRk+Wlmf7nen4jQSSF
         eBNXwwnAq38fctcxDl8OIRPC+3cK6aWNCuy+Hym7g3z2RDaOT659oFkTRIs5fEXMvHZe
         xhNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andreas.dilger@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=andreas.dilger@intel.com
Return-Path: <andreas.dilger@intel.com>
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id w23si1004564plk.2.2017.10.29.18.16.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Oct 2017 18:16:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of andreas.dilger@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of andreas.dilger@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=andreas.dilger@intel.com
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 29 Oct 2017 18:16:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,317,1505804400"; 
   d="scan'208";a="329375395"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
  by fmsmga004.fm.intel.com with ESMTP; 29 Oct 2017 18:16:12 -0700
Received: from fmsmsx112.amr.corp.intel.com (10.18.116.6) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.319.2; Sun, 29 Oct 2017 18:16:12 -0700
Received: from FMSMSX109.amr.corp.intel.com ([169.254.15.50]) by
 FMSMSX112.amr.corp.intel.com ([169.254.5.121]) with mapi id 14.03.0319.002;
 Sun, 29 Oct 2017 18:16:11 -0700
From: "Dilger, Andreas" <andreas.dilger@intel.com>
To: Aastha Gupta <aastha.gupta4104@gmail.com>
CC: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>,
	"Drokin, Oleg" <oleg.drokin@intel.com>, James Simmons
	<jsimmons@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v4 7/7] staging: lustre: lllite: fix multi line comments
 style
Thread-Topic: [PATCH v4 7/7] staging: lustre: lllite: fix multi line
 comments style
Thread-Index: AQHTSEH63Qd8iY8SFkeFmWTWhRDiZqL63ckA
Date: Mon, 30 Oct 2017 01:16:10 +0000
Message-ID: <8F806F75-A6EB-47C0-9BC2-38D0EFB68D01@intel.com>
References: <1508352586-25475-1-git-send-email-aastha.gupta4104@gmail.com>
 <1508352586-25475-8-git-send-email-aastha.gupta4104@gmail.com>
In-Reply-To: <1508352586-25475-8-git-send-email-aastha.gupta4104@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [10.238.139.56]
Content-Type: text/plain; charset="us-ascii"
Content-ID: <67D029B34C68704C9F065835E3745296@intel.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Return-Path: andreas.dilger@intel.com

On Oct 18, 2017, at 12:49, Aastha Gupta <aastha.gupta4104@gmail.com> wrote:
>=20
> This patch fixes checkpatch.pl warnings:
>=20
> WARNING: Block comments should align the * on each line
>=20
> WARNING: Block comments use a trailing */ on a separate line
>=20
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>

Reviewed-by: Andreas Dilger <andreas.dilger@intel.com>

> ---
> drivers/staging/lustre/lustre/llite/file.c           | 4 ++--
> drivers/staging/lustre/lustre/llite/llite_internal.h | 5 +++--
> drivers/staging/lustre/lustre/llite/rw.c             | 3 ++-
> 3 files changed, 7 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/staging/lustre/lustre/llite/file.c b/drivers/staging=
/lustre/lustre/llite/file.c
> index eee9bed..bbfc675 100644
> --- a/drivers/staging/lustre/lustre/llite/file.c
> +++ b/drivers/staging/lustre/lustre/llite/file.c
> @@ -386,8 +386,8 @@ static int ll_intent_file_open(struct dentry *de, voi=
d *lmm, int lmmsize,
> 	ll_finish_md_op_data(op_data);
> 	if (rc =3D=3D -ESTALE) {
> 		/* reason for keep own exit path - don`t flood log
> -		* with messages with -ESTALE errors.
> -		*/
> +		 * with messages with -ESTALE errors.
> +		 */
> 		if (!it_disposition(itp, DISP_OPEN_OPEN) ||
> 		    it_open_error(DISP_OPEN_OPEN, itp))
> 			goto out;
> diff --git a/drivers/staging/lustre/lustre/llite/llite_internal.h b/drive=
rs/staging/lustre/lustre/llite/llite_internal.h
> index fc1d3f5..b553f9a 100644
> --- a/drivers/staging/lustre/lustre/llite/llite_internal.h
> +++ b/drivers/staging/lustre/lustre/llite/llite_internal.h
> @@ -392,7 +392,8 @@ enum stats_track_type {
> #define LL_SBI_XATTR_CACHE    0x80000 /* support for xattr cache */
> #define LL_SBI_NOROOTSQUASH	0x100000 /* do not apply root squash */
> #define LL_SBI_ALWAYS_PING	0x200000 /* always ping even if server
> -					  * suppress_pings */
> +					  * suppress_pings
> +					  */
>=20
> #define LL_SBI_FLAGS {	\
> 	"nolck",	\
> @@ -1199,7 +1200,7 @@ typedef enum llioc_iter (*llioc_callback_t)(struct =
inode *inode,
>  * Return value:
>  *      A magic pointer will be returned if success;
>  *      otherwise, NULL will be returned.
> - * */
> + */
> void *ll_iocontrol_register(llioc_callback_t cb, int count, unsigned int =
*cmd);
> void ll_iocontrol_unregister(void *magic);
>=20
> diff --git a/drivers/staging/lustre/lustre/llite/rw.c b/drivers/staging/l=
ustre/lustre/llite/rw.c
> index b6371c4..4fa9f9b 100644
> --- a/drivers/staging/lustre/lustre/llite/rw.c
> +++ b/drivers/staging/lustre/lustre/llite/rw.c
> @@ -888,7 +888,8 @@ static void ras_update(struct ll_sb_info *sbi, struct=
 inode *inode,
>=20
> 	/* The initial ras_window_len is set to the request size.  To avoid
> 	 * uselessly reading and discarding pages for random IO the window is
> -	 * only increased once per consecutive request received. */
> +	 * only increased once per consecutive request received.
> +	 */
> 	if ((ras->ras_consecutive_requests > 1 || stride_detect) &&
> 	    !ras->ras_request_index)
> 		ras_increase_window(inode, ras, ra);
> --=20
> 2.7.4
>=20

Cheers, Andreas
--
Andreas Dilger
Lustre Principal Architect
Intel Corporation








