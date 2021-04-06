X-GM-THRID: 6947860813701971968
X-Received: by 2002:a17:906:7ac9:: with SMTP id k9mr33072771ejo.229.1617694065344;
        Tue, 06 Apr 2021 00:27:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:c653:: with SMTP id z19ls10871095edr.2.gmail; Tue, 06
 Apr 2021 00:27:43 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxX8FEdEbLJpJD6POdTTa7jvM49k2IbWiTLWDPxghG52uu1UI8/2Zmoz7e29thTYeiieJmI
X-Received: by 2002:a05:6402:5255:: with SMTP id t21mr36497690edd.91.1617694063853;
        Tue, 06 Apr 2021 00:27:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617694063; cv=none;
        d=google.com; s=arc-20160816;
        b=CdMBfL9oV5fwaIrfFts9MmLSBS9LbrC/fVDgCHVLzzyyNBXag/8fKKrqRaBMYMGMPw
         JL3D6cBTnU+Qq0YxsVmnuwJLfWlYKbeZoBLvRV48muFbsYsNpomgQyR3PGcasHAOKdH3
         kQodYGpHXaQosLcCugph4wuwC0dRBxwa5dU9xjZ259Pkp8W6C5kVMeSGkcfkRk7tHSCr
         ZhgavcwmQquCduFrsFulu8A7dipni9YZIHRyEXmlbxtaoSEmHdWHL8eIbSxZJg6yQBc9
         CECH3WqWtM4NOUyqd1t+oMdaxA9TuGNAMCRBxe+R3MfNS8k7trbEQZChO/pESTrJHbXF
         kyJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=SPh5ffJVNjVKHQpV51vejrHCImuVHuLCEsXj9Lkxx9o=;
        b=Vu8q9u9WPbTRH8+cWXYiXpUUytMcpJkQzYsFdhfvqiFS9Y15Ic8xRZRU8ByT9dXaou
         1DGArJqd6vOYpXw6yqEs/KR77cmPjJmj+N4e41F3ItmpEaV3/qxADQgaEf8TMhU09W7z
         f0AhKYNWoN0/g+D8uCQwWUM2RuwQTYCm4cB72/A8+kgc7VST/5iZVXaoqUVCxHmf+Vc2
         zg2hvf25GuPthL5IrXVhvutPBhnnab+90QIb22kTDJovdOiBXN1B+8O3TJRGwwoJGm6I
         6foXwG476sM1atupn0W11xGZTiFdQH1406HXq/HXgcIYfhvg30BFRsnbJ1jpxITYwT0A
         phbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id b26si344899edy.4.2021.04.06.00.27.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Apr 2021 00:27:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AL2cdqqClICyPdy3lHeilsseALOonbusQ8zAX?=
 =?us-ascii?q?/mhsVBoQSNCSk8CygfgXvCWE/Ao5cncmhNyGJe28Wnva75F4+s08Or2lUQngtg?=
 =?us-ascii?q?KTXfNfxKHlxCDtHDC7y/5F2c5bAttDIfD5EFQSt6jHySaiFdJI+rS62YCuwdzT?=
 =?us-ascii?q?1nJ8CTxtApsQnjtRLia+PglISBJdBZw/faDskfZvgza7Y3wYYoCaKxA+Lpb+ju?=
 =?us-ascii?q?bGnp7nfhIKbiRPgGLlsRqS5LH3CBSe1BsFOgk/sYsKy3TPkADy+8yY3M2T9xm0?=
 =?us-ascii?q?7QPuxqUTs8fu2dtHAcTJotIOKjvqhgvtWYIJYcz+gBkF5Mqy5kUrldzF5z0gN8?=
 =?us-ascii?q?N8536UUWG4pBb2sjOQrwoG2jvI1VGKgX7nqYjSQjYiDc1Mgp8xSGq912MQ+Pph?=
 =?us-ascii?q?3rFK2meQ87VTBR3b9R6Nm+TgZlVAikSmoX8mmaowg2xAV5ASctZq3Osi1XIQO4?=
 =?us-ascii?q?sPDyL+7YhiKfJvCtrd+eY+SyLhU1np+kJyzs+tW3E6Wi6cREUfsNH96Uk1oFlJ?=
 =?us-ascii?q?i2AFyt8em3IJsKkwQ4ND4I3/U5hApfVkUsEEbad5DKM7TdGwD3DRQRTKWVjiWm?=
 =?us-ascii?q?jPJeUtJ3zfq5vz6PEO6P6nY5wU3PIJ6fL8eWIdnnI9aELqDMXL5oBC7wzWKV/N?=
 =?us-ascii?q?JQjF+4V0+5Zrurj4TP7XITSOIWpPr+KQ594CDN7aXvO6fK5sJpbYXB7TMLcM9B?=
 =?us-ascii?q?HxSJlWLHFbb8EPoNY8XDu106b2A7yvnfDUY/bXIbKoLz44UGK6OXcKRj71Tf8w?=
 =?us-ascii?q?jXyDazvSnBbDW3bpcgjA/JQYKtmiw9Qu?=
X-IronPort-AV: E=Sophos;i="5.81,308,1610406000"; 
   d="scan'208";a="501679297"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Apr 2021 09:27:43 +0200
Date: Tue, 6 Apr 2021 09:27:43 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH] Correct indentation in
 Hal8723BReg.h
In-Reply-To: <3909721.0tKxYtM2Wc@localhost.localdomain>
Message-ID: <alpine.DEB.2.22.394.2104060926440.2882@hadrien>
References: <20210406020815.22995-1-fmdefrancesco@gmail.com> <1851038.q9TLUjBrch@localhost.localdomain> <alpine.DEB.2.22.394.2104060839310.2882@hadrien> <3909721.0tKxYtM2Wc@localhost.localdomain>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 6 Apr 2021, Fabio M. De Francesco wrote:

> On Tuesday, April 6, 2021 8:40:37 AM CEST Julia Lawall wrote:
> >
> > On Tue, 6 Apr 2021, Fabio M. De Francesco wrote:
> >
> > > On Tuesday, April 6, 2021 7:52:52 AM CEST Fabio M. De Francesco wrote:
> > > > On Tuesday, April 6, 2021 7:12:20 AM CEST Greg KH wrote:
> > > > > On Tue, Apr 06, 2021 at 04:08:15AM +0200, Fabio M. De Francesco wrote:
> > > > > > Correct indentation issues of many #define and comments in Hal8723BReg.h
> > > > > >
> > > > > > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > > > > > ---
> > > > > >  drivers/staging/rtl8723bs/hal/Hal8723BReg.h | 604 ++++++++++----------
> > > > > >  1 file changed, 302 insertions(+), 302 deletions(-)
> > > > >
> > > > > You forgot to cc: all of the needed mailing lists.  And your subject
> > > > > line needs some work.  But the biggest issue is that I do not understand
> > > > > what this patch does at all.  What is wrong with the original code here
> > > > > that required you to "correct" it?
> > > > >
> > > > > confused,
> > > > >
> > > > > greg k-h
> > > > >
> > > > I'm sorry that I forgot to cc linux-staging and linux-kernel mailing lists
> > > > and for the subject I had already sent a v2 patch that had
> > > > all the required tags (staging: rtl8723: hal:).
> > > >
> > > > I think that what was wrong with the original code was that
> > > > the #define values were far from the symbols with random indentation.
> > > >
> > > > For example, I changed something like:
> > > > #define SYMB1 		0123
> > > > #define SYMB2 5678
> > > > #define SYMB3            9ABC
> > > >
> > > > to:
> > > > #define SYMB1 	0123
> > > > #define SYMB2 	5678
> > > > #define SYMB3            	9ABC
> > >
> > > the preceding defined values are in a single column. I don't understand why KMail show them in different levels of indentation. However, I hope that my argument in support of the patch was still clear.
> >
> > There is surely a difference with the use of spaces and tabs.  If you
> > change something about the defines and this problem shows up, you can make
> > another patch in the series to make the spacing more uniform.
> >
> > julia
> >

> I have not this problem in the file in my git/kernels/staging directory,

Are you just looking at the file in your editor, or have you actually
counted the spaces and tabs?

julia

> it just happen when I see that patch in KMail. When I open it with Vim,
> all the defines are correctly aligned in a single column (that is, the
> correction I made to the indentation levels of the defines is there). As
> a consequense, I suppose that the patch itself is correctly formatted.
> Doesn't it?
>
> However, what is really important is what Greg K-H thinks of the patch. I'm not sure I was able to explain to him what I've made and why it improves the readibility of the whole file (may you please take a look at the original in Greg's tree? You would see that random levels of indentation I'm talking about). As you can read above, I asked him if I should make a v3 of that with a clearer explanation about the work I've made on those random levels of indentation but I haven't yet had his response.
>
> What do you personally think about producing a v3 patch with a better explanation of the work I've made?
>
> Thanks for your time and patience,
>
> Fabio
>
>
>
>
>

