X-GM-THRID: 6400173146424475648
X-Received: by 10.107.130.199 with SMTP id m68mr10726528ioi.2.1490184724173;
        Wed, 22 Mar 2017 05:12:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.162.197 with SMTP id l188ls579605ioe.23.gmail; Wed, 22 Mar
 2017 05:12:02 -0700 (PDT)
X-Received: by 10.99.116.88 with SMTP id e24mr3165903pgn.130.1490184722940;
        Wed, 22 Mar 2017 05:12:02 -0700 (PDT)
Return-Path: <andreas.dilger@intel.com>
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id 190si325805pfv.3.2017.03.22.05.12.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Mar 2017 05:12:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of andreas.dilger@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@intel.com;
       spf=pass (google.com: domain of andreas.dilger@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=andreas.dilger@intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=intel;
  t=1490184722; x=1521720722;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=Q00/zQFBnOcmVeIzpJWQOkWQwCsOeklrjpEi+7OiEDw=;
  b=QoakJlcv27qQbZvyLCW/5OIgpDUyb2hnlkcYFtBesgrcjcMJUcR/3Bt5
   iWxAE0hcRK1I1twO6qS3COViFbcn8w==;
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Mar 2017 05:12:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,205,1486454400"; 
   d="scan'208";a="78158819"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
  by orsmga005.jf.intel.com with ESMTP; 22 Mar 2017 05:12:01 -0700
Received: from fmsmsx153.amr.corp.intel.com (10.18.125.6) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.319.2; Wed, 22 Mar 2017 05:12:01 -0700
Received: from FMSMSX109.amr.corp.intel.com ([169.254.15.99]) by
 FMSMSX153.amr.corp.intel.com ([169.254.9.181]) with mapi id 14.03.0319.002;
 Wed, 22 Mar 2017 05:12:00 -0700
From: "Dilger, Andreas" <andreas.dilger@intel.com>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
CC: "Drokin, Oleg" <oleg.drokin@intel.com>, James Simmons
	<jsimmons@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>, LKML
	<linux-kernel@vger.kernel.org>, "outreachy-kernel@googlegroups.com"
	<outreachy-kernel@googlegroups.com>, Luuk Paulussen
	<luuk.paulussen@alliedtelesis.co.nz>, Hamish Martin
	<hamish.martin@alliedtelesis.co.nz>
Subject: Re: [PATCH] staging: media: Replace a bit shift by a use of BIT.
Thread-Topic: [PATCH] staging: media: Replace a bit shift by a use of BIT.
Thread-Index: AQHSosOpSvSwBefRz0W5a8/MmGva46Gg5JKA
Date: Wed, 22 Mar 2017 12:11:59 +0000
Message-ID: <900FF751-5BFD-4B17-855C-6B1C0665B712@intel.com>
References: <20170322042028.GA22848@arushi-HP-Pavilion-Notebook>
In-Reply-To: <20170322042028.GA22848@arushi-HP-Pavilion-Notebook>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [10.254.54.130]
Content-Type: text/plain; charset="us-ascii"
Content-ID: <FE260D7F7B1F1A4DB7C9B8C113C39176@intel.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Return-Path: andreas.dilger@intel.com

On Mar 22, 2017, at 00:20, Arushi Singhal <arushisinghal19971997@gmail.com>=
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

Hi Arushi,
thanks for taking time to contribute to the kernel.  There are a few proble=
ms with
this patch.

Firstly, I'm not sure why you sent this patch to lustre-devel, Oleg, James,=
 and me,
since it has nothing to do with Lustre.  Conversely, the actual maintainer(=
s) of this
code would normally be better suited to review the patch.  This isn't total=
ly clear
in this case since get_maintainer.pl lists another person submitting minor =
cleanups,
but "git log" does return some more likely candidates:
- David Daney <ddaney@caviumnetworks.com> (original author)
- Luuk Paulussen <luuk.paulussen@alliedtelesis.co.nz> (recent non-trivial p=
atcher)
- Kyeong Yoo <kyeong.yoo@alliedtelesis.co.nz> (recent non-trivial reviewer)
- Richard Laing <richard.laing@alliedtelesis.co.nz>  " "
- Chris Packham <chris.packham@alliedtelesis.co.nz>
- Tim Beale <tim.beale@alliedtelesis.co.nz>
- Hamish Martin <hamish.martin@alliedtelesis.co.nz>


Secondly, as mentioned with the other patch you submitted, you need to stop=
 and look
at whether your changes actually make sense.  In this case, I don't think t=
hey do
make sense, and this patch should probably just be abandoned.


> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
> drivers/staging/octeon/ethernet-tx.c | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/staging/octeon/ethernet-tx.c b/drivers/staging/octeo=
n/ethernet-tx.c
> index ff4119e8de42..f00186ac4e27 100644
> --- a/drivers/staging/octeon/ethernet-tx.c
> +++ b/drivers/staging/octeon/ethernet-tx.c
> @@ -381,7 +381,7 @@ int cvm_oct_xmit(struct sk_buff *skb, struct net_devi=
ce *dev)
> 	    (ip_hdr(skb)->version =3D=3D 4) &&
> 	    (ip_hdr(skb)->ihl =3D=3D 5) &&
> 	    ((ip_hdr(skb)->frag_off =3D=3D 0) ||
> -	     (ip_hdr(skb)->frag_off =3D=3D htons(1 << 14))) &&
> +	     (ip_hdr(skb)->frag_off =3D=3D htons(BIT(14)))) &&

In this case, it is checking if the fragment offset in bytes is 16384, rath=
er than doing
a bit comparison, so I don't think the use of BIT() is appropriate here.

> 	    ((ip_hdr(skb)->protocol =3D=3D IPPROTO_TCP) ||
> 	     (ip_hdr(skb)->protocol =3D=3D IPPROTO_UDP))) {
> 		/* Use hardware checksum calc */
> @@ -613,7 +613,7 @@ int cvm_oct_xmit_pow(struct sk_buff *skb, struct net_=
device *dev)
> #endif
> 		work->word2.s.is_frag =3D !((ip_hdr(skb)->frag_off =3D=3D 0) ||
> 					  (ip_hdr(skb)->frag_off =3D=3D
> -					      1 << 14));
> +					      BIT(14)));

Same.

Cheers, Andreas
--
Andreas Dilger
Lustre Principal Architect
Intel Corporation








