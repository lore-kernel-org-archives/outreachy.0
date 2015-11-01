X-GM-THRID: 6212095586717401088
X-Received: by 10.112.150.201 with SMTP id uk9mr3297198lbb.8.1446367663864;
        Sun, 01 Nov 2015 01:47:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.40.213 with SMTP id o204ls322901lfo.38.gmail; Sun, 01 Nov
 2015 01:47:43 -0700 (PDT)
X-Received: by 10.112.149.7 with SMTP id tw7mr3254726lbb.10.1446367663197;
        Sun, 01 Nov 2015 01:47:43 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l1si324299wmb.1.2015.11.01.01.47.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 01:47:43 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.20,228,1444687200"; 
   d="scan'208";a="185424382"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 01 Nov 2015 09:47:37 +0100
Date: Sun, 1 Nov 2015 09:47:37 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/5] staging: rdma: hfi1: Remove
 hfi1_nomsix() wrapper function
In-Reply-To: <e9e769aacb2c1db52a7a1eb523fa2d73a8f6d09c.1446366036.git.amitoj1606@gmail.com>
Message-ID: <alpine.DEB.2.02.1511010946280.2070@localhost6.localdomain6>
References: <cover.1446366036.git.amitoj1606@gmail.com> <e9e769aacb2c1db52a7a1eb523fa2d73a8f6d09c.1446366036.git.amitoj1606@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 1 Nov 2015, Amitoj Kaur Chawla wrote:

> Drop wrapper function hfi1_nomsix() that can be replaced by a single line 
> of code.
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/rdma/hfi1/chip.c | 2 +-
>  drivers/staging/rdma/hfi1/hfi.h  | 1 -
>  drivers/staging/rdma/hfi1/pcie.c | 8 --------
>  3 files changed, 1 insertion(+), 10 deletions(-)
> 
> diff --git a/drivers/staging/rdma/hfi1/chip.c b/drivers/staging/rdma/hfi1/chip.c
> index aa58e59..beac326d 100644
> --- a/drivers/staging/rdma/hfi1/chip.c
> +++ b/drivers/staging/rdma/hfi1/chip.c
> @@ -8694,7 +8694,7 @@ static void clean_up_interrupts(struct hfi1_devdata *dd)
>  	/* turn off interrupts */
>  	if (dd->num_msix_entries) {
>  		/* MSI-X */
> -		hfi1_nomsix(dd);
> +		pci_disable_msix(dd->pcidev);

This one is probably OK.  pci_disable_msix is a standard kernel function, 
and the name gives pretty much the same information as the name of the 
driver-specific function (and is even easier to parse).

julia

>  	} else {
>  		/* INTx */
>  		disable_intx(dd->pcidev);
> diff --git a/drivers/staging/rdma/hfi1/hfi.h b/drivers/staging/rdma/hfi1/hfi.h
> index 8ca171b..1f97124 100644
> --- a/drivers/staging/rdma/hfi1/hfi.h
> +++ b/drivers/staging/rdma/hfi1/hfi.h
> @@ -1600,7 +1600,6 @@ void hfi1_pcie_flr(struct hfi1_devdata *);
>  int pcie_speeds(struct hfi1_devdata *);
>  void request_msix(struct hfi1_devdata *, u32 *, struct hfi1_msix_entry *);
>  void hfi1_enable_intx(struct pci_dev *);
> -void hfi1_nomsix(struct hfi1_devdata *);
>  void restore_pci_variables(struct hfi1_devdata *dd);
>  int do_pcie_gen3_transition(struct hfi1_devdata *dd);
>  int parse_platform_config(struct hfi1_devdata *dd);
> diff --git a/drivers/staging/rdma/hfi1/pcie.c b/drivers/staging/rdma/hfi1/pcie.c
> index ac5653c..e6773b3 100644
> --- a/drivers/staging/rdma/hfi1/pcie.c
> +++ b/drivers/staging/rdma/hfi1/pcie.c
> @@ -426,14 +426,6 @@ void request_msix(struct hfi1_devdata *dd, u32 *nent,
>  	tune_pcie_caps(dd);
>  }
>  
> -/*
> - * Disable MSI-X.
> - */
> -void hfi1_nomsix(struct hfi1_devdata *dd)
> -{
> -	pci_disable_msix(dd->pcidev);
> -}
> -
>  void hfi1_enable_intx(struct pci_dev *pdev)
>  {
>  	/* first, turn on INTx */
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/e9e769aacb2c1db52a7a1eb523fa2d73a8f6d09c.1446366036.git.amitoj1606%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

