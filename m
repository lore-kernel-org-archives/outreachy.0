Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9B66818
	for <outreachy@lists.linux.dev>; Thu,  9 Mar 2023 07:58:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=TOyRnWMuSlWE6KzXoNKX37Lj5xYVRB8SN0XvzP0Q1yI=;
  b=Z4a4vsex5WM6Y3Hl3cVTGqa+9ScVhfP6I2iEMXAidGPQAH21PoZFPwq9
   ttA+b4HBtdSLFypGVFtSnQsDzqN+GFCd/i8Mz8MC/9NdUEURoVEvd/QkQ
   Npz7KOB5QhZ4riobd6S0HSrLyqt/RgkG18xnWgIPU4QyWCGaChscUQBck
   I=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.98,245,1673910000"; 
   d="scan'208";a="49642797"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Mar 2023 08:58:16 +0100
Date: Thu, 9 Mar 2023 08:58:14 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: 5365771.29KlJPOoH8@suse
cc: fmdefrancesco@gmail.com, drv@mailo.com, outreachy@lists.linux.dev, 
    sumitraartsy@gmail.com
Subject: Re: Help to setup enviornment
In-Reply-To: <20230309071628.GA2115@ubuntu>
Message-ID: <e143f8ac-5bd3-ec1a-e452-8f4cb757ed7a@inria.fr>
References: <20230309071628.GA2115@ubuntu>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 8 Mar 2023, Sumitra Sharma wrote:

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
>
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
>
> Apart from this, I was talking about the RAM and I have provided the hard disk space of 40GB to my VM machine. And I see a lack of RAM in the VM machine.

Did you try with a smaller configuration?  One might guess that the
problem is at link time, and having less to link could be helpful.

julia
