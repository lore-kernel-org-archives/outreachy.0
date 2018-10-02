X-GM-THRID: 6607095314902941696
X-Received: by 2002:a24:7:: with SMTP id 7-v6mr1135507ita.33.1538472504858;
        Tue, 02 Oct 2018 02:28:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:ac54:: with SMTP id m20-v6ls329120iti.6.canary-gmail;
 Tue, 02 Oct 2018 02:28:24 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62Hl76HI5j5/H//TP/5h4QEAzwc7uQOdDbiYlrUGXJD3ipXy5BVVpOobWglatriGOn2KJnP
X-Received: by 2002:a24:2443:: with SMTP id f64-v6mr1164088ita.27.1538472504092;
        Tue, 02 Oct 2018 02:28:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538472504; cv=none;
        d=google.com; s=arc-20160816;
        b=Q5EIsv01KC6XB21vDF2HtsCABsUsNGfuFwXKuXRpoWlcgjugFBRkgFhWS+LekBaPms
         jvYZgC8pCCfeI7mVAsshjNgH2STm6Q4YVhGCxs93R/2hA4hzlA9vhw3fO9BwgqxBIZAV
         3N5M6fFzpxyKr9dRiAdZB2nLuAjp3UZlvcUzLKH6kkdQ7njIkt8sFpx9MwPTGGoc3Nrs
         /YIaqFpJ6ZSPJybxqTmh3iG0j/YmEzCJ/RDbMJlw0tKemwpZYnnagarEHbC69z1pmDpD
         RsDO/WXI6Y2G/fzcxMS+Ye3VpHnF6GbbFtTt59IjF40w0/cw4A7Wqkw3c6SOY7huaaj1
         sgyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=fMSQ302j/0rYpcupEHu+hMNJNmPr6/S8CJTIlrq+0xU=;
        b=B9rb1B96wSb6iLw4XBqM5RjHDTWfaY+ngoPrHmpejFWFXcZF/lvB6KvMQgeXb2qWRf
         j2GO052tbVY5xONuJnlB2tcDAQ9pPNYbkoOnFL9slDJx2tc69rRUOuvqWuYuAKz8JCS0
         nh8gbECgvwhwOMXOV3G3KQVE4RmAynzYELLxedfjLONq/uKhEjHOIHLsXOWqX+Id9Zf6
         VpZuHVN5iekT5J//6mvT1iSED3CVvgXOoGn14o/ZyLvRtzIVIz5qVSBVJA7XJrBNrD3U
         fY7mdwCWVWewFSYwZRbrVrN9Um7qmUTcP6/AK9Gi+lppA6kspdMSlOkXGK1TBgUJu/lR
         iFhg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ckdwSlnu;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himanshujha199640@gmail.com>
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com. [2607:f8b0:4864:20::62d])
        by gmr-mx.google.com with ESMTPS id 141-v6si482910iti.1.2018.10.02.02.28.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Oct 2018 02:28:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::62d as permitted sender) client-ip=2607:f8b0:4864:20::62d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ckdwSlnu;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x62d.google.com with SMTP id f18-v6so752872plr.1
        for <outreachy-kernel@googlegroups.com>; Tue, 02 Oct 2018 02:28:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=fMSQ302j/0rYpcupEHu+hMNJNmPr6/S8CJTIlrq+0xU=;
        b=ckdwSlnukinwMHxg9UiRUuXwXA0WzjeHwQRk5BedMb3nLR7uBAe0i1cEb3x804+EZ2
         FohKkFpiDg9+7uG08KdCaKcs8OGFR5Y58CULUgcuMVPppdlF8t1tvf7b8Ep1r9cfzlRw
         9hBrKMFttF0IjPwAzMSs+hQSnB8YYwkRb9DdrqO0fi/dJvDJ16jcLhYIJYvQ0RzV+BvV
         aN/NnMCZPVn2g1wDZTXgHFCvmSq2izds2iHuvmQuIw8ARN1CzBjJcTIMyiz0+96pgjA8
         rHr0m4MgsG77Wwyp/Na6KgDjhBJ0ML7FzrZ24qzLnxaCzu8GIl2rzPUdfTXzgPSZpnDj
         VYFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=fMSQ302j/0rYpcupEHu+hMNJNmPr6/S8CJTIlrq+0xU=;
        b=S2KLoElDnGUZ4xYUe3mYLKHweCpiss7E0fe4ZqdzCvLUJJ2oEjlh9tE48OoWhpC3dn
         u07QDONdgZJYnUw48O/eG/juwk3JfTOkSZPpeo2GaLoxKXoRHOJ+WOWvN8RsECWo362n
         sEauSlrpHgl5SoXgkloW7I5CC6MKRPcZLlhZq5QRRZOa5gMGF07TOfELlJSIAu8Ujttz
         MyH5vLfRv33yrlQb87KcTgwMr2JCqpDvVd8ho0zDXYByNwny/40ujHl0Yn9QgOlUZput
         ZSOR17uKn6s56o9fZpTnjhca46nvyJ83bKV0FK3AGIertZE3exlWKQKO7+Rumz/OCa5t
         6hLg==
X-Gm-Message-State: ABuFfohR6fFfJAlkK1cYIfCd7WD3Z1AAaLYrHhArkBFA068yfXiRDwOB
	mjDHQUlg2DZ3+sjLOfZMGsU=
X-Received: by 2002:a63:1b0b:: with SMTP id b11-v6mr13540942pgb.66.1538472503607;
        Tue, 02 Oct 2018 02:28:23 -0700 (PDT)
Return-Path: <himanshujha199640@gmail.com>
Received: from himanshu-Vostro-3559 ([103.233.116.134])
        by smtp.gmail.com with ESMTPSA id u184-v6sm30738436pgd.27.2018.10.02.02.28.20
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 02 Oct 2018 02:28:22 -0700 (PDT)
Date: Tue, 2 Oct 2018 14:58:16 +0530
From: Himanshu Jha <himanshujha199640@gmail.com>
To: Dafna Hirschfeld <dafna3@gmail.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com, hdegoede@redhat.com
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: mt7621-mmc: remove
 unnecessary braces from 'if' statements
Message-ID: <20181002092816.GA7179@himanshu-Vostro-3559>
References: <cover.1538333858.git.dafna3@gmail.com>
 <bf3ba7a38f000d4359c4c56fac98f17ae3ef6a2b.1538333858.git.dafna3@gmail.com>
 <alpine.DEB.2.21.1809302217480.2863@hadrien>
 <CAJ1myNR7951qEF6hpN8DRJ-hmckXMOzZWnzBJWrYqdaRoPLb2g@mail.gmail.com>
 <alpine.DEB.2.20.1810011047210.3464@hadrien>
 <CAJ1myNRcjyn+GoR--7uoq4iK4Go5adEkEitX=gDd4FDPnbqPeQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAJ1myNRcjyn+GoR--7uoq4iK4Go5adEkEitX=gDd4FDPnbqPeQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

Hi Dafna,

On Tue, Oct 02, 2018 at 11:24:25AM +0300, Dafna Hirschfeld wrote:
> Hi,
> Apparently, the mt7621-mmc driver is for a specific SOC based on mips,
> In order to compile it I installed mips compiler:
> 
> sudo apt install gcc-mips-linux-gnu
> 
> and set:
> export CROSS_COMPILE=mips-linux-gnu-
> export ARCH=mips
> 
> Then I used an initial .config file
> from arch/mips/configs/generic_defconfig.
> In the menuconfig ,
> under "Machine Selection" I choose "Ralink SoC selection (MT7621)"
> under  "Device Drivers" I chose "MMC/SD/SDIO card support" as a module.
> under "Device Drivers -> staging drivers" I chose "MTK SD/MMC"
> 
> Then when compiling, the files in  drivers/staging/mt7621-mmc/ compiled ok,
> but I had compilation error in drivers/staging/mt7621-pci/pci-mt7621.c,
> with the first error:
> 
> drivers/staging/mt7621-pci/pci-mt7621.c:195:11: error:
> ‘pci_generic_config_read’ undeclared here (not in a function); did you mean
> ‘pci_write_config_word’?
>   .read  = pci_generic_config_read,
>            ^~~~~~~~~~~~~~~~~~~~~~~
>            pci_write_config_word

Note that pci_generic_config_read is an exported symbol at drivers/pci/access.c

<snip>

  int pci_generic_config_read(struct pci_bus *bus, unsigned int devfn,
                              int where, int size, u32 *val)
  {
          void __iomem *addr;
 
          addr = bus->ops->map_bus(bus, devfn, where);
          if (!addr) {
                  *val = ~0;
                  return PCIBIOS_DEVICE_NOT_FOUND;
          }
 
          if (size == 1)
                  *val = readb(addr);
          else if (size == 2)
                  *val = readw(addr);
          else
                  *val = readl(addr);
 
          return PCIBIOS_SUCCESSFUL;
  }
  EXPORT_SYMBOL_GPL(pci_generic_config_read);

</snip>

And then looking at drivers/pci/Makefile

   obj-$(CONFIG_PCI)               += access.o bus.o probe.o host-bridge.o \
                                      remove.o pci.o pci-driver.o search.o \
                                      pci-sysfs.o rom.o setup-res.o irq.o vpd.o \
                                      setup-bus.o vc.o mmap.o setup-irq.o

and grepping for CONFIG_PCI in your chosen .config

himanshu@himanshu-Vostro-3559:~/linux-next$ git grep -w "CONFIG_PCI" arch/mips/configs/generic_defconfig
himanshu@himanshu-Vostro-3559:~/linux-next$

So, you need to select CONFIG_PCI in order to export that symbol to be
used by pci-mt7621.c and then there will be no warnings.

Check it once yourself...

 
> Then in run "make menuconfig" again and under "Device Drivers -> staging
> drivers" I chose "MediaTek MT7621 PCI Controller"
> Hoping it will solve it , but it didn't.
> 
> The files I prepared the patchset for did compile ok , is it important that
> all files will compile?

I think for these changes just use that .config supplied by the distro
at /boot/config-*

But IIRC `make allyesconfig` should be used(not sure though..)

Lastly, please avoid "top posting" :)


Hope that helps,

Thanks
-- 
Himanshu Jha
Undergraduate Student
Department of Electronics & Communication
Guru Tegh Bahadur Institute of Technology

