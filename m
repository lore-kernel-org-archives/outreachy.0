X-GM-THRID: 6803941009110597632
X-Received: by 2002:ac2:5de5:: with SMTP id z5mr8819441lfq.132.1584186679599;
        Sat, 14 Mar 2020 04:51:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:5476:: with SMTP id e22ls1838140lfn.7.gmail; Sat, 14 Mar
 2020 04:51:18 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtPcKcwGtDV+EErSHzH6ePDYdOcL5oNxGNyNusnHffGcXBDwASdKEQT+pVLls+IrEgYvDMd
X-Received: by 2002:a05:6512:1095:: with SMTP id j21mr11567795lfg.124.1584186678116;
        Sat, 14 Mar 2020 04:51:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584186678; cv=none;
        d=google.com; s=arc-20160816;
        b=cXSSbAS0wQzartSBe8NdXgIqBGlOv/yHzJIctgwjSKEZ8oirYQ+AQSOSqcMtEOmdJz
         FPONJPGbE/pD3KR+yYIDpIIjch2z4e99mmlleXH3tcambngnGNgRswz4XEgFKK1m0utA
         3AxQMtVyEzxAmtOXF1Xi5/bGe4PWST5oQH8sXX1WTSBKeLtlZ4poG81RhOtGUOf0vPXp
         +xYo0jz83Jos3VZDlGZNnA3FLImIB4pA+/iOwzSZXIXLFUtm9JcfhwUibJTOYXq3XecD
         c8t3waFw0JFWGmfkgdYUa/xCV0++RVWUP5pl5Z87W3jKRDQLApty4bjFWrvqpXZUUeXJ
         IYlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=Fa60g/WdbYt1OFuPb3I/6MdGpT8byKpLMECQGd8PEvk=;
        b=ViLoDYVB3VwyA/lE0D5/MNzwDemCj16lNglLIV0aKxNzCNhW7V8LZZKAP3EYo3EpcZ
         oFu7pmg2Wgb0o7wsLMXTrp5PYniljxLgHSqwzDTEgz5luFDcIlyzwiA1ZQgEWjPHyo4l
         v+FuhrAS5Uq24trvh1Td2qkFI4gNbyVK3N1QbkEzSOOZjXxBjbwQXBw8cfwUGBRAFkaj
         YwpgzOohhPHBdFNDOhr9iwhK/tGQz9bWNlVRijIIezUc24N7EoDYC9RzUFB7yoruorym
         GR5lLQ4SYAqVp0g7bP3LI6WRBnYfE5jO+4i174yu6iGZ+bPj2qeKKX4gK8es9cg+uBbW
         +XaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id t3si600068lfq.5.2020.03.14.04.51.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Mar 2020 04:51:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,552,1574118000"; 
   d="scan'208";a="440317648"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Mar 2020 12:51:17 +0100
Date: Sat, 14 Mar 2020 12:51:16 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: R Veera Kumar <vkor@vkten.in>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rts5208: Fix long line in
 C func call argument
In-Reply-To: <20200314060539.GA2709@tulip.local>
Message-ID: <alpine.DEB.2.21.2003141249590.3026@hadrien>
References: <20200314060539.GA2709@tulip.local>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 14 Mar 2020, R Veera Kumar wrote:

> A simple fix of long line in C function call argument.

Try to rewrite the whole thing without using the word "fix".  What did you
do and why?

Simple is not a good word to use, because it is your opinion.  It is
probably everyone's opinion in this case, but it is still an opinion.

julia


> Found using checkpatch.pl.
>
> Signed-off-by: R Veera Kumar <vkor@vkten.in>
> ---
>  drivers/staging/rts5208/rtsx_chip.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rts5208/rtsx_chip.c b/drivers/staging/rts5208/rtsx_chip.c
> index 17c4131f5f62..c6f9375468eb 100644
> --- a/drivers/staging/rts5208/rtsx_chip.c
> +++ b/drivers/staging/rts5208/rtsx_chip.c
> @@ -940,7 +940,8 @@ static void rtsx_monitor_aspm_config(struct rtsx_chip *chip)
>  		if (maybe_support_aspm)
>  			chip->aspm_l0s_l1_en = 0x03;
>
> -		dev_dbg(rtsx_dev(chip), "aspm_level[0] = 0x%02x, aspm_level[1] = 0x%02x\n",
> +		dev_dbg(rtsx_dev(chip),
> +			"aspm_level[0] = 0x%02x, aspm_level[1] = 0x%02x\n",
>  			chip->aspm_level[0], chip->aspm_level[1]);
>
>  		if (chip->aspm_l0s_l1_en) {
> --
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200314060539.GA2709%40tulip.local.
>

