Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9484807
	for <outreachy@lists.linux.dev>; Thu,  9 Mar 2023 07:16:34 +0000 (UTC)
Received: by mail-pl1-f177.google.com with SMTP id a2so1076534plm.4
        for <outreachy@lists.linux.dev>; Wed, 08 Mar 2023 23:16:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678346194;
        h=in-reply-to:content-disposition:mime-version:reply-to:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xU3bfkBWrUC++UQxS7FtcJBXmmQ+cgkQjdiJyjrrz8U=;
        b=H+UIhxIGS5ZfAVFzLRzDlN25hW1XQ0zSHXnm7g7RV51n8IOp3NRtB6pQ43GCnjg/iW
         V6G9C6MDOQD/UriI7yAZ53rDvtDZWPOiqzgaG9qYUJ8yA9gBkQuEG8cwvAiN7msyXad/
         oOYl7jV6gstR9+gHZ76O8DKtmgjK1Rrm1rMkgSyDjpNOcKIXqSo5v+8R4obiSrGvvjHS
         BTDECQTInVNn1ONyp8lNh1EJ3rduYANB1QBY24FRxrA6z+h7Fi38qq2O8/BRcVeSkdce
         H1ouLwbewpOmbfpEvxS7xL0Hx/w8tc4ALif/ZMMVHdruXfrF6gHNj4jX34ADNczrfpY3
         x64w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678346194;
        h=in-reply-to:content-disposition:mime-version:reply-to:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xU3bfkBWrUC++UQxS7FtcJBXmmQ+cgkQjdiJyjrrz8U=;
        b=iSDwYK4eY7whQABMAulv3XEx75gt4dGGIcm2MLxP0hoOogHdTn8LnoNuOgJ1YcHLr8
         ZGWoGTz6GVYE51hRLYN4x3LBVuq9K6vOOf+PA+a4AFgEkhhhvy5nxAAfcwjgUKzgCDvw
         JBO432ujmmNdeyC6/OeZIMyiYLad8qprKOlmaaAR3eXVqBH04aUU1eHMIAzuZoy3x6cP
         tOMarK772jcXDE4AE9RCqiIbLCI+ttTR0kvB6ly0D1B6nii/u+tA3m+vr7tk2S0hdEnu
         PY1nU6SmNmKivnX3kp/NwejwWyltCG0Rf+0BVog0lbkkPBSZVeWYTymdlomQ3+RXUI4W
         UcDg==
X-Gm-Message-State: AO0yUKVkAM+scekCEqBb5rfUszBAayY2SmZBmc2zcgiy2rJ2Q/Wcs4kw
	jlm5yM6c2gH1R9tsCMqhqcA=
X-Google-Smtp-Source: AK7set8Q0h/RpXwIZNXVUhC88UCFTLcSqv6bH3Bt3rD7OfvlqO4G7B/4VWsfcJ7w9PKtQPdlKit6cg==
X-Received: by 2002:a05:6a20:3fa8:b0:cb:f92f:374e with SMTP id ay40-20020a056a203fa800b000cbf92f374emr19289792pzb.22.1678346193843;
        Wed, 08 Mar 2023 23:16:33 -0800 (PST)
Received: from ubuntu ([117.199.168.241])
        by smtp.gmail.com with ESMTPSA id n4-20020a62e504000000b005a8c92f7c27sm10466459pff.212.2023.03.08.23.16.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Mar 2023 23:16:33 -0800 (PST)
Date: Wed, 8 Mar 2023 23:16:28 -0800
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: fmdefrancesco@gmail.com
Cc: drv@mailo.com, julia.lawall@inria.fr, outreachy@lists.linux.dev,
	sumitraartsy@gmail.com
Subject: Re: Help to setup enviornment
Message-ID: <20230309071628.GA2115@ubuntu>
Reply-To: 5365771.29KlJPOoH8@suse
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5365771.29KlJPOoH8@suse>

Hi Fabio, this is the below output:
##
sumitra@ubuntu:~$ df -h
##
Filesystem      Size  Used Avail Use% Mounted on
udev            2.2G     0  2.2G   0% /dev
tmpfs           449M  1.8M  447M   1% /run
/dev/sda5        39G   26G   12G  70% /
tmpfs           2.2G     0  2.2G   0% /dev/shm
tmpfs           5.0M  4.0K  5.0M   1% /run/lock
tmpfs           2.2G     0  2.2G   0% /sys/fs/cgroup
/dev/loop0      128K  128K     0 100% /snap/bare/5
/dev/loop1      249M  249M     0 100% /snap/gnome-3-38-2004/99
/dev/loop2       66M   66M     0 100% /snap/gtk-common-themes/1519
/dev/loop3       64M   64M     0 100% /snap/core20/1828
/dev/loop4       62M   62M     0 100% /snap/core20/1328
/dev/loop5      347M  347M     0 100% /snap/gnome-3-38-2004/119
/dev/loop6       92M   92M     0 100% /snap/gtk-common-themes/1535
/dev/loop7       55M   55M     0 100% /snap/snap-store/558
/dev/loop8       46M   46M     0 100% /snap/snap-store/638
/dev/loop9       50M   50M     0 100% /snap/snapd/18357
/dev/sda1       511M  4.0K  511M   1% /boot/efi
tmpfs           449M   28K  449M   1% /run/user/1000
##

##
sumitra@ubuntu:~$ cat /proc/meminfo
##
MemTotal:        4593512 kB
MemFree:          128644 kB
MemAvailable:    2020080 kB
Buffers:           75072 kB
Cached:          1914592 kB
SwapCached:        55292 kB
Active:           352904 kB
Inactive:        3504468 kB
Active(anon):      14532 kB
Inactive(anon):  1853924 kB
Active(file):     338372 kB
Inactive(file):  1650544 kB
Unevictable:           0 kB
Mlocked:               0 kB
SwapTotal:       1918356 kB
SwapFree:        1594028 kB
Dirty:            198312 kB
Writeback:          2700 kB
AnonPages:       1845196 kB
Mapped:           112436 kB
Shmem:               604 kB
KReclaimable:     193728 kB
Slab:             276024 kB
SReclaimable:     193728 kB
SUnreclaim:        82296 kB
KernelStack:       10080 kB
PageTables:        15768 kB
NFS_Unstable:          0 kB
Bounce:                0 kB
WritebackTmp:          0 kB
CommitLimit:     4215112 kB
Committed_AS:    4901348 kB
VmallocTotal:   34359738367 kB
VmallocUsed:       58952 kB
VmallocChunk:          0 kB
Percpu:            94720 kB
HardwareCorrupted:     0 kB
AnonHugePages:         0 kB
ShmemHugePages:        0 kB
ShmemPmdMapped:        0 kB
FileHugePages:         0 kB
FilePmdMapped:         0 kB
HugePages_Total:       0
HugePages_Free:        0
HugePages_Rsvd:        0
HugePages_Surp:        0
Hugepagesize:       2048 kB
Hugetlb:               0 kB
DirectMap4k:      229184 kB
DirectMap2M:     3543040 kB
DirectMap1G:     1048576 kB
##

Apart from this, I was talking about the RAM and I have provided the hard disk space of 40GB to my VM machine. And I see a lack of RAM in the VM machine.

