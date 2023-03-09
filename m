Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2830628
	for <outreachy@lists.linux.dev>; Thu,  9 Mar 2023 01:39:05 +0000 (UTC)
Received: by mail-wr1-f45.google.com with SMTP id f11so395456wrv.8
        for <outreachy@lists.linux.dev>; Wed, 08 Mar 2023 17:39:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678325943;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gjR6Nj8EQhF/X+hQIrfIA/xajiWxmkhoKDpJh8V5UZw=;
        b=NtJ70h1kiQPGvWKjmHGa9ucVx61M2H3j+Fq6XQCg5klnMhSgHSirXHyk+SYLvQiLcM
         Dga2nLGPx8Rsh43Q/gjMWzY+gP69YIIZjHC+qX1ocuYKuCCDtd4zqcwGFb/2m5WjBI9l
         InmSjvXYrl9u1cKvbmf4grPFQ1w/mnuwPkK5WcqW8Zcrq+WmW1VANMXZJImCzvu4c2Wb
         xx8cf0W2vGZXMA/kYJ0tVS5SnEcXTjV1RI+m5vgl7GyCIRWYFCaYzyS76tsyOJlcHVgz
         F+SSRSyx9qH5LvJCjv9OJn3mcHoMOAazrkB+Idh6kTFDxGWbB4LdrkqrEmKtCBYE98CN
         /QnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678325943;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gjR6Nj8EQhF/X+hQIrfIA/xajiWxmkhoKDpJh8V5UZw=;
        b=FQME9F1/YRoW2/isTYZLlGAzdJzF56F9tqaAWHgwJLhrHjBtrf/et/QLEfVv/rg9KM
         1EirqP1BOr8PDSSTXRBlUf3ubUvIPSMNWk5z0ItMH83qu6LogB6SIwfxdwFCqbLZE2F0
         uVsAZfznkFYifgbaGdHKqSFdqumFHroqmopYc/M3jR58GzUah3i99nTNtPaqwH4wmL1e
         ABWc1uHOCJIMlpdkVZCAitAOU1fgmMnyKe887sXgkK2HISyj6gtah58xiBe9bMef8ykE
         C2UjI+KFM/n32TOAwdo1p+VvwNhOJ1TS6DgMQbZy1vCDQzoVnPdQFdrBKlA4D+e2v9ge
         7YGA==
X-Gm-Message-State: AO0yUKWORi8lLff7WiYRMUkuHIT904ZhaxS8Fw2VvnnInenE3NSYKLNO
	kdfiBUJfcyyMMpdDRbXDMnIX2tGg82eHwA==
X-Google-Smtp-Source: AK7set9iPh1D57SIbR95cC2E4CCP/CWfm670IXuF4tpHnems7tU6q3IxUiC25WUzfhXfufQ0bI5sSA==
X-Received: by 2002:a5d:4452:0:b0:2ca:ab68:eff3 with SMTP id x18-20020a5d4452000000b002caab68eff3mr12527476wrr.67.1678325943003;
        Wed, 08 Mar 2023 17:39:03 -0800 (PST)
Received: from suse.localnet (host-95-252-162-80.retail.telecomitalia.it. [95.252.162.80])
        by smtp.gmail.com with ESMTPSA id c12-20020a5d63cc000000b002c5801aa9b0sm16614065wrw.40.2023.03.08.17.39.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Mar 2023 17:39:02 -0800 (PST)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy@lists.linux.dev, Kloudifold <cloudifold.3125@gmail.com>
Cc: alison.schofield@intel.com
Subject: Re: [KERNEL NEWBIES ACESS] Kloudifold
Date: Thu, 09 Mar 2023 02:39:00 +0100
Message-ID: <8190776.T7Z3S40VBb@suse>
In-Reply-To: <ZAjteyeSt2rfa+El@CloudiRingWorld>
References: <ZAjteyeSt2rfa+El@CloudiRingWorld>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On mercoled=EC 8 marzo 2023 21:18:03 CET Kloudifold wrote:

[...]

> Secondly, the tutorial instructs users to install the kernel using LILO a=
s=20
the
> boot manager. However, many modern distributions, including the one I use,
> use GRUB as the default boot manager. This results in an error when=20
executing
> "sudo make modules_install install" as the system cannot find LILO. To
> resolve this issue, I suggest adding instructions for manually installing=
=20
the
> kernel and initramfs and configure GRUB.
>=20

I'm not sure if the solution to your problem is to install everything=20
manually. I have no problems getting `make modules_install install` to work=
=20
properly and find GRUB2 because openSUSE provides the "dracut" package for =
the=20
sysadmins/developers to automate the above.=20

It's perfectly fine to teach how to install manually, even if just for peop=
le=20
to learn what one needs to boot a custom kernel. But kernel developers don'=
t=20
have time to manually do routine tasks that can be easily automated.=20

I use to compile and install the kernel image, the modules, init, System.ma=
p,=20
config, and grub.conf at least two or three times a day and often more time=
s=20
(you'll understand when you find yourself doing a bisect with git-bisect an=
d=20
maybe you have to compile and install a dozen times in a row in one day).=20

In my opinion you need to make sure you understand and explain how to insta=
ll=20
"dracut" if your distro provides it. Otherwise, search and read the=20
documentation of your distribution and try to figure out how to make the `m=
ake=20
modules_install install` command to work properly in your system...

suse:~ # zypper info dracut
Loading repository data...
Reading installed packages...

Information for package dracut:
=2D------------------------------
Repository     : Main Repository (OSS)
Name           : dracut
Version        : 059+suse.366.gf45bc67a-1.1
Arch           : x86_64
Vendor         : openSUSE
Installed Size : 1.9 MiB
Installed      : Yes (automatically)
Status         : up-to-date
Source package : dracut-059+suse.366.gf45bc67a-1.1.src
Upstream URL   : https://github.com/dracutdevs/dracut/wiki
Summary        : Event driven initramfs infrastructure
Description    :=20
    Dracut contains tools to create a bootable initramfs for Linux kernels =
>=3D=20
2.6.
    Dracut contains various modules which are driven by the event-based udev
    and systemd. Having root on MD, DM, LVM2, LUKS is supported as well as
    NFS, iSCSI, NBD, FCoE.

[...]

Thanks,

=46abio


