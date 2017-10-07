X-GM-THRID: 6474214314983030784
X-Received: by 10.101.71.131 with SMTP id e3mr516319pgs.1.1507406236557;
        Sat, 07 Oct 2017 12:57:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.61.195 with SMTP id k186ls399003pga.5.gmail; Sat, 07 Oct
 2017 12:57:15 -0700 (PDT)
X-Received: by 10.99.121.141 with SMTP id u135mr575222pgc.90.1507406235567;
        Sat, 07 Oct 2017 12:57:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507406235; cv=none;
        d=google.com; s=arc-20160816;
        b=NuZoXc5JMqPf9Bk0jopigQkpeAuJZT66D1M3GSgWaO1dKQEmvPhNavTHiqAgHxkY8d
         UxaoSy3682e+aT/8JsambpNdR5W1adGDStaLVb2SlLXKyA4Li7uVTjqBq57+KevmWLbr
         319HtN2ETUjHPA9UfApTl8cI3BSsKCT1s5bvq7YOtD8lOmzOyfMmGzzZAoNCI79FloMx
         axCH30rKuF58xcXaBborXr+tRqgVmmgCCNjw1zjHWTU+5S9RsD2q0eMbjtL3Ghie8d+G
         qyVPl6gbcj7UJs0/Dc3yA8K1JGzloxSW4Xr6lUMGrFMB2I+OE6DcV11DK0NrgeqKvlnj
         Mz9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=ptadHYX7nMiRGt9PCQwranLfsb/Wx2EQ5hm4FOKQOBQ=;
        b=nL1AVV5IYq6TXm8fKkTCtgUDuo6FV6Gs0nG2RgaFDYTqNjFkHjY70u0yJWA1PwD0od
         cxm/Qa5mhv95DNhv8wgqI8HBR+Psi6tFxv/lSGu837SxX7oK3TukewzaD9R13GaSlVcm
         cDmZ2Q4oB6Citv7TVmgoYOxRCZ6E+p4jn/sV052uFGKJWUuTu1oMcxnYUZBZ+gHtscqT
         rfEx6hC/LT5TzgWjW7kIQas4hhfsjLGIHLVXRWmenSfSQ9NYV7yWkLwjTSrVvLxYdzJA
         zcrZR5R1gycwo1jzU+GNxBpTM1JL+Xw5MiWUK/pGy5KTNva5iDJPjQ+98csSrGTK/hn7
         dP6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rpduZSu/;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id u89si521496pfi.27.2017.10.07.12.57.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Oct 2017 12:57:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rpduZSu/;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id b11so12833384pgn.0
        for <outreachy-kernel@googlegroups.com>; Sat, 07 Oct 2017 12:57:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=ptadHYX7nMiRGt9PCQwranLfsb/Wx2EQ5hm4FOKQOBQ=;
        b=rpduZSu/+ROpSIjwaNiY05otkBfDrGFj0QZW4EekvWgMgxEvu/7HUGrrb6253D30VG
         4v7RWT0jlnLP+lmIdyMaXeTmNjW49KFMtbbI0d7BtiBDlFeOMCeQGMcOwYML8Ptnp+Kr
         Ql3GnkWIxpG0/K8a/YnxuS2/8gKwxmLvzdbv8c2MnioihM/Ohlb3JTQpojW0pETn+o/K
         nGmCUHP/aQPUMK7aoUawTlKavybWMGNZvZGoGKe91myFaOGNOsxYw1i4rJ3neon3ZRvH
         3yj0GXBSnIapTQl2bwyvqMnOqyyAU7ycpD5Dh9GIakOODcoziPzIfEJQ21KYSVWMa/5T
         TIWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ptadHYX7nMiRGt9PCQwranLfsb/Wx2EQ5hm4FOKQOBQ=;
        b=D5L1h16mSfETZPap53Jndty+LD5ZmTR+gtsTd/Lea8dCeKBB3lH4CqNauoX+OG7skf
         R9bo6s6cqbcEOQgbaGFD2tlUAGizG0sq/bsytfDyf2AGa/7ztIw5vgMu1q9qepivhVyw
         p+5ih14+Ul5beixR4vasVDxRbKkxUv5g+KfdrFpuUSCYvn69pe8h6oduRvMgSDShTUVz
         EGJk6Qnsyx9yDJ1uHPMeK92cmeeCgGk4B1qahmp9Q+huUBLq/uYAf+l2SI5OV4yiPNYE
         /1hGDtB/3x7M2KjbzSOZLMj9SpOLgfsWPFQZeaxX0R5jXSZxitq0MW8AsA47J1rLEfYt
         iDfQ==
X-Gm-Message-State: AMCzsaU8zuQvmPSAuWZ9eZlxvyvPefjTnnioQLrqRTp2knYtbqflroKH
	T+ed8bLrgJ/Drpaxe6Nsfvs=
X-Google-Smtp-Source: AOwi7QBsj3hCEr4/aPNS91y2H2RsntV+wswWSWIsEw7jLeQYMZ6FRO8Cd64U9qhnajffxxiQJ9yVXw==
X-Received: by 10.98.217.2 with SMTP id s2mr5869536pfg.298.1507406235163;
        Sat, 07 Oct 2017 12:57:15 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([122.168.109.202])
        by smtp.gmail.com with ESMTPSA id 64sm8640329pfg.30.2017.10.07.12.57.13
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 07 Oct 2017 12:57:14 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH v2] Staging: pi433: Fix the position of brace after if
Date: Sun,  8 Oct 2017 01:27:05 +0530
Message-Id: <1507406225-3585-1-git-send-email-srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4

Fix the position of the brace after if when it is on the next line. 
Done using the following semantic patch by coccinelle.

@r1@
position p1, p2;
@@

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
Changes in v2:
 -Improve commit message.

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


