Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00A3D2F28
	for <outreachy@lists.linux.dev>; Thu,  9 Mar 2023 13:14:46 +0000 (UTC)
Received: by mail-wm1-f48.google.com with SMTP id t25-20020a1c7719000000b003eb052cc5ccso3558163wmi.4
        for <outreachy@lists.linux.dev>; Thu, 09 Mar 2023 05:14:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678367685;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J6OeqHw+P5JBIrLKQL928Myji9FkBLLhAfeFbekl1A4=;
        b=LY9lz8NFbRZituB54hDZpYQNaK9tSwpInX0OV9WSznG1f7zvSahGQimIyrSrtUpLGm
         1ut7ndk2OdeeYmWATsDpCebYC24VpnyhVGHE4oFlzRnUzL2nBhJPKKt9T7y3S618dUj6
         KZfGikZQshdod+aIops+5lJ8Qp4Swxs2zPYeqbvAS5ydFkIQGUPYPcs+FxYKbnLMCYKF
         m09cmUd99nlcKuZGLwhILxNlAzj1bUyxGVDmRd6YJiwTw7LUmbfycoB4xeYRIm8m2ZGn
         wGS5sk9my0/2DUaJL+LnGjahogiy4A9J7ELIDmsbjvqNqQ4tu+ART9+4eYPDYcd3JvS1
         vrQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678367685;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J6OeqHw+P5JBIrLKQL928Myji9FkBLLhAfeFbekl1A4=;
        b=DDf/RsnteBBCzBnFBXQJ4HZgDUxEAPJuRveDPQcY0AZrR0N9epYcKiZ+kw6t6Gr34n
         gdLMNNVt8oS3m6coUFkZiFd53rU83zwWlGtkVyUUqICiQTziSExYqrzs3FVyWDIVtj+M
         Yo+qDrFbxz0D+/j4+cmK3E3xCy7/QOEfsu+lVCnNd9JNEA5NXBqyKyFjzA3VrMmj8cQv
         Bt5kEBsCpgRu8U6vawaPC49gEu5mD/LwcJyYzK3sgYlod9z4cDDLwWmHxv+3fcVnyKyP
         wF3PmHKlkaAcAppqFaTwKQBg7pCAJsdBcfd0HfoSbMf7SYJgtrAobQYj2i0d417JZTer
         GmhQ==
X-Gm-Message-State: AO0yUKWJ6sZH+n2y7/ykLLacOVbruIgCkcIlcVJ7wbWE3MfoKuh4W/q5
	1gyF7s1GwZzzXaR8ATarxsc=
X-Google-Smtp-Source: AK7set8YuPtN6k4Xm73ZxxCTvoYrSn7SHdrb2lJHyr+tJlEebXz79WByozlun+MnuLIxU/u4TFkBmw==
X-Received: by 2002:a05:600c:4f13:b0:3eb:3998:8bca with SMTP id l19-20020a05600c4f1300b003eb39988bcamr18810354wmq.17.1678367684941;
        Thu, 09 Mar 2023 05:14:44 -0800 (PST)
Received: from suse.localnet (host-95-235-93-126.retail.telecomitalia.it. [95.235.93.126])
        by smtp.gmail.com with ESMTPSA id n5-20020a05600c294500b003e7f1086660sm2537785wmd.15.2023.03.09.05.14.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Mar 2023 05:14:44 -0800 (PST)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: sumitraartsy@gmail.com
Cc: drv@mailo.com, julia.lawall@inria.fr, outreachy@lists.linux.dev
Subject: Re: Help to setup enviornment
Date: Thu, 09 Mar 2023 14:14:43 +0100
Message-ID: <2897558.2VHbPRQshP@suse>
In-Reply-To: <20230309071628.GA2115@ubuntu>
References: <20230309071628.GA2115@ubuntu>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On gioved=EC 9 marzo 2023 08:16:28 CET Sumitra Sharma wrote:
> Hi Fabio, this is the below output:
> ##
> sumitra@ubuntu:~$ df -h
> ##
> Filesystem      Size  Used Avail Use% Mounted on
> udev            2.2G     0  2.2G   0% /dev
> tmpfs           449M  1.8M  447M   1% /run
> /dev/sda5        39G   26G   12G  70% /
> tmpfs           2.2G     0  2.2G   0% /dev/shm
> tmpfs           5.0M  4.0K  5.0M   1% /run/lock
> tmpfs           2.2G     0  2.2G   0% /sys/fs/cgroup
> /dev/loop0      128K  128K     0 100% /snap/bare/5
> /dev/loop1      249M  249M     0 100% /snap/gnome-3-38-2004/99
> /dev/loop2       66M   66M     0 100% /snap/gtk-common-themes/1519
> /dev/loop3       64M   64M     0 100% /snap/core20/1828
> /dev/loop4       62M   62M     0 100% /snap/core20/1328
> /dev/loop5      347M  347M     0 100% /snap/gnome-3-38-2004/119
> /dev/loop6       92M   92M     0 100% /snap/gtk-common-themes/1535
> /dev/loop7       55M   55M     0 100% /snap/snap-store/558
> /dev/loop8       46M   46M     0 100% /snap/snap-store/638
> /dev/loop9       50M   50M     0 100% /snap/snapd/18357
> /dev/sda1       511M  4.0K  511M   1% /boot/efi
> tmpfs           449M   28K  449M   1% /run/user/1000
> ##
>=20
> ##
> sumitra@ubuntu:~$ cat /proc/meminfo
> ##
> MemTotal:        4593512 kB
> MemFree:          128644 kB
> MemAvailable:    2020080 kB
> Buffers:           75072 kB
> Cached:          1914592 kB
> SwapCached:        55292 kB
> Active:           352904 kB
> Inactive:        3504468 kB
> Active(anon):      14532 kB
> Inactive(anon):  1853924 kB
> Active(file):     338372 kB
> Inactive(file):  1650544 kB
> Unevictable:           0 kB
> Mlocked:               0 kB
> SwapTotal:       1918356 kB
> SwapFree:        1594028 kB
> Dirty:            198312 kB
> Writeback:          2700 kB
> AnonPages:       1845196 kB
> Mapped:           112436 kB
> Shmem:               604 kB
> KReclaimable:     193728 kB
> Slab:             276024 kB
> SReclaimable:     193728 kB
> SUnreclaim:        82296 kB
> KernelStack:       10080 kB
> PageTables:        15768 kB
> NFS_Unstable:          0 kB
> Bounce:                0 kB
> WritebackTmp:          0 kB
> CommitLimit:     4215112 kB
> Committed_AS:    4901348 kB
> VmallocTotal:   34359738367 kB
> VmallocUsed:       58952 kB
> VmallocChunk:          0 kB
> Percpu:            94720 kB
> HardwareCorrupted:     0 kB
> AnonHugePages:         0 kB
> ShmemHugePages:        0 kB
> ShmemPmdMapped:        0 kB
> FileHugePages:         0 kB
> FilePmdMapped:         0 kB
> HugePages_Total:       0
> HugePages_Free:        0
> HugePages_Rsvd:        0
> HugePages_Surp:        0
> Hugepagesize:       2048 kB
> Hugetlb:               0 kB
> DirectMap4k:      229184 kB
> DirectMap2M:     3543040 kB
> DirectMap1G:     1048576 kB
> ##
>=20
> Apart from this, I was talking about the RAM and I have provided the hard=
=20
disk
> space of 40GB to my VM machine. And I see a lack of RAM in the VM machine.

Sorry, I couldn't answer before...

Anyway in the meantime I've read that you finally managed to build your own=
=20
custom kernel increasing the reserved RAM from about 4GB to 6GB.

=46YI, it looks like you have _not_ any shortage of RAM in the VM, if we lo=
ok at=20
/proc/meminfo at rest (I mean when you're not building the kernel). I assum=
e=20
you think you have no memory available due to the ratio of the following tw=
o=20
lines:

> MemTotal:        4593512 kB
> MemFree:          128644 kB

Look at the third line:

> MemAvailable:    2020080 kB

Linux keeps all it can keep in RAM for future fast re-use, so it can avoid=
=20
many unnecessary page-faults when processes try to access again many of the=
=20
same memory addresses which were in use in the past and may be re-used late=
r=20
(locality principle).

This is the output in my system:

suse:~ # cat /proc/meminfo
MemTotal:       32768064 kB
MemFree:          535508 kB
MemAvailable:   22111212 kB

I have about 22GB of immediately re-usable RAM while, at the moment, about =
the=20
95% of my 32 GB are in use. I can count on a good amount of RAM, despite we=
=20
see that "MemFree: 535508 kB"(I'm also running a QEMU/KVM VM on top of my h=
ost=20
with 6 GB of reserved RAM).

=46rom your output, the other lines provide very helpful insights about how=
=20
exactly your memory is used (I won't go into these details).

I'm pretty sure that 4.5GB are enough to run a system for the kind of=20
development you are going to do in this phase of the project. I think that=
=20
perhaps you are running too many processes/threads at the same time of the=
=20
builds.

Are you sure you configured your system not to run unnecessary services? Wh=
at=20
processes are eating the most RAM in your VM? Can they be disabled? Do you =
run=20
any other interactive processes while building? If so, can you avoid to run=
=20
them at the same time?

Use the "ps" command with the proper options to figure out how your system =
is=20
using memory space for each process/thread. I think that the 2GB you left t=
o=20
the host (Windows 10? Windows 11?) will make you in trouble sooner or later.

Last thing... I think you should also listen to Julia and disable those ker=
nel=20
options which build unnecessary features and drivers. Take a look at your=20
=2Econfig file with `make menuconfig` (or similar commands: type `make help=
` for=20
a summary) and disable those  unnecessary options that your distro enables =
by=20
default if you don't need them (as a bonus you will compile and link much=20
faster).=20

Use the options help pages (when you run "make menuconfig" and are at an=20
option you want to know more just select "help" or press 'h') if you are no=
t=20
sure about what you are disabling and be very careful to leave the options =
you=20
are not sure about as they currently are.

=46abio


