X-GM-THRID: 6342326313987080192
X-Received: by 10.98.150.142 with SMTP id s14mr6456890pfk.33.1476687917635;
        Mon, 17 Oct 2016 00:05:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.111.201 with SMTP id x192ls2034045itb.14.canary; Mon, 17
 Oct 2016 00:05:16 -0700 (PDT)
X-Received: by 10.36.228.198 with SMTP id o189mr2660300ith.22.1476687916431;
        Mon, 17 Oct 2016 00:05:16 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id 7si4864824par.0.2016.10.17.00.05.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Oct 2016 00:05:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x236.google.com with SMTP id rz1so61337846pab.1
        for <outreachy-kernel@googlegroups.com>; Mon, 17 Oct 2016 00:05:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=OEijSEQtuc2zOH0Xvnah3HlnI3eRjVgSYmEmXwrheIs=;
        b=km3dnbI68Ics4M/lHNGRANfHowaGGLGdxeZyDw0jWXi2k9VwYrnH/DrLV9ZR+PdLov
         sLFHbodM2/B3QKedmKu9mxXcPUxjl/e4GhsHe1/wPACsRi09H1TspCHObkSoZD94aA7H
         Ulv7klXqYMsIi2xGPHOYe78q1/D9f3Jb50ur28qqZ6uwvn8SSUmS296ZDEZklrhGPRDV
         jmPIrQQ/Jh3GH3WVt6/N5dNIoFFGl2w+SRexipn6olV71+Ydq+dVAwnLkRCGlP1wdH7u
         jhP0TWaAaSbDRtV1H0BJITKFMXOe/MrlHN0lrovI2v3xHfLgXHoLj/6ksTQUAcYW1Nsp
         mE8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=OEijSEQtuc2zOH0Xvnah3HlnI3eRjVgSYmEmXwrheIs=;
        b=XzeViAe8h3pu4HMjVocqe1ANQ3ZH9sm65VknbE7hZsh+bkGjNXQorEdAK+4WyVPc08
         zsi4PrwcPrXhvpMGKygJVl4L8MYIRlWNyfwBvDR23keAOAhjT0NqJ2t3FIkk2eJ7lYM5
         vCpenH2RiVSDlJGjgqAWYE8bi6cfV5M2/ROJII05BcwaxCI6ScBYRZk57J67eJ625vvP
         hz/pXAUt6U3xYtNbIhps0H7fNMdhmcxzcS0tkkkHnTyyEyQQa+F0EJvT7W9bDKFNCpRk
         rJIo9pk7abuVne2wL5cKm9YP5qwGAvYT8YBq4ugsUeObnMQFZlaN0mfC3a3lfwYtII0V
         K6IQ==
X-Gm-Message-State: AA6/9Rlr4IUy3E7dwo+7B3BSHsLFjktv5vPHzmG9Kn1beBU8A3kFh5TrCl1fcKErPATHug==
X-Received: by 10.66.222.5 with SMTP id qi5mr29156779pac.138.1476687916089;
        Mon, 17 Oct 2016 00:05:16 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:fd6b:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id e74sm44153008pfk.13.2016.10.17.00.05.15
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Oct 2016 00:05:15 -0700 (PDT)
Date: Mon, 17 Oct 2016 00:05:13 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: julia.lawall@lip6.fr
Subject: Coccinelle Small Task 1
Message-ID: <20161017070509.GA21688@localhost>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="qMm9M+Fa2AknHoGS"
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)


--qMm9M+Fa2AknHoGS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hey Julia,

I'm attaching Small Task 1. I found 9 cases where I thought
constification was not possible and one where it was and I sent in a
patch for that one. 

Liz

--qMm9M+Fa2AknHoGS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=cannotconst

Constification is not possible in these cases because they break one of these rules: 

1. Never reassigned.
2. Address never taken
3. Not passed to a top-level macro call
4. No pointer or array-typed field passed to a function or stored in a
variable.

1. drivers/staging/vme/devices/vme_user.c contains this struct:

static struct vme_driver vme_user_driver = {
         .name = driver_name,
         .match = vme_user_match,
         .probe = vme_user_probe,
         .remove = vme_user_remove,
}

&vme_user_driver is then passed to this function where its members are being modified:

int vme_register_driver(struct vme_driver *drv, unsigned int ndevs)
{

         drv->driver.name = drv->name;
         drv->driver.bus = &vme_bus_type;

2. Similar pattern occurs in drivers/staging/rtl8192u/r8192U_core.c 

static struct usb_driver rtl8192_usb_driver

is passed to usb_register and then usb_register_driver which modifies its members.

The pattern seems to be when a struct is passed to a function with "register" in the name it gets modified?

3. drivers/staging/sm750fb/sm750.c contains this struct:

static struct fb_ops lynxfb_ops = {
        .owner = THIS_MODULE,
        .fb_check_var =  lynxfb_ops_check_var,
        .fb_set_par = lynxfb_ops_set_par,
        .fb_setcolreg = lynxfb_ops_setcolreg,
        .fb_blank = lynxfb_ops_blank,
        .fb_fillrect = cfb_fillrect,
        .fb_imageblit = cfb_imageblit,
        .fb_copyarea = cfb_copyarea,
        /* cursor */
        .fb_cursor = lynxfb_ops_cursor,
};

it gets assigned a new member in the same file:

        lynxfb_ops.fb_pan_display = lynxfb_ops_pan_display;

4. drivers/staging/rtl8712/usb_intf.c contains
static struct drv_priv drvpriv = {...}

The init function modifies this struct: 
static int __init r8712u_drv_entry(void)
{
        drvpriv.drv_registered = true;
5. In drivers/staging/wilc1000/wilc_sdio.c
 static struct sdio_driver wilc1000_sdio_driver is passed to module_driverfunction which is a macro call.

6. In drivers/staging/octeon-usb/octeon-hcd.c,
There is a 
static struct platform_driver octeon_usb_driver

Its address is passed to a platform_driver_register function 

7. In drivers/staging/comedi/drivers/rtd520.c,

The address of static struct comedi_driver rtd520_driver is passed to comedi_pci_auto_config

8. In drivers/staging/android/ion/ion_carveout_heap.c,

static struct ion_heap_ops carveout_heap_ops 

There is an assignment which looks like this: 

carveout_heap->heap.ops = &carveout_heap_ops;

The address shouldn't be taken 

9. In  drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c:

static struct ieee80211_crypto_ops ieee80211_crypt_null

Its address is passed to a register function 
ret = ieee80211_register_crypto_ops(&ieee80211_crypt_null);

--qMm9M+Fa2AknHoGS--

