X-GM-THRID: 6615072940332417024
X-Received: by 2002:a5d:47c2:: with SMTP id l2-v6mr3964452wrs.24.1540191855248;
        Mon, 22 Oct 2018 00:04:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:d108:: with SMTP id i8-v6ls1242616wmg.2.gmail; Mon, 22
 Oct 2018 00:04:14 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63/rSH9b+pwNt2DnlB5LQZt0fv8voASn5OPqoIfK5mNPB7Y+dRlU6eHW2yb31mQ5e/LpTrY
X-Received: by 2002:a1c:1592:: with SMTP id 140-v6mr1427747wmv.25.1540191854454;
        Mon, 22 Oct 2018 00:04:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540191854; cv=none;
        d=google.com; s=arc-20160816;
        b=Kb1RhSWXK+EVTFDCcEldxYs+Tz+qTYOJ3x/tFpRXI0TK+woIcNJq/fEfHUxEbi8qxf
         z88YF6FX1I81jxE48Bl9FfMkHTIqFst6+YD5xdVxTpaALz/04PwiiTov79OhNLER+4d4
         RLnKi6V6PfkZnpsXtb6xjPkriovwOCfNSdRtk+dG23PDOvw6ss5/UQozySTyGOuW5hnk
         a+mqClKmAVB0ABasN+zvJYLEayWzN7Nj0d1kTs9auEgsTwPJ9NedJa5NRQkDnXK7H0cf
         AkDlvGkKEqcBZuSl9kg7RaR9sivxdTTxUKjdtBgfZcEcbe/bfdfeKfI4XeL4SWmpXURJ
         xong==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=F41o0Ao0vNiz0LACCwwkj9kWdFcZ8AgxCp6uAl5uXvw=;
        b=aB2X7Vo/6E9wF/ou7AItp73JBuLJ0rjOlCp89HUokvy8JAVZH6TYD1+j7Ubux087C4
         kwKBi/Vf82ZGmjRxaDZZfh/V/+6QlQKKqKAlYSrNVxcyBNrJclbyzjN0F8+OPzCn+zlH
         G63YFe6goE8uHekFB0T2zrWoJ8U+YL6ODtgwkNF8FCaqcKciXCqbUbg/VK54266feiNd
         WI68vYZUNDsA5XMGGx3oEl+G4qPSH/+RiR9HqguAjmj3p7GWAaatB49XRuPZeBtfhbd+
         TPr8vHvfFOMkrbaa3ud3O+DkM6+Si3pe+AsX9ajzGU5ngsgEFKzMExAA3B0z3ZiEIpcL
         NBsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 202-v6si496198wmo.1.2018.10.22.00.04.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Oct 2018 00:04:14 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,411,1534802400"; 
   d="scan'208";a="352162806"
Received: from 30.9-255-62.static.virginmediabusiness.co.uk (HELO [172.16.7.66]) ([62.255.9.30])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Oct 2018 09:04:14 +0200
Date: Mon, 22 Oct 2018 08:04:13 +0100 (BST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel][PATCH] staging: mt7621-pci: PTR_ERR_OR_ZERO
 can be used
In-Reply-To: <20181022070014.GA7822@aakashd-VirtualBox>
Message-ID: <alpine.DEB.2.21.1810220803260.2325@hadrien>
References: <20181022070014.GA7822@aakashd-VirtualBox>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 22 Oct 2018, Bhanusree Pola wrote:

> Replace multiple return statements  with single return
> Used the following script by coccinelle
> 	scripts/coccinelle/api/ptr_ret.cocci
>
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> ---
>  drivers/staging/mt7621-pci/pci-mt7621.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
>
> diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
> index a49e279..bb08fd2 100644
> --- a/drivers/staging/mt7621-pci/pci-mt7621.c
> +++ b/drivers/staging/mt7621-pci/pci-mt7621.c
> @@ -403,10 +403,7 @@ static int mt7621_pcie_parse_dt(struct mt7621_pcie *pcie)
>  	}
>
>  	pcie->base = devm_ioremap_resource(dev, &regs);
> -	if (IS_ERR(pcie->base))
> -		return PTR_ERR(pcie->base);
> -
> -	return 0;
> +	return PTR_ERR_OR_ZERO(pcie->base);

It might be considered to be unfavorable to make the change in this case,
because there is a previous if ... return, so using PTR_ERR_OR_ZERO breaks
the style.

julia

>  }
>
>  static int mt7621_pcie_request_resources(struct mt7621_pcie *pcie,
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181022070014.GA7822%40aakashd-VirtualBox.
> For more options, visit https://groups.google.com/d/optout.
>

