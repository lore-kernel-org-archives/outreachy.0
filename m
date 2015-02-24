X-GM-THRID: 3247770173440
X-Received: by 10.112.50.106 with SMTP id b10mr2382863lbo.8.1424807295889;
        Tue, 24 Feb 2015 11:48:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.189.12 with SMTP id ge12ls269303wic.9.gmail; Tue, 24 Feb
 2015 11:48:15 -0800 (PST)
X-Received: by 10.181.29.66 with SMTP id ju2mr2357874wid.1.1424807295259;
        Tue, 24 Feb 2015 11:48:15 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-lb0-x230.google.com (mail-lb0-x230.google.com. [2a00:1450:4010:c04::230])
        by gmr-mx.google.com with ESMTPS id xl7si4073259lbb.1.2015.02.24.11.48.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Feb 2015 11:48:15 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c04::230 as permitted sender) client-ip=2a00:1450:4010:c04::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c04::230 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by lbiz11 with SMTP id z11so27340511lbi.8
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Feb 2015 11:48:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=DimkJheh2mGV9bgvTS4KWlcbA7VbJjFnkjN6cqJ5q18=;
        b=g7MrkrROUKMm3Faqp2nEIqdydY+rUCtnmBnCjYtmZE3xqrmXLpDQc8gVQh9UUnZhQV
         btqtZoK0CgIydb2u/BoHFdV2lphJ2SdwxX/mmjNzUUztffJh9II+cKaAXqyKsIJxH2hB
         FE24F7yDcOIwGW26hoeepfsai34ZlLN1bIBpvgza5+miK1bdBd96RdIEAAeTU6RV1M9j
         KgF/qRdJ3Yk6JoPOO4nybtNDop/Qex7DiVWYkGLM6eJG+I6pUizXWTeZKfBVQb/7CKNc
         f3saK441u/mgoHDb3zEhxL/skbA1iNq/y79CNGrkMGEf177o9h0Yj/Pq5qDwoJtXAn5c
         tHoQ==
MIME-Version: 1.0
X-Received: by 10.112.126.162 with SMTP id mz2mr15638314lbb.51.1424807295150;
 Tue, 24 Feb 2015 11:48:15 -0800 (PST)
Received: by 10.114.12.1 with HTTP; Tue, 24 Feb 2015 11:48:15 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1502242032591.2049@localhost6.localdomain6>
References: <cover.1424798953.git.ksenija.stanojevic@gmail.com>
	<4ceaa6f20532b3112484ecaa074106d1c130c6c6.1424798953.git.ksenija.stanojevic@gmail.com>
	<alpine.DEB.2.02.1502242032591.2049@localhost6.localdomain6>
Date: Tue, 24 Feb 2015 20:48:15 +0100
Message-ID: <CAL7P5jL=N6g7joiJe901qSusygw5jyz6LnwXXkq6NdpzkiAa6w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/6] Staging: rtl8192u: Replace TRUE
 with true
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 24, 2015 at 8:33 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> -     if (priv->bDynamicTxLowPower == TRUE) {
>> +     if (priv->bDynamicTxLowPower == true) {
>
> One could wonder if this could just be:
>
> if (priv->bDynamicTxLowPower) { ...
>
> To check this, you have to go find all of the initializations of this
> field and check that 0 and 1 are the only possible values.
>
> julia
>
Field is of bool type so it's possible, but this is not the only place
where such change could take place. Should i use a script?

>>               if (priv->CustomerID == RT_CID_819x_Netcore)
>>                       TxAGC = 0x22;
>>               else
>> @@ -275,7 +275,7 @@ void PHY_SetRF8256OFDMTxPower(struct net_device *dev, u8 powerlevel)
>>                       priv->Pwr_Track = writeVal_tmp;
>>               }
>>
>> -             if (priv->bDynamicTxHighPower == TRUE) {
>> +             if (priv->bDynamicTxHighPower == true) {
>>                       /*Add by Jacken 2008/03/06
>>                        *Emily, 20080613. Set low tx power for both MCS and legacy OFDM
>>                        */
>> --
>> 1.9.1
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/4ceaa6f20532b3112484ecaa074106d1c130c6c6.1424798953.git.ksenija.stanojevic%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

