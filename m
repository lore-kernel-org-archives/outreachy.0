X-GM-THRID: 6402939984420012032
X-Received: by 10.25.80.88 with SMTP id z24mr210719lfj.29.1490804681568;
        Wed, 29 Mar 2017 09:24:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.33.12 with SMTP id h12ls142994ljh.28.gmail; Wed, 29 Mar
 2017 09:24:39 -0700 (PDT)
X-Received: by 10.25.67.80 with SMTP id m16mr211421lfj.27.1490804679967;
        Wed, 29 Mar 2017 09:24:39 -0700 (PDT)
Return-Path: <jic23@jic23.retrosnub.co.uk>
Received: from saturn.retrosnub.co.uk (saturn.retrosnub.co.uk. [2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466])
        by gmr-mx.google.com with ESMTPS id e72si534423wma.0.2017.03.29.09.24.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 09:24:39 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of jic23@jic23.retrosnub.co.uk designates 2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466 as permitted sender) client-ip=2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of jic23@jic23.retrosnub.co.uk designates 2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466 as permitted sender) smtp.mailfrom=jic23@jic23.retrosnub.co.uk
Received: from [10.145.60.63] (82-132-232-254.dab.02.net [82.132.232.254])
	by saturn.retrosnub.co.uk (Postfix; Retrosnub mail submission) with ESMTPSA id 46D8C40621;
	Wed, 29 Mar 2017 17:24:38 +0100 (BST)
Date: Wed, 29 Mar 2017 17:24:36 +0100
User-Agent: K-9 Mail for Android
In-Reply-To: <alpine.DEB.2.20.1703291736300.2989@hadrien>
References: <20170329151712.GA5651@arushi-HP-Pavilion-Notebook> <alpine.DEB.2.20.1703291736300.2989@hadrien>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Outreachy kernel] [RESEND PATCH] staging: iio: Remove extra Parenthesis
To: Julia Lawall <julia.lawall@lip6.fr>,Arushi Singhal <arushisinghal19971997@gmail.com>
CC: outreachy-kernel@googlegroups.com,Lars-Peter Clausen <lars@metafoo.de>,Michael Hennerich <Michael.Hennerich@analog.com>,Jonathan Cameron <jic23@kernel.org>,Hartmut Knaack <knaack.h@gmx.de>,Peter Meerwald-Stadler <pmeerw@pmeerw.net>,Greg Kroah-Hartman <gregkh@linuxfoundation.org>,linux-iio@vger.kernel.org,devel@driverdev.osuosl.org,linux-kernel@vger.kernel.org
From: Jonathan Cameron <jic23@jic23.retrosnub.co.uk>
Message-ID: <FF3FE5AC-E990-4D1F-88C7-2468665C6393@jic23.retrosnub.co.uk>



On 29 March 2017 16:38:28 BST, Julia Lawall <julia=2Elawall@lip6=2Efr> wro=
te:
>
>
>On Wed, 29 Mar 2017, Arushi Singhal wrote:
>
>> Remove the extra parenthesis remove the checkpatch issue=2E
>
>Is this a patch on the current state of the staging tree?  When I do a
>pull and then look at the code, the line numbers are all off=2E
>Furthermore, there are not calls to BIT with parentheses around them,
>so
>it looks like this is a patch on the result of another patch that you
>sent
>that was not accepted=2E
>
>When Greg says resend what was not picked up, he doesn't mean resend it
>as
>is, but reapply the patch to the current state of the kernel, and if it
>still applies correctly, send the result=2E

I picked this up on Saturday as I had already pushed out the IIO togreg br=
anch with the original patch
and I try to never rebase that other than fast forwards=2E

So didn't need a resend, but patch was originally correct in this case=2E

At this time a cycle i tend to send pulls to Greg about every two weeks so=
 there can be a bit of
 lag in IIO patches getting to the staging tree=2E

Jonathan
>
>julia
>
>>
>> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail=2Ecom>
>> ---
>>  drivers/staging/iio/cdc/ad7746=2Ec | 16 ++++++++--------
>>  1 file changed, 8 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/staging/iio/cdc/ad7746=2Ec
>b/drivers/staging/iio/cdc/ad7746=2Ec
>> index 033a41fd9bee=2E=2Eb4afc12f827f 100644
>> --- a/drivers/staging/iio/cdc/ad7746=2Ec
>> +++ b/drivers/staging/iio/cdc/ad7746=2Ec
>> @@ -50,10 +50,10 @@
>>  #define AD7746_STATUS_RDYCAP		BIT(0)
>>
>>  /* Capacitive Channel Setup Register Bit Designations
>(AD7746_REG_CAP_SETUP) */
>> -#define AD7746_CAPSETUP_CAPEN		(BIT(7))
>> -#define AD7746_CAPSETUP_CIN2		(BIT(6)) /* AD7746 only */
>> -#define AD7746_CAPSETUP_CAPDIFF		(BIT(5))
>> -#define AD7746_CAPSETUP_CACHOP		(BIT(0))
>> +#define AD7746_CAPSETUP_CAPEN		BIT(7)
>> +#define AD7746_CAPSETUP_CIN2		BIT(6) /* AD7746 only */
>> +#define AD7746_CAPSETUP_CAPDIFF		BIT(5)
>> +#define AD7746_CAPSETUP_CACHOP		BIT(0)
>>
>>  /* Voltage/Temperature Setup Register Bit Designations
>(AD7746_REG_VT_SETUP) */
>>  #define AD7746_VTSETUP_VTEN		(1 << 7)
>> @@ -61,9 +61,9 @@
>>  #define AD7746_VTSETUP_VTMD_EXT_TEMP	(1 << 5)
>>  #define AD7746_VTSETUP_VTMD_VDD_MON	(2 << 5)
>>  #define AD7746_VTSETUP_VTMD_EXT_VIN	(3 << 5)
>> -#define AD7746_VTSETUP_EXTREF		(BIT(4))
>> -#define AD7746_VTSETUP_VTSHORT		(BIT(1))
>> -#define AD7746_VTSETUP_VTCHOP		(BIT(0))
>> +#define AD7746_VTSETUP_EXTREF		BIT(4)
>> +#define AD7746_VTSETUP_VTSHORT		BIT(1)
>> +#define AD7746_VTSETUP_VTCHOP		BIT(0)
>>
>>  /* Excitation Setup Register Bit Designations (AD7746_REG_EXC_SETUP)
>*/
>>  #define AD7746_EXCSETUP_CLKCTRL		BIT(7)
>> @@ -87,7 +87,7 @@
>>  #define AD7746_CONF_MODE_GAIN_CAL	(6 << 0)
>>
>>  /* CAPDAC Register Bit Designations (AD7746_REG_CAPDACx) */
>> -#define AD7746_CAPDAC_DACEN		(BIT(7))
>> +#define AD7746_CAPDAC_DACEN		BIT(7)
>>  #define AD7746_CAPDAC_DACP(x)		((x) & 0x7F)
>>
>>  /*
>> --
>> 2=2E11=2E0
>>
>> --
>> You received this message because you are subscribed to the Google
>Groups "outreachy-kernel" group=2E
>> To unsubscribe from this group and stop receiving emails from it,
>send an email to outreachy-kernel+unsubscribe@googlegroups=2Ecom=2E
>> To post to this group, send email to
>outreachy-kernel@googlegroups=2Ecom=2E
>> To view this discussion on the web visit
>https://groups=2Egoogle=2Ecom/d/msgid/outreachy-kernel/20170329151712=2EG=
A5651%40arushi-HP-Pavilion-Notebook=2E
>> For more options, visit https://groups=2Egoogle=2Ecom/d/optout=2E
>>

--=20
Sent from my Android device with K-9 Mail=2E Please excuse my brevity=2E

