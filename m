X-GM-THRID: 6615237556487323648
X-Received: by 2002:a17:906:260a:: with SMTP id h10-v6mr8178898ejc.16.1540230786704;
        Mon, 22 Oct 2018 10:53:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:55d1:: with SMTP id z17-v6ls274053ejp.12.gmail; Mon,
 22 Oct 2018 10:53:05 -0700 (PDT)
X-Google-Smtp-Source: ACcGV606Tya85iOqXj2ULPJ6Yl6eSTWKwdfR8Ovn0ViNZX3rS0QuwqKHgHsND6eytL3MtZsTQ8sc
X-Received: by 2002:a17:906:25c1:: with SMTP id n1-v6mr8195288ejb.12.1540230785865;
        Mon, 22 Oct 2018 10:53:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540230785; cv=none;
        d=google.com; s=arc-20160816;
        b=IyTOQZd9GnHIVj+RJaIW7//cokdE70N4evK7yzsMP/LnYGcIjGsg0CBoK+McfkUbJg
         frlUomF3bOvK29P5Bbut1QJqHdP2nlxWK4Jr3MkU94h1R8OzVG953LQd8uwGYYtNR/W9
         7Fkzlj1xDcQgo1LlHAOwxXd9/JGB5TqxS3bvh42Q0nyctwVhjoEkkctdYUnEL15LNPf+
         OUEPZDz2SyJyDHzQjKJAH2F2AzcCZptytLa57OxDbBEiytY6nB18VyL7rtXVp8T4qPAP
         mnJl/YV5FsKv5izYQU+it8jdWROad/tic0x23bs96aA3rlhuHMS4bnNrttWi84oT/BhE
         qzKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=cEsXaRazX3Yl+TefcLXKkpBUj6qkTuLzy8IR7bYlHUQ=;
        b=mHQnptT8MUG61rGpaOTBGW0je8Vb5lkAZ2UdvSsw3V1TLudkkU8Z01YNGbIgELLa6T
         pIqGXE2NgozWQuUddINhw0ooSEPJRz/UXUxQfWYQbKQoGF3CEYlxXs09ospV9COOEcg5
         VdIxzCHWZQxPdzHVBkXwW3Wr5gqXMFdpLVESjRIrgfOIHjnsD7u+tOwoZzLnorz/904X
         XMdXgAQctEHD9MfF1NGAY5pP7UobqCMlQ0C1ffco4GkLWHzuQVWcOi+t4KWeVwxDaWLP
         9G/DQvs+ZqBnJ1vwrxov2eQgkRueGOc/so6OT5noHh5vq72DDMd/F2a6QWkOah6HPPKx
         XHAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w53-v6si1177560edc.4.2018.10.22.10.53.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Oct 2018 10:53:05 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,413,1534802400"; 
   d="scan'208";a="352318362"
Received: from 30.9-255-62.static.virginmediabusiness.co.uk (HELO [172.16.7.66]) ([62.255.9.30])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Oct 2018 19:53:05 +0200
Date: Mon, 22 Oct 2018 18:53:04 +0100 (BST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Kimberly Brown <kimbrownkd@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH 3/3] staging:rtl8192u: Fix misspellings
 in comments - Style
In-Reply-To: <552e36244c1487a002b7f130d8b5ee07cb8afff7.1540229302.git.kimbrownkd@gmail.com>
Message-ID: <alpine.DEB.2.21.1810221852140.2333@hadrien>
References: <cover.1540229302.git.kimbrownkd@gmail.com> <552e36244c1487a002b7f130d8b5ee07cb8afff7.1540229302.git.kimbrownkd@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

In the subject line, normally the words at the beginning are separated by
spaces.  Do git log --oneline on the affected file and follow what seems
most popular.

julia

On Mon, 22 Oct 2018, Kimberly Brown wrote:

> Fix two spelling mistakes in comments. 'informations' should be
> 'information', and 'imblance' should be 'imbalance'. Issues found by
> checkpatch.
>
> This is a coding style change which should have no impact on runtime
> code execution.
>
> Signed-off-by: Kimberly Brown <kimbrownkd@gmail.com>
> ---
>  drivers/staging/rtl8192u/r819xU_cmdpkt.c | 2 +-
>  drivers/staging/rtl8192u/r819xU_phyreg.h | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8192u/r819xU_cmdpkt.c b/drivers/staging/rtl8192u/r819xU_cmdpkt.c
> index 900f7866d381..e064f43fd8b6 100644
> --- a/drivers/staging/rtl8192u/r819xU_cmdpkt.c
> +++ b/drivers/staging/rtl8192u/r819xU_cmdpkt.c
> @@ -243,7 +243,7 @@ static void cmpk_handle_interrupt_status(struct net_device *dev, u8 *pmsg)
>  			cmdpkt_beacontimerinterrupt_819xusb(dev);
>  	}
>
> -	/* Other informations in interrupt status we need? */
> +	/* Other information in interrupt status we need? */
>
>  	DMESG("<---- cmpk_handle_interrupt_status()\n");
>  }
> diff --git a/drivers/staging/rtl8192u/r819xU_phyreg.h b/drivers/staging/rtl8192u/r819xU_phyreg.h
> index 65ee6088324c..dc9ddf100eab 100644
> --- a/drivers/staging/rtl8192u/r819xU_phyreg.h
> +++ b/drivers/staging/rtl8192u/r819xU_phyreg.h
> @@ -53,7 +53,7 @@
>  /* page c */
>  #define rOFDM0_TRxPathEnable		0xc04
>  #define rOFDM0_XARxAFE				0xc10  /* RxIQ DC offset, Rx digital filter, DC notch filter */
> -#define rOFDM0_XARxIQImbalance		0xc14  /* RxIQ imblance matrix */
> +#define rOFDM0_XARxIQImbalance		0xc14  /* RxIQ imbalance matrix */
>  #define rOFDM0_XBRxAFE				0xc18
>  #define rOFDM0_XBRxIQImbalance		0xc1c
>  #define rOFDM0_XCRxAFE				0xc20
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/552e36244c1487a002b7f130d8b5ee07cb8afff7.1540229302.git.kimbrownkd%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

