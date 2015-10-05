X-GM-THRID: 6201888067640360960
X-Received: by 10.31.7.70 with SMTP id 67mr24671715vkh.2.1444027216937;
        Sun, 04 Oct 2015 23:40:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.83.170 with SMTP id j39ls2672635qgd.92.gmail; Sun, 04 Oct
 2015 23:40:16 -0700 (PDT)
X-Received: by 10.13.220.4 with SMTP id f4mr8663690ywe.22.1444027216497;
        Sun, 04 Oct 2015 23:40:16 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-ig0-x22f.google.com (mail-ig0-x22f.google.com. [2607:f8b0:4001:c05::22f])
        by gmr-mx.google.com with ESMTPS id f4si932848igo.2.2015.10.04.23.40.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 23:40:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c05::22f as permitted sender) client-ip=2607:f8b0:4001:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c05::22f as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-ig0-x22f.google.com with SMTP id x6so50889793igx.1
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 23:40:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type:content-transfer-encoding;
        bh=UpNnWTrh93xhQbQqp5kHxBI/p528ZWpIWtGcB4cgReE=;
        b=JV3fFsnVf7mVWlSn41X+70HSTKtLrTk/bL0k+Voyu7vdwSMJPAGlfmO/pP9U4it18/
         PyEtWAfbdm/DGLo68ZGWheSo4VcRGI7lNMh4AgTvhw6OP1NcceJSWi0YQrKdevALigXl
         BhwJcISSWN3Qppgq+fgX1UkOTg9kgbCHAVoKrnRLKm8/lxH69Mex89AK9uRM2SksKf9t
         VgpQJn6ldUUainD5LG1gyHAUn8p+oKvdOVWciGPcqRmIKH0QHJ1E05SlRxBsZkHaOM1t
         PaN6Pfz4rZulbGC3RyoMelzX4OlDXmuHXWlxV3lbQLNhKIJnCP6wsziUDqtc8REzs7ip
         X1ow==
MIME-Version: 1.0
X-Received: by 10.50.20.8 with SMTP id j8mr711283ige.69.1444027216364; Sun, 04
 Oct 2015 23:40:16 -0700 (PDT)
Received: by 10.107.158.211 with HTTP; Sun, 4 Oct 2015 23:40:16 -0700 (PDT)
In-Reply-To: <CAL7P5jKuXg05eAZTUO4LRgzw7nNhCY9P16Qm25zpHXjmuBnoVA@mail.gmail.com>
References: <cover.1443989364.git.ksenija.stanojevic@gmail.com>
	<5522999.85D2llbvgZ@wuerfel>
	<CAL7P5jKuXg05eAZTUO4LRgzw7nNhCY9P16Qm25zpHXjmuBnoVA@mail.gmail.com>
Date: Mon, 5 Oct 2015 08:40:16 +0200
Message-ID: <CAL7P5jLVUXSeqXDPCcB2VaJO5ubqJnKSMucXpUxBj0nSpdrHpA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/4] Do not DMA on the stack
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 5, 2015 at 7:28 AM, Ksenija Stanojevi=C4=87
<ksenija.stanojevic@gmail.com> wrote:
> On Sun, Oct 4, 2015 at 10:39 PM, Arnd Bergmann <arnd@arndb.de> wrote:
>> On Sunday 04 October 2015 22:13:02 Ksenija Stanojevic wrote:
>>> Fix error "doing DMA on the stack" by using kzalloc for buffer
>>> allocation in rtl8192u/r8192U_core.c in the following functions:
>>>         write_nic_byte_E()
>>>         write_nic_byte()
>>>         write_nic_word()
>>>         write_nic_dword()
>>> Issue found by smatch.
>>>
>>> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
>>>
>>> Ksenija Stanojevic (4):
>>>   Staging: rtl8192u: Do not DMA on the stack in write_nic_byte_E()
>>>   Staging: rtl8192u: Do not DMA on the stack in write_nic_byte()
>>>   Staging: rtl8192u: Do not DMA on the stack in write_nic_word()
>>>   Staging: rtl8192u: Do not DMA on the stack in write_nic_dword()
>>>
>>
>> The changes all look wrong to me, can you guess what the problem is
>> when you read them again?
>
> I forgot to replace &data with pdata in usb_control_msg()
And also assign pdata to point to data
 pdata =3D &data;

>>
>> Also, these are four instances of the same code, in the same file,
>> so it would be reasonable to do a single patch, and then you can
>> do the other five instances in the same file as well.
>>
>>         Arnd

