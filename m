X-GM-THRID: 6464655213388103680
X-Received: by 10.31.59.10 with SMTP id i10mr8949288vka.20.1505240062214;
        Tue, 12 Sep 2017 11:14:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.29.11 with SMTP id 11ls1635939itj.13.canary-gmail; Tue, 12
 Sep 2017 11:14:21 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb7RJEbzwlPazznvkdXRiHTmjzf9TRVtLji2Jaiis20EjO6/gMIU54aGAlBrk6FRm8UIg5cS
X-Received: by 10.98.60.215 with SMTP id b84mr8486415pfk.17.1505240061470;
        Tue, 12 Sep 2017 11:14:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505240061; cv=none;
        d=google.com; s=arc-20160816;
        b=mgHbidI7V0UmgH0cs5dyN9duuF6n6AXIIEPW39D+TuinXuKkoHXz08mOIVkurbF4te
         WlTcOzJC5+HwHVQ35voMo46qsVgHKCqKs6hQo+BA5C4vWrJCzbeRq64Pkst8ZuGyDX5t
         nxUzKnMFUZONnyr0ev4btwsjebcO4JsMxa1TTcjloI2vja3E8jOo76McgznBKvtIUhgJ
         vf718ZmXApoQs+F63T5Nq80EHt58pA9CVT30bqpvBp05sv8RW7FMJO37uk/myFGnQ0+w
         nQeGj86OSExJNhE1XpJB7EnrgXQODe7C1A09fa3s87gLbtE3BD5Cl0kC9Qdq+gTVb+A1
         Mp2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :arc-authentication-results;
        bh=lBFUCF+dFyIwanTTwpqttbv9kDG0D62EH3whchzDkCk=;
        b=kldslkPdBWX+hynFxOYysrPVt/q4uu4/jKsoi7wx48TDf2HqSrzDtfWKdvLSBP7/Cx
         toQSQ8c8gNdveUH3nqSQQ+lB6/VLPNvsZ2XYbSuas8awhSKFYNXp6CX0yWx6L75/nkhT
         aPXYUuRoKs2OJGoBnzT83lT2dm2mbVQ8pOGEFwSa/cyUPUsHk/CQNfSGfHkZy7uXRr3z
         LjQbacgwpYL4RKwIbg3O9S7vI5GpLY6WDsvh0hlwphvzMT2HinEYRXgtRupMAvQIRsm0
         Jv8teRnrOvfx/t46yWtIC6n/kjwpeSqmGtg67mERojPiPdqlgQ7aYWKAhRD+5kbEI5rz
         IiGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Return-Path: <lars@metafoo.de>
Received: from www381.your-server.de (www381.your-server.de. [78.46.137.84])
        by gmr-mx.google.com with ESMTPS id d140si445692itd.6.2017.09.12.11.14.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Sep 2017 11:14:21 -0700 (PDT)
Received-SPF: neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) client-ip=78.46.137.84;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Received: from [78.47.166.52] (helo=sslproxy04.your-server.de)
	by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.85_2)
	(envelope-from <lars@metafoo.de>)
	id 1drphT-0003Ty-96; Tue, 12 Sep 2017 20:14:19 +0200
Received: from [93.104.182.173] (helo=[192.168.178.44])
	by sslproxy04.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-SHA:256)
	(Exim 4.84_2)
	(envelope-from <lars@metafoo.de>)
	id 1drphS-00042Y-Vl; Tue, 12 Sep 2017 20:14:19 +0200
Subject: Re: [Outreachy kernel] [PATCH] Fixed IIO_DEVICE_ATTR_NAMED API to
 take name as a string and added "" around names
To: Julia Lawall <julia.lawall@lip6.fr>, himanshi <himshijain.hj@gmail.com>
Cc: Daniel Baluta <daniel.baluta@gmail.com>,
 outreachy-kernel <outreachy-kernel@googlegroups.com>,
 "Hennerich, Michael" <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 driverdev <devel@driverdev.osuosl.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 nick.desaulniers@gmail.com
References: <20170911224348.GA13259@himanshi-Inspiron-5558>
 <CAEnQRZDgXj85OTQAoEpij_3bSUnmcx1owNyeg10WCmiBGURURg@mail.gmail.com>
 <20170912180132.GB4607@himanshi-Inspiron-5558>
 <alpine.DEB.2.20.1709122004550.3149@hadrien>
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <629315d5-6de4-4531-7f25-e1764b9a0513@metafoo.de>
Date: Tue, 12 Sep 2017 20:14:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.20.1709122004550.3149@hadrien>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.99.2/23818/Tue Sep 12 18:33:57 2017)

On 09/12/2017 08:06 PM, Julia Lawall wrote:
> 
> 
> On Tue, 12 Sep 2017, himanshi wrote:
> 
>> Thanks for the review Daniel! I will change the imperative mood for the commit
>> message once the other changes are finalised too and as suggested by Julia,
>> would try to make the description specific than general.
>>
>> I tried to think of adding subsystem to the commit subject but could not
>> conclude any because of the files involved.
>> I like the idea of splitting the patch into 2 as you suggested but I
>> have a doubt that adding the new MACROS to different sysfs files can be put into 1
>> patch with the subsystem you mentioned but changing the existing
>> IIO_DEVICE_ATTR_NAMED to use IIO_ATTR_NAMED (sysfs file again) would be included
>> in the second patch if I am not wrong. So would it be fine to keep the
>> subsystem as iio for the second patch?
> 
> Indeed, the kernel has to compile after every commit.  Unless you change
> the name of the macro, to allow the old and new versions to co-exist, it
> seems hard to break up such a patch.

We can still split things into two parts. One patch introducing __ATTR_NAMED
in the device driver core and then another patch making use of that macro in
the IIO subsystem.

