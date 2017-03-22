X-GM-THRID: 6400147141672566784
X-Received: by 10.13.245.67 with SMTP id e64mr20834093ywf.127.1490184733639;
        Wed, 22 Mar 2017 05:12:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.52.205 with SMTP id t13ls1929113otd.8.gmail; Wed, 22 Mar
 2017 05:12:13 -0700 (PDT)
X-Received: by 10.237.43.131 with SMTP id e3mr5774202qtd.44.1490184733149;
        Wed, 22 Mar 2017 05:12:13 -0700 (PDT)
Return-Path: <andreas.dilger@intel.com>
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id 190si325905pfv.3.2017.03.22.05.12.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Mar 2017 05:12:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of andreas.dilger@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@intel.com;
       spf=pass (google.com: domain of andreas.dilger@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=andreas.dilger@intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=intel;
  t=1490184732; x=1521720732;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=cFsKprAhAMH9OqKH9ZBb4FBTu5lVuaurjTQ8nsx8afQ=;
  b=eyKDaMb8RfW7vHvZV5i34xSk16shXRvJBzhotEAa81uR2rjKoFm0y5bg
   1wtp0FRXKtRhrphgetlhlKWvnvYfsw==;
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Mar 2017 05:12:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,205,1486454400"; 
   d="scan'208";a="78158851"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
  by orsmga005.jf.intel.com with ESMTP; 22 Mar 2017 05:12:12 -0700
Received: from FMSMSX109.amr.corp.intel.com ([169.254.15.99]) by
 fmsmsx104.amr.corp.intel.com ([169.254.3.122]) with mapi id 14.03.0319.002;
 Wed, 22 Mar 2017 05:12:12 -0700
From: "Dilger, Andreas" <andreas.dilger@intel.com>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
CC: "Drokin, Oleg" <oleg.drokin@intel.com>, James Simmons
	<jsimmons@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"lustre-devel@lists.lustre.org" <lustre-devel@lists.lustre.org>,
	"devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH] staging: lustre: Replace a bit shift by a use of BIT.
Thread-Topic: [PATCH] staging: lustre: Replace a bit shift by a use of BIT.
Thread-Index: AQHSorWUJXYM4QRhU0W8UJ3XDL8FaKGhOv0A
Date: Wed, 22 Mar 2017 12:12:11 +0000
Message-ID: <FE801B69-BCDE-4A58-B61D-B33E46826D5F@intel.com>
References: <20170322023933.GA11339@arushi-HP-Pavilion-Notebook>
In-Reply-To: <20170322023933.GA11339@arushi-HP-Pavilion-Notebook>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [10.254.54.130]
Content-Type: text/plain; charset="us-ascii"
Content-ID: <980CDE00E7012241B0242FE2FC35F50F@intel.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0

On Mar 21, 2017, at 22:39, Arushi Singhal <arushisinghal19971997@gmail.com>=
 wrote:
>=20
> This patch replaces bit shifting on 1 with the BIT(x) macro.
> This was done with coccinelle:
> @@
> constant c;
> @@
>=20
> -1 << c
> +BIT(c)

Did you take the time to look at what this Coccinelle script actually did, =
to see
if it actually makes sense?  Some of the cases where this replacement was d=
one
makes sense because a specific bit is being accessed (i.e. a bitmask).  Els=
ewhere,
it doesn't make sense to use BIT() to specify numeric values (e.g. PAGE_SHI=
FT,
1 << 12 =3D 1024, etc) since they are not bitmasks.

> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
> drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c           | 2 +-
> drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c        | 8 ++++---=
-
> drivers/staging/lustre/lnet/klnds/socklnd/socklnd_modparams.c | 2 +-
> drivers/staging/lustre/lnet/lnet/lib-ptl.c                    | 4 ++--
> drivers/staging/lustre/lnet/lnet/net_fault.c                  | 8 ++++---=
-
> drivers/staging/lustre/lustre/llite/lproc_llite.c             | 4 ++--
> drivers/staging/lustre/lustre/obdclass/lustre_handles.c       | 2 +-
> drivers/staging/lustre/lustre/osc/osc_request.c               | 2 +-
> 8 files changed, 16 insertions(+), 16 deletions(-)
>=20
> diff --git a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c b/driver=
s/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
> index 79321e4aaf30..449f04f125b7 100644
> --- a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
> +++ b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
> @@ -2241,7 +2241,7 @@ static int kiblnd_hdev_get_attr(struct kib_hca_dev =
*hdev)
> 	 * matching that of the native system
> 	 */
> 	hdev->ibh_page_shift =3D PAGE_SHIFT;
> -	hdev->ibh_page_size  =3D 1 << PAGE_SHIFT;
> +	hdev->ibh_page_size  =3D BIT(PAGE_SHIFT);

This should just be replaced with "PAGE_SIZE".

> 	hdev->ibh_page_mask  =3D ~((__u64)hdev->ibh_page_size - 1);
>=20
> 	hdev->ibh_mr_size =3D hdev->ibh_ibdev->attrs.max_mr_size;
> diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c b/dri=
vers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
> index eaa4399e6a2e..5bef8a7e053b 100644
> --- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
> +++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
> @@ -1906,14 +1906,14 @@ ksocknal_connect(struct ksock_route *route)
> 		if (retry_later) /* needs reschedule */
> 			break;
>=20
> -		if (wanted & (1 << SOCKLND_CONN_ANY)) {
> +		if (wanted & (BIT(SOCKLND_CONN_ANY))) {

There shouldn't be any need to put parenthesis around (BIT(x)) here, or
any of the cases below, or the BIT macro is broken.  But besides that, the
use of BIT() here looks OK.

> 			type =3D SOCKLND_CONN_ANY;
> -		} else if (wanted & (1 << SOCKLND_CONN_CONTROL)) {
> +		} else if (wanted & (BIT(SOCKLND_CONN_CONTROL))) {
> 			type =3D SOCKLND_CONN_CONTROL;
> -		} else if (wanted & (1 << SOCKLND_CONN_BULK_IN)) {
> +		} else if (wanted & (BIT(SOCKLND_CONN_BULK_IN))) {
> 			type =3D SOCKLND_CONN_BULK_IN;
> 		} else {
> -			LASSERT(wanted & (1 << SOCKLND_CONN_BULK_OUT));
> +			LASSERT(wanted & (BIT(SOCKLND_CONN_BULK_OUT)));
> 			type =3D SOCKLND_CONN_BULK_OUT;
> 		}
>=20
> diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_modparams.=
c b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_modparams.c
> index fc7eec83ac07..2d1e3479cf7e 100644
> --- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_modparams.c
> +++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_modparams.c
> @@ -71,7 +71,7 @@ static int typed_conns =3D 1;
> module_param(typed_conns, int, 0444);
> MODULE_PARM_DESC(typed_conns, "use different sockets for bulk");
>=20
> -static int min_bulk =3D 1 << 10;
> +static int min_bulk =3D BIT(10);

This is a scalar value and not a bitmask.  It could just be "1024", but usi=
ng
BIT() is not correct.

> module_param(min_bulk, int, 0644);
> MODULE_PARM_DESC(min_bulk, "smallest 'large' message");
>=20
> diff --git a/drivers/staging/lustre/lnet/lnet/lib-ptl.c b/drivers/staging=
/lustre/lnet/lnet/lib-ptl.c
> index 63cce0c4a065..b980c669705e 100644
> --- a/drivers/staging/lustre/lnet/lnet/lib-ptl.c
> +++ b/drivers/staging/lustre/lnet/lnet/lib-ptl.c
> @@ -332,7 +332,7 @@ lnet_mt_test_exhausted(struct lnet_match_table *mtabl=
e, int pos)
> 	LASSERT(pos <=3D LNET_MT_HASH_IGNORE);
> 	/* mtable::mt_mhash[pos] is marked as exhausted or not */
> 	bmap =3D &mtable->mt_exhausted[pos >> LNET_MT_BITS_U64];
> -	pos &=3D (1 << LNET_MT_BITS_U64) - 1;
> +	pos &=3D (BIT(LNET_MT_BITS_U64)) - 1;

The use of BIT() above is probably not correct.  This is creating a mask to=
 align
pos to a multiple of (1 << LNET_MT_BITS_U64), and IMHO BIT() shouldn't be u=
sed
just any time a value is being shifted but rather only when a one-bit mask =
is needed.

Conversely, the below usage could be converted to use the macro since this =
is
actually a bitmask:

       return *bmap & BIT(pos);

> 	return (*bmap & (1ULL << pos));
> }
> @@ -347,7 +347,7 @@ lnet_mt_set_exhausted(struct lnet_match_table *mtable=
, int pos, int exhausted)
>=20
> 	/* set mtable::mt_mhash[pos] as exhausted/non-exhausted */
> 	bmap =3D &mtable->mt_exhausted[pos >> LNET_MT_BITS_U64];
> -	pos &=3D (1 << LNET_MT_BITS_U64) - 1;
> +	pos &=3D (BIT(LNET_MT_BITS_U64)) - 1;
>=20
> 	if (!exhausted)
> 		*bmap &=3D ~(1ULL << pos);

Ditto.

> diff --git a/drivers/staging/lustre/lnet/lnet/net_fault.c b/drivers/stagi=
ng/lustre/lnet/lnet/net_fault.c
> index 18183cbb9859..e83761a77d22 100644
> --- a/drivers/staging/lustre/lnet/lnet/net_fault.c
> +++ b/drivers/staging/lustre/lnet/lnet/net_fault.c
> @@ -997,10 +997,10 @@ lnet_fault_ctl(int opc, struct libcfs_ioctl_data *d=
ata)
> int
> lnet_fault_init(void)
> {
> -	BUILD_BUG_ON(LNET_PUT_BIT !=3D 1 << LNET_MSG_PUT);
> -	BUILD_BUG_ON(LNET_ACK_BIT !=3D 1 << LNET_MSG_ACK);
> -	BUILD_BUG_ON(LNET_GET_BIT !=3D 1 << LNET_MSG_GET);
> -	BUILD_BUG_ON(LNET_REPLY_BIT !=3D 1 << LNET_MSG_REPLY);
> +	BUILD_BUG_ON(LNET_PUT_BIT !=3D BIT(LNET_MSG_PUT));
> +	BUILD_BUG_ON(LNET_ACK_BIT !=3D BIT(LNET_MSG_ACK));
> +	BUILD_BUG_ON(LNET_GET_BIT !=3D BIT(LNET_MSG_GET));
> +	BUILD_BUG_ON(LNET_REPLY_BIT !=3D BIT(LNET_MSG_REPLY));

This looks reasonable at first glance, though on further thought it seems k=
ind of
pointless since this is really:

#defined LET_PUT_BIT BIT(LNET_MSG_PUT)

       BUILD_BUG_ON(BIT(LNET_MSG_PUT) !=3D BIT(LNET_MSG_PUT))

so it is just checking that the macro's value is the same when called two t=
imes.
I'd suggest just getting rid of these BUILD_BUG_ON() checks completely=20

> diff --git a/drivers/staging/lustre/lustre/llite/lproc_llite.c b/drivers/=
staging/lustre/lustre/llite/lproc_llite.c
> index 40f1fcf8b5c0..366833dd8aa3 100644
> --- a/drivers/staging/lustre/lustre/llite/lproc_llite.c
> +++ b/drivers/staging/lustre/lustre/llite/lproc_llite.c
> @@ -1308,7 +1308,7 @@ static void ll_display_extents_info(struct ll_rw_ex=
tents_info *io_extents,
> 			   r, pct(r, read_tot), pct(read_cum, read_tot),
> 			   w, pct(w, write_tot), pct(write_cum, write_tot));
> 		start =3D end;
> -		if (start =3D=3D 1 << 10) {
> +		if (start =3D=3D BIT(10)) {

This should just be 1024, or could be left as-is left as-is.

> 			start =3D 1;
> 			units +=3D 10;
> 			unitp++;
> @@ -1506,7 +1506,7 @@ void ll_rw_stats_tally(struct ll_sb_info *sbi, pid_=
t pid,
> 		lprocfs_oh_clear(&io_extents->pp_extents[cur].pp_w_hist);
> 	}
>=20
> -	for (i =3D 0; (count >=3D (1 << LL_HIST_START << i)) &&
> +	for (i =3D 0; (count >=3D (BIT(LL_HIST_START) << i)) &&

This is also not a bitmask, but rather a scalar value.

> 	     (i < (LL_HIST_MAX - 1)); i++)
> 		;
> 	if (rw =3D=3D 0) {
> diff --git a/drivers/staging/lustre/lustre/obdclass/lustre_handles.c b/dr=
ivers/staging/lustre/lustre/obdclass/lustre_handles.c
> index c9445e5ec271..11e32b5174f2 100644
> --- a/drivers/staging/lustre/lustre/obdclass/lustre_handles.c
> +++ b/drivers/staging/lustre/lustre/obdclass/lustre_handles.c
> @@ -49,7 +49,7 @@ static struct handle_bucket {
> 	struct list_head	head;
> } *handle_hash;
>=20
> -#define HANDLE_HASH_SIZE (1 << 16)
> +#define HANDLE_HASH_SIZE (BIT(16))

Also not a bitmask, but a scalar value.

> #define HANDLE_HASH_MASK (HANDLE_HASH_SIZE - 1)
>=20
> /*
> diff --git a/drivers/staging/lustre/lustre/osc/osc_request.c b/drivers/st=
aging/lustre/lustre/osc/osc_request.c
> index d8aa3fb468c7..8739abf639a7 100644
> --- a/drivers/staging/lustre/lustre/osc/osc_request.c
> +++ b/drivers/staging/lustre/lustre/osc/osc_request.c
> @@ -2847,7 +2847,7 @@ static int __init osc_init(void)
> 	register_shrinker(&osc_cache_shrinker);
>=20
> 	/* This is obviously too much memory, only prevent overflow here */
> -	if (osc_reqpool_mem_max >=3D 1 << 12 || osc_reqpool_mem_max =3D=3D 0) {
> +	if (osc_reqpool_mem_max >=3D BIT(12) || osc_reqpool_mem_max =3D=3D 0) {

Also a scalar value.  Could be 4096.


Cheers, Andreas



