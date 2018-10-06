X-GM-THRID: 6609200682225369088
X-Received: by 2002:a63:951e:: with SMTP id p30-v6mr6248984pgd.28.1538834836910;
        Sat, 06 Oct 2018 07:07:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:458e:: with SMTP id n14-v6ls4261412pfi.13.gmail; Sat, 06
 Oct 2018 07:07:16 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62kaxC6J6okP4NTIDP2aM4I92zJEcO+kLmhjL3OGVry5R4D1ZbaRJNyzJwVb6W8kQx3LMMV
X-Received: by 2002:a62:105c:: with SMTP id y89-v6mr2788768pfi.58.1538834836046;
        Sat, 06 Oct 2018 07:07:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538834836; cv=none;
        d=google.com; s=arc-20160816;
        b=jL+7552+MoPB/V7cS6gEOL9u9NqZemOQ8Aqyxxz6KpW2l0ghDYffGM6y6E+G6PCCGN
         nITpCuVrU0PE7V4wZwZDNUQ+3W8Q0xzXFPycsN1qT5JHZkipMUrSNVsitBhQmpe+D0Zo
         eAPaNpcSjULqp1BzcJwGXYT/aw0QdAPz7yteIvp/VVMInNcNIAOuH02JPuqg/ISvrLuE
         rs45z5LI8ip4TfMIFgE1C1ttznmRXLMhLUpe06zgwwZI/OqYdz2SNuJmkOUqSWxG5VHl
         MM40NGdREK6CdIEIL05UO4YJYVreAbnua3k0Ne71cehdg2kd6CO0rLJ7AMrz2c+nDTUH
         QQEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:references:reply-to:cc:to:from:subject
         :dkim-signature;
        bh=pbLfbC7hRKFEi6bnE81Q7vkuCnLEiq09/FnmMazngeU=;
        b=CdbXmBiIjrQ9UZvDCMBe1nWg98PntnQlmIKIb98gEyIrcdFCcVQdIWdoCtwi4euIvX
         XAt87C/BS6FQFaIAXEONp1qkx6ADGe6dxOJKdvWCsxhDP1LvEvtjPmD61U35HBCQn9Fd
         0am9xLh1xem1sbJbsijYCs+On15Rs/aGL+i+sdJxPYf9QIb91RnAROdH0KeIEwVqfxeq
         SnuuLI85i/MY/6acrXtgE8rwnmLStkV55B29SboCbr7V8AU3rX0rrtccxu2wCNswZQ1g
         /3yxudVP/tHnY+0OrQ5GAXkJUAt5Oty1HU0pvszsb91+uqfN5T2EF6sRWT0ezzgSAhrx
         iv0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ViyALnOY;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id b27-v6si3310pfj.5.2018.10.06.07.07.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Oct 2018 07:07:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ViyALnOY;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id q17-v6so8109626plr.8
        for <outreachy-kernel@googlegroups.com>; Sat, 06 Oct 2018 07:07:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:reply-to:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=pbLfbC7hRKFEi6bnE81Q7vkuCnLEiq09/FnmMazngeU=;
        b=ViyALnOYl1ooSgA9vSvFnKovq+DGgjNsR28xyX8XhIm6dUa7om10sEzbD/ocIC9DYr
         WQtn+N5M0YtE3Pfs50ru1yv9xV5gERBmYpubGk9KoKc1TcIeqT06KbPhthVV7dQ7eEVL
         iiYxUzw7fueCivndtx3JLduertl/fGF4SU2nqbwmtnJj3g46Y5qW8Py0OLcKDZRcon9C
         k7akkzdRbyPmz+BvDyM5WCPDkF3pg0CQLmAiuW5I9ZFitsjVS3eFGXiJeGQcVWIph8tk
         6a94v5BGV9ERp2w5eTWFpB4OXnRl7QNSiv66DkC/z5+xmHv91j8yjJEcd84HQJaLgiog
         Gwcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:reply-to:references
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language;
        bh=pbLfbC7hRKFEi6bnE81Q7vkuCnLEiq09/FnmMazngeU=;
        b=o0Dz05luwCVxfE9QKqp2RA40n6Vbf5WWlVSH6hVIPiYJVv+CYS9wDh72u/5MbGJuGT
         xPv/yuyCWTR7+QC+BRllSJTqb2gqh0eoe4bb6c+/eEEhFz3K9/MJHjP7tX63G6dUkVhY
         TNnPe1JUiqTOT5xABQmJccWtdUfLn1mQFQO5+W2UfOHmtq/uugDNGN0JVhBVMAIVp5mc
         REuEBY5k/EzvM07EVoDUuYKZzDId6l7M7t3hm5HfR7aSB2PxtvaBY1buQIM68EBz1NOv
         ZuQk7jMKpfWYmswYuoZB/W1NimzSInpmaXTwj1P7hKneXOF3Nh70TXKmOOlXttc0qU4T
         QcVA==
X-Gm-Message-State: ABuFfoiOBs9UstDHYRGm4eRw4STO6MBwshsHe7mJXE7gD7ldzFHrY/F/
	I4SNqxFkag6DJNao0/6oBoI=
X-Received: by 2002:a17:902:2f84:: with SMTP id t4-v6mr16422455plb.87.1538834835686;
        Sat, 06 Oct 2018 07:07:15 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from [192.168.1.5] ([183.83.92.101])
        by smtp.gmail.com with ESMTPSA id s2-v6sm19796113pfk.133.2018.10.06.07.07.13
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Oct 2018 07:07:15 -0700 (PDT)
Subject: Re: [Outreachy Kernel][PATCH v4] staging:comedi:comedi_pci.h Prefer a
 maximum 75 chars per line
From: Bhanusree <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ian Abbott <abbotti@mev.co.uk>,
 H Hartley Sweeten <hsweeten@visionengravers.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Reply-To: julia.lawall@lip6.fr
References: <20181006135752.GA3037@veda-VGN-CS3AGH-R>
Message-ID: <420beddd-814b-138c-2eae-81683b012c51@gmail.com>
Date: Sat, 6 Oct 2018 19:37:12 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20181006135752.GA3037@veda-VGN-CS3AGH-R>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On Saturday 06 October 2018 07:27 PM, Bhanusree Pola wrote:

> Adjust all lines exceeding 75 chars per line to fix checkpatch warning.
>
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> ---
> changes in v4:
> -Remove Whitespace in comment section of module_comedi_pci_driver()
>   to fix checkpatch Error.
>
> changes in v3:
> -Comment section of module_pci_driver() exceeds 75 characters.
>   Adjust the chars to 75 per line
> -Modified log message.
> -Added change log.
>
> changes in v2:
> -comedi_pci_auto_config() function prototype is exceeds
>   75 characters per line. Adjust to 75 chars to improve
>   readability and also adjust the arguments to match open
>   parantheses.
> -Comment section of module_comedi_pci_driver() exceeds 75
>   characters. Modified contents to adjust 75 chars per line.
>
>   drivers/staging/comedi/comedi_pci.h | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/comedi/comedi_pci.h b/drivers/staging/comedi/comedi_pci.h
> index 1cc5436cb415..7291d3c0b7dc 100644
> --- a/drivers/staging/comedi/comedi_pci.h
> +++ b/drivers/staging/comedi/comedi_pci.h
> @@ -42,7 +42,7 @@ void comedi_pci_driver_unregister(struct comedi_driver *comedi_driver,
>   				  struct pci_driver *pci_driver);
>   
>   /**
> - * module_comedi_pci_driver()-Helper macro for registering a comedi PCI
> + * module_comedi_pci_driver()-Helper macro for registering a comedi PCI
>    * driver
>    * @__comedi_driver: comedi_driver struct
>    * @__pci_driver: pci_driver struct

