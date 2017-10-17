X-GM-THRID: 6473410411176656896
X-Received: by 10.84.217.2 with SMTP id o2mr3783199pli.4.1508280911491;
        Tue, 17 Oct 2017 15:55:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.102.70 with SMTP id a67ls638876pgc.20.gmail; Tue, 17 Oct
 2017 15:55:10 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBsIHFi9Bao2mcFjZckzNR//eKgP/4MD8PwBKjrVDCn/qSQf3F8j8KTJ86+tL8eokOd36mU
X-Received: by 10.98.7.80 with SMTP id b77mr3454241pfd.30.1508280910607;
        Tue, 17 Oct 2017 15:55:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508280910; cv=none;
        d=google.com; s=arc-20160816;
        b=I2J/tkDBnQfrKszsLUQehRwwN/yIfAVk/p+wuX+Wp30p3IiXy3FzEDmwCvOWWKmcSI
         NuaELrGwIfK5b/1uEtxxqlTNRazo3i94Cl3ghN+xwNJBZLoSK/j56Ff/lvHTVg5XLf8/
         Q6xENO7UG07Ht7aYHBYBxRgp2XeuaGp09/LkZ5WUbg3jYh9kSOEivnzcyRvcGaLnicBS
         T+Fm9eMO6qfAT/O20VEm+6yOU32O97zAybQc1cCeYSmxbzWqz41PKn+KJLF8IR5Tfs+6
         spnxQZGgb7j+kNfcb+0R49aZS0VkxXwLZKrXNykhalOuFGf5vSm5f7EMURCzgCAmyc1x
         OjVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:arc-authentication-results;
        bh=+CedYDRRfY58mgSVqDuh9F+U1Gmvu4tnSxx+nEwtI9c=;
        b=nA8kqm7Me2h9c184BUoqKOQHVc7MqpVi0S0+l3nmU+Rx26Qwy1uuup84+oBTo1WpyX
         uD0V3Yliteg4YSAtODYGgE1wIvcPn+xEymdt8qTMFgGUf1hJotkoYRhw3+78gB7cefHm
         /FbA75eaK4sFxmc78SHrYrhswX2TPNSLefLQpbxorAxHtWaYtlaZoJcHNMs/iLoQDVc6
         Z/Wt7gHiObcCRiQ+R3wcWVQLy4ZqMmhcJbTfNQICWhBovlwzZpMplV9L+t6BBCF0Aaos
         P55Q4qzXqq8heYjGWDucHHmQZWLKv91qi9nj0nVQNPQtVIWNz1yPas8zpETQStr2MLdg
         KjWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andreas.dilger@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=andreas.dilger@intel.com
Return-Path: <andreas.dilger@intel.com>
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id z2si611207plk.4.2017.10.17.15.55.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 15:55:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of andreas.dilger@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of andreas.dilger@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=andreas.dilger@intel.com
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Oct 2017 15:55:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,392,1503385200"; 
   d="scan'208";a="139424573"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
  by orsmga004.jf.intel.com with ESMTP; 17 Oct 2017 15:55:10 -0700
Received: from FMSMSX109.amr.corp.intel.com ([169.254.15.12]) by
 FMSMSX103.amr.corp.intel.com ([169.254.2.182]) with mapi id 14.03.0319.002;
 Tue, 17 Oct 2017 15:55:09 -0700
From: "Dilger, Andreas" <andreas.dilger@intel.com>
To: Aastha Gupta <aastha.gupta4104@gmail.com>
CC: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>,
	"Drokin, Oleg" <oleg.drokin@intel.com>, James Simmons
	<jsimmons@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v2 10/10] staging: lustre: lllite: fix multi line
 comments style
Thread-Topic: [PATCH v2 10/10] staging: lustre: lllite: fix multi line
 comments style
Thread-Index: AQHTQxMdvU4D2JUXIEyLynMjWtIIr6LpJScA
Date: Tue, 17 Oct 2017 22:55:08 +0000
Message-ID: <7C8C1B3D-B8DD-4ACE-A6D5-456FA4A718E9@intel.com>
References: <1507782683-12754-1-git-send-email-aastha.gupta4104@gmail.com>
 <1507782683-12754-11-git-send-email-aastha.gupta4104@gmail.com>
In-Reply-To: <1507782683-12754-11-git-send-email-aastha.gupta4104@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [10.252.142.85]
Content-Type: text/plain; charset="us-ascii"
Content-ID: <6448BFF105CA3841961E6F3BC59E265C@intel.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0

On Oct 11, 2017, at 22:31, Aastha Gupta <aastha.gupta4104@gmail.com> wrote:
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








