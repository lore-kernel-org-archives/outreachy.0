X-GM-THRID: 6464655213388103680
X-Received: by 10.107.33.149 with SMTP id h143mr9145053ioh.50.1505239974336;
        Tue, 12 Sep 2017 11:12:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.81.11 with SMTP id f11ls1142429iob.45.gmail; Tue, 12 Sep
 2017 11:12:53 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBzk/57PG6Xe8I/BPeB9Yovcg2YHlfX5oBsnVLfj/FIR1z0y79Ua+2hThfcy6cb3SLI9Yti
X-Received: by 10.176.27.133 with SMTP id k5mr10785799uai.0.1505239973494;
        Tue, 12 Sep 2017 11:12:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505239973; cv=none;
        d=google.com; s=arc-20160816;
        b=oqMAOH9VUAmWtvFXlJmcw1ttcwWrBsFvrsMCDBsMQnoNDJxAob5DCMWalUukMKPcgY
         Zlh/3c5GE2tyGqnbNr1W+qWiRCgb6LJzZlKjAZdOAFKHpJAXznTw4kp+tCBTB5NvMYP9
         pniQHYl9k8QdcnW3Vxml0KHYGNZ9nUMIqTETmicURS80Xh842Tf36P/+OT3hA608BMMi
         eoov5CQvxwDNIZlo6uMsXHZhhDA6OLJbnRYpLK9TU6PLd5XfJ48egBuMFkCg3z4Lzy2n
         AE/n026kNXmcKoN39EMJcw64MloROu/uAPxylLiyFLwK5dTRLgl3laXv5lvoXec2UirJ
         2kjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :arc-authentication-results;
        bh=X9taz1fL5GvtHt1E9VWGOS2fpqqQ3CVPc4VHlthFesY=;
        b=J+oHnKX7z0splfqt8QPbAPCiI89UToTqCdw0nb1nqiUh8xGFPiJK9C0I/xlQGOORKS
         Bz0xRf5FvXwc2KhXhMGUmZDmAcSAvMT71u9kbTRnnKNkrbSPJYpuzqVm87x606P5GVKy
         ba3n8FqBfKSqQhdcUpGsNJnnkesKCNZxbgMDDGxP3+LQn82zNjG3BLBMwVv/4KUkIhlm
         AxhBdpSnOgDUc6Hlb+siQvdb/57maNa5zdEJIgs3FPo861po8VoaATmf2Su2AdBwhUUi
         4fhGgsBwZgSrXk0ZHU7a94VtIvXRZwm1MFiLiR+1bt0hV4bqzYkdmC9la0re5O6DeqVa
         2ANQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Return-Path: <lars@metafoo.de>
Received: from www381.your-server.de (www381.your-server.de. [78.46.137.84])
        by gmr-mx.google.com with ESMTPS id o71si484651itb.4.2017.09.12.11.12.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Sep 2017 11:12:53 -0700 (PDT)
Received-SPF: neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) client-ip=78.46.137.84;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Received: from [78.47.166.52] (helo=sslproxy04.your-server.de)
	by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.85_2)
	(envelope-from <lars@metafoo.de>)
	id 1drpg0-0003PI-Kz; Tue, 12 Sep 2017 20:12:48 +0200
Received: from [93.104.182.173] (helo=[192.168.178.44])
	by sslproxy04.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-SHA:256)
	(Exim 4.84_2)
	(envelope-from <lars@metafoo.de>)
	id 1drpg0-0007Re-CG; Tue, 12 Sep 2017 20:12:48 +0200
Subject: Re: [Outreachy kernel] [PATCH] Fixed IIO_DEVICE_ATTR_NAMED API to
 take name as a string and added "" around names
To: Daniel Baluta <daniel.baluta@gmail.com>,
 Himanshi Jain <himshijain.hj@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>,
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
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <130cbd01-265e-dafe-02d1-96de4d62ff12@metafoo.de>
Date: Tue, 12 Sep 2017 20:12:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <CAEnQRZDgXj85OTQAoEpij_3bSUnmcx1owNyeg10WCmiBGURURg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.99.2/23818/Tue Sep 12 18:33:57 2017)

On 09/12/2017 09:53 AM, Daniel Baluta wrote:
> Hi Himanshi,
> 
> On Tue, Sep 12, 2017 at 1:43 AM, Himanshi Jain <himshijain.hj@gmail.com> wrote:
>> Fixed IIO_DEVICE_ATTR_NAMED API to take name as a
>> string instead of implicit conversion to string using
>> preprocessors. Added double quotes around names in
>> existing usage of IIO_DEVICE_ATTR_NAMED.
> 
> Always use imperative mood in commit subject (Fix instead of Fixed).
> 
> The subject should contain a tag, which describes the subsytem/files affected.
> 
> I would split this patch into:
> 
> 1) sysfs: iio: Introduce *_ATTR_NAMED
> 
> and explain here why do we need  __ATTR_NAMED and IIO_ATTR_NAMED
> 
> 2) iio: Use new IIO_DEVICE_ATTR_NAMED API
> 
> But of course, lets wait to see Lars and Jonathan's opinions.

Fully agreed with what you wrote.

