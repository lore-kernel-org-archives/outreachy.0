Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374CF20E713
	for <outreachy@lists.linux.dev>; Tue,  1 Apr 2025 22:36:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743546993; cv=none; b=NRiX3s7RFy1UBPZa1gilUGpMP5o4IPYhDnSOl/VbSnlD6kg4zNHsTaJFjPMPpbu8xENVKka8Pg231yw7P7UyF3ETrdssjK9+QCedw8IoateAKAfBjWp3+HbqAyg2gyTd7aippuDp1XJnUb++X3MU1ZcUB8CSUD8UHwW0VfE27ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743546993; c=relaxed/simple;
	bh=fcrwhqD6T5iy9+0rOvJBrv3l5I+EUkIHzziZLjDmRD8=;
	h=Message-ID:Date:From:To:Cc:Subject:MIME-Version:Content-Type:
	 Content-Disposition; b=Wxq01w70geVdLsMBLyWaOl1zOzbiOy2oa2mUSklvKgbkbHANZ4XXxGvHdqyUwtxVXzRGjSqx5EIG2325YAU52SPUb7ceWiIxy2QKxh1F2YaxHYG/FQ3lPvfpOHcDoYBLCdFQAL5oGrRzhjwPNxgNT0e+P0+Kp4iJOsLNPJEb8xw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RawAPmFz; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RawAPmFz"
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-43cf3192f3bso60954035e9.1
        for <outreachy@lists.linux.dev>; Tue, 01 Apr 2025 15:36:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743546990; x=1744151790; darn=lists.linux.dev;
        h=content-disposition:mime-version:subject:cc:to:from:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=P6wsvJVot5aggM1dXdf6Vt9pSboKUz6M6xW5g8ydjNo=;
        b=RawAPmFziZj6wB1Kaey7BLrwufCzsCbGffzJAm8EUYTeXDdDaIuM9afrzhTYQEDUez
         5BxBfPJtkp0Yn/cozCl8OxMfRbEidNztsY6vqcrQ/sVynFxa2LiSuLW6HIbC+QRT2RdN
         JvSL5nFbTBshB53dBMtennGUaUhQ0X+qJqv5i+T1BSMlBPmt/UU0TIoto2n1XcuEF0F8
         7qcEiARsjVjtRSAJ1TSCADMx1iXp54w8V5muIdDJ0BlYb97Niydr5EfzJSxOTKZvwz0Y
         IXvJz0zy6bUAr7ME5Zn64o4ajh+s3l46ZQ7MxSxgspD9v1v4WKolRJlNxocjP+jOTOeV
         2L1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743546990; x=1744151790;
        h=content-disposition:mime-version:subject:cc:to:from:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=P6wsvJVot5aggM1dXdf6Vt9pSboKUz6M6xW5g8ydjNo=;
        b=fCgoHNagenmSt/xnDdUkRAZc1XciVDNn4n3jhHdo6127dynGfoHXbPIkMrSKCx2/HP
         G8jM/dNUHvnsic8jujs40an5I/dxFty3RGQHj8+BhMlbzmJDNLb1x8sfvYctH1eq0fNa
         ZV4ZTEfHLKbabbS58pwTmerQ5a0qpM9gpPT7rg/5Id+BhzK85zOmnGb/c6RhSb4YGahv
         FyRMHG9hLmGUsexcPnUIcIqLD/rZRVQCwziESxUwXEp1wHGQ9ctXHi+MoJylT9xqT0iX
         ruZwLxphr1HVxe6OUyCpATlloz9+QLfoJNmikhgmuqZ1u0wsajI8iyDUjH+V1n0KsF2N
         VFiA==
X-Gm-Message-State: AOJu0Yw0eQ8Rrliiuh7+ohNehFLgaxW9fb2inYh9VXZ8JUZc78aSkNr2
	vWPLDqkodOJFOEJGXID5LUAK7KrH6O1mL8+z/CzpVrlCl7DESj0k
X-Gm-Gg: ASbGncuIS3w/VJCjqFK6J1xhreMMXGj/wsFxBym7Zw2rxlz216Fu8g+LxK6WPb1FI5m
	xANDECBj7SaH2ZB5eNc19S7QN/o5YMt0/dfycSp/yTEK23ScCz8xM87LyDqUHseCw3+6RsfHJgr
	XgFRUpY+nvdWuiFVZp6zVY63B/euHAWCFptzWF/QRLTbdtVv6J8i6cVTkN7PaXZUSvuD7OdtBPs
	KC4+wD2+uHFujk5680eGk4MVZzqkQpiNrXnRXgsrgZ1nYSaC06WmoeQRiyAguqarJ1EpkVQ57zp
	/YySINvU5zDyoCmxQoHL6jQDDL+IV8381hh5046fa18e7Q==
X-Google-Smtp-Source: AGHT+IEOOkYJFJwt5p+8tXXGNWrYEC07ZgEaRi93hefDy2NujC6ucJNnQTHIeY0dqsUP20vE/qOQ4g==
X-Received: by 2002:a05:600c:1ca9:b0:43c:fe5e:f03b with SMTP id 5b1f17b1804b1-43db62bf723mr160650355e9.30.1743546990288;
        Tue, 01 Apr 2025 15:36:30 -0700 (PDT)
Received: from parrot ([197.211.59.65])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43eb5fc662fsm2226435e9.8.2025.04.01.15.36.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Apr 2025 15:36:30 -0700 (PDT)
Message-ID: <67ec6a6e.050a0220.2a613c.09a3@mx.google.com>
X-Google-Original-Message-ID: <Z-xqar6zJq63foGe@princerichard17a@gmail.com>
Date: Tue, 1 Apr 2025 23:36:26 +0100
From: Richard Akintola <princerichard17a@gmail.com>
To: outreachy@lists.linux.dev
Cc: julia.lawall@inria.fr, princerichard17a@gmail.com
Subject: Help on Modifying a Driver on Native Linux
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

I learnt that e1000 didn't work because the driver is included in VM
images and not on Linux native, and a variant of e1000 on Linux native
is the e1000e driver.

Below are some of the drivers that one could modify on Linux native
in order have the "I can modify Linux kernel\n" effect.

Using the e1000e driver

1. vim drivers/net/ethernet/intel/e1000e/netdev.c

2. Find the probe function

static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
{
        struct net_device *netdev;
        struct e1000_adapter *adapter;
        struct e1000_hw *hw;
        const struct e1000_info *ei = e1000_info_tbl[ent->driver_data];
        resource_size_t mmio_start, mmio_len;
        resource_size_t flash_start, flash_len;
        static int cards_found;
        u16 aspm_disable_flag = 0;
        u16 eeprom_data = 0;
        u16 eeprom_apme_mask = E1000_EEPROM_APME;
        int bars, i, err;
        s32 ret_val = 0;

        printk(KERN_DEBUG "I can modify the Linux kernel\n");

3. Save the file and recompile the kernel, you should see the text
printed when you run the "dmesg | less" command after rebooting.

Or you could use the bluetooth driver

1. vim drivers/bluetooth/btusb.c

2. Find the probe function

static int btusb_probe(struct usb_interface *intf,
                       const struct usb_device_id *id)
{
        struct usb_endpoint_descriptor *ep_desc;
        struct gpio_desc *reset_gpio;
        struct btusb_data *data;
        struct hci_dev *hdev;
        unsigned ifnum_base;
        int i, err, priv_size;

        printk(KERN_DEBUG "I can modify the Linux Kernel\n");


3. Save the file and recompile the kernel, you should see the text
printed when you run the "dmesg | less" command after rebooting.

I hope this helps.

