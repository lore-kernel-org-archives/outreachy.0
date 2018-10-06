X-GM-THRID: 6609200682225369088
X-Received: by 2002:a19:a418:: with SMTP id q24-v6mr435641lfc.9.1538828792261;
        Sat, 06 Oct 2018 05:26:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:f609:: with SMTP id x9-v6ls356546lfe.1.gmail; Sat, 06
 Oct 2018 05:26:31 -0700 (PDT)
X-Google-Smtp-Source: ACcGV626QhawfDRP92WrtKJfCjZth6uc5DuW+zkBKEv6ooVg/H6MH8KNWI9sLjn3QIUF4lSxxkLl
X-Received: by 2002:ac2:4106:: with SMTP id b6-v6mr418035lfi.40.1538828791457;
        Sat, 06 Oct 2018 05:26:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538828791; cv=none;
        d=google.com; s=arc-20160816;
        b=Ev6HkWTzhA9HUIKvJuPC08QPjEHofoJheWevIoB+kIwC8uQPFURcx+sgfK/EvDFajc
         sT4eOla2KuWSLIiYJvTro8L08xchpJS82yk98mX4w+znryfu5FKZST5f/4lRRaJs0ebs
         A2nsJVA9N4d5FnzNHDPiT/wcBzK8j7x2DVvODvb0fytLfz7viynj/Utlh/tezXtVxUTM
         qhw81fMXPbmuKX7NgOxhbD0IHFtgS4bqhBA3/1D1Z+RACOrXQVpGAVqaiPqHu5augqmH
         cHYgFKkJuQjw1+OGCcYL2IcK3wcP5XH6wsZ7NAVx0comKE9boWoYX02DxN7Sq++cOP8N
         AHYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=P5cEms6eFP+ImvVzIn1UhzgO9nZ0jcXjiJWig7pT+K8=;
        b=nlKael/1mEocn5p9WapLvAmnPIB4nua6egcE8vjMredqxnrEAUAinP1i3avbr9ITbS
         NVMMXlstfzgASnFM7HoeydEaEwyJkKI1/T/EjyiRYyPLMafrt5bLGwOcoSjVyszgMAkF
         jP8K6p7JuDtkUWv2hbKOZ17f9PPOIM6k2013JBYyogo5x02CNl7VFaNu+JmOExFxlEpn
         2U0FFWG6L0bYpNlw5D1CU4MlvV8QQ2Gamh0vjlUx8VJ/jpP8H0JyIDXxZS5rnmLzc7M7
         1BsMo1Hlwl61X/wkEwRhrarZ/sK2xHAnSmtZ/qet4I4COKhGMY9ePJmEKRDpgwldpeZ3
         brxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id f192-v6si362339lff.4.2018.10.06.05.26.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Oct 2018 05:26:31 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,348,1534802400"; 
   d="scan'208";a="349873332"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Oct 2018 14:26:30 +0200
Date: Sat, 6 Oct 2018 14:26:30 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel][PATCH v2]staging:comedi:comedi_pci.h Prefer
 a maximum 75 chars per line
In-Reply-To: <20181006111404.GA13951@veda-VGN-CS3AGH-R>
Message-ID: <alpine.DEB.2.21.1810061425030.2363@hadrien>
References: <20181006111404.GA13951@veda-VGN-CS3AGH-R>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 6 Oct 2018, Bhanusree Pola wrote:

> comedi_pci_auto_config() function prototype is exceeding more than
> 75 characters per line.Adjusted to 75 chars to improve readability
> and also adjusted the arguments to match open parantheses.

Use the imperative and put at least one space after punctuation.

>
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> ---
>  drivers/staging/comedi/comedi_pci.h | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/comedi/comedi_pci.h b/drivers/staging/comedi/comedi_pci.h
> index 4e069440cbdc..d89273e43cea 100644
> --- a/drivers/staging/comedi/comedi_pci.h
> +++ b/drivers/staging/comedi/comedi_pci.h
> @@ -31,7 +31,8 @@ int comedi_pci_enable(struct comedi_device *dev);
>  void comedi_pci_disable(struct comedi_device *dev);
>  void comedi_pci_detach(struct comedi_device *dev);
>
> -int comedi_pci_auto_config(struct pci_dev *pcidev, struct comedi_driver *driver,
> +int comedi_pci_auto_config(struct pci_dev *pcidev,
> +			   struct comedi_driver *driver,
>  			   unsigned long context);
>  void comedi_pci_auto_unconfig(struct pci_dev *pcidev);
>
> @@ -41,7 +42,7 @@ void comedi_pci_driver_unregister(struct comedi_driver *comedi_driver,
>  				  struct pci_driver *pci_driver);
>
>  /**
> - * module_comedi_pci_driver() - Helper macro for registering a comedi PCI driver
> + * module_comedi_pci_driver()-Helper macro to register a comedi PCI driver

The log message doesn't say anything about this change.  The change is not
an improvement either,  Just move the word "driver" to the next line.

julia

>   * @__comedi_driver: comedi_driver struct
>   * @__pci_driver: pci_driver struct
>   *
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181006111404.GA13951%40veda-VGN-CS3AGH-R.
> For more options, visit https://groups.google.com/d/optout.
>

