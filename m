X-GM-THRID: 6609200682225369088
X-Received: by 2002:a17:906:8695:: with SMTP id g21-v6mr3111995ejx.4.1538852813262;
        Sat, 06 Oct 2018 12:06:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:a383:: with SMTP id k3-v6ls2623752ejz.14.gmail; Sat,
 06 Oct 2018 12:06:52 -0700 (PDT)
X-Google-Smtp-Source: ACcGV638NerAYH69uZHABOlM1tqKZZznszmpv9aYmkLra/ECXnA0HHMylHE1lAwCZmBM0gQEb+ha
X-Received: by 2002:a17:906:b390:: with SMTP id o16-v6mr854178ejz.14.1538852812346;
        Sat, 06 Oct 2018 12:06:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538852812; cv=none;
        d=google.com; s=arc-20160816;
        b=w2/iSVtB5U819YzuerDcWSmRhEnn5RD3rUwskxXIAf9xAfcbu661U8xIetmJPIknoS
         FIVzCEuP5zvrgb7+BMcCbAWnjJYKjjIhBSB5BxiRds51clgBCfLMauNDYTu+SuU4h13P
         qf+bk0YM/9B+4G9X/pBcxFf2R1H/CWGP/aACJZ7YoWe+e16NnXCglT7RD9Ho8z5hwkNB
         ulDQ7LAxEy7u4uemnsifa7SZ3wU2NqYh2hzSIhEsPeMLh5UifpJO0vOVaAU5kRRTlSrn
         P9JgvfRQd5onxvodMH0chmEUTSgh/K6Pzcw0mTTKJ+6WOAbl7s71SHt85k1B4ZLjHNcI
         iMyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=+ghTJxwxMFIU5TyLWTNRU/p7tbwvyll8LV2b5iiKzTE=;
        b=eGtgPJR6GkpvykuN/zO/h+E3lOFqlbOIq7S2WSdpVfB93Ad7Wawd7eL9qICn1yqpUY
         cZIson0Ngqmi9M/9I9dpbD/cC0DJtLu/SQtF6xfSfD3VUyvMjpG3FZjmlbkhR4lFdFBX
         +ivshExt42NlpH2nRwA9cTkvuM8rcCdQQwxqIcO4BlmntSP1IOluMs3JuiEZt5+Oda9U
         S774RJ9SU4LNBCr1mDPYdg2LNv0VKsqzEfk4YZ2XBOookU4ah1mQU1/UYiMHnlIv8+ZC
         mSw/g5K3SWVvJshdNyJT22mSwwtKCh14hoT7tslaTQ94rIK1x2+/8MGlsXY8q1zPZoJf
         R61w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id n17-v6si753110edd.2.2018.10.06.12.06.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Oct 2018 12:06:52 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,349,1534802400"; 
   d="scan'208";a="349900737"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Oct 2018 21:06:51 +0200
Date: Sat, 6 Oct 2018 21:06:51 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
cc: outreachy-kernel@googlegroups.com, abbotti@mev.co.uk, 
    gregkh@linuxfoundation.org, hsweeten@visionengravers.com
Subject: Re: [Outreachy kernel] [Outreachy Kernel][PATCH v5] staging:comedi:comedi_pci.h
 Prefer a maximum 75 chars per line
In-Reply-To: <20181006190246.GA14037@veda-VGN-CS3AGH-R>
Message-ID: <alpine.DEB.2.21.1810062105410.2402@hadrien>
References: <20181006190246.GA14037@veda-VGN-CS3AGH-R>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 7 Oct 2018, Bhanusree Pola wrote:

> Adjust all lines exceeding 75 chars per line to fix checkpatch warning.
>
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> ---
>
> changes in v5:
> -Fixed Change log
> -Change in subject line.Do not send as 'Re:'

It doesn't matter here, because this text will go away, but please get in
the habit of putting at least one space after punctuation.  That is:

Change in subject line. Do not send as 'Re:'

Then things don't run together, and it is easier to read.

julia

>
> changes in v4:
> -Remove Whitespace in comment section of module_comedi_pci_driver()
>  to fix checkpatch Error.
>
> changes in v3:
> -Comment section of module_pci_driver() exceeds 75 characters.
>  Adjust the chars to 75 per line
> -Modified log message.
> -Added change log.
>
> changes in v2:
> -comedi_pci_auto_config() function prototype is exceeds
>  75 characters per line. Adjust to 75 chars to improve
>  readability and also adjust the arguments to match open
>  parantheses.
> -Comment section of module_comedi_pci_driver() exceeds 75
>  characters. Modified contents to adjust 75 chars per line.
>
>  drivers/staging/comedi/comedi_pci.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/comedi/comedi_pci.h b/drivers/staging/comedi/comedi_pci.h
> index 1cc5436cb415..7291d3c0b7dc 100644
> --- a/drivers/staging/comedi/comedi_pci.h
> +++ b/drivers/staging/comedi/comedi_pci.h
> @@ -42,7 +42,7 @@ void comedi_pci_driver_unregister(struct comedi_driver *comedi_driver,
>  				  struct pci_driver *pci_driver);
>
>  /**
> - * module_comedi_pci_driver()-Helper macro for registering a comedi PCI
> + * module_comedi_pci_driver()-Helper macro for registering a comedi PCI
>   * driver
>   * @__comedi_driver: comedi_driver struct
>   * @__pci_driver: pci_driver struct
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181006190246.GA14037%40veda-VGN-CS3AGH-R.
> For more options, visit https://groups.google.com/d/optout.
>

