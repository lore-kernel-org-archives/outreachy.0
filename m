Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48F5B230BE5
	for <outreachy@lists.linux.dev>; Wed,  2 Apr 2025 06:13:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.104
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743574423; cv=none; b=WxXWTt0/wCmbzzpTuIEDLKBYYHRGWHQpx6WSktUkkdPIyYzhFc5o2vkvO2MUTBF5+L+jQlFMLlhAZy/2VQ5/cliu47Q0gRWg92zYE2DRG8aI+GN3XYLmw1pT6BHw5SXtNwr7bYsqTh61DKhrS0BzIe6ZohQjq31hidev2ZmTSvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743574423; c=relaxed/simple;
	bh=MYDkARKjpfJ5AEmr0g/ZJ7L3Fdr3VoGzN95jPxNnUVs=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=gjvRXSuN3eAspdsl+0JB4Z70p0EQtln+49Iwgk20lEa4HgvbHB8ATLjaUCF4THcxe+AiVcDaMVf6v04HwZ3Y4Y5UGpk0HM28wbmlBFNsENpGlO5vpDudQqpSd1yO+skc4q/1avEMahG+Dmygs5k/Msb7cE5sFDdQMEzSR4V80YE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=H9h324oh; arc=none smtp.client-ip=192.134.164.104
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="H9h324oh"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=A4YUJg/eHqRkOUZkPuLb5IqNl3av7/oybske4tyy79c=;
  b=H9h324oh5v+zSpW/QMaO1+2wgUGc9y+of2Gb/+YvxfDsYTKRI2h16XbJ
   KWw8vveWzLx4kjY7hUx79y8CzkkRv83zs3z5LiCfhZyieBTpbhF5aUXdL
   ltXIdX65mSSKVeZ4l5OhVDP/9+82ooDXI3q7MWICqOo0S41gEfQh4y0Sn
   k=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.14,295,1736809200"; 
   d="scan'208";a="113210404"
Received: from a81-173-67-6.dsl.pocosnet.nl (HELO hadrien) ([81.173.67.6])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Apr 2025 08:13:38 +0200
Date: Wed, 2 Apr 2025 08:13:36 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
To: Richard Akintola <princerichard17a@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: Help on Modifying a Driver on Native Linux
In-Reply-To: <67ec6a6e.050a0220.2a613c.09a3@mx.google.com>
Message-ID: <38eaf2ba-f314-12e8-2c6b-1b4e70eafe4e@inria.fr>
References: <67ec6a6e.050a0220.2a613c.09a3@mx.google.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 1 Apr 2025, Richard Akintola wrote:

> I learnt that e1000 didn't work because the driver is included in VM
> images and not on Linux native, and a variant of e1000 on Linux native
> is the e1000e driver.

Thanks for the suggested text.  You can see it here:

https://kernelnewbies.org/FirstKernelPatch#DriverChange

julia


>
> Below are some of the drivers that one could modify on Linux native
> in order have the "I can modify Linux kernel\n" effect.
>
> Using the e1000e driver
>
> 1. vim drivers/net/ethernet/intel/e1000e/netdev.c
>
> 2. Find the probe function
>
> static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
> {
>         struct net_device *netdev;
>         struct e1000_adapter *adapter;
>         struct e1000_hw *hw;
>         const struct e1000_info *ei = e1000_info_tbl[ent->driver_data];
>         resource_size_t mmio_start, mmio_len;
>         resource_size_t flash_start, flash_len;
>         static int cards_found;
>         u16 aspm_disable_flag = 0;
>         u16 eeprom_data = 0;
>         u16 eeprom_apme_mask = E1000_EEPROM_APME;
>         int bars, i, err;
>         s32 ret_val = 0;
>
>         printk(KERN_DEBUG "I can modify the Linux kernel\n");
>
> 3. Save the file and recompile the kernel, you should see the text
> printed when you run the "dmesg | less" command after rebooting.
>
> Or you could use the bluetooth driver
>
> 1. vim drivers/bluetooth/btusb.c
>
> 2. Find the probe function
>
> static int btusb_probe(struct usb_interface *intf,
>                        const struct usb_device_id *id)
> {
>         struct usb_endpoint_descriptor *ep_desc;
>         struct gpio_desc *reset_gpio;
>         struct btusb_data *data;
>         struct hci_dev *hdev;
>         unsigned ifnum_base;
>         int i, err, priv_size;
>
>         printk(KERN_DEBUG "I can modify the Linux Kernel\n");
>
>
> 3. Save the file and recompile the kernel, you should see the text
> printed when you run the "dmesg | less" command after rebooting.
>
> I hope this helps.
>
>
