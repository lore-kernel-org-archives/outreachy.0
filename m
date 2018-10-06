X-GM-THRID: 6609200682225369088
X-Received: by 2002:a19:1709:: with SMTP id n9-v6mr456240lfi.35.1538854868887;
        Sat, 06 Oct 2018 12:41:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:4145:: with SMTP id c5-v6ls376517lfi.13.gmail; Sat, 06
 Oct 2018 12:41:08 -0700 (PDT)
X-Google-Smtp-Source: ACcGV606hpoYkqVyIerO1zvRZ7spPdK+Ywq1LHC1c0z2Elk2lAh96RXyXE2vXzYyyyPpXMJVnpPZ
X-Received: by 2002:a19:4c46:: with SMTP id z67-v6mr434168lfa.10.1538854868059;
        Sat, 06 Oct 2018 12:41:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538854868; cv=none;
        d=google.com; s=arc-20160816;
        b=p9P8Ou0ezxUZweeZqKQ6MMhiVXFFj00hBN+9O2zik7FhafdhnL6fXoSEREYp2apdfJ
         goLaf26NUzvXlkBdFthgta2IM/TsMkzc/F0DzInab2AN9vmUOHn7qUz93TNbfwnibNFR
         osBmv8AXLAauztH0B0GjyEjlguRnajQ3EyDh85hH58cu8k/k1ngSocvnq9pNrq005SMF
         MxX0YcqHq8iCycKbgBa2kyIDZz8bs208x0XvgQcesdcQVvOYmYFEIKx55gj55LixuF9f
         1RffJFluQFa5OCcEFx75w4F15G0n3MbG6MXS8jvfZ3rqfBaEX/YtAbiUEnDoQBi9HUdg
         xA8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=93PcIrHmySVHePPyvRiJRodoYWRNafcXzrXEh4YhbSg=;
        b=j8+hflGT3OZIWFyZM4Rpaagn1rlzCXNRqNJS7es2iy0Q+lhITrkdTKeadvkEIelIzO
         7uErHPsMEiDtcK70kuIu2BNL/MgXr+oEtiGxH+zuisGbKg9GtMLc2SWFvY4WI+MSHh1j
         uygqzk4UdRzy6AyhJeDcgCMh/8JLj9E0jOPcmEhXQOcWVucgd0JpE1vpGwxx7UqnUpFb
         8W64X3xK516/WIjh3kQU3rcG/fIcEgL6qCW//hmJXk9hHqvPiNWBRvE6T0WzXTlEa4Cb
         f1p5sELGmwZvREFvCl8MsXMX1CwWxFxHRIt7mFw1QpOkx41Xg8zKng5bAZ1VHb/Uw6HZ
         JSvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id r81-v6si540510ljb.2.2018.10.06.12.41.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Oct 2018 12:41:07 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,349,1534802400"; 
   d="scan'208";a="349902622"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Oct 2018 21:41:06 +0200
Date: Sat, 6 Oct 2018 21:41:06 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Himanshu Jha <himanshujha199640@gmail.com>
cc: Bhanusree Pola <bhanusreemahesh@gmail.com>, 
    outreachy-kernel@googlegroups.com, abbotti@mev.co.uk, 
    gregkh@linuxfoundation.org, hsweeten@visionengravers.com
Subject: Re: [Outreachy kernel] [Outreachy Kernel][PATCH v5] staging:comedi:comedi_pci.h
 Prefer a maximum 75 chars per line
In-Reply-To: <20181006193150.GA8922@himanshu-Vostro-3559>
Message-ID: <alpine.DEB.2.21.1810062140250.2402@hadrien>
References: <20181006190246.GA14037@veda-VGN-CS3AGH-R> <20181006193150.GA8922@himanshu-Vostro-3559>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 7 Oct 2018, Himanshu Jha wrote:

> On Sun, Oct 07, 2018 at 12:32:47AM +0530, Bhanusree Pola wrote:
> > Adjust all lines exceeding 75 chars per line to fix checkpatch warning.
> >
> > Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> > ---
> >
> > changes in v5:
> > -Fixed Change log
> > -Change in subject line.Do not send as 'Re:'
> >
> > changes in v4:
> > -Remove Whitespace in comment section of module_comedi_pci_driver()
> >  to fix checkpatch Error.
> >
> > changes in v3:
> > -Comment section of module_pci_driver() exceeds 75 characters.
> >  Adjust the chars to 75 per line
> > -Modified log message.
> > -Added change log.
> >
> > changes in v2:
> > -comedi_pci_auto_config() function prototype is exceeds
> >  75 characters per line. Adjust to 75 chars to improve
> >  readability and also adjust the arguments to match open
> >  parantheses.
> > -Comment section of module_comedi_pci_driver() exceeds 75
> >  characters. Modified contents to adjust 75 chars per line.
> >
> >  drivers/staging/comedi/comedi_pci.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/comedi/comedi_pci.h b/drivers/staging/comedi/comedi_pci.h
> > index 1cc5436cb415..7291d3c0b7dc 100644
> > --- a/drivers/staging/comedi/comedi_pci.h
> > +++ b/drivers/staging/comedi/comedi_pci.h
> > @@ -42,7 +42,7 @@ void comedi_pci_driver_unregister(struct comedi_driver *comedi_driver,
> >  				  struct pci_driver *pci_driver);
> >
> >  /**
> > - * module_comedi_pci_driver()-Helper macro for registering a comedi PCI
> > + * module_comedi_pci_driver()-Helper macro for registering a comedi PCI
>
> The original line is:
>
> * module_comedi_pci_driver() - Helper macro for registering a comedi PCI driver
>
> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/drivers/staging/comedi/comedi_pci.h#n44
>
> The patch looks dubious to me.
>
> Always base your work on latest -next tree.
> https://www.kernel.org/doc/man-pages/linux-next.html

Bhanusree,

I think you made your new patch on top of your old one.

julia

>
> --
> Himanshu Jha
> Undergraduate Student
> Department of Electronics & Communication
> Guru Tegh Bahadur Institute of Technology
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181006193150.GA8922%40himanshu-Vostro-3559.
> For more options, visit https://groups.google.com/d/optout.
>

