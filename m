X-GM-THRID: 6465168256299696128
X-Received: by 10.200.51.28 with SMTP id t28mr8375787qta.17.1505330623374;
        Wed, 13 Sep 2017 12:23:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.37.2 with SMTP id l2ls3330029iol.33.gmail; Wed, 13 Sep
 2017 12:23:42 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBeXRPmIC0x+gN/zS+tl9+LDQ2jsEsfNGj9xKrSIODV2xclZukOqf7AiQhETKa/R9whIN6F
X-Received: by 10.107.136.151 with SMTP id s23mr11480490ioi.65.1505330622376;
        Wed, 13 Sep 2017 12:23:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505330622; cv=none;
        d=google.com; s=arc-20160816;
        b=veUDG6ip1VfojzlbpoTLaBKsIyc+FcLVwJITeOKfei/IPqc/Sa/0NRLH7M/+wIKGsR
         ewhkhmglXCl85TEbL6yW2G88D8MePPtVRV4Uabm2SZAbWRAsud63farFFeBJ7PtM7Uvv
         UgZ84YVzo4Vd759/i7pC36vxFa3UmnM1Un7hutmf1jrHSqZ9V1lJAqjuAFANfhemnwJG
         cKtNqG1SxHIjRjHQ92ydvyLyHc0NOKKzUDLqebDtShxPgJM4aJviZ5XoiiJ6uaDldi8m
         +2voKowwFtgMeRIFe9SF+woF715jkF9N5/q4V7gkxSpyAZIudE5AQKJv3jxNfAAPY/i0
         +A2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :arc-authentication-results;
        bh=tvHx3IOI2nrqRIXhtg7WefdD/zsyQRJxISczUtZ1sdU=;
        b=CuxcI0TMdV7Jl8p+k+mAeo7R+KAnem/tutWc7jEHMeRplJCWXJzJoQYskA+tdY/cEF
         qPBWv9sSiNJ4cr0lgehfkLmlST4oU5onjZHrsQ04SeRZ6+rQdrX8BelHqepQwlk5tiuo
         3ZJUBOjCFG3rgEqGn2rT6JTtrzJLFf3v3g6aUkTS3J+8WZ8p7kAyznanRRyrAVDkf4iN
         x+Gkpe5BdrkozdYCbWIkFZ0TD06e3gcdlrC4trNBZYlKZQd9qfHSEdwG9WtHeDK/Ala1
         t4yTbTgsu9ika+SixCfEsHuvmikWh2gpLcWw2qlVXFnFmxA+598RBTiWCNQcBsC3hWAJ
         x7Ig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Return-Path: <lars@metafoo.de>
Received: from www381.your-server.de (www381.your-server.de. [78.46.137.84])
        by gmr-mx.google.com with ESMTPS id m186si61224itd.9.2017.09.13.12.23.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 12:23:42 -0700 (PDT)
Received-SPF: neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) client-ip=78.46.137.84;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Received: from [88.198.220.130] (helo=sslproxy01.your-server.de)
	by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.85_2)
	(envelope-from <lars@metafoo.de>)
	id 1dsDG0-0007T8-V7; Wed, 13 Sep 2017 21:23:33 +0200
Received: from [93.104.181.100] (helo=[192.168.178.44])
	by sslproxy01.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-SHA:256)
	(Exim 4.84_2)
	(envelope-from <lars@metafoo.de>)
	id 1dsDG0-0008Mk-Lu; Wed, 13 Sep 2017 21:23:32 +0200
Subject: Re: [PATCH v2 1/2] include: linux: sysfs: Add __ATTR_NAMED macro
To: Greg KH <gregkh@linuxfoundation.org>, Jonathan Cameron <jic23@kernel.org>
Cc: Himanshi Jain <himshijain.hj@gmail.com>, devel@driverdev.osuosl.org,
 daniel.baluta@gmail.com, Michael.Hennerich@analog.com,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 nick.desaulniers@gmail.com, outreachy-kernel@googlegroups.com,
 pmeerw@pmeerw.net, knaack.h@gmx.de
References: <cover.1505291907.git.himshijain.hj@gmail.com>
 <2bc7a124ab925dd2c50aa8c778745d179777d50d.1505291907.git.himshijain.hj@gmail.com>
 <20170913180310.27cbf1b1@archlinux> <20170913185805.GB26390@kroah.com>
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <5e43ea4d-eab8-c4be-c5dc-2f862578d011@metafoo.de>
Date: Wed, 13 Sep 2017 21:23:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20170913185805.GB26390@kroah.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.99.2/23824/Wed Sep 13 18:33:38 2017)

On 09/13/2017 08:58 PM, Greg KH wrote:
> On Wed, Sep 13, 2017 at 06:03:10PM +0100, Jonathan Cameron wrote:
>> On Wed, 13 Sep 2017 14:14:07 +0530
>> Himanshi Jain <himshijain.hj@gmail.com> wrote:
>>
>>> Add __ATTR_NAMED macro similar to __ATTR but taking name as a
>>> string instead of implicit conversion of argument to string using
>>> the macro _stringify(_name).
>>>
>>> Signed-off-by: Himanshi Jain <himshijain.hj@gmail.com>
>>> ---
>>>  include/linux/sysfs.h | 7 +++++++
>>>  1 file changed, 7 insertions(+)
>>>
>>> diff --git a/include/linux/sysfs.h b/include/linux/sysfs.h
>>> index aa02c32..20321cf 100644
>>> --- a/include/linux/sysfs.h
>>> +++ b/include/linux/sysfs.h
>>> @@ -104,6 +104,13 @@ struct attribute_group {
>>>  	.store	= _store,						\
>>>  }
>>>  
>>> +#define __ATTR_NAMED(_name, _mode, _show, _store) {			\
>>
>> I'm not sure about the naming here.  The normal __ATTR macro is also
>> 'named'.  Maybe something as awful as
>>
>> __ATTR_STRING_NAME ? 
>>
>> Greg what do you think?
> 
> ick ick ick.
> 
>> This is all to allow us to have names with operators in them without
>> checkpatch complaining about them... A worthwhile aim just to stop
>> more people wasting time trying to 'fix' those cases by adding spaces.
> 
> Yeah, but this really seems "heavy" for just a crazy sysfs name in a
> macro.  Adding a whole new "core" define for that is a hard sell...
> 
> I also want to get rid of the "generic" __ATTR type macros, and force
> people to use the proper _RW and friends instead.  I don't want to add
> another new one that people will start to use that I later have to
> change...
> 
> So no, I don't like this, how about just changing your macros instead?
> No one else has this problem :)

Nobody else realized they have this problem yet. E.g. there are a few users
of __ATTR in block/genhd.c that have the same issue and are likely to
generate the same false positives from static checkers.


