X-GM-THRID: 6675069517668810752
X-Received: by 2002:a05:660c:a45:: with SMTP id j5mr7189976itl.20.1554184664818;
        Mon, 01 Apr 2019 22:57:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:7a07:: with SMTP id h7ls4466448iom.5.gmail; Mon, 01 Apr
 2019 22:57:43 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw3UTSZJtyr2nWXcxVAxpqM6e0NR42SyP+wkClSYGo287w5u5Zs3MuAujmUrUeCQugi0zBq
X-Received: by 2002:a5e:cb0d:: with SMTP id p13mr5779895iom.17.1554184663965;
        Mon, 01 Apr 2019 22:57:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554184663; cv=none;
        d=google.com; s=arc-20160816;
        b=lN4eDXCVekeBPrYqJu2qUj4LWk2Er7+NOVMd8sf5nUqp4X0dg8KvJV7w0Oh1j6UyZ1
         cl/CROZUItFEcMbyveMDCxVy5CC6nCx8SIsYZcDnobCDGGcVdnkFPNGQJ84OM+BHvjcY
         8IvyxkfQg2BMizS4Ja0i2zw1VSpIvTYE4PdsDwOohBgjW7oeoR9peKBkiGbSYZv0Il5H
         ZQneCIfFlBpPHSwhxrWA3iccskarogWNz+k9+D6IjQUQOHmym+L6lzux3mV/4D78acjO
         /DNj+ZJyvtxLc68ouXnKT+wh3Sh6snlm3GeD/SK16P7JhcfxFyZo6uZdlzvvMtfjQWrr
         aD9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=fzNJEh3vLAv1EhflHRHYi7nk1BgOLGEoLYQ34uOUqCQ=;
        b=vtzkjz5KOsQphYk7MRG8aB0nXTfyAQCdPC4UPgZMMBC3SjKM+hiQBwecZSsqAGKm3a
         n8oGSmUz9vFCRad/oCnbCl9bC6JVixbLMR6KlG63vA4YcY0++56CLhCrAWNe91ZKcE4Q
         RGfhc7pdvUe2ICgNQ8jDiRdsv1GsdVkQAV5xsWQpokVWRx2HfD7JyeC61DkDDZlP4Ci4
         8ZX/cAXMh7QU3TP17jLPe28qwF0UeBwBKC8N4zaj9F3IzSFbPdEJE/mcJy16/J8m6NGh
         M4BFmdmRCcHnWQlBcAR1/jR2rBWUNXqIveoDQwKkEx8rda9e8c87nJnoW+AiXQfbrvI/
         Ef5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=sLdRwGuv;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n6si561401iod.1.2019.04.01.22.57.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 22:57:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=sLdRwGuv;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B10082075E;
	Tue,  2 Apr 2019 05:57:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1554184663;
	bh=ggGuy6FlF5bOGWlsHRWLgoLzshOWTEz6m1ZaG0NsNqs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sLdRwGuvkGyXoXFivPU7oCSq8JqNElLF3bkBU9KllSKNnoldGrCbIRArF5FSMxKtU
	 zyrNuwgF96mf4ZshZJhqYA4bvj6n+xqjbe6SLE1cUh8FtVrFA/Ky9y4K+JE8O+I3ix
	 sD8EIBIZmbxG7N98TkWankSF2MXmWMG0LaS243AM=
Date: Tue, 2 Apr 2019 07:57:37 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v1] staging: mt7621-pci: remove comparison to null to fix
 checkpatch warning
Message-ID: <20190402055737.GA26004@kroah.com>
References: <20190401231843.24579-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190401231843.24579-1-jbi.octave@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Tue, Apr 02, 2019 at 12:18:43AM +0100, Jules Irenge wrote:
> remove comparison to null to fix warning
> reported by checkpatch.pl tool
> "CHECK: Comparison to NULL could be written "res""
> 
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/mt7621-pci/pci-mt7621.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
> index 379ae780c691..03d919a94552 100644
> --- a/drivers/staging/mt7621-pci/pci-mt7621.c
> +++ b/drivers/staging/mt7621-pci/pci-mt7621.c
> @@ -275,7 +275,7 @@ static int mt7621_pci_parse_request_of_pci_ranges(struct mt7621_pcie *pcie)
>  			break;
>  		}
>  
> -		if (res != NULL)
> +		if (res)
>  			of_pci_range_to_resource(&range, node, res);
>  	}
>  

This patch does not apply to my staging-testing branch at all :(

