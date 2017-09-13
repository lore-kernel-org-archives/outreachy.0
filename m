X-GM-THRID: 6465168256299696128
X-Received: by 10.28.184.81 with SMTP id i78mr21135wmf.2.1505344430856;
        Wed, 13 Sep 2017 16:13:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.22.27 with SMTP id w27ls22575ljd.38.gmail; Wed, 13 Sep 2017
 16:13:49 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb7d6fAChdywDqI4A6p7mdXxYcK3Zw22WZT8QCvooC1jC34KRO46HkfEyQ3EOM94e2KIfHe3
X-Received: by 10.46.21.27 with SMTP id s27mr1723675ljd.41.1505344429342;
        Wed, 13 Sep 2017 16:13:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505344429; cv=none;
        d=google.com; s=arc-20160816;
        b=drHzKyd1ihFk4dTfz92aRtZbyDFDZxod1Rp6+2/ERrYLbIqMKzati9TbpKsBKgtXy3
         W5y2rDriszqw47oEhe0r+vpjxUCxXDK4tFClE+DzdKqlrxJoJoaulmRxFFXe+MKS595p
         J33rD3aj9HHGow3hQBvxXMKxVUPcZiMDySakYxWWWiDCzdKebabN9fDsH24PNF1IvweL
         +Q1I1ixWTgeJbwMbNy2j1rBz7rVeYD+3bRJbD3B1LXwxZ9zpCQYi7+fs0DeAq6uZvaNt
         88wGvrCJfZylh/AX6rK1RibTYf38iMhp+pSJqPzDe/7J7PSr5SPRcBOnS3zKmNJUaIIm
         bJAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:from:cc:to:subject:content-transfer-encoding
         :mime-version:references:in-reply-to:user-agent:date
         :arc-authentication-results;
        bh=yIJML2xGnr3rj+HmbAKyRWJLQ75Lobig1/ZCjCAWsvk=;
        b=Js7JOG+D1ITmuVGRrxmgoSHupg+w64AEh+1lOlPPbihXN5YmXCvXwjdzmjYywTw050
         fm9f3sU42KsotSHBBZMb48DwrN7iVIr9Huv3FjrXRvd3MbBFGIvmw0au55ktYrmTDBAs
         Ft+NCFxIJJ70932y86W5xyjNdojojkqv2FokliWul+pGyHF1SLAKx/E2XO0LxvWQ91jM
         7tj6/Xo3oc+vLCNVFMhgAAWObNIb/0TPtQGbKFQPGSmYZfT2pKyAwtcOVePWOmyLvngM
         gAKeyA6UFmGrrlkjE3Mm6IN3z+DF56fuAi66Ow1Zvorrt2dMXynnNIsdE37UvJJgccLd
         /T7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jic23@jic23.retrosnub.co.uk designates 2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466 as permitted sender) smtp.mailfrom=jic23@jic23.retrosnub.co.uk
Return-Path: <jic23@jic23.retrosnub.co.uk>
Received: from saturn.retrosnub.co.uk (saturn.retrosnub.co.uk. [2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466])
        by gmr-mx.google.com with ESMTPS id b130si6454wme.0.2017.09.13.16.13.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 16:13:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of jic23@jic23.retrosnub.co.uk designates 2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466 as permitted sender) client-ip=2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jic23@jic23.retrosnub.co.uk designates 2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466 as permitted sender) smtp.mailfrom=jic23@jic23.retrosnub.co.uk
Received: from [172.20.188.179] (unknown [12.145.98.253])
	by saturn.retrosnub.co.uk (Postfix; Retrosnub mail submission) with ESMTPSA id 4D7054062E;
	Thu, 14 Sep 2017 00:13:44 +0100 (BST)
Date: Wed, 13 Sep 2017 13:50:16 -0700
User-Agent: K-9 Mail for Android
In-Reply-To: <5e43ea4d-eab8-c4be-c5dc-2f862578d011@metafoo.de>
References: <cover.1505291907.git.himshijain.hj@gmail.com> <2bc7a124ab925dd2c50aa8c778745d179777d50d.1505291907.git.himshijain.hj@gmail.com> <20170913180310.27cbf1b1@archlinux> <20170913185805.GB26390@kroah.com> <5e43ea4d-eab8-c4be-c5dc-2f862578d011@metafoo.de>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 1/2] include: linux: sysfs: Add __ATTR_NAMED macro
To: Lars-Peter Clausen <lars@metafoo.de>,Greg KH <gregkh@linuxfoundation.org>,Jonathan Cameron <jic23@kernel.org>
CC: Himanshi Jain <himshijain.hj@gmail.com>,devel@driverdev.osuosl.org,daniel.baluta@gmail.com,Michael.Hennerich@analog.com,linux-iio@vger.kernel.org,linux-kernel@vger.kernel.org,nick.desaulniers@gmail.com,outreachy-kernel@googlegroups.com,pmeerw@pmeerw.net,knaack.h@gmx.de
From: Jonathan Cameron <jic23@jic23.retrosnub.co.uk>
Message-ID: <A955BE73-0C63-4316-943D-DF9181CE7AC5@jic23.retrosnub.co.uk>



On 13 September 2017 12:23:31 GMT-07:00, Lars-Peter Clausen <lars@metafoo=
=2Ede> wrote:
>On 09/13/2017 08:58 PM, Greg KH wrote:
>> On Wed, Sep 13, 2017 at 06:03:10PM +0100, Jonathan Cameron wrote:
>>> On Wed, 13 Sep 2017 14:14:07 +0530
>>> Himanshi Jain <himshijain=2Ehj@gmail=2Ecom> wrote:
>>>
>>>> Add __ATTR_NAMED macro similar to __ATTR but taking name as a
>>>> string instead of implicit conversion of argument to string using
>>>> the macro _stringify(_name)=2E
>>>>
>>>> Signed-off-by: Himanshi Jain <himshijain=2Ehj@gmail=2Ecom>
>>>> ---
>>>>  include/linux/sysfs=2Eh | 7 +++++++
>>>>  1 file changed, 7 insertions(+)
>>>>
>>>> diff --git a/include/linux/sysfs=2Eh b/include/linux/sysfs=2Eh
>>>> index aa02c32=2E=2E20321cf 100644
>>>> --- a/include/linux/sysfs=2Eh
>>>> +++ b/include/linux/sysfs=2Eh
>>>> @@ -104,6 +104,13 @@ struct attribute_group {
>>>>  	=2Estore	=3D _store,						\
>>>>  }
>>>> =20
>>>> +#define __ATTR_NAMED(_name, _mode, _show, _store) {			\
>>>
>>> I'm not sure about the naming here=2E  The normal __ATTR macro is also
>>> 'named'=2E  Maybe something as awful as
>>>
>>> __ATTR_STRING_NAME ?=20
>>>
>>> Greg what do you think?
>>=20
>> ick ick ick=2E
>>=20
>>> This is all to allow us to have names with operators in them without
>>> checkpatch complaining about them=2E=2E=2E A worthwhile aim just to st=
op
>>> more people wasting time trying to 'fix' those cases by adding
>spaces=2E
>>=20
>> Yeah, but this really seems "heavy" for just a crazy sysfs name in a
>> macro=2E  Adding a whole new "core" define for that is a hard sell=2E=
=2E=2E
>>=20
>> I also want to get rid of the "generic" __ATTR type macros, and force
>> people to use the proper _RW and friends instead=2E  I don't want to
>add
>> another new one that people will start to use that I later have to
>> change=2E=2E=2E
>>=20
>> So no, I don't like this, how about just changing your macros
>instead?
>> No one else has this problem :)
>
>Nobody else realized they have this problem yet=2E E=2Eg=2E there are a f=
ew
>users
>of __ATTR in block/genhd=2Ec that have the same issue and are likely to
>generate the same false positives from static checkers=2E

For IIO there is the option of moving these over to the core generated ava=
ilable callbacks, but
that won't work in every case and is a more major change=2E  I need to shi=
ft a few more drivers
over to the available callbacks and see how well it works out=2E  Might fi=
nd time to do one in a
 gap between interesting talks this afternoon=2E=2E=2E

If I am feeling really keen I might write this missing docs I promised a w=
hile back on that stuff=2E Jet lag dependant=2E=2E=2E =20

Jonathan
>
>--
>To unsubscribe from this list: send the line "unsubscribe linux-iio" in
>the body of a message to majordomo@vger=2Ekernel=2Eorg
>More majordomo info at  http://vger=2Ekernel=2Eorg/majordomo-info=2Ehtml

--=20
Sent from my Android device with K-9 Mail=2E Please excuse my brevity=2E

