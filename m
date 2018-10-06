X-GM-THRID: 6609200682225369088
X-Received: by 2002:a65:4888:: with SMTP id n8-v6mr6756944pgs.15.1538854319027;
        Sat, 06 Oct 2018 12:31:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:bc87:: with SMTP id bb7-v6ls4807218plb.3.gmail; Sat,
 06 Oct 2018 12:31:58 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62b0Y9kEwJg0D2kM9LSEs1ZTcGWgNLDvtx1UWIVopabxoKdpHA4d603/OB8xqIEFs0XetZx
X-Received: by 2002:a17:902:7c8a:: with SMTP id y10-v6mr8419180pll.2.1538854318453;
        Sat, 06 Oct 2018 12:31:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538854318; cv=none;
        d=google.com; s=arc-20160816;
        b=efqnVKyb0pk8ZIQX2jjXeYvzsdt19LZxaslP9WWYLcuZnLBc820aFV7wsHfRdhtGFs
         Rmy7YnnD3p5eT48OaRHQ7fAWmxei9ldnfkK9RU6han58oeYB6NroCWaHe+ZZ0xT/kiX3
         qM1tr2RfEokK5oAvQKPnEN0nVxWIhstaQRAYBORr/RHY40vtmO4irDgyKDDj3LpSZSc/
         gEHkoDbga9LCxpIVfBznLPkKfkPdOxUvYx93Q8Na4ESzWR3j57fdDuYriGnnaOf7PlEN
         G4+mCxnQFeIev7NYertNBJt7UDP7MmH7LRdV/KMeG1Elr+PfobA8b4KvXszUFY69o6fN
         5QOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=mEok1pe7/Zh5zBVxZFS8kGS4/v9gudkfIBmo8gDigoo=;
        b=ix+OVn94EH5hst4J6otgqlIx3VI7muRiudv9sngh7V9T7gkL57BTflNZaFdVbC3ae7
         mZj7Gnr0X1j2qrdrBFlt5bNdcR0tf9LiNyFTwJaYpGb5CoA6iX2uQ0xxLF+Q63nhplWN
         dsh6THCtTKPdwGoFpcnTEmzuHbDToNBOXCYg/a/c3kRTfSXFKyGnNrvkIeEjY+URv2jO
         03Qr9gKZju1d6LVjlTxnar3oA1sKcpqFgtSJD9mq6+4Shn/LJBPIIowshraA0sORPqRA
         Sh94uVk1y6r18RuNSzb1KYM/5ico9pFBRKC+j364p9K6IA8+dJzTDytRjDAMK/1hutRh
         DiDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Yif3vsdM;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himanshujha199640@gmail.com>
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com. [2607:f8b0:4864:20::435])
        by gmr-mx.google.com with ESMTPS id p85-v6si459154pfa.3.2018.10.06.12.31.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Oct 2018 12:31:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) client-ip=2607:f8b0:4864:20::435;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Yif3vsdM;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x435.google.com with SMTP id c25-v6so6258742pfe.6
        for <outreachy-kernel@googlegroups.com>; Sat, 06 Oct 2018 12:31:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=mEok1pe7/Zh5zBVxZFS8kGS4/v9gudkfIBmo8gDigoo=;
        b=Yif3vsdMSc3YRCLuLmuuaMktuz88kvQ3WMUgLa6ugkyMNa+zObUGC4lxjSFnXVYe9P
         tVKlxq8z3klP/DnkVUYSaEVxU+afIco0E1vCzAqFH5UbaEW/ffhexJF7Ey//FuPjJmLU
         jPSczMZ0oUirgyS0nd9Ujrc+stGCEYtz+r+GbYDcIpjURbw9gLFwRvGG/r3iSm3v2WSG
         fSylNfjXBNeDHUHkPRF2HVX/PKxSlvQrChG4F1VGlFfpSMXkGKLqkv/eW2PQCK1hkNoo
         s57MCnM2dyRRFJPMZE869StfLxYWRBmz6ZQbXHKRMUzmExNqaPFozSjvQ3b97uRpRlww
         fkuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=mEok1pe7/Zh5zBVxZFS8kGS4/v9gudkfIBmo8gDigoo=;
        b=Y/1jfwbPmeIOtQlsAfPj0nyJwITPI8l9emU67QjmT4hidoAimWB8doR84gU6FQdYZG
         zI+TGbxi34A7cf4j5SkaV2AP4pQtA8p278k2jwcJI9EZFUNY255bmMviUKqgh3y7QGyu
         zXxc3wyduFUDGJ/mx3rQR4GXwQeZ8OxYYG56X4HP4bY0JlqnapeZdtwZdSC5g1jqGd0z
         6AKNmXkmrMywB+U3CmoQoiNCCjyhTPC37m3iWMhDbhXPa5dZrnBO7k5DyCkMauWmbOEG
         iAwufvBmlCsSiuJ9tpX00o9oOmAZpYqCuNk/5A12hRC+y4aAmCkkHivlniflhtJtNEru
         JXMg==
X-Gm-Message-State: ABuFfoiKfMinliOuYq2EyjYLA5E5dq8hiuB1rSYOY0tzRve6LWIddDh/
	DHfK7DUTipI1QqOgw46zvWCme+7b
X-Received: by 2002:a63:cc:: with SMTP id 195-v6mr14915241pga.44.1538854317961;
        Sat, 06 Oct 2018 12:31:57 -0700 (PDT)
Return-Path: <himanshujha199640@gmail.com>
Received: from himanshu-Vostro-3559 ([103.233.116.134])
        by smtp.gmail.com with ESMTPSA id q24-v6sm17835309pfi.165.2018.10.06.12.31.55
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 06 Oct 2018 12:31:57 -0700 (PDT)
Date: Sun, 7 Oct 2018 01:01:51 +0530
From: Himanshu Jha <himanshujha199640@gmail.com>
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
Cc: outreachy-kernel@googlegroups.com, abbotti@mev.co.uk,
	gregkh@linuxfoundation.org, hsweeten@visionengravers.com
Subject: Re: [Outreachy kernel] [Outreachy Kernel][PATCH v5]
 staging:comedi:comedi_pci.h Prefer a maximum 75 chars per line
Message-ID: <20181006193150.GA8922@himanshu-Vostro-3559>
References: <20181006190246.GA14037@veda-VGN-CS3AGH-R>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181006190246.GA14037@veda-VGN-CS3AGH-R>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Sun, Oct 07, 2018 at 12:32:47AM +0530, Bhanusree Pola wrote:
> Adjust all lines exceeding 75 chars per line to fix checkpatch warning. 
> 
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> ---
> 
> changes in v5:
> -Fixed Change log
> -Change in subject line.Do not send as 'Re:'
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

The original line is:

* module_comedi_pci_driver() - Helper macro for registering a comedi PCI driver

https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/drivers/staging/comedi/comedi_pci.h#n44

The patch looks dubious to me.

Always base your work on latest -next tree.
https://www.kernel.org/doc/man-pages/linux-next.html

-- 
Himanshu Jha
Undergraduate Student
Department of Electronics & Communication
Guru Tegh Bahadur Institute of Technology

