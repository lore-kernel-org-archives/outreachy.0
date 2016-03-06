X-GM-THRID: 6258590629737005056
X-Received: by 10.25.165.148 with SMTP id o142mr1944601lfe.8.1457239863536;
        Sat, 05 Mar 2016 20:51:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.154.202 with SMTP id c193ls271572lfe.79.gmail; Sat, 05 Mar
 2016 20:51:02 -0800 (PST)
X-Received: by 10.112.170.7 with SMTP id ai7mr794547lbc.1.1457239862869;
        Sat, 05 Mar 2016 20:51:02 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 71si342428wmp.0.2016.03.05.20.51.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Mar 2016 20:51:02 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,544,1449529200"; 
   d="scan'208";a="167258072"
Received: from 155.212.120.153.west.global.crust-r.net (HELO hadrien.local) ([153.120.212.155])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 06 Mar 2016 05:51:00 +0100
Date: Sun, 6 Mar 2016 13:50:55 +0900 (JST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Eva Rachel Retuya <eraretuya@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: convert pr_err()
 to dev_err()
In-Reply-To: <1457191679-12740-1-git-send-email-eraretuya@gmail.com>
Message-ID: <alpine.DEB.2.10.1603061350250.2713@hadrien>
References: <1457191679-12740-1-git-send-email-eraretuya@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sat, 5 Mar 2016, Eva Rachel Retuya wrote:

> Replace pr_err() calls with respective dev_err() counterpart.
> Semantic patch used to detect and apply the transformation:

There is nothing in the semantic patch to check that pdev is not null, so
you could say that you have checked for this by hand.

julia


>
> @r exists@
> identifier f,s,i;
> position p;
> @@
>
> f(...,struct s *i,...) {
>   <+...
>   pr_err@p(...)
>   ...+>
> }
>
> @s@
> identifier r.s, dev;
> @@
>
> struct s {
> 	...
> 	struct device dev;
> 	...
> };
>
> @t@
> identifier r.i, s.dev;
> expression fmt;
> position r.p;
> @@
>
> - pr_err@p(
> + dev_err(&i->dev,
> 			fmt, ...);
>
> Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
> ---
>  drivers/staging/sm750fb/sm750.c | 14 ++++++++++----
>  1 file changed, 10 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
> index 59c7455..7275cdb 100644
> --- a/drivers/staging/sm750fb/sm750.c
> +++ b/drivers/staging/sm750fb/sm750.c
> @@ -418,14 +418,17 @@ static int lynxfb_suspend(struct pci_dev *pdev, pm_message_t mesg)
>
>  		ret = pci_save_state(pdev);
>  		if (ret) {
> -			pr_err("error:%d occurred in pci_save_state\n", ret);
> +			dev_err(&pdev->dev,
> +				"error:%d occurred in pci_save_state\n", ret);
>  			return ret;
>  		}
>
>  		pci_disable_device(pdev);
>  		ret = pci_set_power_state(pdev, pci_choose_state(pdev, mesg));
>  		if (ret) {
> -			pr_err("error:%d occurred in pci_set_power_state\n", ret);
> +			dev_err(&pdev->dev,
> +				"error:%d occurred in pci_set_power_state\n",
> +				ret);
>  			return ret;
>  		}
>  	}
> @@ -453,7 +456,8 @@ static int lynxfb_resume(struct pci_dev *pdev)
>
>  	ret = pci_set_power_state(pdev, PCI_D0);
>  	if (ret) {
> -		pr_err("error:%d occurred in pci_set_power_state\n", ret);
> +		dev_err(&pdev->dev,
> +			"error:%d occurred in pci_set_power_state\n", ret);
>  		return ret;
>  	}
>
> @@ -461,7 +465,9 @@ static int lynxfb_resume(struct pci_dev *pdev)
>  		pci_restore_state(pdev);
>  		ret = pci_enable_device(pdev);
>  		if (ret) {
> -			pr_err("error:%d occurred in pci_enable_device\n", ret);
> +			dev_err(&pdev->dev,
> +				"error:%d occurred in pci_enable_device\n",
> +				ret);
>  			return ret;
>  		}
>  		pci_set_master(pdev);
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1457191679-12740-1-git-send-email-eraretuya%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

