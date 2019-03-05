X-GM-THRID: 6664782574497300480
X-Received: by 2002:a1c:9d91:: with SMTP id g139mr259744wme.24.1551781038590;
        Tue, 05 Mar 2019 02:17:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:cc03:: with SMTP id f3ls275037wmh.3.canary-gmail; Tue,
 05 Mar 2019 02:17:17 -0800 (PST)
X-Google-Smtp-Source: APXvYqzl8xIMxqA9NPG3O1mWhw3V7YXbPhzV81TnlnTNYj5GgduiXlxEnKfL+fwzk98ODw9tqDBO
X-Received: by 2002:a1c:a943:: with SMTP id s64mr230078wme.4.1551781037881;
        Tue, 05 Mar 2019 02:17:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551781037; cv=none;
        d=google.com; s=arc-20160816;
        b=h61cWVLhjWnsVebpH5BZEcV18O6Tryqms0Gg0mLNwGTXxoHwTw7XQEDgxwuCLMx7Ud
         hooGTpxJ+YW6A3M2Qo0gHJZj+JMbiT44xm8UnwaHAEmKgXNAjzzejhSmI93vSBa0y4C/
         eonxPBrxj6LWKl0lkOmfCY6sDGNvXgMdeDSq5KnxpCdTR74JglC4xHurpHgL52oabpF8
         UA1ZdxXV3BTYyI3vcxAfMe1Gtfao3MKqq3pDl/49JhcAhsE7Q1AM+h+xoLw0/Dg0D5eB
         QPeEdCGWH6LuUbkkucyTsyc/ZyS7tppBjksXQjU+TTP6lBNgSSfRFziStKSOrmqA3NLc
         ytkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=hr/jGxL93qr2sBcmgHp4BaTNiiTATetHTNrAWWMKCN4=;
        b=qTXpPR+HFIYHLKSlSiv6RzVJlDOrSpKNVRjk8w3+cZbYmqIrqle8wv4kY7t84FfcDJ
         eFspeNNWN5zWGoAjcIJNEWHHgvemK4oJ+LdzWSuzCvAt5aAJuVvnNCTQ+AUkBSGAQ4Fu
         WaIeHLpnL5QRf8sIrH3s2XMI66gwH8DObdouJd50+I2UhwSoobuF0MuFx4karZIyppCH
         PagU8b3TS8V3UBhppgBlszLR6wxgVrUonbPo6qWouPZVgvWLa2w7bwCOSC1xfgpw4RZ0
         pT5P44MVTv/kvVi/zUef7rh3RSkoYeXPyvFB36LGbFPFv/D62lrfpULVSQqE0TTMY1yK
         GncQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y192si361723wmd.1.2019.03.05.02.17.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 02:17:17 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,443,1544482800"; 
   d="scan'208";a="371962684"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Mar 2019 11:17:17 +0100
Date: Tue, 5 Mar 2019 11:17:11 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: fbtft: Avoid
 CamelCase.
In-Reply-To: <CAOMPgjhUj9jUqmL33eqLaMKfPsO50csyOdr0xMMsnuKewtMiQg@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1903051113320.3701@hadrien>
References: <20190305060005.GA7726@bhagyashri-Lenovo-G570> <20190305074815.GD6158@kroah.com> <CAOMPgjhUj9jUqmL33eqLaMKfPsO50csyOdr0xMMsnuKewtMiQg@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-903766759-1551781031=:3701"

--8323329-903766759-1551781031=:3701
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: 8BIT



On Tue, 5 Mar 2019, Bhagyashri Dighole wrote:

> Greg, I will create two different patches for above change.
>
> I did not understand the context of `inline function` usage here , can you
> more elaborate?

rgb565torgb233 is a thing that takes an argument and returns a value.  It
is implemented as a macro, but it could be a function just as well.  If
you put inline in front of the definition of the function, you should get
the same performance as with a macro.

Macros are mostly useful when the generated code doesn't really correspond
to C syntax or when the code has to work on values of different types.
But here what is generated is a complete expression, and since there is
only one call, there is only one possible argument type.  So it should
really be a function.  When you make it into a function, you can even make
the code simpler, by dropping the parentheses around c.  Because there is
no danger that c will expand into something that has strange priorities.
In a function, a variable doesn't expand at all, it just remains as a
variable.  So there is a big win all around for making it into a function.

julia


>
> Thanks
>
> On Tue, Mar 5, 2019 at 1:18 PM Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
>       On Tue, Mar 05, 2019 at 11:30:05AM +0530, Bhagyashri Dighole
>       wrote:
>       > Fix coding style issues detected by checkpatch.pl `CHECK:
>       Avoid
>       > CamelCase`.
>       >
>       > Signed-off-by: Bhagyashri Dighole
>       <digholebhagyashri@gmail.com>
>       > ---
>       >� drivers/staging/fbtft/fb_watterott.c | 8 ++++----
>       >� 1 file changed, 4 insertions(+), 4 deletions(-)
>       >
>       > diff --git a/drivers/staging/fbtft/fb_watterott.c
>       b/drivers/staging/fbtft/fb_watterott.c
>       > index 0a5206d..7e9c57b 100644
>       > --- a/drivers/staging/fbtft/fb_watterott.c
>       > +++ b/drivers/staging/fbtft/fb_watterott.c
>       > @@ -90,13 +90,13 @@ static int write_vmem(struct fbtft_par
>       *par, size_t offset, size_t len)
>       >� � � �return 0;
>       >� }
>       >�
>       > -#define RGB565toRGB323(c) ((((c) & 0xE000) >> 8) |\
>       > +#define rgb565torgb323(c) ((((c) & 0xE000) >> 8) |\
>       >� � � � � � � � � � � � � (((c) & 000600) >> 6) |\
>       >� � � � � � � � � � � � � (((c) & 0x001C) >> 2))
>       > -#define RGB565toRGB332(c) ((((c) & 0xE000) >> 8) |\
>       > +#define rgb565torgb332(c) ((((c) & 0xE000) >> 8) |\
>       >� � � � � � � � � � � � � (((c) & 000700) >> 6) |\
>       >� � � � � � � � � � � � � (((c) & 0x0018) >> 3))
>       > -#define RGB565toRGB233(c) ((((c) & 0xC000) >> 8) |\
>       > +#define rgb565torgb233(c) ((((c) & 0xC000) >> 8) |\
>       >� � � � � � � � � � � � � (((c) & 000700) >> 5) |\
>       >� � � � � � � � � � � � � (((c) & 0x001C) >> 2))
>       >�
>       > @@ -122,7 +122,7 @@ static int write_vmem_8bit(struct
>       fbtft_par *par, size_t offset, size_t len)
>       >� � � �for (i = start_line; i <= end_line; i++) {
>       >� � � � � � � �pos[1] = cpu_to_be16(i);
>       >� � � � � � � �for (j = 0; j < par->info->var.xres; j++) {
>       > -� � � � � � � � � � �buf8[j] = RGB565toRGB332(*vmem16);
>       > +� � � � � � � � � � �buf8[j] = rgb565torgb332(*vmem16);
>
>       It looks like 2 of those #defines are not even used.� Please
>       make this a
>       patch series of two patches, the first one removing the unused
>       #defines,
>       and the second changing the name.
>
>       But, this is a define, so all CAPS is normal for that.
>
>       How about changing this to an inline function instead?� That
>       would allow
>       you to name it rgb565_to_rgb332() which is much more
>       understandable and
>       provide good typechecking.
>
>       thanks,
>
>       greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAOMPgjhUj9jUqmL33eqLaMK
> fPsO50csyOdr0xMMsnuKewtMiQg%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-903766759-1551781031=:3701--

