X-GM-THRID: 6609200682225369088
X-Received: by 2002:a67:a950:: with SMTP id s77mr15075419vse.31.1538848562761;
        Sat, 06 Oct 2018 10:56:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:d00c:: with SMTP id r12-v6ls175409vsi.9.gmail; Sat, 06
 Oct 2018 10:56:02 -0700 (PDT)
X-Google-Smtp-Source: ACcGV60FvTNA0l704kyqBJcbiY9BokzqxU9CSdCgQHJ9kFKFklclfIAftYFO1VNCoAqZHnMSagJG
X-Received: by 2002:a67:8251:: with SMTP id e78mr15058350vsd.5.1538848562172;
        Sat, 06 Oct 2018 10:56:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538848562; cv=none;
        d=google.com; s=arc-20160816;
        b=SEsRdB1mtXSpEq/4okyoQWQtB+z6mMyyq7wQJghdMNoFyX9FZFkHwQcDI4ge2Pff9B
         zDUTtiENkTHjnvdN3Zq7ueZECUDJVzHOyfikT/MQPKAwLLYhfOo49u/WMv7CAd0l9w5J
         lIQkFv9r4VHJ8/0fVl83GY+/o5YjmzBJDrDcoD17FrAIDn7Lzy+gXQm55W68jeNVXwT0
         SRuhc4hYecixWs3G/EKrMR2sWG0jE+AsBFlnAsg/QxNy5FTCmAs9IPl+xKdLD9M9AA3a
         hb3yecUrkYGu/q3flwrgw7ZpyGgKfjuaxD7sU+k1Uo3pz0EuJR73hx1s+Ex1qB7932Ny
         2vfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=HsQSRZhl/qL2desPmfro6LJ2/RwbtjeyeeKI8IHuogI=;
        b=qG4nOGdOiZ32YywGEDRodw4ppsuz0n45vrVWXMJvp9ngt+/nJc1F472kG7VExxBITs
         FjH+OEK6aIT0bqnPLc2sXJigHr5M869zwVFj6xFV4eDdnNCkQxBpxdz8BwZaylsd1lRj
         EDwZ3QEhXtqn6wW3UBHOpA84pgAcvOzqBojS4ZEsz1witKyXj1eN/qyDFLv5NyAaW3Io
         A3Y0HHa0rW0FLpm2Vgc15r7JNdbTJER/2jIsbxOM79gUylLj5zSCVxpTqdeVc9AS163g
         dOSbsnQdFN+1sTpkU/d98bhm88Aa4KisaeqD4yv01xFKPC5QllelRX95lWHi3BQDebMm
         +pGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lY5AjKTX;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himanshujha199640@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id y4si613051vsa.2.2018.10.06.10.56.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Oct 2018 10:56:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lY5AjKTX;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id m77-v6so6514241pfi.8
        for <outreachy-kernel@googlegroups.com>; Sat, 06 Oct 2018 10:56:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=HsQSRZhl/qL2desPmfro6LJ2/RwbtjeyeeKI8IHuogI=;
        b=lY5AjKTXmiLDfJnm2TybBEGfAYhuUA2mkOzAE280LkFyJjy3fjdIbmcm+L9OZngx2V
         anjXP/ntDEHL0vtSOr8IN48RyyDuy3dr4yIyqF/Wrefu2Cm92VNU04Af6vsgjZbqSqO1
         o7KpC7yHIsSMLfuGi99naRecRQp834nHar55MTTpmLsal77zh1ZSchGmgYev3BgsvYS5
         SusFac4OFOYlldng+WIzG4aWPjUrqMqS5IoUty1rlmdu6+aAhzr7i1FReZBeVMZj/ZHH
         cs3/oubtFpSVEQ8cUkjFmnx7usJLgdTrBujyfuNFgx+TENsdD7FrOJ9exAj4IXHHEEky
         Do0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=HsQSRZhl/qL2desPmfro6LJ2/RwbtjeyeeKI8IHuogI=;
        b=VRhWUUG+Q1dbDjQZxw9WiLQ3gu8u1ArYUC34RZU8JY4quv4j5HxOqqUAsDcndxywvq
         oWZYTxxIhW69G+4ZVer7aDgfdQtbqAql9QUAycZFKQ0smCzeaf9RtiIWyJRQErV8ebt2
         3AjSESxH7W1vefXdaPFmgEHs3KnENlqMaU94tGK0uxzw4rHA4EteiEGvUDTxEzeB4GnB
         ATE6sEnFN9K6ASPJ3dyiV0tj6DCYkKNl+XHDasi22QdhoDO9SyXcgvayczY1T20hxw+q
         z2qrefY6Oo4d1ffwzDh3REH8OO7FvpnerHvxceEpBJ3lx6Pejj0MpyHVn7GQHeA1nEwd
         Gp8w==
X-Gm-Message-State: ABuFfojzjJROKPRYbVvb5yp1YA3A2ncHInTiZP5PmnX/64DDFGIiCXn1
	j93f6S9vmC0fWzA55AZ1cek=
X-Received: by 2002:a65:588e:: with SMTP id d14-v6mr14771340pgu.117.1538848561178;
        Sat, 06 Oct 2018 10:56:01 -0700 (PDT)
Return-Path: <himanshujha199640@gmail.com>
Received: from himanshu-Vostro-3559 ([103.233.116.134])
        by smtp.gmail.com with ESMTPSA id d2-v6sm15141284pfn.118.2018.10.06.10.55.58
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 06 Oct 2018 10:56:00 -0700 (PDT)
Date: Sat, 6 Oct 2018 23:25:55 +0530
From: Himanshu Jha <himanshujha199640@gmail.com>
To: julia.lawall@lip6.fr
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [Outreachy Kernel][PATCH v3]
 staging:comedi:comedi_pci.h Prefer a maximum 75 chars per line
Message-ID: <20181006175555.GE6283@himanshu-Vostro-3559>
References: <20181006135752.GA3037@veda-VGN-CS3AGH-R>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181006135752.GA3037@veda-VGN-CS3AGH-R>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Sat, Oct 06, 2018 at 07:27:52PM +0530, Bhanusree Pola wrote:
> Adjust all lines exceeding 75 chars per line to fix checkpatch warning.
> 
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> ---

Your subject says v3 but changelog says v4 ...

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

The change is identical ?
Use `git rebase` to fixup and send again.


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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181006135752.GA3037%40veda-VGN-CS3AGH-R.
> For more options, visit https://groups.google.com/d/optout.

-- 
Himanshu Jha
Undergraduate Student
Department of Electronics & Communication
Guru Tegh Bahadur Institute of Technology

