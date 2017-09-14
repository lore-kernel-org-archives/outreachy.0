X-GM-THRID: 6465611589668044800
X-Received: by 10.99.165.83 with SMTP id r19mr13451090pgu.172.1505410652993;
        Thu, 14 Sep 2017 10:37:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.84.140 with SMTP id t134ls2694352ita.14.gmail; Thu, 14 Sep
 2017 10:37:32 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb6O7uDQTRf662pfheDfANt+o/aZTYmi1WdZmhLZXucdM0wyk1K3NTQt4847xV8Cs95kDBJP
X-Received: by 10.129.159.137 with SMTP id w131mr14218092ywg.48.1505410652152;
        Thu, 14 Sep 2017 10:37:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505410652; cv=none;
        d=google.com; s=arc-20160816;
        b=L6O3/V5h/K3ut0z7WPMQezRofclwI3dgXzV9w9nPKcB4BDHX3F3V2m+9l7En02CMdN
         am2WaP3V24vZzuOl6fFx9vHi660sI3YeJS2455jKgKP0pu6BoZhpM29XyS9hW24+Z78I
         9okhgaHqNlGQTERWf+bmDOM5xV6S+MF1XUDrNyPjOO3/EF3P4vP6EBIhiX4TiE/M/tOX
         HWVfBWSuvgChw7lMXp4lVTrqQEsVmM2JGwGNfeiIeH8Jaz8gHHFjeOIEVFl7GlttkZNc
         1i4abUJHFqBJypitr2LsBFBObBvfca8B+uF0uxyMsrcc5H2lBYx0kxlm3ezqZgcVdGKT
         kFLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:arc-authentication-results;
        bh=OMR4hCqukOiYw0r/ctcqCpPzmcL0NEcPh+baj7zeZyY=;
        b=icncm7PMBPF6H/4Ad+6JuWxRKNlazyLzHZgRCbGR2EYZo8h01atZ9WvlqAcVEHmfcR
         A/bAIe7GPTPKytKsATx3PMPBsC4uBa8CO0+u0RjSA/QtO29JXfDtoDMLQQpRYNq/V7yT
         f6a80n6wFJfMW2OWqYDfFoq4WTZ1GtptFsr10MB0mvNi9WKUd2cezYpd9zTTsuVtuKZS
         Pc5QgoA07zVHdaR3Pen7B3VL3GwDzAQbETVZl1UtY3Wx0kRRewPGasvybnPbsuuQ/tJ4
         KuCPO7xTAwmlNWzJdMO4mQA+RCTwONOAi6EerU0NsENht3QgjcPv/03GEVY2ImujBnmp
         /u6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andreas.dilger@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=andreas.dilger@intel.com
Return-Path: <andreas.dilger@intel.com>
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id b2si36220itg.3.2017.09.14.10.37.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 10:37:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of andreas.dilger@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of andreas.dilger@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=andreas.dilger@intel.com
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga104.jf.intel.com with ESMTP; 14 Sep 2017 10:37:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,394,1500966000"; 
   d="scan'208";a="149252771"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
  by orsmga005.jf.intel.com with ESMTP; 14 Sep 2017 10:37:31 -0700
Received: from fmsmsx111.amr.corp.intel.com (10.18.116.5) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.319.2; Thu, 14 Sep 2017 10:37:30 -0700
Received: from FMSMSX109.amr.corp.intel.com ([169.254.15.81]) by
 fmsmsx111.amr.corp.intel.com ([169.254.12.234]) with mapi id 14.03.0319.002;
 Thu, 14 Sep 2017 10:37:30 -0700
From: "Dilger, Andreas" <andreas.dilger@intel.com>
To: Julia Lawall <julia.lawall@lip6.fr>, Aastha Gupta
	<aastha.gupta4104@gmail.com>
CC: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>,
	"Drokin, Oleg" <oleg.drokin@intel.com>, James Simmons
	<jsimmons@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: fix macro
 definitions warnings
Thread-Topic: [Outreachy kernel] [PATCH] staging: lustre: fix macro
 definitions warnings
Thread-Index: AQHTLVcaFXYpDqtTfUGmsW02b1kJV6K1GvKA
Date: Thu, 14 Sep 2017 17:37:29 +0000
Message-ID: <03DB5EC4-4798-4353-A7E5-1A90D9556752@intel.com>
References: <1505392496-10261-1-git-send-email-aastha.gupta4104@gmail.com>
 <alpine.DEB.2.20.1709141439350.3185@hadrien>
In-Reply-To: <alpine.DEB.2.20.1709141439350.3185@hadrien>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [10.255.83.104]
Content-Type: text/plain; charset="us-ascii"
Content-ID: <39FAD68876FE264799AF0452E092639A@intel.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Return-Path: andreas.dilger@intel.com

On Sep 14, 2017, at 06:43, Julia Lawall <julia.lawall@lip6.fr> wrote:
>=20
>> @@ -1304,7 +1306,7 @@ struct lu_buf {
>> };
>>=20
>> #define DLUBUF "(%p %zu)"
>> -#define PLUBUF(buf) (buf)->lb_buf, (buf)->lb_len
>> +#define PLUBUF(buf) ((buf)->lb_buf, (buf)->lb_len)
>=20
> This does not look right.  () makes something into a single expression.
> While there is a , operator that builds a single expression, it seems muc=
h
> more likely that this is intended to be a pair of adjacent arguments.
>=20
> To be absolutely sure, one should check the usage sites, but as far as I
> can tell this macro has no uses.  So you could just drop it instead.  You
> would need to be sure that the files that include this file still compile=
.
> Dropping this macro should be done in a different patch than the other
> changes, because the issue is not the same at all.

Julia is right - the "DLUBUF" is a printf format with two values, and
"PLUBUF" generates the two arguments from the passed "buf" argument.

That said, I don't see any users of this macro pair, and found only one
possible place where it could even be used, which is in the server code,
so both PLUBUF and DLUBUF should just be removed.  Thanks.

Cheers, Andreas
--
Andreas Dilger
Lustre Principal Architect
Intel Corporation








