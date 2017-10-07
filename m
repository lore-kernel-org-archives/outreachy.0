X-GM-THRID: 6474214314983030784
X-Received: by 10.159.216.130 with SMTP id s2mr273624plp.42.1507395486299;
        Sat, 07 Oct 2017 09:58:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.117.77 with SMTP id f13ls350850pgn.17.gmail; Sat, 07 Oct
 2017 09:58:05 -0700 (PDT)
X-Received: by 10.99.122.81 with SMTP id j17mr475605pgn.5.1507395485291;
        Sat, 07 Oct 2017 09:58:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507395485; cv=none;
        d=google.com; s=arc-20160816;
        b=YluFG/QztKa+TfXluQw/OK6H8EZ7sf/xLlGUShRpeoesCun99TBxiq4NwnMyKF47zF
         YLVTv+2A5wSwP80hHote9ufs7juqX3Ac+7+rRnZCaW6pdummnexr4zG5WqcPa2yr3rBo
         6mbbD+8gZvJM8LBCraw82NWhvYhMSWx19nxAjZTRy7kI6FtGTGsZJbHSMs7OxmXnn9fr
         o4n7V7qj81IHOHRzu/2p7xkhrHePbZB3Ln6ms0bjAGyvMLjXrOtaj5AVOEa3Y5qB62nk
         OeMzP/YthFGWJ5rinTIAPuNY+Dp4M2t0WGuKFDGAkMjx5f7dnZU2XcIyc8H7m7DzYp7t
         eDiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=MrLgpQ6b7/AvEVxzF6yYkZR0QPBAbtXExqsxEzEQnOI=;
        b=p7g7N/vpYcCvgGJVNNErlBJ2cwA/gtcaAbSB5AxI69bdBr5+KcLh7lh0ZQpIEBwER0
         nHSNvIuEQq3uF0TlupGUdZ34baEUy5H8x+raPC7kDPOrIFBxP/tOfFNeDuEaYMvgMIsl
         wwQGJgJoIc/YVlYRRmwmbQJuZFzFbSv4RKXs8aHKxiuKv3vq5ecvdQu8kdzpE5fYSV8g
         nwmASm/fvhQtaaV0D/L8pIR244dZf5yqW/7NJOgJ6/377s+bz0NCVCYh7D3ECIbcY3qJ
         7EqfEaX0713I/lJDyS150+qUevoyg3GYlQREh/cc4T59XcaEDpW6FMoXSA5ncb3fPP3H
         EKnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vUY10ZFl;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id j10si460030pfj.7.2017.10.07.09.58.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Oct 2017 09:58:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vUY10ZFl;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id j3so5883646pga.5
        for <outreachy-kernel@googlegroups.com>; Sat, 07 Oct 2017 09:58:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=MrLgpQ6b7/AvEVxzF6yYkZR0QPBAbtXExqsxEzEQnOI=;
        b=vUY10ZFlRV37ICM3Jp0DgyQgVy/NfXs1h8f0LQT2i2XbCBrJBsB4Gqsqnl8URf5df6
         xX6syTLDTzKOXK0Ct9CNDWOAK9qkP3ZV4mfcrAwiEcwwu1IPYKvnWANGIjdbb/LhTlGS
         WwFlnPpCpEmhLCYyBtRxEw80jtyLBTIEIwz55HU2b2fbkZ7mWx/I5uyJWPallEyGyB1Q
         hUvDL3l0e27pICBPdJA14biUbWZNEh8nh6lUbaGLosVCKqwtxmTS/+PEiHtJ8TR7U0WH
         Varjq+dFmEmfeajSsHA3I1p+t+gst4y62ezvu5DB1Ar3XfBFUXFODaK1eZhyXRhxjx8D
         J4ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=MrLgpQ6b7/AvEVxzF6yYkZR0QPBAbtXExqsxEzEQnOI=;
        b=RvD/j2rKBbvPfrieHqFqBfOwiFHntCY2I4j8ELE7P+pdhZweIhja4sZ/J0BNRylKL1
         fen7+chZxRLMQFePUAupCj6QBeKUpar6WRwm4xdLmzGa0volXdctGNa0CTwjfgx0k5u8
         fYsHKQgF3cLD4BYaqenIbgRAH7/gusN+dK3x2KkDX6oS6WxCTJEAY/5KmG61S31bMAaz
         fhazzsQQRBG8f4ndhPSiASsVxXALy5ifLlitZHElZm/PqB5HVnrnp1xQFsI0Ihf2McLo
         D2BVCtHDpb9mi3lj6fA5P9XS0PRv9IAAAJy3gQ6DyA1ktdpVY1un/qBeAQ5gVX7LHadN
         VRuw==
X-Gm-Message-State: AMCzsaWOGHzVyVRj+cSJUdqToUya0tQCRiKdRTpXopI2VtPph1D2HK7y
	Ldf28RQBthGqwwRcO2XAa2I=
X-Google-Smtp-Source: AOwi7QBRl0mUAqclk21xJz+dR4bgByKmzBVKo1LwG4UDiJZVnlFTQW+S+443mkPVHx2JpNmSxbtVGg==
X-Received: by 10.159.197.75 with SMTP id d11mr5030241plo.213.1507395484950;
        Sat, 07 Oct 2017 09:58:04 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([122.168.109.202])
        by smtp.gmail.com with ESMTPSA id v15sm8468247pfa.50.2017.10.07.09.58.03
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 07 Oct 2017 09:58:04 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH] Staging: pi433: Fix the position of brace after if
Date: Sat,  7 Oct 2017 22:27:58 +0530
Message-Id: <1507395478-4416-1-git-send-email-srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4

Fix the position of the brace after if when it is on the next line
or when there is no space between them. Done using the following
semantic patch by coccinelle.

@r1@
position p1, p2;
identifier x,f;
expression e;
@@

(
x=e;
|
f(...)
)

if(...)@p1 {@p2
...
}

@script: python r2@
p1 << r1.p1;
p2 << r1.p2;
@@

l1 = int (p1[0].line)
l2 = int (p2[0].line)
c1 = int (p1[0].column_end)
c2 = int (p2[0].column)

if l1 == l2 and c1+1 == c2:
        cocci.include_match(False)

@r3@
position r1.p1, r1.p2;
@@

if(...
- )@p1
-{@p2
+) {
...
}

Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
---
 drivers/staging/pi433/pi433_if.c | 54 ++++++++++++++--------------------------
 1 file changed, 18 insertions(+), 36 deletions(-)

diff --git a/drivers/staging/pi433/pi433_if.c b/drivers/staging/pi433/pi433_if.c
index d82c74d..d946838 100644
--- a/drivers/staging/pi433/pi433_if.c
+++ b/drivers/staging/pi433/pi433_if.c
@@ -285,8 +285,7 @@ rf69_set_tx_cfg(struct pi433_device *dev, struct pi433_tx_cfg *tx_cfg)
 	SET_CHECKED(rf69_set_crc_enable	  (dev->spi, tx_cfg->enable_crc));
 
 	/* configure sync, if enabled */
-	if (tx_cfg->enable_sync == optionOn)
-	{
+	if (tx_cfg->enable_sync == optionOn) {
 		SET_CHECKED(rf69_set_sync_size(dev->spi, tx_cfg->sync_length));
 		SET_CHECKED(rf69_set_sync_values(dev->spi, tx_cfg->sync_pattern));
 	}
@@ -408,8 +407,7 @@ pi433_receive(void *data)
 		if (retval) goto abort; /* wait was interrupted */
 
 		rf69_read_fifo(spi, (u8 *)&bytes_total, 1);
-		if (bytes_total > dev->rx_buffer_size)
-		{
+		if (bytes_total > dev->rx_buffer_size) {
 			retval = -1;
 			goto abort;
 		}
@@ -509,16 +507,14 @@ pi433_tx_thread(void *data)
 		mutex_lock(&device->tx_fifo_lock);
 
 		retval = kfifo_out(&device->tx_fifo, &tx_cfg, sizeof(tx_cfg));
-		if (retval != sizeof(tx_cfg))
-		{
+		if (retval != sizeof(tx_cfg)) {
 			dev_dbg(device->dev, "reading tx_cfg from fifo failed: got %d byte(s), expected %d", retval, (unsigned int)sizeof(tx_cfg) );
 			mutex_unlock(&device->tx_fifo_lock);
 			continue;
 		}
 
 		retval = kfifo_out(&device->tx_fifo, &size, sizeof(size_t));
-		if (retval != sizeof(size_t))
-		{
+		if (retval != sizeof(size_t)) {
 			dev_dbg(device->dev, "reading msg size from fifo failed: got %d, expected %d", retval, (unsigned int)sizeof(size_t) );
 			mutex_unlock(&device->tx_fifo_lock);
 			continue;
@@ -650,8 +646,7 @@ pi433_tx_thread(void *data)
 		SET_CHECKED(rf69_set_mode(spi, standby));
 
 		/* everything sent? */
-		if ( kfifo_is_empty(&device->tx_fifo) )
-		{
+		if (kfifo_is_empty(&device->tx_fifo)) {
 abort:
 			if (rx_interrupted)
 			{
@@ -705,8 +700,7 @@ pi433_read(struct file *filp, char __user *buf, size_t size, loff_t *f_pos)
 	mutex_unlock(&device->rx_lock);
 
 	/* if read was successful copy to user space*/
-	if (bytes_received > 0)
-	{
+	if (bytes_received > 0) {
 		retval = copy_to_user(buf, device->rx_buffer, bytes_received);
 		if (retval)
 			return -EFAULT;
@@ -806,8 +800,7 @@ pi433_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
 	switch (cmd) {
 	case PI433_IOC_RD_TX_CFG:
 		tmp = _IOC_SIZE(cmd);
-		if ( (tmp == 0) || ((tmp % sizeof(struct pi433_tx_cfg)) != 0) )
-		{
+		if ((tmp == 0) || ((tmp % sizeof(struct pi433_tx_cfg)) != 0)) {
 			retval = -EINVAL;
 			break;
 		}
@@ -823,8 +816,7 @@ pi433_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
 		break;
 	case PI433_IOC_WR_TX_CFG:
 		tmp = _IOC_SIZE(cmd);
-		if ( (tmp == 0) || ((tmp % sizeof(struct pi433_tx_cfg)) != 0) )
-		{
+		if ((tmp == 0) || ((tmp % sizeof(struct pi433_tx_cfg)) != 0)) {
 			retval = -EINVAL;
 			break;
 		}
@@ -917,8 +909,7 @@ static int pi433_open(struct inode *inode, struct file *filp)
 
 	if (!device->rx_buffer) {
 		device->rx_buffer = kmalloc(MAX_MSG_SIZE, GFP_KERNEL);
-		if (!device->rx_buffer)
-		{
+		if (!device->rx_buffer) {
 			dev_dbg(device->dev, "open/ENOMEM\n");
 			return -ENOMEM;
 		}
@@ -926,8 +917,7 @@ static int pi433_open(struct inode *inode, struct file *filp)
 
 	device->users++;
 	instance = kzalloc(sizeof(*instance), GFP_KERNEL);
-	if (!instance)
-	{
+	if (!instance) {
 		kfree(device->rx_buffer);
 		device->rx_buffer = NULL;
 		return -ENOMEM;
@@ -987,8 +977,7 @@ static int setup_GPIOs(struct pi433_device *device)
 		snprintf(name, sizeof(name), "DIO%d", i);
 		device->gpiod[i] = gpiod_get(&device->spi->dev, name, 0 /*GPIOD_IN*/);
 
-		if (device->gpiod[i] == ERR_PTR(-ENOENT))
-		{
+		if (device->gpiod[i] == ERR_PTR(-ENOENT)) {
 			dev_dbg(&device->spi->dev, "Could not find entry for %s. Ignoring.", name);
 			continue;
 		}
@@ -1017,8 +1006,7 @@ static int setup_GPIOs(struct pi433_device *device)
 
 		/* configure irq */
 		device->irq_num[i] = gpiod_to_irq(device->gpiod[i]);
-		if (device->irq_num[i] < 0)
-		{
+		if (device->irq_num[i] < 0) {
 			device->gpiod[i] = ERR_PTR(-EINVAL);//(struct gpio_desc *)device->irq_num[i];
 			return device->irq_num[i];
 		}
@@ -1157,8 +1145,7 @@ static int pi433_probe(struct spi_device *spi)
 
 	/* setup GPIO (including irq_handler) for the different DIOs */
 	retval = setup_GPIOs(device);
-	if (retval)
-	{
+	if (retval) {
 		dev_dbg(&spi->dev, "setup of GPIOs failed");
 		goto GPIO_failed;
 	}
@@ -1176,16 +1163,14 @@ static int pi433_probe(struct spi_device *spi)
 	device->tx_task_struct = kthread_run(pi433_tx_thread,
 					     device,
 					     "pi433_tx_task");
-	if (IS_ERR(device->tx_task_struct))
-	{
+	if (IS_ERR(device->tx_task_struct)) {
 		dev_dbg(device->dev, "start of send thread failed");
 		goto send_thread_failed;
 	}
 
 	/* determ minor number */
 	retval = pi433_get_minor(device);
-	if (retval)
-	{
+	if (retval) {
 		dev_dbg(device->dev, "get of minor number failed");
 		goto minor_failed;
 	}
@@ -1214,8 +1199,7 @@ static int pi433_probe(struct spi_device *spi)
 	device->cdev->owner = THIS_MODULE;
 	cdev_init(device->cdev, &pi433_fops);
 	retval = cdev_add(device->cdev, device->devt, 1);
-	if (retval)
-	{
+	if (retval) {
 		dev_dbg(device->dev, "register of cdev failed");
 		goto cdev_failed;
 	}
@@ -1307,15 +1291,13 @@ static int __init pi433_init(void)
 		return status;
 
 	pi433_class = class_create(THIS_MODULE, "pi433");
-	if (IS_ERR(pi433_class))
-	{
+	if (IS_ERR(pi433_class)) {
 		unregister_chrdev(MAJOR(pi433_dev), pi433_spi_driver.driver.name);
 		return PTR_ERR(pi433_class);
 	}
 
 	status = spi_register_driver(&pi433_spi_driver);
-	if (status < 0)
-	{
+	if (status < 0) {
 		class_destroy(pi433_class);
 		unregister_chrdev(MAJOR(pi433_dev), pi433_spi_driver.driver.name);
 	}
-- 
2.7.4


