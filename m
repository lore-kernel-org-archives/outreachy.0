X-GM-THRID: 6465168256299696128
X-Received: by 10.28.54.30 with SMTP id d30mr92652wma.6.1505823228532;
        Tue, 19 Sep 2017 05:13:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.31.138 with SMTP id f132ls1201095wmf.14.canary-gmail; Tue,
 19 Sep 2017 05:13:47 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBV8HZ0pRZl3+EorlGWTeMVkFaGXPSHFCOloie0qjFsOwDrv5piTJAsrk76rMnXeHI8+pP+
X-Received: by 10.28.199.138 with SMTP id x132mr85340wmf.8.1505823227634;
        Tue, 19 Sep 2017 05:13:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505823227; cv=none;
        d=google.com; s=arc-20160816;
        b=tS0vVuGKk5mDOlHR9fGppwiWnrlWo2Pdfy7t9RJRu9AItO9i6qHsUgr5n+E5agLt4D
         uM8yWN5EVRJxqPF+zB29N/b823+/skNI+zIAJ6OKRHePTwRKgJpUrgYU7hExMa6iqmRQ
         vDWDpFgxBgsD/TfNn0Bv3IQj7TgN8wHS5zMTIpQDsWJPD+ZUqRxfeTx5GJNx48V3j7FF
         Lf0NzhOqhQ3SmZEFVCPGbs3hvp7+I5uPjFm80DRchxdCml9T7azZJejJDypOwD77/iWw
         vSDb+15U0gjd2plficCgp16g2MnAXYLf5CEy+vrRv6b9He6XyGtcOTeLj2riEioGjBoP
         iJSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :arc-authentication-results;
        bh=rE1AJ9zVMm/V12GhXZ0RcCpzTCgChXnshH7dkoSIuw8=;
        b=HX8Y/qCzGPpxDofU08N8drkiD6YoDe+39dpTsN5LybF7OsIBUp2ArxJ3qgiaCoLEM0
         ImCgSg9I98RAQgP2uHQpe+UonSqJRayN4FXByytSdMJOsp5eDFGxUSuiV8FlwOsBW3Ov
         HHibro/aX7rkSOKBwVE95IlQrteAfPmk4i01ua4MdsdhG8dzIAA2njUSWDkd3FFY2RUw
         YhFPpGbvQWpwb/CXO19Q5yllmkQ/9FQ8xSSNYMSzgntZs11rKcbVg+Ptpq8+B4gY2Wd/
         fzuDGfPY/b0hBEJEoJfFaZ9ZWYvBZ5Z90vtF7AZfNAOz0hPjI8jd90K5FPupdbCZtUF1
         EySA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Return-Path: <lars@metafoo.de>
Received: from www381.your-server.de (www381.your-server.de. [78.46.137.84])
        by gmr-mx.google.com with ESMTPS id b62si97931wmd.3.2017.09.19.05.13.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Sep 2017 05:13:47 -0700 (PDT)
Received-SPF: neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) client-ip=78.46.137.84;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Received: from [78.47.166.52] (helo=sslproxy04.your-server.de)
	by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.85_2)
	(envelope-from <lars@metafoo.de>)
	id 1duHPK-00054D-1A; Tue, 19 Sep 2017 14:13:42 +0200
Received: from [2003:86:2c3f:7000:8200:bff:fe9b:6612]
	by sslproxy04.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-SHA:256)
	(Exim 4.84_2)
	(envelope-from <lars@metafoo.de>)
	id 1duHPJ-0002Cf-Q5; Tue, 19 Sep 2017 14:13:41 +0200
Subject: Re: [PATCH v2 1/2] include: linux: sysfs: Add __ATTR_NAMED macro
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Jonathan Cameron <jic23@kernel.org>, devel@driverdev.osuosl.org,
 daniel.baluta@gmail.com, pmeerw@pmeerw.net, Michael.Hennerich@analog.com,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 nick.desaulniers@gmail.com, outreachy-kernel@googlegroups.com,
 Himanshi Jain <himshijain.hj@gmail.com>, knaack.h@gmx.de
References: <cover.1505291907.git.himshijain.hj@gmail.com>
 <2bc7a124ab925dd2c50aa8c778745d179777d50d.1505291907.git.himshijain.hj@gmail.com>
 <20170913180310.27cbf1b1@archlinux> <20170913185805.GB26390@kroah.com>
 <5e43ea4d-eab8-c4be-c5dc-2f862578d011@metafoo.de>
 <20170913212952.GD9288@kroah.com>
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <50ec5543-bb7d-1e9c-b735-224f39d454d0@metafoo.de>
Date: Tue, 19 Sep 2017 14:13:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20170913212952.GD9288@kroah.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.99.2/23852/Tue Sep 19 06:45:05 2017)

On 09/13/2017 11:29 PM, Greg KH wrote:
> On Wed, Sep 13, 2017 at 09:23:31PM +0200, Lars-Peter Clausen wrote:
>> On 09/13/2017 08:58 PM, Greg KH wrote:
>>> On Wed, Sep 13, 2017 at 06:03:10PM +0100, Jonathan Cameron wrote:
>>>> On Wed, 13 Sep 2017 14:14:07 +0530
>>>> Himanshi Jain <himshijain.hj@gmail.com> wrote:
>>>>
>>>>> Add __ATTR_NAMED macro similar to __ATTR but taking name as a
>>>>> string instead of implicit conversion of argument to string using
>>>>> the macro _stringify(_name).
>>>>>
>>>>> Signed-off-by: Himanshi Jain <himshijain.hj@gmail.com>
>>>>> ---
>>>>>  include/linux/sysfs.h | 7 +++++++
>>>>>  1 file changed, 7 insertions(+)
>>>>>
>>>>> diff --git a/include/linux/sysfs.h b/include/linux/sysfs.h
>>>>> index aa02c32..20321cf 100644
>>>>> --- a/include/linux/sysfs.h
>>>>> +++ b/include/linux/sysfs.h
>>>>> @@ -104,6 +104,13 @@ struct attribute_group {
>>>>>  	.store	= _store,						\
>>>>>  }
>>>>>  
>>>>> +#define __ATTR_NAMED(_name, _mode, _show, _store) {			\
>>>>
>>>> I'm not sure about the naming here.  The normal __ATTR macro is also
>>>> 'named'.  Maybe something as awful as
>>>>
>>>> __ATTR_STRING_NAME ? 
>>>>
>>>> Greg what do you think?
>>>
>>> ick ick ick.
>>>
>>>> This is all to allow us to have names with operators in them without
>>>> checkpatch complaining about them... A worthwhile aim just to stop
>>>> more people wasting time trying to 'fix' those cases by adding spaces.
>>>
>>> Yeah, but this really seems "heavy" for just a crazy sysfs name in a
>>> macro.  Adding a whole new "core" define for that is a hard sell...
>>>
>>> I also want to get rid of the "generic" __ATTR type macros, and force
>>> people to use the proper _RW and friends instead.  I don't want to add
>>> another new one that people will start to use that I later have to
>>> change...
>>>
>>> So no, I don't like this, how about just changing your macros instead?
>>> No one else has this problem :)
>>
>> Nobody else realized they have this problem yet. E.g. there are a few users
>> of __ATTR in block/genhd.c that have the same issue and are likely to
>> generate the same false positives from static checkers.
> 
> Then fix the broken static checkers :)

The static checkers aren't broken, the macro is. It takes a string
parameter, but instead of a string it is passed as an expression and then
transformed to string using preprocessor magic in the macro. That's not very
good semantics. And hence this gets detected as a false positive, because
nobody expects such strange behavior.


