X-GM-THRID: 6400147141672566784
X-Received: by 10.36.211.88 with SMTP id n85mr1198932itg.6.1490301873459;
        Thu, 23 Mar 2017 13:44:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.47.2 with SMTP id j2ls4707978itj.20.canary-gmail; Thu, 23
 Mar 2017 13:44:32 -0700 (PDT)
X-Received: by 10.99.117.70 with SMTP id f6mr1402481pgn.91.1490301872634;
        Thu, 23 Mar 2017 13:44:32 -0700 (PDT)
Return-Path: <andreas.dilger@intel.com>
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id a3si18199pfb.2.2017.03.23.13.44.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Mar 2017 13:44:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of andreas.dilger@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@intel.com;
       spf=pass (google.com: domain of andreas.dilger@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=andreas.dilger@intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=intel;
  t=1490301872; x=1521837872;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=6MlM3pS/h3zSLzMji9zECOgQ/Bt56CvDZc2InQ7U+wU=;
  b=C4vI0/xQjjszaL0mUODZz5FHcteI9XKhmrcXCTz7RC9kgwwBH5lzfFVB
   bx7x673u12yPh9C3R1sJb7IhmGEP4Q==;
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Mar 2017 13:44:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,211,1486454400"; 
   d="scan'208";a="70119016"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
  by orsmga004.jf.intel.com with ESMTP; 23 Mar 2017 13:44:20 -0700
Received: from fmsmsx153.amr.corp.intel.com (10.18.125.6) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.319.2; Thu, 23 Mar 2017 13:43:59 -0700
Received: from FMSMSX109.amr.corp.intel.com ([169.254.15.83]) by
 FMSMSX153.amr.corp.intel.com ([169.254.9.6]) with mapi id 14.03.0319.002;
 Thu, 23 Mar 2017 13:43:59 -0700
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
Thread-Index: AQHSorWUJXYM4QRhU0W8UJ3XDL8FaKGhOv0AgAIhUQA=
Date: Thu, 23 Mar 2017 20:43:59 +0000
Message-ID: <B070C8EE-1F72-4D6B-A80E-C33DB22151ED@intel.com>
References: <20170322023933.GA11339@arushi-HP-Pavilion-Notebook>
 <FE801B69-BCDE-4A58-B61D-B33E46826D5F@intel.com>
In-Reply-To: <FE801B69-BCDE-4A58-B61D-B33E46826D5F@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [10.255.66.79]
Content-Type: text/plain; charset="us-ascii"
Content-ID: <6E6772234CB189468F4F41A343F12FA2@intel.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Return-Path: andreas.dilger@intel.com

On Mar 22, 2017, at 06:12, Dilger, Andreas <andreas.dilger@intel.com> wrote=
:
>=20
> On Mar 21, 2017, at 22:39, Arushi Singhal <arushisinghal19971997@gmail.co=
m> wrote:
>>=20
>> This patch replaces bit shifting on 1 with the BIT(x) macro.
>> This was done with coccinelle:
[snip]
>> diff --git a/drivers/staging/lustre/lnet/lnet/net_fault.c b/drivers/stag=
ing/lustre/lnet/lnet/net_fault.c
>> index 18183cbb9859..e83761a77d22 100644
>> --- a/drivers/staging/lustre/lnet/lnet/net_fault.c
>> +++ b/drivers/staging/lustre/lnet/lnet/net_fault.c
>> @@ -997,10 +997,10 @@ lnet_fault_ctl(int opc, struct libcfs_ioctl_data *=
data)
>> int
>> lnet_fault_init(void)
>> {
>> -	BUILD_BUG_ON(LNET_PUT_BIT !=3D 1 << LNET_MSG_PUT);
>> -	BUILD_BUG_ON(LNET_ACK_BIT !=3D 1 << LNET_MSG_ACK);
>> -	BUILD_BUG_ON(LNET_GET_BIT !=3D 1 << LNET_MSG_GET);
>> -	BUILD_BUG_ON(LNET_REPLY_BIT !=3D 1 << LNET_MSG_REPLY);
>> +	BUILD_BUG_ON(LNET_PUT_BIT !=3D BIT(LNET_MSG_PUT));
>> +	BUILD_BUG_ON(LNET_ACK_BIT !=3D BIT(LNET_MSG_ACK));
>> +	BUILD_BUG_ON(LNET_GET_BIT !=3D BIT(LNET_MSG_GET));
>> +	BUILD_BUG_ON(LNET_REPLY_BIT !=3D BIT(LNET_MSG_REPLY));
>=20
> This looks reasonable at first glance, though on further thought it seems=
 kind of
> pointless since this is really:
>=20
> #defined LET_PUT_BIT BIT(LNET_MSG_PUT)
>=20
>       BUILD_BUG_ON(BIT(LNET_MSG_PUT) !=3D BIT(LNET_MSG_PUT))
>=20
> so it is just checking that the macro's value is the same when called two=
 times.
> I'd suggest just getting rid of these BUILD_BUG_ON() checks completely .

Arushi, it would be great if you could submit a patch to remove the above
BUILD_BUG_ON() lines completely.  I don't think they have any value anymore=
.

Cheers, Andreas
--
Andreas Dilger
Lustre Principal Architect
Intel Corporation








