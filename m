X-GM-THRID: 6401028562338447360
X-Received: by 10.99.122.8 with SMTP id v8mr3448676pgc.96.1490386218618;
        Fri, 24 Mar 2017 13:10:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.59.194 with SMTP id k60ls6011353otc.34.gmail; Fri, 24 Mar
 2017 13:10:18 -0700 (PDT)
X-Received: by 10.31.114.6 with SMTP id n6mr2647798vkc.6.1490386218188;
        Fri, 24 Mar 2017 13:10:18 -0700 (PDT)
Return-Path: <andreas.dilger@intel.com>
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id s67si696536pfs.4.2017.03.24.13.10.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Mar 2017 13:10:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of andreas.dilger@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@intel.com;
       spf=pass (google.com: domain of andreas.dilger@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=andreas.dilger@intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=intel;
  t=1490386218; x=1521922218;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=zHYC1tx94dUd8eS7I4kGCYaBkjTnl4pfuLC9KHmAK/k=;
  b=GC0wA30qVgJump7HqXyiqptppBLfEaA1Nas5qMusnWjsVDvUWYroJojr
   euCCK7NyWVqg7KJROPg1eo2E9YGvfQ==;
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Mar 2017 13:10:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,216,1486454400"; 
   d="scan'208";a="70391333"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
  by orsmga004.jf.intel.com with ESMTP; 24 Mar 2017 13:10:17 -0700
Received: from fmsmsx126.amr.corp.intel.com (10.18.125.43) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.319.2; Fri, 24 Mar 2017 13:10:17 -0700
Received: from FMSMSX109.amr.corp.intel.com ([169.254.15.83]) by
 FMSMSX126.amr.corp.intel.com ([169.254.1.127]) with mapi id 14.03.0319.002;
 Fri, 24 Mar 2017 13:10:17 -0700
From: "Dilger, Andreas" <andreas.dilger@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
CC: Arushi Singhal <arushisinghal19971997@gmail.com>, "Drokin, Oleg"
	<oleg.drokin@intel.com>, James Simmons <jsimmons@infradead.org>, lustre-devel
	<lustre-devel@lists.lustre.org>, "devel@driverdev.osuosl.org"
	<devel@driverdev.osuosl.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "outreachy-kernel@googlegroups.com"
	<outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH] staging: lustre: Remove redundant code
Thread-Topic: [PATCH] staging: lustre: Remove redundant code
Thread-Index: AQHSpJNii76Tx9AJcUqBXYmKYFF0vaGkddqAgABrmYA=
Date: Fri, 24 Mar 2017 20:10:16 +0000
Message-ID: <9D55D2DC-3CEB-471E-B37F-1721D1B328DA@intel.com>
References: <20170324113952.GA31427@arushi-HP-Pavilion-Notebook>
 <20170324134459.GA26275@kroah.com>
In-Reply-To: <20170324134459.GA26275@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [10.254.110.27]
Content-Type: text/plain; charset="us-ascii"
Content-ID: <BAFAE8BD197B88408185597DBB143164@intel.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Return-Path: andreas.dilger@intel.com

On Mar 24, 2017, at 07:44, Greg Kroah-Hartman <gregkh@linuxfoundation.org> =
wrote:
>=20
> On Fri, Mar 24, 2017 at 05:09:53PM +0530, Arushi Singhal wrote:
>> Remove the code which do not have any value.
>>=20
>> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
>> ---
>> drivers/staging/lustre/lnet/lnet/net_fault.c | 5 -----
>> 1 file changed, 5 deletions(-)
>>=20
>> diff --git a/drivers/staging/lustre/lnet/lnet/net_fault.c b/drivers/stag=
ing/lustre/lnet/lnet/net_fault.c
>> index 18183cbb9859..b60261db9e67 100644
>> --- a/drivers/staging/lustre/lnet/lnet/net_fault.c
>> +++ b/drivers/staging/lustre/lnet/lnet/net_fault.c
>> @@ -997,11 +997,6 @@ lnet_fault_ctl(int opc, struct libcfs_ioctl_data *d=
ata)
>> int
>> lnet_fault_init(void)
>> {
>> -	BUILD_BUG_ON(LNET_PUT_BIT !=3D 1 << LNET_MSG_PUT);
>> -	BUILD_BUG_ON(LNET_ACK_BIT !=3D 1 << LNET_MSG_ACK);
>> -	BUILD_BUG_ON(LNET_GET_BIT !=3D 1 << LNET_MSG_GET);
>> -	BUILD_BUG_ON(LNET_REPLY_BIT !=3D 1 << LNET_MSG_REPLY);
>=20
> Why does this not have any value?  How are you ensuring that these
> requirements are now being met?

It was my recommendation to remove these checks, though on closer review I =
might have
been a bit premature.  For some reason I thought the LNET_*_BIT constants w=
ere defined
in terms of LNET_MSG_*, but I see they are not.

In conjunction with this change, the definition of LNET_*_BIT should be cha=
nged to be
defined in terms of the LNET_MSG_* constants:

 #define LNET_PUT_BIT BIT(LNET_MSG_PUT)
 #define LNET_ACK_BIT BIT(LNET_MSG_ACK)
 #define LNET_GET_BIT BIT(LNET_MSG_GET)
 #define LNET_REPLY_BIT BIT(LNET_MSG_REPLY)

The alternative would be to remove the LNET_*_BIT constants and use BIT(LNE=
T_MSG_*)
directly in the code, since that is easy enough to read compared to (1 << L=
NET_MSG_*)
everywhere.  There don't seem to be a lot of users, so this wouldn't be a g=
iant patch.

Cheers, Andreas
--
Andreas Dilger
Lustre Principal Architect
Intel Corporation








