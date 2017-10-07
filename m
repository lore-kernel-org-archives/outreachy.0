X-GM-THRID: 6474214314983030784
X-Received: by 10.28.236.83 with SMTP id k80mr658540wmh.29.1507399544244;
        Sat, 07 Oct 2017 11:05:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.145.14 with SMTP id t14ls359066wmd.4.canary-gmail; Sat, 07
 Oct 2017 11:05:43 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBIrIcXKW30auq7niaQgDkk3tCHBkzI11BeABJ26qbpoUeFa/eDFFhdqIhwaQZd1CvF9L1w
X-Received: by 10.28.149.18 with SMTP id x18mr533709wmd.18.1507399543311;
        Sat, 07 Oct 2017 11:05:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507399543; cv=none;
        d=google.com; s=arc-20160816;
        b=qsafhMsBHBgNqbTOa9t1aJ2gjTtn9TsC6gqimwMD3KrV/FaLabuB/hy8XJTEDri8BR
         X18OBlvR5+JlMxqrFIBkYFd7TA6saz62n506lp7RoYV2sO/YfIBkTKoX+B3TEuYofROC
         zdXZ/wipkpbp1j/toyTg1xz8NTc6WHZjUCACq5rsaDgh+wTqOHGDRkFKyNKVzM4yLBC2
         C24CrIeLsVYwo3hr7O7Xz7cdUwglge33aKsB5bk27pvODdGmJxOiBvXBhhhIFkQwodvS
         h2h5K/RGzcshIBf07Az+MQAHy3Q9KUD43D7iPuYRH7bei9sRDfdJU8gdo/LwPZz4f/QT
         0sGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=AjoJL+kZvktT26mYChU7nmt6R0PDzsfbPFiHvjkyo1g=;
        b=r5ME9kKm8pSPs+kRQ20zmrjKqrph36zHj5g4v/zg9TXxmu2Ac6RN44YaOhzBv+9RvJ
         82axGnzE6KyK6qydAM9XKsIf7fLUVufIKwIBxKYJR7vEwhzMdD4RRII9U+YZlPJQoNZ1
         7BQumGvkTCeH79GP9qFMr5ziYk1NtfGzvw95rV77XZNw6cYRDEiBVdVRDoConhoKeSw6
         TeGWOZ3pPF1a7sX+shdu/rERwXZTHuQZlJNt003X/dgY/6SCbZfpcC6QRCdLwIbi8Zn5
         sKsPv+n45jTRyxswJ7jWs5Kn0l3B+VsTWPvOtR/yoKJ2+gBiAie7M21oMBjbCvyxdKJ5
         GbUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 196si576294wmk.4.2017.10.07.11.05.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Oct 2017 11:05:43 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,490,1500933600"; 
   d="scan'208";a="240114428"
Received: from abo-88-122-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.122.88])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Oct 2017 20:05:42 +0200
Date: Sat, 7 Oct 2017 20:05:42 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Srishti Sharma <srishtishar@gmail.com>
cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: pi433: Fix the position of
 brace after if
In-Reply-To: <1507395478-4416-1-git-send-email-srishtishar@gmail.com>
Message-ID: <alpine.DEB.2.20.1710072003390.2134@hadrien>
References: <1507395478-4416-1-git-send-email-srishtishar@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 7 Oct 2017, Srishti Sharma wrote:

> Fix the position of the brace after if when it is on the next line
> or when there is no space between them. Done using the following
> semantic patch by coccinelle.

As far as I can see, in practice, you only move up { from the line below.
There is no occurrence of ){.  So it would be better to say only what you
actually did, and not what you additionally intended to do.

Also, in the semantic patch, I'm not sure to see the point of the x=e; and
f(...) part of the pattern.  There should never ne a newline betwee the )
and { of an if, no matter what the if follows.

julia

>
> @r1@
> position p1, p2;
> identifier x,f;
> expression e;
> @@
>
> (
> x=e;
> |
> f(...)
> )
>
> if(...)@p1 {@p2
> ...
> }
>
> @script: python r2@
> p1 << r1.p1;
> p2 << r1.p2;
> @@
>
> l1 = int (p1[0].line)
> l2 = int (p2[0].line)
> c1 = int (p1[0].column_end)
> c2 = int (p2[0].column)
>
> if l1 == l2 and c1+1 == c2:
>         cocci.include_match(False)
>
> @r3@
> position r1.p1, r1.p2;
> @@
>
> if(...
> - )@p1
> -{@p2
> +) {
> ...
> }
>
> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
> ---
>  drivers/staging/pi433/pi433_if.c | 54 ++++++++++++++--------------------------
>  1 file changed, 18 insertions(+), 36 deletions(-)
>
> diff --git a/drivers/staging/pi433/pi433_if.c b/drivers/staging/pi433/pi433_if.c
> index d82c74d..d946838 100644
> --- a/drivers/staging/pi433/pi433_if.c
> +++ b/drivers/staging/pi433/pi433_if.c
> @@ -285,8 +285,7 @@ rf69_set_tx_cfg(struct pi433_device *dev, struct pi433_tx_cfg *tx_cfg)
>  	SET_CHECKED(rf69_set_crc_enable	  (dev->spi, tx_cfg->enable_crc));
>
>  	/* configure sync, if enabled */
> -	if (tx_cfg->enable_sync == optionOn)
> -	{
> +	if (tx_cfg->enable_sync == optionOn) {
>  		SET_CHECKED(rf69_set_sync_size(dev->spi, tx_cfg->sync_length));
>  		SET_CHECKED(rf69_set_sync_values(dev->spi, tx_cfg->sync_pattern));
>  	}
> @@ -408,8 +407,7 @@ pi433_receive(void *data)
>  		if (retval) goto abort; /* wait was interrupted */
>
>  		rf69_read_fifo(spi, (u8 *)&bytes_total, 1);
> -		if (bytes_total > dev->rx_buffer_size)
> -		{
> +		if (bytes_total > dev->rx_buffer_size) {
>  			retval = -1;
>  			goto abort;
>  		}
> @@ -509,16 +507,14 @@ pi433_tx_thread(void *data)
>  		mutex_lock(&device->tx_fifo_lock);
>
>  		retval = kfifo_out(&device->tx_fifo, &tx_cfg, sizeof(tx_cfg));
> -		if (retval != sizeof(tx_cfg))
> -		{
> +		if (retval != sizeof(tx_cfg)) {
>  			dev_dbg(device->dev, "reading tx_cfg from fifo failed: got %d byte(s), expected %d", retval, (unsigned int)sizeof(tx_cfg) );
>  			mutex_unlock(&device->tx_fifo_lock);
>  			continue;
>  		}
>
>  		retval = kfifo_out(&device->tx_fifo, &size, sizeof(size_t));
> -		if (retval != sizeof(size_t))
> -		{
> +		if (retval != sizeof(size_t)) {
>  			dev_dbg(device->dev, "reading msg size from fifo failed: got %d, expected %d", retval, (unsigned int)sizeof(size_t) );
>  			mutex_unlock(&device->tx_fifo_lock);
>  			continue;
> @@ -650,8 +646,7 @@ pi433_tx_thread(void *data)
>  		SET_CHECKED(rf69_set_mode(spi, standby));
>
>  		/* everything sent? */
> -		if ( kfifo_is_empty(&device->tx_fifo) )
> -		{
> +		if (kfifo_is_empty(&device->tx_fifo)) {
>  abort:
>  			if (rx_interrupted)
>  			{
> @@ -705,8 +700,7 @@ pi433_read(struct file *filp, char __user *buf, size_t size, loff_t *f_pos)
>  	mutex_unlock(&device->rx_lock);
>
>  	/* if read was successful copy to user space*/
> -	if (bytes_received > 0)
> -	{
> +	if (bytes_received > 0) {
>  		retval = copy_to_user(buf, device->rx_buffer, bytes_received);
>  		if (retval)
>  			return -EFAULT;
> @@ -806,8 +800,7 @@ pi433_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
>  	switch (cmd) {
>  	case PI433_IOC_RD_TX_CFG:
>  		tmp = _IOC_SIZE(cmd);
> -		if ( (tmp == 0) || ((tmp % sizeof(struct pi433_tx_cfg)) != 0) )
> -		{
> +		if ((tmp == 0) || ((tmp % sizeof(struct pi433_tx_cfg)) != 0)) {
>  			retval = -EINVAL;
>  			break;
>  		}
> @@ -823,8 +816,7 @@ pi433_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
>  		break;
>  	case PI433_IOC_WR_TX_CFG:
>  		tmp = _IOC_SIZE(cmd);
> -		if ( (tmp == 0) || ((tmp % sizeof(struct pi433_tx_cfg)) != 0) )
> -		{
> +		if ((tmp == 0) || ((tmp % sizeof(struct pi433_tx_cfg)) != 0)) {
>  			retval = -EINVAL;
>  			break;
>  		}
> @@ -917,8 +909,7 @@ static int pi433_open(struct inode *inode, struct file *filp)
>
>  	if (!device->rx_buffer) {
>  		device->rx_buffer = kmalloc(MAX_MSG_SIZE, GFP_KERNEL);
> -		if (!device->rx_buffer)
> -		{
> +		if (!device->rx_buffer) {
>  			dev_dbg(device->dev, "open/ENOMEM\n");
>  			return -ENOMEM;
>  		}
> @@ -926,8 +917,7 @@ static int pi433_open(struct inode *inode, struct file *filp)
>
>  	device->users++;
>  	instance = kzalloc(sizeof(*instance), GFP_KERNEL);
> -	if (!instance)
> -	{
> +	if (!instance) {
>  		kfree(device->rx_buffer);
>  		device->rx_buffer = NULL;
>  		return -ENOMEM;
> @@ -987,8 +977,7 @@ static int setup_GPIOs(struct pi433_device *device)
>  		snprintf(name, sizeof(name), "DIO%d", i);
>  		device->gpiod[i] = gpiod_get(&device->spi->dev, name, 0 /*GPIOD_IN*/);
>
> -		if (device->gpiod[i] == ERR_PTR(-ENOENT))
> -		{
> +		if (device->gpiod[i] == ERR_PTR(-ENOENT)) {
>  			dev_dbg(&device->spi->dev, "Could not find entry for %s. Ignoring.", name);
>  			continue;
>  		}
> @@ -1017,8 +1006,7 @@ static int setup_GPIOs(struct pi433_device *device)
>
>  		/* configure irq */
>  		device->irq_num[i] = gpiod_to_irq(device->gpiod[i]);
> -		if (device->irq_num[i] < 0)
> -		{
> +		if (device->irq_num[i] < 0) {
>  			device->gpiod[i] = ERR_PTR(-EINVAL);//(struct gpio_desc *)device->irq_num[i];
>  			return device->irq_num[i];
>  		}
> @@ -1157,8 +1145,7 @@ static int pi433_probe(struct spi_device *spi)
>
>  	/* setup GPIO (including irq_handler) for the different DIOs */
>  	retval = setup_GPIOs(device);
> -	if (retval)
> -	{
> +	if (retval) {
>  		dev_dbg(&spi->dev, "setup of GPIOs failed");
>  		goto GPIO_failed;
>  	}
> @@ -1176,16 +1163,14 @@ static int pi433_probe(struct spi_device *spi)
>  	device->tx_task_struct = kthread_run(pi433_tx_thread,
>  					     device,
>  					     "pi433_tx_task");
> -	if (IS_ERR(device->tx_task_struct))
> -	{
> +	if (IS_ERR(device->tx_task_struct)) {
>  		dev_dbg(device->dev, "start of send thread failed");
>  		goto send_thread_failed;
>  	}
>
>  	/* determ minor number */
>  	retval = pi433_get_minor(device);
> -	if (retval)
> -	{
> +	if (retval) {
>  		dev_dbg(device->dev, "get of minor number failed");
>  		goto minor_failed;
>  	}
> @@ -1214,8 +1199,7 @@ static int pi433_probe(struct spi_device *spi)
>  	device->cdev->owner = THIS_MODULE;
>  	cdev_init(device->cdev, &pi433_fops);
>  	retval = cdev_add(device->cdev, device->devt, 1);
> -	if (retval)
> -	{
> +	if (retval) {
>  		dev_dbg(device->dev, "register of cdev failed");
>  		goto cdev_failed;
>  	}
> @@ -1307,15 +1291,13 @@ static int __init pi433_init(void)
>  		return status;
>
>  	pi433_class = class_create(THIS_MODULE, "pi433");
> -	if (IS_ERR(pi433_class))
> -	{
> +	if (IS_ERR(pi433_class)) {
>  		unregister_chrdev(MAJOR(pi433_dev), pi433_spi_driver.driver.name);
>  		return PTR_ERR(pi433_class);
>  	}
>
>  	status = spi_register_driver(&pi433_spi_driver);
> -	if (status < 0)
> -	{
> +	if (status < 0) {
>  		class_destroy(pi433_class);
>  		unregister_chrdev(MAJOR(pi433_dev), pi433_spi_driver.driver.name);
>  	}
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1507395478-4416-1-git-send-email-srishtishar%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

