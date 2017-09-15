X-GM-THRID: 6465879632669310976
X-Received: by 10.129.229.8 with SMTP id s8mr13753539ywl.73.1505460657986;
        Fri, 15 Sep 2017 00:30:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.37.2 with SMTP id l2ls6059391iol.33.gmail; Fri, 15 Sep
 2017 00:30:57 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAE9Fxfz3ygcjdbK09C4pnz5IZYY91hB/AgDXhpTAiryMzKzmeMktFHsMJV9wnlIfQ4XISd
X-Received: by 10.107.82.26 with SMTP id g26mr2626300iob.78.1505460657301;
        Fri, 15 Sep 2017 00:30:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505460657; cv=none;
        d=google.com; s=arc-20160816;
        b=Z1vOxz2BTwHd4q6FpAvdAkDNOnfocO/2K6rKa1trBBYpv0Y0vTaCZRqxXHgzMqgovQ
         Z2WRwYJyj6rXMCKj/7f+iln2vMn3V5n+UzRoRasp/9+MiJLnpf6zPjIrg9o+8lFgL6dh
         Yvi/tixOO9Jjtj+hbisdiaQ+FWraphc7CZptepWB6d9erLgIQCUnWHhHX3aTncTQrptq
         3Pc2NdDDJfEUuRkaKb2ZWoXgbpQgOHfcZShKwtddC4NyMugC16e3T+hBI+2P1AaPeQLk
         E3Wu240FVLZFYkrSBbfXzp3+Iqf2pElr2/taWZVsuBmmkp6EzARwAel2cbdbbnPj6kZF
         Crsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:arc-authentication-results;
        bh=FHSFNmK4/ODFCjLTM7ALDbhLduBrbdDxNhBopXTty6E=;
        b=TMTCkTTdB/6Kg90i1pnQ+bEmbq3kOzxJzRnZuFb23IzhtVi/3ObAQXupruImzHw2KS
         oyilg7gmkNuLZF2hdFGQJVKo546b1yZykh/EJJKWOAlUcav9Odmz6KPW9j+C7psqLVIy
         yhbFtULkMFb8a1CUpokl6QeNBv6xZsi2nyZdYbJd0Azbx+bWO8gsDNhlfQBCT3kTM0dY
         0dMBupHzIMPNPxPmzIfxjLz1sod9UUHdMBLYCJn0Zep5EA8BgLDvHhFYEXxisDmQawtV
         EPOW0IJZiL+qoCngRT6ueM5vRfwLyBuVxJ8w1keA1Fy2F6JGNRA0lxoDkMfi2W2Hv/uo
         gAgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andreas.dilger@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=andreas.dilger@intel.com
Return-Path: <andreas.dilger@intel.com>
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id r78si33302pfb.3.2017.09.15.00.30.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 00:30:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of andreas.dilger@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of andreas.dilger@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=andreas.dilger@intel.com
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Sep 2017 00:30:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,396,1500966000"; 
   d="scan'208";a="1172465464"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
  by orsmga001.jf.intel.com with ESMTP; 15 Sep 2017 00:29:58 -0700
Received: from fmsmsx157.amr.corp.intel.com (10.18.116.73) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.319.2; Fri, 15 Sep 2017 00:29:57 -0700
Received: from FMSMSX109.amr.corp.intel.com ([169.254.15.81]) by
 FMSMSX157.amr.corp.intel.com ([169.254.14.145]) with mapi id 14.03.0319.002;
 Fri, 15 Sep 2017 00:29:57 -0700
From: "Dilger, Andreas" <andreas.dilger@intel.com>
To: Aastha Gupta <aastha.gupta4104@gmail.com>
CC: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>,
	"Drokin, Oleg" <oleg.drokin@intel.com>, James Simmons
	<jsimmons@infradead.org>, Julia Lawall <julia.lawall@lip6.fr>, "Greg
 Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH 0/8] staging: lustre: ldlm: fix line
 over 80 characters
Thread-Topic: [Outreachy kernel] [PATCH 0/8] staging: lustre: ldlm: fix line
 over 80 characters
Thread-Index: AQHTLec819HyFcU0WkWMqgGz4j2c6KK17gOAgAAUYYA=
Date: Fri, 15 Sep 2017 07:29:56 +0000
Message-ID: <3FEE1B99-4424-4310-B224-ECF723457BBE@intel.com>
References: <cover.1505454643.git.aastha.gupta4104@gmail.com>
 <alpine.DEB.2.20.1709150814460.2287@hadrien>
In-Reply-To: <alpine.DEB.2.20.1709150814460.2287@hadrien>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [10.255.83.104]
Content-Type: text/plain; charset="us-ascii"
Content-ID: <AAD7B8A803F4D543BA35F206AE07F8F8@intel.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Return-Path: andreas.dilger@intel.com

On Sep 15, 2017, at 00:16, Julia Lawall <julia.lawall@lip6.fr> wrote:
>=20
>=20
>=20
> On Fri, 15 Sep 2017, Aastha Gupta wrote:
>=20
>> These patches fix checkpatch.pl warnings 'line over 80 characters' in ld=
lm files.
>>=20
>> ------------------------------------------------------------------------=
-
>>=20
>> Aastha Gupta (8):
>>  staging: lustre: ldlm: fix line over 80 characters
>>  staging: lustre: ldlm: fix line over 80 characters
>>  staging: lustre: ldlm: fix line over 80 characters
>>  staging: lustre: ldlm: fix lines over 80 characters
>>  staging: lustre: ldlm: fix lines over 80 characters
>>  staging: lustre: ldlm: fix lines over 80 characters
>>  staging: lustre: ldlm: fix lines over 80 characters
>>  staging: lustre: ldlm: fix lines over 80 characters
>=20
> Your patches all have the same subjects.  That is not allowed.  Eihter pu=
t
> them all into one patch or add more information about the file name in th=
e
> subject line.  But don't include .h or .c

Since these patches are all trivial, and do the same thing, they could just=
 be
a single patch.

Cheers, Andreas

>=20
> julia
>=20
>>=20
>> drivers/staging/lustre/lustre/ldlm/ldlm_extent.c   |  3 +-
>> drivers/staging/lustre/lustre/ldlm/ldlm_flock.c    |  6 ++--
>> drivers/staging/lustre/lustre/ldlm/ldlm_internal.h |  4 ++-
>> drivers/staging/lustre/lustre/ldlm/ldlm_lock.c     | 33 +++++++++++-----=
-
>> drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c    |  6 ++--
>> drivers/staging/lustre/lustre/ldlm/ldlm_pool.c     |  6 ++--
>> drivers/staging/lustre/lustre/ldlm/ldlm_request.c  | 41 ++++++++++++++--=
------
>> drivers/staging/lustre/lustre/ldlm/ldlm_resource.c |  3 +-
>> 8 files changed, 67 insertions(+), 35 deletions(-)
>>=20
>> --
>> 2.7.4
>>=20
>> --
>> You received this message because you are subscribed to the Google Group=
s "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send a=
n email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msg=
id/outreachy-kernel/cover.1505454643.git.aastha.gupta4104%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>=20

Cheers, Andreas
--
Andreas Dilger
Lustre Principal Architect
Intel Corporation








