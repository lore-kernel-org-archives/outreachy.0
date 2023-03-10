Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C10323AF
	for <outreachy@lists.linux.dev>; Fri, 10 Mar 2023 09:34:29 +0000 (UTC)
Received: by mail-pg1-f177.google.com with SMTP id q189so2686516pga.9
        for <outreachy@lists.linux.dev>; Fri, 10 Mar 2023 01:34:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678440868;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=o6MKmEwg8mhj9rBs2GOB7qCv1XlrGpEj8TbytyS2hYU=;
        b=It3ANbZ8opXN5gxHdDjlezUugPZ4fJ7mjQEOGFPyL4s478QokRmo+CMgqPYTrAP5Zf
         fuW+0OIpXvjtIJd4YTNNK+YP2s7uY/DTMhWXG/hpHebmyoLUjMQngKxW/wwh38RC4ZZy
         6ZKeTnPko1pFYGraO31R4mOG4xUH/FMt808epEFGdYaFTq/JX7jN6DAdWcSOzWs6XBfQ
         TcwexxQoRw6mywhA8JDRStO80OKEsTdH8T4heC/FHQPEEduoSQwztPF3gmZpL+80BUtU
         IsfmoMujQ8piLVpRiLljgHj0duoE7xFrKo5abZokAtFOI1Wy3DRH+mU23o8059ygzgE1
         tYuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678440868;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=o6MKmEwg8mhj9rBs2GOB7qCv1XlrGpEj8TbytyS2hYU=;
        b=2bGvkcjxP+IwfiW31Cb59zPfC1vj0Fcsd2LCS4wAWhjTIsETgjuNc0jUzdDp8OpCti
         ie6x+llIe89fxi4Q8uphw9/ov9IVZcQEit4ziSXiedlAibiL8FR/EEVWBtrFaB1uCasO
         QqDeX3v1672Z/rxN+XV0N/nw83bzxNqAYcT/q9cfG1OlBDJ/5+zfeeFjeIc00L9oQd4M
         lWphlC9957Smf9DVs3s8+6HLF+wgaWTiY7aiCS3TCvLls6jJBegLzVrBoHZoNBf6CuVA
         +uhiUOcaFw3xRbZ6NX89FNgRQmL0AUNnGWLeq6vRHgwBrmlfFkKK5IQfuEyiGMcUkN/J
         j6yg==
X-Gm-Message-State: AO0yUKUxxtz5tFB0N7g151+abNcreHlD6LeOEZydmQZ1H3I9O4B9h/wU
	fxJZ+CgEjgdRGBfMFBexsJJRwGuq+I95e3NK0B4=
X-Google-Smtp-Source: AK7set+0jG5XRSiT+2rsZzZ/4yXRgpec8OB2Ap5ooaYxBd7T4QV9RAzIfpzZmeWwIdpM6+SmvtWWuA==
X-Received: by 2002:a62:1e05:0:b0:5a0:c4b6:edd6 with SMTP id e5-20020a621e05000000b005a0c4b6edd6mr21282911pfe.0.1678440868597;
        Fri, 10 Mar 2023 01:34:28 -0800 (PST)
Received: from CloudiRingWorld ([122.231.69.163])
        by smtp.gmail.com with ESMTPSA id e18-20020a62aa12000000b005809d382016sm985146pff.74.2023.03.10.01.34.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Mar 2023 01:34:28 -0800 (PST)
Date: Fri, 10 Mar 2023 17:34:25 +0800
From: Kloudifold <cloudifold.3125@gmail.com>
To: ira.weiny@intel.com, alison.schofield@intel.com,
	fmdefrancesco@gmail.com
Cc: outreachy@lists.linux.dev
Subject: Re: [KERNEL NEWBIES ACCESS] Kloudifold
Message-ID: <ZArujKESoFGmTRnL@CloudiRingWorld>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

My distro is Arch Linux.
Install manually is not complicated, and it can be easily automated.
I just followed the archwiki: https://wiki.archlinux.org/title/Kernel/Traditional_compilation

Thank you for your advice about the "dracut" package.
I used "mkinitcpio" to generate initramfs.

On Thu, 9 Mar 2023 at 09:39, Fabio M. De Francesco <fmdefrancesco@gmail.com> wrote:
>
>
> I'm not sure if the solution to your problem is to install everything
> manually. I have no problems getting `make modules_install install` to work
> properly and find GRUB2 because openSUSE provides the "dracut" package for the
> sysadmins/developers to automate the above.
>
> It's perfectly fine to teach how to install manually, even if just for people
> to learn what one needs to boot a custom kernel. But kernel developers don't
> have time to manually do routine tasks that can be easily automated.
>
> I use to compile and install the kernel image, the modules, init, System.map,
> config, and grub.conf at least two or three times a day and often more times
> (you'll understand when you find yourself doing a bisect with git-bisect and
> maybe you have to compile and install a dozen times in a row in one day).
>
> In my opinion you need to make sure you understand and explain how to install
> "dracut" if your distro provides it. Otherwise, search and read the
> documentation of your distribution and try to figure out how to make the `make
> modules_install install` command to work properly in your system...
>
> suse:~ # zypper info dracut
> Loading repository data...
> Reading installed packages...
>
> Information for package dracut:
> -------------------------------
> Repository     : Main Repository (OSS)
> Name           : dracut
> Version        : 059+suse.366.gf45bc67a-1.1
> Arch           : x86_64
> Vendor         : openSUSE
> Installed Size : 1.9 MiB
> Installed      : Yes (automatically)
> Status         : up-to-date
> Source package : dracut-059+suse.366.gf45bc67a-1.1.src
> Upstream URL   : https://github.com/dracutdevs/dracut/wiki
> Summary        : Event driven initramfs infrastructure
> Description    :
>     Dracut contains tools to create a bootable initramfs for Linux kernels >=
> 2.6.
>     Dracut contains various modules which are driven by the event-based udev
>     and systemd. Having root on MD, DM, LVM2, LUKS is supported as well as
>     NFS, iSCSI, NBD, FCoE.
>
> [...]
>
> Thanks,
>
> Fabio
>
>
