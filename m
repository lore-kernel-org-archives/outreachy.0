X-GM-THRID: 8110844411904
X-Received: by 10.236.202.233 with SMTP id d69mr49972829yho.13.1426268399577;
        Fri, 13 Mar 2015 10:39:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.96.33 with SMTP id dp1ls741831obb.69.gmail; Fri, 13 Mar
 2015 10:39:59 -0700 (PDT)
X-Received: by 10.182.163.43 with SMTP id yf11mr38330483obb.43.1426268399382;
        Fri, 13 Mar 2015 10:39:59 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id g3si230246igr.2.2015.03.13.10.39.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Fri, 13 Mar 2015 10:39:59 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,396,1422918000"; 
   d="scan'208";a="103258546"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Mar 2015 18:39:56 +0100
Date: Fri, 13 Mar 2015 18:39:51 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Somya Anand <somyaanand214@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: i2o: Move assignment
 out of if statement
In-Reply-To: <1426267392-27533-1-git-send-email-somyaanand214@gmail.com>
Message-ID: <alpine.DEB.2.10.1503131837440.3275@hadrien>
References: <1426267392-27533-1-git-send-email-somyaanand214@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

Actually, i2o is on the way out of the kernel, so there is no point in
changing it.  There is a list of drivers to avoid here:
http://kernelnewbies.org/Outreachyfirstpatch

julia


On Fri, 13 Mar 2015, Somya Anand wrote:

> Checkpatch.pl suggest to avoid assignment in if statement.
>
> This patch moves assignments out of the if statement and place
> it before the if statement. This is done using following coccinelle
> script.
>
> @@
> expression E1;
> identifier p;
> statement S;
> @@
> - if ((p = E1))
> + p = E1;
> + if (p)
> 	S
>
> Signed-off-by: Somya Anand <somyaanand214@gmail.com>
> ---
>  drivers/staging/i2o/bus-osm.c |  3 ++-
>  drivers/staging/i2o/iop.c     | 24 ++++++++++++++++--------
>  drivers/staging/i2o/pci.c     |  9 ++++++---
>  3 files changed, 24 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/staging/i2o/bus-osm.c b/drivers/staging/i2o/bus-osm.c
> index 7aa0339..43e357e 100644
> --- a/drivers/staging/i2o/bus-osm.c
> +++ b/drivers/staging/i2o/bus-osm.c
> @@ -69,7 +69,8 @@ static ssize_t i2o_bus_store_scan(struct device *d,
>  	struct i2o_device *i2o_dev = to_i2o_device(d);
>  	int rc;
>
> -	if ((rc = i2o_bus_scan(i2o_dev)))
> +	rc = i2o_bus_scan(i2o_dev);
> +	if (rc)
>  		osm_warn("bus scan failed %d\n", rc);
>
>  	return count;
> diff --git a/drivers/staging/i2o/iop.c b/drivers/staging/i2o/iop.c
> index 52334fc..d4a7b91 100644
> --- a/drivers/staging/i2o/iop.c
> +++ b/drivers/staging/i2o/iop.c
> @@ -1096,7 +1096,8 @@ int i2o_iop_add(struct i2o_controller *c)
>  {
>  	int rc;
>
> -	if ((rc = device_add(&c->device))) {
> +	rc = device_add(&c->device);
> +	if (rc) {
>  		osm_err("%s: could not add controller\n", c->name);
>  		goto iop_reset;
>  	}
> @@ -1105,24 +1106,28 @@ int i2o_iop_add(struct i2o_controller *c)
>  	osm_info("%s: This may take a few minutes if there are many devices\n",
>  		 c->name);
>
> -	if ((rc = i2o_iop_activate(c))) {
> +	rc = i2o_iop_activate(c);
> +	if (rc) {
>  		osm_err("%s: could not activate controller\n", c->name);
>  		goto device_del;
>  	}
>
>  	osm_debug("%s: building sys table...\n", c->name);
>
> -	if ((rc = i2o_systab_build()))
> +	rc = i2o_systab_build();
> +	if (rc)
>  		goto device_del;
>
>  	osm_debug("%s: online controller...\n", c->name);
>
> -	if ((rc = i2o_iop_online(c)))
> +	rc = i2o_iop_online(c);
> +	if (rc)
>  		goto device_del;
>
>  	osm_debug("%s: getting LCT...\n", c->name);
>
> -	if ((rc = i2o_exec_lct_get(c)))
> +	rc = i2o_exec_lct_get(c);
> +	if (rc)
>  		goto device_del;
>
>  	list_add(&c->list, &i2o_controllers);
> @@ -1192,13 +1197,16 @@ static int __init i2o_iop_init(void)
>
>  	printk(KERN_INFO OSM_DESCRIPTION " v" OSM_VERSION "\n");
>
> -	if ((rc = i2o_driver_init()))
> +	rc = i2o_driver_init();
> +	if (rc)
>  		goto exit;
>
> -	if ((rc = i2o_exec_init()))
> +	rc = i2o_exec_init();
> +	if (rc)
>  		goto driver_exit;
>
> -	if ((rc = i2o_pci_init()))
> +	rc = i2o_pci_init();
> +	if (rc)
>  		goto exec_exit;
>
>  	return 0;
> diff --git a/drivers/staging/i2o/pci.c b/drivers/staging/i2o/pci.c
> index b3b8a61..49804c9 100644
> --- a/drivers/staging/i2o/pci.c
> +++ b/drivers/staging/i2o/pci.c
> @@ -329,7 +329,8 @@ static int i2o_pci_probe(struct pci_dev *pdev, const struct pci_device_id *id)
>  		return -ENODEV;
>  	}
>
> -	if ((rc = pci_enable_device(pdev))) {
> +	rc = pci_enable_device(pdev);
> +	if (rc) {
>  		printk(KERN_WARNING "i2o: couldn't enable device %s\n",
>  		       pci_name(pdev));
>  		return rc;
> @@ -410,7 +411,8 @@ static int i2o_pci_probe(struct pci_dev *pdev, const struct pci_device_id *id)
>  #endif
>  	}
>
> -	if ((rc = i2o_pci_alloc(c))) {
> +	rc = i2o_pci_alloc(c);
> +	if (rc) {
>  		printk(KERN_ERR "%s: DMA / IO allocation for I2O controller "
>  		       "failed\n", c->name);
>  		goto free_controller;
> @@ -422,7 +424,8 @@ static int i2o_pci_probe(struct pci_dev *pdev, const struct pci_device_id *id)
>  		goto free_pci;
>  	}
>
> -	if ((rc = i2o_iop_add(c)))
> +	rc = i2o_iop_add(c);
> +	if (rc)
>  		goto uninstall;
>
>  	if (i960)
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1426267392-27533-1-git-send-email-somyaanand214%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

