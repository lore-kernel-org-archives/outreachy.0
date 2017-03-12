X-GM-THRID: 6395849810528698368
X-Received: by 10.46.92.131 with SMTP id q125mr4499709ljb.15.1489329647307;
        Sun, 12 Mar 2017 07:40:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.6.2 with SMTP id 2ls1323014ljg.13.gmail; Sun, 12 Mar 2017
 07:40:46 -0700 (PDT)
X-Received: by 10.25.210.146 with SMTP id j140mr3788392lfg.10.1489329646279;
        Sun, 12 Mar 2017 07:40:46 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-lf0-x241.google.com (mail-lf0-x241.google.com. [2a00:1450:4010:c07::241])
        by gmr-mx.google.com with ESMTPS id y19si547111wmd.0.2017.03.12.07.40.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 07:40:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::241 as permitted sender) client-ip=2a00:1450:4010:c07::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x241.google.com with SMTP id y193so10072557lfd.1
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 07:40:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=75/GjD5TwEwpo8QkwVNq1ahf7n9sAxH2xNAMvEYN1HU=;
        b=G2PiFiv2pIIUEWPztIexfSO8vJ2DlS4HaCHstTwxI0FOC+jnikq5zcHRwjvFQToNki
         gtSon5W0WliO0/VXsodIs2+uy6bzSfBd7i8IMq+TLJRzQjFW/i6+KaaR9bOM2cnOuk6F
         Ncb/T9RSHNo2EOBjuw5Wr8NhJOQl3xit9XJIOO5/Fpm0qODFTZyOh22KvRWZcwf1XjzV
         fp+EZ1dS/kn9Rv+Vp1l+EjIb6WmYgQGOsr1JEAimPsudioCkVauSZM/28KpKHMgeOfDE
         EkquAwOh6ngxtBrW12LGGJOsopuGMd30vGgVZ/Reoz5UHQgRiASOjeeHypgH6dnYUNj6
         CyHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=75/GjD5TwEwpo8QkwVNq1ahf7n9sAxH2xNAMvEYN1HU=;
        b=UhnFMmOokB6OvkYFQxwdmkPQIYtKG3j7iwUD1pTNyJzJpiTEFRhJUZsSaG5pWzUc27
         BhhNeCPf44QiXGSaOWpLSIGGClFATe6Onv6JMkzDAOSWPd9NJGjfqdJJN6KMgYCPeL5M
         Nk3kbdvUwuVtpE7fApGjFbaAYSGoBfog4uMWOcTRgmVpwyXm5Y16PySUhf+5YaX//PXh
         Er+ichx46fnYpFkkIx0to+TCJ1sePlZC7H5lAo3mqpb/8GJDX86iQaeDvWiP5KxuiWyK
         bLd8sDCZNlkca5mwHiAR8txz5wh2TW73+n5J3gWCE050sO18B/gPmflAwqJNHx5cFFix
         iQjQ==
X-Gm-Message-State: AMke39k8ZzF3YHg/GobYAvtnXiSmkBNzZ6wAYaJWZxWdcON8mgvC0RNHL0SJ/SoSp4vbTkxN3AXEHPfIscS4vQ==
X-Received: by 10.25.233.201 with SMTP id j70mr7180440lfk.20.1489329645713;
 Sun, 12 Mar 2017 07:40:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.15.39 with HTTP; Sun, 12 Mar 2017 07:40:45 -0700 (PDT)
In-Reply-To: <20170312135640.GB1209@kroah.com>
References: <20170310124231.GA24231@singhal-Inspiron-5558> <20170312135640.GB1209@kroah.com>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Sun, 12 Mar 2017 20:10:45 +0530
Message-ID: <CALrZqyMLZ73rC5yb_rD_P-GO3+DcY1+es+RZemXsTfe3OVU62w@mail.gmail.com>
Subject: Re: [PATCH] staging: comedi: amplc_pci224: Convert macro GAT_CONFIG
 to static inline function
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Ian Abbott <abbotti@mev.co.uk>, devel@driverdev.osuosl.org, 
	outreachy-kernel@googlegroups.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset=UTF-8

On Sun, Mar 12, 2017 at 7:26 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Fri, Mar 10, 2017 at 06:12:31PM +0530, simran singhal wrote:
>> Convert macro GAT_CONFIG to static inline function as static inline
>> functions are preferred over macros. This change is possible since the
>> arguments at all call sites have the same type.
>>
>> This was done using Coccinelle:
>>
>> @r@
>> expression e;
>> @@
>> - #define GAT_CONFIG(chan, src) e
>> + static inline unsigned int pci230_gat_config(unsigned int chan,
>> +                                              unsigned int src)
>
> Where did you get the name from?
>
Actually the name should be pci224_gat_config as when I checked the other
drivers like amplc_pci230.c then its using pci230_gat_config so according to
what other drivers are using I should use pci224_gat_config.

I will correct this and will resend it.

>> +{
>> +       return ((chan & 3) << 3) | (src & 7);
>> +}
>>
>> @r1@
>> expression dev,reg,chan,src;
>> @@
>> -GAT_CONFIG(chan, src)
>> +pci230_gat_config(chan, src)
>>
>> Also, the comment describing the macro has been removed manually.
>>
>> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
>> ---
>>  drivers/staging/comedi/drivers/amplc_pci224.c | 14 ++++++++++----
>>  1 file changed, 10 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/staging/comedi/drivers/amplc_pci224.c b/drivers/staging/comedi/drivers/amplc_pci224.c
>> index 2e6decf..46026f5 100644
>> --- a/drivers/staging/comedi/drivers/amplc_pci224.c
>> +++ b/drivers/staging/comedi/drivers/amplc_pci224.c
>> @@ -216,8 +216,12 @@
>>  #define GAT_GND              1       /* GND (i.e. disabled) */
>>  #define GAT_EXT              2       /* reserved (external gate input) */
>>  #define GAT_NOUTNM2  3       /* inverted output of channel-2 modulo total */
>> -/* Macro to construct gate input configuration register value. */
>> -#define GAT_CONFIG(chan, src)        ((((chan) & 3) << 3) | ((src) & 7))
>> +
>> +static inline unsigned int pci230_gat_config(unsigned int chan,
>> +                                          unsigned int src)
>> +{
>> +     return ((chan & 3) << 3) | (src & 7);
>> +}
>>
>>  /*
>>   * Summary of CLK_OUTNM1 and GAT_NOUTNM2 connections for PCI224 and PCI234:
>> @@ -817,10 +821,12 @@ static void pci224_ao_start_pacer(struct comedi_device *dev,
>>        * source.
>>        */
>>       /* Make sure Z2-0 is gated on.  */
>> -     outb(GAT_CONFIG(0, GAT_VCC), devpriv->iobase1 + PCI224_ZGAT_SCE);
>> +     outb(pci230_gat_config(0, GAT_VCC),
>> +          devpriv->iobase1 + PCI224_ZGAT_SCE);
>
> Why put this on 2 lines?

I'll check this again and if their will be no problem in putting this
on one line then
I'll resend it with the change.

>
>>       /* Cascading with Z2-2. */
>>       /* Make sure Z2-2 is gated on.  */
>> -     outb(GAT_CONFIG(2, GAT_VCC), devpriv->iobase1 + PCI224_ZGAT_SCE);
>> +     outb(pci230_gat_config(2, GAT_VCC),
>> +          devpriv->iobase1 + PCI224_ZGAT_SCE);
>
> Same here?
>
> thanks,
>
> greg k-h

