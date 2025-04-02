Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1F6D1917D6
	for <outreachy@lists.linux.dev>; Wed,  2 Apr 2025 05:06:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.104
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743570367; cv=none; b=MeUVfdGrDbKGS7eOT7qHLeeTXRa/YlKqQCBrrQWNWERzq+Y8kirhcdmMstLJ2fzGAfWCPeaxt1pcIYdstqCgYZsI5rqzBaRlY1mXQ+ZCWJCrKTeJ4ir/uUOS6g0Rn4/XuFaAPfEKEoh/PSU88dQJbI5IsYsXVIug7XlFMxOiaa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743570367; c=relaxed/simple;
	bh=N1RJX9RyOrxlUzFeq1EqcikVTrnZoaE0y0QJCc1nbZ4=;
	h=Content-Type:From:Mime-Version:Subject:Date:Message-Id:References:
	 Cc:In-Reply-To:To; b=L6gI9XxNfAFEa0oJqfAmGOPbxzrAgHU8FQQKRpGPcyAc8BhDtIPbmSxjfZxt7ollkZq2J52MwTOlClWe5cw+OA4cuwpzeFELwi+mnYXC1rPlucSSnhvQpe4ph97UldhPCGG+YW/UEmqezLh3MGayAkakbxzBlycdZEyAswy2Cyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=mJeg/ZoL; arc=none smtp.client-ip=192.134.164.104
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="mJeg/ZoL"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=content-transfer-encoding:from:mime-version:subject:date:
   message-id:references:cc:in-reply-to:to;
  bh=E5WjBymw3E6U6OPFa9j3cQOZ3VnQqtp8p/KoQnEzlAg=;
  b=mJeg/ZoLugfP1VQn7ONm8c7TG4mwSbnElw3bfyXAoy0ozUPMlV8OdUZL
   7WSoqCsp/seDxNjIrAYXAKyobTG8V+xDocgsA+qCWqvb38O3wgWPB5flR
   Fz2/rPwby/REY7GsOcHjj2hfyfisW0UAkFPm5CZh4nu9pomYzknDhmkqn
   g=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=Julia.Lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.14,295,1736809200"; 
   d="scan'208";a="113207625"
Received: from static.ip-78-108-136-42.signet.nl (HELO smtpclient.apple) ([78.108.136.42])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Apr 2025 07:06:01 +0200
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
From: Julia Lawall <Julia.Lawall@inria.fr>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (1.0)
Subject: Re: Help on Modifying a Driver on Native Linux
Date: Wed, 2 Apr 2025 07:05:50 +0200
Message-Id: <692F928D-F253-4889-8054-09A60AA1BE85@inria.fr>
References: <67ec6a6e.050a0220.2a613c.09a3@mx.google.com>
Cc: outreachy@lists.linux.dev, princerichard17a@gmail.com
In-Reply-To: <67ec6a6e.050a0220.2a613c.09a3@mx.google.com>
To: Richard Akintola <princerichard17a@gmail.com>
X-Mailer: iPhone Mail (22C152)


Sent from my iPhone

> On 2 Apr 2025, at 00:36, Richard Akintola <princerichard17a@gmail.com> wro=
te:
>=20
> =EF=BB=BFI learnt that e1000 didn't work because the driver is included in=
 VM
> images and not on Linux native, and a variant of e1000 on Linux native
> is the e1000e driver.
>=20
> Below are some of the drivers that one could modify on Linux native
> in order have the "I can modify Linux kernel\n" effect.
>=20

Super. I will update the tutorial accordingly.

> Using the e1000e driver
>=20
> 1. vim drivers/net/ethernet/intel/e1000e/netdev.c
>=20
> 2. Find the probe function
>=20
> static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *e=
nt)
> {
>        struct net_device *netdev;
>        struct e1000_adapter *adapter;
>        struct e1000_hw *hw;
>        const struct e1000_info *ei =3D e1000_info_tbl[ent->driver_data];
>        resource_size_t mmio_start, mmio_len;
>        resource_size_t flash_start, flash_len;
>        static int cards_found;
>        u16 aspm_disable_flag =3D 0;
>        u16 eeprom_data =3D 0;
>        u16 eeprom_apme_mask =3D E1000_EEPROM_APME;
>        int bars, i, err;
>        s32 ret_val =3D 0;
>=20
>        printk(KERN_DEBUG "I can modify the Linux kernel\n");
>=20
> 3. Save the file and recompile the kernel, you should see the text
> printed when you run the "dmesg | less" command after rebooting.
>=20
> Or you could use the bluetooth driver
>=20
> 1. vim drivers/bluetooth/btusb.c
>=20
> 2. Find the probe function
>=20
> static int btusb_probe(struct usb_interface *intf,
>                       const struct usb_device_id *id)
> {
>        struct usb_endpoint_descriptor *ep_desc;
>        struct gpio_desc *reset_gpio;
>        struct btusb_data *data;
>        struct hci_dev *hdev;
>        unsigned ifnum_base;
>        int i, err, priv_size;
>=20
>        printk(KERN_DEBUG "I can modify the Linux Kernel\n");
>=20
>=20
> 3. Save the file and recompile the kernel, you should see the text
> printed when you run the "dmesg | less" command after rebooting.
>=20
> I hope this helps.
>=20

