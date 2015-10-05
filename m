X-GM-THRID: 6201888067640360960
X-Received: by 10.68.239.226 with SMTP id vv2mr16597754pbc.13.1444027490170;
        Sun, 04 Oct 2015 23:44:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.37.114 with SMTP id q105ls2940673qgq.14.gmail; Sun, 04 Oct
 2015 23:44:49 -0700 (PDT)
X-Received: by 10.129.103.4 with SMTP id b4mr24689959ywc.24.1444027489715;
        Sun, 04 Oct 2015 23:44:49 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-ig0-x242.google.com (mail-ig0-x242.google.com. [2607:f8b0:4001:c05::242])
        by gmr-mx.google.com with ESMTPS id x8si954932igx.2.2015.10.04.23.44.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 23:44:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c05::242 as permitted sender) client-ip=2607:f8b0:4001:c05::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c05::242 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by igcxw12 with SMTP id xw12so8672887igc.3
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 23:44:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type:content-transfer-encoding;
        bh=fyJCaiEC4zDEBm+SPBzsqp8wQVAS5t5z12J/APRA7Pw=;
        b=zyGsPpBDFYSETRku8zDoCznVu9X5mWWkagirH86OFi6GH81fW0ug5/bdNYUPmRUXbv
         2AXwO+FBlc+biEgVF6kJM/lasQ+t0/LpaTNYtg9eEZPErySKI5K75U5cE5jYX31/FALo
         Y6FR0FYOOOJoz/5wv9RypRoIaPA0bn5QY/fWfOADbQxM8w4Mxi2PGsVBlXH76oIK+Tah
         iPyq8Un5VRyRtQDTkxQ+0E9VLByPmZfFGk46P/e3UweFgoNwjC7jr64eCzqAGWCwEt+B
         KjP5NfHBfpCZFwX2ty8Oi3K0AEsYp7CW/bDAfYOkKWLM3dgFpVly9eP0f9bKJ7jHzakV
         gAuQ==
MIME-Version: 1.0
X-Received: by 10.50.66.197 with SMTP id h5mr7216276igt.82.1444027489588; Sun,
 04 Oct 2015 23:44:49 -0700 (PDT)
Received: by 10.107.158.211 with HTTP; Sun, 4 Oct 2015 23:44:49 -0700 (PDT)
In-Reply-To: <CAL7P5jLVUXSeqXDPCcB2VaJO5ubqJnKSMucXpUxBj0nSpdrHpA@mail.gmail.com>
References: <cover.1443989364.git.ksenija.stanojevic@gmail.com>
	<5522999.85D2llbvgZ@wuerfel>
	<CAL7P5jKuXg05eAZTUO4LRgzw7nNhCY9P16Qm25zpHXjmuBnoVA@mail.gmail.com>
	<CAL7P5jLVUXSeqXDPCcB2VaJO5ubqJnKSMucXpUxBj0nSpdrHpA@mail.gmail.com>
Date: Mon, 5 Oct 2015 08:44:49 +0200
Message-ID: <CAL7P5jLBOQH4Z7vk62uKMRoV7EO3AwCkVBL4ODto-oTyS+XKWg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/4] Do not DMA on the stack
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 5, 2015 at 8:40 AM, Ksenija Stanojevi=C4=87
<ksenija.stanojevic@gmail.com> wrote:
> On Mon, Oct 5, 2015 at 7:28 AM, Ksenija Stanojevi=C4=87
> <ksenija.stanojevic@gmail.com> wrote:
>> On Sun, Oct 4, 2015 at 10:39 PM, Arnd Bergmann <arnd@arndb.de> wrote:
>>> On Sunday 04 October 2015 22:13:02 Ksenija Stanojevic wrote:
>>>> Fix error "doing DMA on the stack" by using kzalloc for buffer
>>>> allocation in rtl8192u/r8192U_core.c in the following functions:
>>>>         write_nic_byte_E()
>>>>         write_nic_byte()
>>>>         write_nic_word()
>>>>         write_nic_dword()
>>>> Issue found by smatch.
>>>>
>>>> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
>>>>
>>>> Ksenija Stanojevic (4):
>>>>   Staging: rtl8192u: Do not DMA on the stack in write_nic_byte_E()
>>>>   Staging: rtl8192u: Do not DMA on the stack in write_nic_byte()
>>>>   Staging: rtl8192u: Do not DMA on the stack in write_nic_word()
>>>>   Staging: rtl8192u: Do not DMA on the stack in write_nic_dword()
>>>>
>>>
>>> The changes all look wrong to me, can you guess what the problem is
>>> when you read them again?
>>
Please ignore this.
> And also assign pdata to point to data
>  pdata =3D &data;

thanks,
Ksenija
>>>
>>> Also, these are four instances of the same code, in the same file,
>>> so it would be reasonable to do a single patch, and then you can
>>> do the other five instances in the same file as well.
>>>
>>>         Arnd

