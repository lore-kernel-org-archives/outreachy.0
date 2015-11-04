X-GM-THRID: 6212524392435417088
X-Received: by 10.13.232.148 with SMTP id r142mr3005497ywe.51.1446667727093;
        Wed, 04 Nov 2015 12:08:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.141.163 with SMTP id rp3ls1523416igb.21.canary; Wed, 04 Nov
 2015 12:08:46 -0800 (PST)
X-Received: by 10.66.254.74 with SMTP id ag10mr2938074pad.24.1446667726502;
        Wed, 04 Nov 2015 12:08:46 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id sm2si315304pab.0.2015.11.04.12.08.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Nov 2015 12:08:46 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [104.135.10.71])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 1BEF7847;
	Wed,  4 Nov 2015 20:08:46 +0000 (UTC)
Date: Wed, 4 Nov 2015 12:08:45 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] staging: rdma: amso1100: Drop
 wrapper function
Message-ID: <20151104200845.GA8713@kroah.com>
References: <20151102120728.GA3650@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151102120728.GA3650@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Nov 02, 2015 at 05:37:28PM +0530, Amitoj Kaur Chawla wrote:
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
> Changes in v3:
>         -Corrected indentation
> 
>  drivers/staging/rdma/amso1100/c2.c | 11 ++++-------
>  1 file changed, 4 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/rdma/amso1100/c2.c b/drivers/staging/rdma/amso1100/c2.c
> index 7f1e794..6688349 100644
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
> @@ -908,7 +903,8 @@ static struct net_device *c2_devinit(struct c2_dev *c2dev,
>  	/* Validate the MAC address */
>  	if (!is_valid_ether_addr(netdev->dev_addr)) {
>  		pr_debug("Invalid MAC Address\n");
> -		c2_print_macaddr(netdev);
> +		pr_debug("%s: MAC %pM, IRQ %u\n", netdev->name,
> +				netdev->dev_addr, netdev->irq);
>  		free_netdev(netdev);
>  		return NULL;
>  	}
> @@ -1142,7 +1138,8 @@ static int c2_probe(struct pci_dev *pcidev, const struct pci_device_id *ent)
>  	}
>  
>  	/* Print out the MAC address */
> -	c2_print_macaddr(netdev);
> +	pr_debug("%s: MAC %pM, IRQ %u\n", netdev->name, netdev->dev_addr, 
> +			netdev->irq);

You added trailing whitespace, which is not allowed :(

