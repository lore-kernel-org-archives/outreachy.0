X-GM-THRID: 6391488728330665984
X-Received: by 10.25.145.17 with SMTP id t17mr2063761lfd.23.1488482098130;
        Thu, 02 Mar 2017 11:14:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.83.87 with SMTP id t23ls799655ljd.19.gmail; Thu, 02 Mar
 2017 11:14:57 -0800 (PST)
X-Received: by 10.25.40.17 with SMTP id o17mr1913933lfo.25.1488482097676;
        Thu, 02 Mar 2017 11:14:57 -0800 (PST)
Return-Path: <jic23@kernel.org>
Received: from saturn.retrosnub.co.uk (saturn.retrosnub.co.uk. [178.18.118.26])
        by gmr-mx.google.com with ESMTPS id f7si1817427wmg.3.2017.03.02.11.14.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 11:14:57 -0800 (PST)
Received-SPF: neutral (google.com: 178.18.118.26 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) client-ip=178.18.118.26;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 178.18.118.26 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) smtp.mailfrom=jic23@kernel.org
Received: from localhost.localdomain (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net [81.96.234.148])
	by saturn.retrosnub.co.uk (Postfix; Retrosnub mail submission) with ESMTPSA id C67B14066B;
	Thu,  2 Mar 2017 19:14:56 +0000 (GMT)
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: iio: meter: Remove unused
 definitions
To: Daniel Baluta <daniel.baluta@gmail.com>,
 Julia Lawall <julia.lawall@lip6.fr>, Katie Dunne <kdunne@mail.ccsf.edu>
References: <cover.1488250884.git.kdunne@mail.ccsf.edu>
 <972438f1c7bc46153df933c5861fac91f6793e92.1488250885.git.kdunne@mail.ccsf.edu>
 <alpine.DEB.2.20.1702280746000.2078@hadrien>
 <CAEnQRZCeK0L4vbpTHOk78QP1iJYMrZSRmJvG=XNL_jo4OkRgZA@mail.gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>,
 Hartmut Knaack <knaack.h@gmx.de>, Lars-Peter Clausen <lars@metafoo.de>,
 Peter Meerwald <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>
From: Jonathan Cameron <jic23@kernel.org>
Message-ID: <e3410f97-3328-ad78-883a-d996d768dcfc@kernel.org>
Date: Thu, 2 Mar 2017 19:14:56 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <CAEnQRZCeK0L4vbpTHOk78QP1iJYMrZSRmJvG=XNL_jo4OkRgZA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 28/02/17 08:13, Daniel Baluta wrote:
> On Tue, Feb 28, 2017 at 8:47 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>>
>>
>> On Mon, 27 Feb 2017, Katie Dunne wrote:
>>
>>> Remove definitions not used in kernel code.
>>
>> Did Alison ask for this?  Normally these kinds of constant definitions are
>> kept, because they describe the device in some way.  If you see macros
>> that perform more complex computations that are not used, you can get rid
>> of those.
> 
> Agree with Julia, lets keep this because they could be good documentation.
Agreed. Katie, would you mind posting a V2 of the series with just the other
two patches updated to account for this one not being there?

Thanks,

Jonathan
> 
> Daniel.
> --
> To unsubscribe from this list: send the line "unsubscribe linux-iio" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> 


