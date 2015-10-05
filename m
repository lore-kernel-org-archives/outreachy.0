X-GM-THRID: 6201888067640360960
X-Received: by 10.182.92.135 with SMTP id cm7mr23289462obb.8.1444022907191;
        Sun, 04 Oct 2015 22:28:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.38.67 with SMTP id m64ls1550572iom.94.gmail; Sun, 04 Oct
 2015 22:28:26 -0700 (PDT)
X-Received: by 10.66.218.130 with SMTP id pg2mr24342405pac.12.1444022906943;
        Sun, 04 Oct 2015 22:28:26 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-ig0-x234.google.com (mail-ig0-x234.google.com. [2607:f8b0:4001:c05::234])
        by gmr-mx.google.com with ESMTPS id z7si1256149igw.0.2015.10.04.22.28.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 22:28:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c05::234 as permitted sender) client-ip=2607:f8b0:4001:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c05::234 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-ig0-x234.google.com with SMTP id rk20so53229079igc.1
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 22:28:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=Fyv0nP7DayBijCUAzNCynJvfJSVEcoRUZCSvfSJbjrg=;
        b=bfEmekA9YPATJktSDuxRX6IQvYX7rdzfYUQ3a2/r0ie232H1qwVUwubH9uCkiCQW9v
         u3dj6LiMrxCH2PJoL+uMz4EZGoNI1120fwtGJKBxRlpYztkbVgNN1sD9UbNhQjXPcyne
         wJXviM2xX6yQPYthffKg4APXA4FkTk+sYb1rDCknqE24lnpxQdkuUvGdIRdzfc2oyT27
         /7PeJbfHeT+97LNfLfE4BqvyUGxuU7asHZHxb5mrBIuY/8e5e4WaTp9Mi2vDndXATY3e
         rPT7/fzJ0C7ORB2cuqao1obgGsccQpWHE1jdRfIdddEEewF6yr/ZrIuP9NKb2dHNARpp
         iN5w==
MIME-Version: 1.0
X-Received: by 10.50.66.197 with SMTP id h5mr7067390igt.82.1444022906803; Sun,
 04 Oct 2015 22:28:26 -0700 (PDT)
Received: by 10.107.158.211 with HTTP; Sun, 4 Oct 2015 22:28:26 -0700 (PDT)
In-Reply-To: <5522999.85D2llbvgZ@wuerfel>
References: <cover.1443989364.git.ksenija.stanojevic@gmail.com>
	<5522999.85D2llbvgZ@wuerfel>
Date: Mon, 5 Oct 2015 07:28:26 +0200
Message-ID: <CAL7P5jKuXg05eAZTUO4LRgzw7nNhCY9P16Qm25zpHXjmuBnoVA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/4] Do not DMA on the stack
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sun, Oct 4, 2015 at 10:39 PM, Arnd Bergmann <arnd@arndb.de> wrote:
> On Sunday 04 October 2015 22:13:02 Ksenija Stanojevic wrote:
>> Fix error "doing DMA on the stack" by using kzalloc for buffer
>> allocation in rtl8192u/r8192U_core.c in the following functions:
>>         write_nic_byte_E()
>>         write_nic_byte()
>>         write_nic_word()
>>         write_nic_dword()
>> Issue found by smatch.
>>
>> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
>>
>> Ksenija Stanojevic (4):
>>   Staging: rtl8192u: Do not DMA on the stack in write_nic_byte_E()
>>   Staging: rtl8192u: Do not DMA on the stack in write_nic_byte()
>>   Staging: rtl8192u: Do not DMA on the stack in write_nic_word()
>>   Staging: rtl8192u: Do not DMA on the stack in write_nic_dword()
>>
>
> The changes all look wrong to me, can you guess what the problem is
> when you read them again?

I forgot to replace &data with pdata in usb_control_msg()
>
> Also, these are four instances of the same code, in the same file,
> so it would be reasonable to do a single patch, and then you can
> do the other five instances in the same file as well.
>
>         Arnd

