X-GM-THRID: 6212511830071312384
X-Received: by 10.28.11.65 with SMTP id 62mr2167655wml.6.1446463608661;
        Mon, 02 Nov 2015 03:26:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.174.196 with SMTP id x187ls592493wme.3.gmail; Mon, 02 Nov
 2015 03:26:47 -0800 (PST)
X-Received: by 10.194.189.81 with SMTP id gg17mr4263208wjc.5.1446463607883;
        Mon, 02 Nov 2015 03:26:47 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id g9si487152wmd.2.2015.11.02.03.26.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Nov 2015 03:26:47 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.20,234,1444687200"; 
   d="scan'208";a="185591836"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 02 Nov 2015 12:26:47 +0100
Date: Mon, 2 Nov 2015 12:26:45 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rdma: amso1100: c2: Drop
 wrapper function
In-Reply-To: <20151102111842.GA2845@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.10.1511021224560.2375@hadrien>
References: <20151102111842.GA2845@amitoj-Inspiron-3542>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 2 Nov 2015, Amitoj Kaur Chawla wrote:

> This patch removes the c2_print_macaddr() wrapper function which calls
> the pr_debug standard kernel function only.
>
> c2_print_macaddr() has been replaced by directly calling pr_debug().
>
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
> Changes in v2:
>         -Corrected indentation
>         -Removed comment added in previous version
>
>  drivers/staging/rdma/amso1100/c2.c | 13 ++++++-------
>  1 file changed, 6 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/rdma/amso1100/c2.c b/drivers/staging/rdma/amso1100/c2.c
> index 7f1e794..38360b3 100644
> --- a/drivers/staging/rdma/amso1100/c2.c
> +++ b/drivers/staging/rdma/amso1100/c2.c
> @@ -87,11 +87,6 @@ static struct pci_device_id c2_pci_table[] = {
>
>  MODULE_DEVICE_TABLE(pci, c2_pci_table);
>
> -static void c2_print_macaddr(struct net_device *netdev)
> -{
> -	pr_debug("%s: MAC %pM, IRQ %u\n", netdev->name, netdev->dev_addr, netdev->irq);
> -}
> -
>  static void c2_set_rxbufsize(struct c2_port *c2_port)
>  {
>  	struct net_device *netdev = c2_port->netdev;
> @@ -908,7 +903,9 @@ static struct net_device *c2_devinit(struct c2_dev *c2dev,
>  	/* Validate the MAC address */
>  	if (!is_valid_ether_addr(netdev->dev_addr)) {
>  		pr_debug("Invalid MAC Address\n");
> -		c2_print_macaddr(netdev);
> +		pr_debug("%s: MAC %pM, IRQ %u\n", netdev->name,
> +					netdev->dev_addr, netdev->irq);
> +

I'm still not sure to understand the indentation.  If you look at the
function c2_probe in the same file, a continuation line has as few tabs as
are needed to pass the (.  It looks like you are trying to put the
arguments as far to the right as possible, especially in the next case.
Also the extra blank line is not needed.

julia

>  		free_netdev(netdev);
>  		return NULL;
>  	}
> @@ -1142,7 +1139,9 @@ static int c2_probe(struct pci_dev *pcidev, const struct pci_device_id *ent)
>  	}
>
>  	/* Print out the MAC address */
> -	c2_print_macaddr(netdev);
> +	pr_debug("%s: MAC %pM, IRQ %u\n", netdev->name, netdev->dev_addr,
> +								netdev->irq);
> +
>
>  	ret = c2_rnic_init(c2dev);
>  	if (ret) {
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151102111842.GA2845%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.
>

