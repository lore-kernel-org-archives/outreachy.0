X-GM-THRID: 6212428372949073920
X-Received: by 10.28.138.83 with SMTP id m80mr1895407wmd.7.1446446643261;
        Sun, 01 Nov 2015 22:44:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.150.141 with SMTP id y135ls417744lfd.19.gmail; Sun, 01 Nov
 2015 22:44:02 -0800 (PST)
X-Received: by 10.112.55.2 with SMTP id n2mr4043329lbp.9.1446446642581;
        Sun, 01 Nov 2015 22:44:02 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id t18si432524wme.0.2015.11.01.22.44.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 22:44:02 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.20,233,1444687200"; 
   d="scan'208";a="185519450"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 02 Nov 2015 07:44:02 +0100
Date: Mon, 2 Nov 2015 07:44:01 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rdma: amso1100: c2: Remove
 wrapper function
In-Reply-To: <20151102055451.GA1326@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.02.1511020741400.2096@localhost6.localdomain6>
References: <20151102055451.GA1326@amitoj-Inspiron-3542>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

>  static void c2_set_rxbufsize(struct c2_port *c2_port)
>  {
>  	struct net_device *netdev = c2_port->netdev;
> @@ -908,7 +903,9 @@ static struct net_device *c2_devinit(struct c2_dev *c2dev,
>  	/* Validate the MAC address */
>  	if (!is_valid_ether_addr(netdev->dev_addr)) {
>  		pr_debug("Invalid MAC Address\n");
> -		c2_print_macaddr(netdev);
> +		/* Print out the MAC address */
> +		pr_debug("%s: MAC %pM, IRQ %u\n", netdev->name,
> +						netdev->dev_addr, netdev->irq);

I think that the commen is not needed here.  One can see from the comment 
just above that the MAC address is tested, and there is the word MAC in 
the string.  On the other hand, the indentation of the continuation line 
seems like too much.

>  		free_netdev(netdev);
>  		return NULL;
>  	}
> @@ -1142,7 +1139,8 @@ static int c2_probe(struct pci_dev *pcidev, const struct pci_device_id *ent)
>  	}
>  
>  	/* Print out the MAC address */
> -	c2_print_macaddr(netdev);
> +	pr_debug("%s: MAC %pM, IRQ %u\n", netdev->name, netdev->dev_addr,
> +								netdev->irq);

Here too, why so much indentation for the last argument?

julia

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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151102055451.GA1326%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.
> 

