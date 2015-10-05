X-GM-THRID: 6201888067640360960
X-Received: by 10.107.37.206 with SMTP id l197mr25463596iol.17.1444027809496;
        Sun, 04 Oct 2015 23:50:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.32.195 with SMTP id g186ls1580420iog.70.gmail; Sun, 04 Oct
 2015 23:50:09 -0700 (PDT)
X-Received: by 10.66.102.101 with SMTP id fn5mr24611287pab.38.1444027809266;
        Sun, 04 Oct 2015 23:50:09 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-ig0-x243.google.com (mail-ig0-x243.google.com. [2607:f8b0:4001:c05::243])
        by gmr-mx.google.com with ESMTPS id n7si943298iga.3.2015.10.04.23.50.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 23:50:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c05::243 as permitted sender) client-ip=2607:f8b0:4001:c05::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c05::243 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by igbbp9 with SMTP id bp9so8721706igb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 23:50:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type:content-transfer-encoding;
        bh=Hxg6Dy7epcZtOTZqV4aKqcNiLTnworB5raDiaVVrjs0=;
        b=Qyb/0C0Kwc94YRY2DK9cCR2F0GbW5wm5x6+gTeZ22S1dQ1mr1nezH/uU44Vzm8nQtE
         Uc1oLR8UXxITOYp1lhCiqwX13VWD9DIeRVLUqYrvHxu1dBx/czfYK1UZqGuwnYyNgGJz
         HQtnGg1wuGZxK50b5niwNzB1svrT76mBRFUkth7arfJUP6Hfj8TaYAvYnoiOX/79ZSKl
         srbpzEpxz2fz6qx74wfwhMF/eZtYqZOskuTqnixHrUCO/uqLmsLprQTR7if/ZBMXyyMS
         U88pP5lGGTEtvYjxxi/hhiyMiL8KEU1Ll06zAkP8F4ILQ/010UngfxNwQjfY92wgHOCr
         kKrg==
MIME-Version: 1.0
X-Received: by 10.50.66.197 with SMTP id h5mr7226973igt.82.1444027809117; Sun,
 04 Oct 2015 23:50:09 -0700 (PDT)
Received: by 10.107.158.211 with HTTP; Sun, 4 Oct 2015 23:50:09 -0700 (PDT)
In-Reply-To: <CAL7P5jLBOQH4Z7vk62uKMRoV7EO3AwCkVBL4ODto-oTyS+XKWg@mail.gmail.com>
References: <cover.1443989364.git.ksenija.stanojevic@gmail.com>
	<5522999.85D2llbvgZ@wuerfel>
	<CAL7P5jKuXg05eAZTUO4LRgzw7nNhCY9P16Qm25zpHXjmuBnoVA@mail.gmail.com>
	<CAL7P5jLVUXSeqXDPCcB2VaJO5ubqJnKSMucXpUxBj0nSpdrHpA@mail.gmail.com>
	<CAL7P5jLBOQH4Z7vk62uKMRoV7EO3AwCkVBL4ODto-oTyS+XKWg@mail.gmail.com>
Date: Mon, 5 Oct 2015 08:50:09 +0200
Message-ID: <CAL7P5jJDJKXjERbZXvmyt0V22zbbWCr2=_rMVbwptK_WtQCuFA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/4] Do not DMA on the stack
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 5, 2015 at 8:44 AM, Ksenija Stanojevi=C4=87
<ksenija.stanojevic@gmail.com> wrote:
> On Mon, Oct 5, 2015 at 8:40 AM, Ksenija Stanojevi=C4=87
> <ksenija.stanojevic@gmail.com> wrote:
>> On Mon, Oct 5, 2015 at 7:28 AM, Ksenija Stanojevi=C4=87
>> <ksenija.stanojevic@gmail.com> wrote:
>>> On Sun, Oct 4, 2015 at 10:39 PM, Arnd Bergmann <arnd@arndb.de> wrote:
>>>> On Sunday 04 October 2015 22:13:02 Ksenija Stanojevic wrote:
>>>>> Fix error "doing DMA on the stack" by using kzalloc for buffer
>>>>> allocation in rtl8192u/r8192U_core.c in the following functions:
>>>>>         write_nic_byte_E()
>>>>>         write_nic_byte()
>>>>>         write_nic_word()
>>>>>         write_nic_dword()
>>>>> Issue found by smatch.
>>>>>
>>>>> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
>>>>>
>>>>> Ksenija Stanojevic (4):
>>>>>   Staging: rtl8192u: Do not DMA on the stack in write_nic_byte_E()
>>>>>   Staging: rtl8192u: Do not DMA on the stack in write_nic_byte()
>>>>>   Staging: rtl8192u: Do not DMA on the stack in write_nic_word()
>>>>>   Staging: rtl8192u: Do not DMA on the stack in write_nic_dword()
>>>>>
>>>>
>>>> The changes all look wrong to me, can you guess what the problem is
>>>> when you read them again?
>>>
> Please ignore this.
>> And also assign pdata to point to data
>>  pdata =3D &data;

I meant *pdata =3D data.

> thanks,
> Ksenija
>>>>
>>>> Also, these are four instances of the same code, in the same file,
>>>> so it would be reasonable to do a single patch, and then you can
>>>> do the other five instances in the same file as well.
>>>>
>>>>         Arnd

