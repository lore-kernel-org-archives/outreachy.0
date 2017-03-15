X-GM-THRID: 6396125246226694144
X-Received: by 10.129.75.5 with SMTP id y5mr1172570ywa.28.1489568840166;
        Wed, 15 Mar 2017 02:07:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.52.145 with SMTP id b139ls118768ioa.38.gmail; Wed, 15 Mar
 2017 02:07:19 -0700 (PDT)
X-Received: by 10.99.95.197 with SMTP id t188mr1203036pgb.164.1489568839364;
        Wed, 15 Mar 2017 02:07:19 -0700 (PDT)
Return-Path: <andreas.dilger@intel.com>
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id r66si225705pfb.7.2017.03.15.02.07.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Mar 2017 02:07:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of andreas.dilger@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@intel.com;
       spf=pass (google.com: domain of andreas.dilger@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=andreas.dilger@intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=intel;
  t=1489568839; x=1521104839;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=9ksvpCoocovysBGP/2scMwSA35axdQrQR4UVQj3G5VQ=;
  b=wtr1wrRsNjqknt8FEhLanQbxMlabPGTu/0Y8vK6ZozVeBB8TMASWIATG
   haCs/Quv68E1A4LEPwbECwjKv6GDYA==;
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Mar 2017 02:07:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,168,1486454400"; 
   d="scan'208";a="75595236"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
  by orsmga005.jf.intel.com with ESMTP; 15 Mar 2017 02:07:18 -0700
Received: from fmsmsx157.amr.corp.intel.com (10.18.116.73) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.248.2; Wed, 15 Mar 2017 02:07:18 -0700
Received: from FMSMSX109.amr.corp.intel.com ([169.254.15.115]) by
 FMSMSX157.amr.corp.intel.com ([169.254.14.122]) with mapi id 14.03.0248.002;
 Wed, 15 Mar 2017 02:07:18 -0700
From: "Dilger, Andreas" <andreas.dilger@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
CC: sayli karnik <karniksayli1995@gmail.com>,
	"outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>,
	"Drokin, Oleg" <oleg.drokin@intel.com>, James Simmons
	<jsimmons@infradead.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: llite: rw26: Remove
 unused function definition
Thread-Topic: [Outreachy kernel] [PATCH] staging: lustre: llite: rw26:
 Remove unused function definition
Thread-Index: AQHSmjFGRubnLoU3PEOETnRA4lfglqGRrUAAgARqzIA=
Date: Wed, 15 Mar 2017 09:07:17 +0000
Message-ID: <5D9F29B8-FC98-4FE2-B218-4F5173382EE2@intel.com>
References: <20170311063153.GA6625@sayli-HP-15-Notebook-PC>
 <20170312134000.GE27791@kroah.com>
In-Reply-To: <20170312134000.GE27791@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [10.254.2.73]
Content-Type: text/plain; charset="us-ascii"
Content-ID: <C1455CC747973742B3B4E60C348C35C4@intel.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Return-Path: andreas.dilger@intel.com

On Mar 12, 2017, at 07:40, Greg Kroah-Hartman <gregkh@linuxfoundation.org> =
wrote:
>=20
> On Sat, Mar 11, 2017 at 12:01:53PM +0530, sayli karnik wrote:
>> The patch removes unused function definition ll_get_user_pages().
>>=20
>> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
>> ---
>> drivers/staging/lustre/lustre/llite/rw26.c | 26 ------------------------=
--
>> 1 file changed, 26 deletions(-)
>>=20
>> diff --git a/drivers/staging/lustre/lustre/llite/rw26.c b/drivers/stagin=
g/lustre/lustre/llite/rw26.c
>> index d89e795..420f296 100644
>> --- a/drivers/staging/lustre/lustre/llite/rw26.c
>> +++ b/drivers/staging/lustre/lustre/llite/rw26.c
>> @@ -156,32 +156,6 @@ static int ll_releasepage(struct page *vmpage, gfp_=
t gfp_mask)
>>=20
>> #define MAX_DIRECTIO_SIZE (2 * 1024 * 1024 * 1024UL)
>>=20
>> -static inline int ll_get_user_pages(int rw, unsigned long user_addr,
>> -				    size_t size, struct page ***pages,
>> -				    int *max_pages)
>> -{
>> -	int result =3D -ENOMEM;
>> -
>> -	/* set an arbitrary limit to prevent arithmetic overflow */
>> -	if (size > MAX_DIRECTIO_SIZE) {
>> -		*pages =3D NULL;
>> -		return -EFBIG;
>> -	}
>> -
>> -	*max_pages =3D (user_addr + size + PAGE_SIZE - 1) >> PAGE_SHIFT;
>> -	*max_pages -=3D user_addr >> PAGE_SHIFT;
>> -
>> -	*pages =3D libcfs_kvzalloc(*max_pages * sizeof(**pages), GFP_NOFS);
>> -	if (*pages) {
>> -		result =3D get_user_pages_fast(user_addr, *max_pages,
>> -					     (rw =3D=3D READ), *pages);
>> -		if (unlikely(result <=3D 0))
>> -			kvfree(*pages);
>> -	}
>> -
>> -	return result;
>> -}
>> -
>=20
> Should this be deleted?  Given that ll_free_user_pages() is used, that
> implies that this function should also be used somewhere.  Why isn't it?

Al replaced the use of ll_get_user_pages() with iov_iter_get_pages_alloc() =
in
commit 91f79c43d1b54d7154b118860d81b39bad07dfff so it is no longer used.

Cheers, Andreas
--
Andreas Dilger
Lustre Principal Architect
Intel Corporation








