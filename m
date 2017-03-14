X-GM-THRID: 6396716918154199040
X-Received: by 10.46.69.4 with SMTP id s4mr4595lja.17.1489531456582;
        Tue, 14 Mar 2017 15:44:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.211.201 with SMTP id k192ls13964lfg.18.gmail; Tue, 14 Mar
 2017 15:44:15 -0700 (PDT)
X-Received: by 10.25.72.71 with SMTP id v68mr4692lfa.9.1489531455359;
        Tue, 14 Mar 2017 15:44:15 -0700 (PDT)
Return-Path: <jic23@jic23.retrosnub.co.uk>
Received: from saturn.retrosnub.co.uk (saturn.retrosnub.co.uk. [2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466])
        by gmr-mx.google.com with ESMTPS id y19si457371wmd.0.2017.03.14.15.44.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Mar 2017 15:44:15 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of jic23@jic23.retrosnub.co.uk designates 2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466 as permitted sender) client-ip=2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of jic23@jic23.retrosnub.co.uk designates 2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466 as permitted sender) smtp.mailfrom=jic23@jic23.retrosnub.co.uk
Received: from [192.168.0.5] (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net [81.96.234.148])
	by saturn.retrosnub.co.uk (Postfix; Retrosnub mail submission) with ESMTPSA id 4A74D40603;
	Tue, 14 Mar 2017 22:44:14 +0000 (GMT)
Date: Tue, 14 Mar 2017 22:44:12 +0000
User-Agent: K-9 Mail for Android
In-Reply-To: <CAOCi2DEecT6tdxmz7_9Q5aWC7_+VZCKD1+Vwe9F5gA9jAuQ2=A@mail.gmail.com>
References: <1489351546-21008-1-git-send-email-gs051095@gmail.com> <alpine.DEB.2.20.1703122154130.7649@hadrien> <CAOCi2DH9bNChZj4kyt3t1eK7R7uSv77zeVc2PkPYxoRDDHZLsA@mail.gmail.com> <alpine.DEB.2.20.1703122235320.7649@hadrien> <20170312221350.GA14070@d830.WORKGROUP> <CAOCi2DEyu6_bBjsrSFzf0VcXcUnZ3LugLf==R9zsSmj+1JdFKw@mail.gmail.com> <35231dfd-af42-bbd3-3be6-4e03a728a92f@kernel.org> <73d214e0-46d0-0d4a-27e1-7c85cf3c05ed@metafoo.de> <CAOCi2DEecT6tdxmz7_9Q5aWC7_+VZCKD1+Vwe9F5gA9jAuQ2=A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: adc: Replace mlock with driver private lock
To: Gargi Sharma <gs051095@gmail.com>,Lars-Peter Clausen <lars@metafoo.de>
CC: Jonathan Cameron <jic23@kernel.org>,Alison Schofield <amsfield22@gmail.com>,Julia Lawall <julia.lawall@lip6.fr>,outreachy-kernel@googlegroups.com,Michael.Hennerich@analog.com,knaack.h@gmx.de,Peter Meerwald-Stadler <pmeerw@pmeerw.net>,linux-iio@vger.kernel.org
From: Jonathan Cameron <jic23@jic23.retrosnub.co.uk>
Message-ID: <38289FBC-9E24-4AC0-ADB2-58DB34DD208F@jic23.retrosnub.co.uk>



On 14 March 2017 17:36:16 GMT+00:00, Gargi Sharma <gs051095@gmail=2Ecom> w=
rote:
>On Tue, Mar 14, 2017 at 2:24 AM, Lars-Peter Clausen <lars@metafoo=2Ede>
>wrote:
>> On 03/13/2017 09:51 PM, Jonathan Cameron wrote:
>> [=2E=2E=2E]
>>>>> Gargi,
>>>>>
>>>>> Please insert the new lock above the __cacheline_aligned struct
>>>>> member=2E
>>>>
>>>> I will do that, but is there any reason why the lock should be
>above
>>>> ____cacheline_aligned struct member?
>>> Yes=2E  It's in fact very important that nothing comes after that=2E
>>>
>>> Will leave the why as an exercise for the reader=2E   I'll give the
>>> hit of spi drivers that do DMA=2E=2E=2E
>>
>>
>> One hint though, the answer is somewhere in Documentation/DMA-API=2Etxt
>
>>From what I have understood is that cacheline is used for keeping most
>frequently accessed values in adjacent cachelines=2E=20

Why? What does cache line actually mean?

> We want the
>cacheline_aligned at the end in the struct definition so as to avoid
>any holes after the cacheline boundary=2E

Nope=2E  Try
http://www=2Epebblebay=2Ecom/a-guide-to-using-direct-memory-access-in-embe=
dded-systems-part-two/

(Hint, search for 'shares')

>>
>--
>To unsubscribe from this list: send the line "unsubscribe linux-iio" in
>the body of a message to majordomo@vger=2Ekernel=2Eorg
>More majordomo info at  http://vger=2Ekernel=2Eorg/majordomo-info=2Ehtml

--=20
Sent from my Android device with K-9 Mail=2E Please excuse my brevity=2E

