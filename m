Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 026356FD2
	for <outreachy@lists.linux.dev>; Tue, 10 Oct 2023 17:34:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UO/nLZwb"
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2c008042211so72613451fa.2
        for <outreachy@lists.linux.dev>; Tue, 10 Oct 2023 10:34:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696959280; x=1697564080; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xHNQV4sXUrP+pGdbMHHFTEyFs/4J4ynmQ6z9W7/KP2M=;
        b=UO/nLZwbmnrDO+ackHnWsgpmnyzffdYjHOCKfN6HHT50S3e9x4pRT8UalzJwgNBiwu
         WgDCn+6ChzkdyR6MvsxyVVBRcxKo4HArYDfZ1+WO6+rDpEgtxwm5JyHrNNdQBp1B+zrG
         mfBnLzwEccIoOU0J68cmaa/B2WmuHIc1W1EuRTusaBpJXzTGBPo0JrySrYU29DIP+ixZ
         33SP7uRE7EpiLbiuWKFiI/balM38IGzAmgChI/3+BFt017uUJBD/Ze1vAzzlZGcn8Jcx
         lhUyFbeSM9IJ/H9betjJMi0vdlq4eIDE7LG8KLBWCpH43fiZxaIcH23sb18JD3l/u7ct
         X7aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696959280; x=1697564080;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xHNQV4sXUrP+pGdbMHHFTEyFs/4J4ynmQ6z9W7/KP2M=;
        b=qFkeNaAdjjlIn9/GAUvraBUrbbkMUvgsYEN9bw71ubuF8E0PZrVHB2vlo4oZ6rwLxn
         8DMfW1AibyeRWCBuR58Nyl5hoN0Fipo7Wpzfj2kIXhTDM7jP+paOgDS1GYIMRIT8IEje
         MTWsSCdX/luNu/Q0RHwcEHhYfRwEhuxR2P38fSr3Y7ZC1d9yyjdEDaWeoID51tFtlQjm
         tu9VvXG7CxBF4ficznQYAuimcfNacFBSofMRYwju7gn8oC2gavljbUKsR4f+xmNDnfMC
         Y+Zlr8BoVcWAcM6DrBZB7vykYQ5PHf4M3/1FsUZWSBO7AW5cXOfgSwHGo0h0YO1YkLVm
         KyPg==
X-Gm-Message-State: AOJu0Yy5p84VUXXQB7yC8rxAhxOvRdH2jDyf5FHMaG9NS9zVNHxRfL85
	NgpN9UAs+gXw+LCWyc0gizCP55QqzjK7mWZra0U=
X-Google-Smtp-Source: AGHT+IGgAlhHbGGTDrIZ/6p+5pq8gzjwx7qkunwa3FI1OsTasyOCIsrUIrUT6AyxGf8TcgJqeEfbi/ZfF8iTDTmCzvM=
X-Received: by 2002:a2e:7c14:0:b0:2bd:ddf:8aa7 with SMTP id
 x20-20020a2e7c14000000b002bd0ddf8aa7mr15145829ljc.0.1696959279586; Tue, 10
 Oct 2023 10:34:39 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <ZSTRETv7sO+1A6/G@gilbert-PC> <ZST5+5a8Uq1pULop@ashyti-mobl2.lan>
 <CAKrXSsZe4w-K7kzGu=8_R_h1TSVtJWL1_TmFX-S-A1jCrPeCrg@mail.gmail.com>
 <8e38f1a1-1da4-1d1f-aa32-6ad7ebb31c11@inria.fr> <ZSV/MLpQs0GJYIqh@ashyti-mobl2.lan>
 <CAKrXSsZSb35yvwvMm_sa9+Xk6V01ZA_2LSzd9Lbufjsifr7kKw@mail.gmail.com> <ZSWD1rtmLLWS++RH@ashyti-mobl2.lan>
In-Reply-To: <ZSWD1rtmLLWS++RH@ashyti-mobl2.lan>
From: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
Date: Tue, 10 Oct 2023 18:34:01 +0100
Message-ID: <CAKrXSsYYWUYyTC2SKpiYmXT3jktvCs0WJQO=z1=TVu-+ZPM_Mw@mail.gmail.com>
Subject: Re: [Outreachy Applicant] NEEDS SOME CLARIFICATIONS
To: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Julia Lawall <julia.lawall@inria.fr>, "andi.shyti@kernel.org" <andi.shyti@kernel.org>, 
	"outreachy@lists.linux.dev" <outreachy@lists.linux.dev>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Andi,

Thank you for your response. I think I'm finally understanding good e-mail =
style
thanks to you and everyone else who has responded to emails
On Tue, Oct 10, 2023 at 6:03=E2=80=AFPM Andi Shyti <andi.shyti@linux.intel.=
com> wrote:
>
> Hi Gilbert,
>
> first of all... good to see that your good e-mail style :-)
>
> > > > > I have another issue, I tried compiling after modifying and it co=
mpiled
> > > > > successfully. But when I tried to install so I can reboot, I got =
this
> > > > > error:
> > > > >
> > > > > zstd: error 25 : Write error : No space left on device (cannot wr=
ite
> > > > > compressed block)
> > > > > E: mkinitramfs failure zstd -q -1 -T0 25
> > > > > update-initramfs: failed for /boot/initrd.img-6.6.0-rc1gilbert+ w=
ith 1.
> > > > > run-parts: /etc/kernel/postinst.d/initramfs-tools exited with ret=
urn code 1
> > > > > make[2]: *** [arch/x86/Makefile:292: install] Error 1
> > > > > make[1]: *** [/home/functionguyy/git/kernels/staging/Makefile:359=
:
> > > > > __build_one_by_one] Error 2
> > > > > make: *** [Makefile:234: __sub-make] Error 2
> > > >
> > > > You have too little space in the partition that contains /boot?
> > >
> > > What does "df -h" say?
> > >
> > > Andi
> >
> > This is what df -h returned:
> >
> > Filesystem      Size  Used Avail Use% Mounted on
> > tmpfs           784M  2.0M  782M   1% /run
> > /dev/sda9        23G   17G  5.6G  75% /
> > tmpfs           3.9G   45M  3.8G   2% /dev/shm
> > tmpfs           5.0M  4.0K  5.0M   1% /run/lock
> > /dev/sda7       944M  761M  119M  87% /boot
>
> I wonder why your boot directory is so packed, even though 119M
> should be enough.
>
I don't why it is so packed either. I ran du -ah /boot/ and it returned:
272K /boot/config-6.2.0-34-generic
14M /boot/vmlinuz-6.6.0-rc1gilbert+
0 /boot/initrd.img
276K /boot/config-6.6.0-rc1gilbert+
14M /boot/vmlinuz-6.2.0-34-generic
184K /boot/memtest86+_multiboot.bin
7.6M /boot/System.map-6.2.0-26-generic
180K /boot/memtest86+.bin
184K /boot/memtest86+.elf
67M /boot/initrd.img-6.2.0-34-generic
7.7M /boot/System.map-6.2.0-34-generic
du: cannot read directory '/boot/efi': Permission denied
1.0K /boot/efi
0 /boot/vmlinuz
7.6M /boot/System.map-6.6.0-rc1gilbert+
du: cannot read directory '/boot/lost+found': Permission denied
16K /boot/lost+found
14M /boot/vmlinuz-6.2.0-26-generic
4.0K /boot/grub/x86_64-efi/lsefimmap.mod
4.0K /boot/grub/x86_64-efi/setjmp.mod
12K /boot/grub/x86_64-efi/loadenv.mod
4.0K /boot/grub/x86_64-efi/mdraid09_be.mod
60K /boot/grub/x86_64-efi/gfxmenu.mod
4.0K /boot/grub/x86_64-efi/efifwsetup.mod
12K /boot/grub/x86_64-efi/efinet.mod
4.0K /boot/grub/x86_64-efi/wrmsr.mod
28K /boot/grub/x86_64-efi/file.mod
12K /boot/grub/x86_64-efi/ata.mod
8.0K /boot/grub/x86_64-efi/minix2.mod
8.0K /boot/grub/x86_64-efi/videotest.mod
16K /boot/grub/x86_64-efi/reiserfs.mod
8.0K /boot/grub/x86_64-efi/videoinfo.mod
8.0K /boot/grub/x86_64-efi/test.mod
4.0K /boot/grub/x86_64-efi/read.mod
16K /boot/grub/x86_64-efi/gzio.mod
4.0K /boot/grub/x86_64-efi/mdraid1x.mod
20K /boot/grub/x86_64-efi/gcry_serpent.mod
8.0K /boot/grub/x86_64-efi/lspci.mod
4.0K /boot/grub/x86_64-efi/date.mod
20K /boot/grub/x86_64-efi/font.mod
4.0K /boot/grub/x86_64-efi/crypto.lst
8.0K /boot/grub/x86_64-efi/minix3_be.mod
24K /boot/grub/x86_64-efi/multiboot2.mod
8.0K /boot/grub/x86_64-efi/part_bsd.mod
4.0K /boot/grub/x86_64-efi/msdospart.mod
8.0K /boot/grub/x86_64-efi/tar.mod
8.0K /boot/grub/x86_64-efi/cmdline_cat_test.mod
8.0K /boot/grub/x86_64-efi/affs.mod
4.0K /boot/grub/x86_64-efi/gcry_rsa.mod
8.0K /boot/grub/x86_64-efi/efi_uga.mod
4.0K /boot/grub/x86_64-efi/shift_test.mod
4.0K /boot/grub/x86_64-efi/usbserial_usbdebug.mod
8.0K /boot/grub/x86_64-efi/tpm.mod
4.0K /boot/grub/x86_64-efi/trig.mod
4.0K /boot/grub/x86_64-efi/mul_test.mod
4.0K /boot/grub/x86_64-efi/usbserial_pl2303.mod
44K /boot/grub/x86_64-efi/xnu.mod
20K /boot/grub/x86_64-efi/xzio.mod
4.0K /boot/grub/x86_64-efi/configfile.mod
4.0K /boot/grub/x86_64-efi/parttool.lst
4.0K /boot/grub/x86_64-efi/hello.mod
20K /boot/grub/x86_64-efi/cryptodisk.mod
8.0K /boot/grub/x86_64-efi/macbless.mod
12K /boot/grub/x86_64-efi/zfscrypt.mod
4.0K /boot/grub/x86_64-efi/setjmp_test.mod
4.0K /boot/grub/x86_64-efi/dm_nv.mod
12K /boot/grub/x86_64-efi/zfsinfo.mod
12K /boot/grub/x86_64-efi/squash4.mod
60K /boot/grub/x86_64-efi/zfs.mod
8.0K /boot/grub/x86_64-efi/gcry_sha1.mod
20K /boot/grub/x86_64-efi/chain.mod
4.0K /boot/grub/x86_64-efi/cbtable.mod
4.0K /boot/grub/x86_64-efi/sleep_test.mod
36K /boot/grub/x86_64-efi/gcry_twofish.mod
8.0K /boot/grub/x86_64-efi/cbtime.mod
12K /boot/grub/x86_64-efi/jpeg.mod
12K /boot/grub/x86_64-efi/macho.mod
4.0K /boot/grub/x86_64-efi/part_amiga.mod
8.0K /boot/grub/x86_64-efi/ntfscomp.mod
8.0K /boot/grub/x86_64-efi/gcry_sha256.mod
12K /boot/grub/x86_64-efi/hfs.mod
4.0K /boot/grub/x86_64-efi/mdraid09.mod
24K /boot/grub/x86_64-efi/gcry_whirlpool.mod
4.0K /boot/grub/x86_64-efi/part_gpt.mod
4.0K /boot/grub/x86_64-efi/part_dfly.mod
12K /boot/grub/x86_64-efi/ext2.mod
4.0K /boot/grub/x86_64-efi/exfctest.mod
16K /boot/grub/x86_64-efi/efi_gop.mod
4.0K /boot/grub/x86_64-efi/fixvideo.mod
8.0K /boot/grub/x86_64-efi/password_pbkdf2.mod
8.0K /boot/grub/x86_64-efi/bitmap_scale.mod
4.0K /boot/grub/x86_64-efi/testload.mod
8.0K /boot/grub/x86_64-efi/at_keyboard.mod
24K /boot/grub/x86_64-efi/ahci.mod
4.0K /boot/grub/x86_64-efi/pbkdf2.mod
176K /boot/grub/x86_64-efi/normal.mod
4.0K /boot/grub/x86_64-efi/echo.mod
4.0K /boot/grub/x86_64-efi/cbmemc.mod
12K /boot/grub/x86_64-efi/gettext.mod
4.0K /boot/grub/x86_64-efi/blocklist.mod
4.0K /boot/grub/x86_64-efi/sleep.mod
4.0K /boot/grub/x86_64-efi/random.mod
12K /boot/grub/x86_64-efi/hashsum.mod
8.0K /boot/grub/x86_64-efi/scsi.mod
24K /boot/grub/x86_64-efi/multiboot.mod
4.0K /boot/grub/x86_64-efi/gcry_arcfour.mod
8.0K /boot/grub/x86_64-efi/minix2_be.mod
8.0K /boot/grub/x86_64-efi/hfspluscomp.mod
4.0K /boot/grub/x86_64-efi/morse.mod
12K /boot/grub/x86_64-efi/lvm.mod
8.0K /boot/grub/x86_64-efi/crypto.mod
4.0K /boot/grub/x86_64-efi/terminal.lst
12K /boot/grub/x86_64-efi/nilfs2.mod
4.0K /boot/grub/x86_64-efi/datehook.mod
8.0K /boot/grub/x86_64-efi/hexdump.mod
4.0K /boot/grub/x86_64-efi/div.mod
8.0K /boot/grub/x86_64-efi/gcry_rmd160.mod
12K /boot/grub/x86_64-efi/png.mod
12K /boot/grub/x86_64-efi/linux16.mod
16K /boot/grub/x86_64-efi/iso9660.mod
4.0K /boot/grub/x86_64-efi/boot.mod
4.0K /boot/grub/x86_64-efi/bswap_test.mod
4.0K /boot/grub/x86_64-efi/procfs.mod
8.0K /boot/grub/x86_64-efi/minix_be.mod
8.0K /boot/grub/x86_64-efi/search_label.mod
20K /boot/grub/x86_64-efi/gfxterm.mod
8.0K /boot/grub/x86_64-efi/memrw.mod
144K /boot/grub/x86_64-efi/grub.efi
4.0K /boot/grub/x86_64-efi/lssal.mod
20K /boot/grub/x86_64-efi/pgp.mod
12K /boot/grub/x86_64-efi/hfsplus.mod
16K /boot/grub/x86_64-efi/ohci.mod
16K /boot/grub/x86_64-efi/gcry_cast5.mod
4.0K /boot/grub/x86_64-efi/backtrace.mod
8.0K /boot/grub/x86_64-efi/cpio_be.mod
8.0K /boot/grub/x86_64-efi/gcry_sha512.mod
12K /boot/grub/x86_64-efi/fat.mod
4.0K /boot/grub/x86_64-efi/password.mod
4.0K /boot/grub/x86_64-efi/lsmmap.mod
8.0K /boot/grub/x86_64-efi/pata.mod
8.0K /boot/grub/x86_64-efi/cpio.mod
4.0K /boot/grub/x86_64-efi/xnu_uuid.mod
8.0K /boot/grub/x86_64-efi/cbls.mod
8.0K /boot/grub/x86_64-efi/newc.mod
8.0K /boot/grub/x86_64-efi/halt.mod
8.0K /boot/grub/x86_64-efi/sfs.mod
4.0K /boot/grub/x86_64-efi/bufio.mod
16K /boot/grub/x86_64-efi/ntfs.mod
48K /boot/grub/x86_64-efi/functional_test.mod
4.0K /boot/grub/x86_64-efi/load.cfg
4.0K /boot/grub/x86_64-efi/videotest_checksum.mod
48K /boot/grub/x86_64-efi/bsd.mod
4.0K /boot/grub/x86_64-efi/usbserial_ftdi.mod
44K /boot/grub/x86_64-efi/mpi.mod
4.0K /boot/grub/x86_64-efi/spkmodem.mod
48K /boot/grub/x86_64-efi/legacycfg.mod
4.0K /boot/grub/x86_64-efi/gcry_rfc2268.mod
12K /boot/grub/x86_64-efi/video_colors.mod
4.0K /boot/grub/x86_64-efi/true.mod
12K /boot/grub/x86_64-efi/exfat.mod
8.0K /boot/grub/x86_64-efi/elf.mod
8.0K /boot/grub/x86_64-efi/search_fs_file.mod
8.0K /boot/grub/x86_64-efi/gcry_md4.mod
12K /boot/grub/x86_64-efi/video_bochs.mod
8.0K /boot/grub/x86_64-efi/gptsync.mod
4.0K /boot/grub/x86_64-efi/strtoull_test.mod
4.0K /boot/grub/x86_64-efi/gcry_idea.mod
4.0K /boot/grub/x86_64-efi/part_sunpc.mod
24K /boot/grub/x86_64-efi/gcry_rijndael.mod
132K /boot/grub/x86_64-efi/net.mod
28K /boot/grub/x86_64-efi/ehci.mod
4.0K /boot/grub/x86_64-efi/raid6rec.mod
8.0K /boot/grub/x86_64-efi/cmp_test.mod
8.0K /boot/grub/x86_64-efi/extcmd.mod
12K /boot/grub/x86_64-efi/mmap.mod
12K /boot/grub/x86_64-efi/smbios.mod
8.0K /boot/grub/x86_64-efi/odc.mod
4.0K /boot/grub/x86_64-efi/aout.mod
8.0K /boot/grub/x86_64-efi/minix.mod
8.0K /boot/grub/x86_64-efi/gfxterm_background.mod
8.0K /boot/grub/x86_64-efi/lsacpi.mod
4.0K /boot/grub/x86_64-efi/testspeed.mod
28K /boot/grub/x86_64-efi/gcry_camellia.mod
8.0K /boot/grub/x86_64-efi/lzopio.mod
16K /boot/grub/x86_64-efi/udf.mod
12K /boot/grub/x86_64-efi/usbms.mod
4.0K /boot/grub/x86_64-efi/command.lst
4.0K /boot/grub/x86_64-efi/bitmap.mod
4.0K /boot/grub/x86_64-efi/cs5536.mod
28K /boot/grub/x86_64-efi/btrfs.mod
4.0K /boot/grub/x86_64-efi/part_plan.mod
4.0K /boot/grub/x86_64-efi/datetime.mod
8.0K /boot/grub/x86_64-efi/probe.mod
8.0K /boot/grub/x86_64-efi/minix3.mod
16K /boot/grub/x86_64-efi/diskfilter.mod
4.0K /boot/grub/x86_64-efi/reboot.mod
8.0K /boot/grub/x86_64-efi/nativedisk.mod
144K /boot/grub/x86_64-efi/core.efi
80K /boot/grub/x86_64-efi/zstd.mod
8.0K /boot/grub/x86_64-efi/archelp.mod
4.0K /boot/grub/x86_64-efi/cpuid.mod
80K /boot/grub/x86_64-efi/regexp.mod
8.0K /boot/grub/x86_64-efi/ufs1.mod
8.0K /boot/grub/x86_64-efi/lsefisystab.mod
12K /boot/grub/x86_64-efi/jfs.mod
4.0K /boot/grub/x86_64-efi/memdisk.mod
12K /boot/grub/x86_64-efi/ldm.mod
4.0K /boot/grub/x86_64-efi/video.lst
12K /boot/grub/x86_64-efi/http.mod
8.0K /boot/grub/x86_64-efi/ufs1_be.mod
4.0K /boot/grub/x86_64-efi/gcry_dsa.mod
28K /boot/grub/x86_64-efi/video_fb.mod
4.0K /boot/grub/x86_64-efi/part_dvh.mod
4.0K /boot/grub/x86_64-efi/priority_queue.mod
4.0K /boot/grub/x86_64-efi/crc64.mod
8.0K /boot/grub/x86_64-efi/gfxterm_menu.mod
4.0K /boot/grub/x86_64-efi/keystatus.mod
8.0K /boot/grub/x86_64-efi/search.mod
12K /boot/grub/x86_64-efi/hdparm.mod
4.0K /boot/grub/x86_64-efi/play.mod
20K /boot/grub/x86_64-efi/gcry_des.mod
8.0K /boot/grub/x86_64-efi/div_test.mod
8.0K /boot/grub/x86_64-efi/lsefi.mod
4.0K /boot/grub/x86_64-efi/time.mod
12K /boot/grub/x86_64-efi/video_cirrus.mod
8.0K /boot/grub/x86_64-efi/romfs.mod
12K /boot/grub/x86_64-efi/gcry_crc.mod
4.0K /boot/grub/x86_64-efi/raid5rec.mod
4.0K /boot/grub/x86_64-efi/usbserial_common.mod
4.0K /boot/grub/x86_64-efi/progress.mod
16K /boot/grub/x86_64-efi/gcry_seed.mod
8.0K /boot/grub/x86_64-efi/ufs2.mod
12K /boot/grub/x86_64-efi/afs.mod
4.0K /boot/grub/x86_64-efi/help.mod
16K /boot/grub/x86_64-efi/acpi.mod
4.0K /boot/grub/x86_64-efi/pbkdf2_test.mod
4.0K /boot/grub/x86_64-efi/afsplitter.mod
24K /boot/grub/x86_64-efi/terminfo.mod
12K /boot/grub/x86_64-efi/xfs.mod
4.0K /boot/grub/x86_64-efi/pcidump.mod
8.0K /boot/grub/x86_64-efi/moddep.lst
4.0K /boot/grub/x86_64-efi/rdmsr.mod
8.0K /boot/grub/x86_64-efi/tftp.mod
16K /boot/grub/x86_64-efi/usb.mod
4.0K /boot/grub/x86_64-efi/part_msdos.mod
4.0K /boot/grub/x86_64-efi/eval.mod
8.0K /boot/grub/x86_64-efi/ls.mod
8.0K /boot/grub/x86_64-efi/usb_keyboard.mod
4.0K /boot/grub/x86_64-efi/part_apple.mod
8.0K /boot/grub/x86_64-efi/tga.mod
24K /boot/grub/x86_64-efi/luks2.mod
8.0K /boot/grub/x86_64-efi/usbtest.mod
12K /boot/grub/x86_64-efi/gcry_blowfish.mod
8.0K /boot/grub/x86_64-efi/terminal.mod
8.0K /boot/grub/x86_64-efi/appleldr.mod
12K /boot/grub/x86_64-efi/uhci.mod
12K /boot/grub/x86_64-efi/f2fs.mod
16K /boot/grub/x86_64-efi/serial.mod
8.0K /boot/grub/x86_64-efi/luks.mod
24K /boot/grub/x86_64-efi/linux.mod
8.0K /boot/grub/x86_64-efi/parttool.mod
4.0K /boot/grub/x86_64-efi/fs.lst
8.0K /boot/grub/x86_64-efi/gcry_md5.mod
4.0K /boot/grub/x86_64-efi/partmap.lst
8.0K /boot/grub/x86_64-efi/cat.mod
8.0K /boot/grub/x86_64-efi/cbfs.mod
8.0K /boot/grub/x86_64-efi/json.mod
12K /boot/grub/x86_64-efi/video.mod
8.0K /boot/grub/x86_64-efi/loadbios.mod
4.0K /boot/grub/x86_64-efi/all_video.mod
4.0K /boot/grub/x86_64-efi/adler32.mod
4.0K /boot/grub/x86_64-efi/offsetio.mod
4.0K /boot/grub/x86_64-efi/modinfo.sh
16K /boot/grub/x86_64-efi/gcry_tiger.mod
8.0K /boot/grub/x86_64-efi/minicmd.mod
4.0K /boot/grub/x86_64-efi/part_acorn.mod
8.0K /boot/grub/x86_64-efi/fshelp.mod
4.0K /boot/grub/x86_64-efi/part_sun.mod
4.0K /boot/grub/x86_64-efi/xnu_uuid_test.mod
4.0K /boot/grub/x86_64-efi/cmp.mod
12K /boot/grub/x86_64-efi/bfs.mod
12K /boot/grub/x86_64-efi/geli.mod
32K /boot/grub/x86_64-efi/syslinuxcfg.mod
8.0K /boot/grub/x86_64-efi/iorw.mod
12K /boot/grub/x86_64-efi/setpci.mod
16K /boot/grub/x86_64-efi/legacy_password_test.mod
8.0K /boot/grub/x86_64-efi/loopback.mod
4.0K /boot/grub/x86_64-efi/ctz_test.mod
16K /boot/grub/x86_64-efi/linuxefi.mod
12K /boot/grub/x86_64-efi/signature_test.mod
8.0K /boot/grub/x86_64-efi/keylayouts.mod
4.0K /boot/grub/x86_64-efi/test_blockarg.mod
4.0K /boot/grub/x86_64-efi/tr.mod
4.0K /boot/grub/x86_64-efi/disk.mod
28K /boot/grub/x86_64-efi/relocator.mod
8.0K /boot/grub/x86_64-efi/search_fs_uuid.mod
3.5M /boot/grub/x86_64-efi
2.3M /boot/grub/fonts/unicode.pf2
2.3M /boot/grub/fonts
4.0K /boot/grub/gfxblacklist.txt
4.0K /boot/grub/locale/en_CA.mo
116K /boot/grub/locale/en@quot.mo
4.0K /boot/grub/locale/en_GB.mo
4.0K /boot/grub/locale/en_AU.mo
132K /boot/grub/locale
12K /boot/grub/grub.cfg
4.0K /boot/grub/grubenv
2.3M /boot/grub/unicode.pf2
4.0K /boot/grub/i386-pc/setjmp.mod
8.0K /boot/grub/i386-pc/loadenv.mod
4.0K /boot/grub/i386-pc/mdraid09_be.mod
40K /boot/grub/i386-pc/gfxmenu.mod
4.0K /boot/grub/i386-pc/wrmsr.mod
20K /boot/grub/i386-pc/file.mod
8.0K /boot/grub/i386-pc/ata.mod
8.0K /boot/grub/i386-pc/efiemu32.o
4.0K /boot/grub/i386-pc/minix2.mod
8.0K /boot/grub/i386-pc/videotest.mod
12K /boot/grub/i386-pc/reiserfs.mod
4.0K /boot/grub/i386-pc/videoinfo.mod
8.0K /boot/grub/i386-pc/test.mod
4.0K /boot/grub/i386-pc/read.mod
12K /boot/grub/i386-pc/gzio.mod
4.0K /boot/grub/i386-pc/mdraid1x.mod
20K /boot/grub/i386-pc/gcry_serpent.mod
8.0K /boot/grub/i386-pc/lspci.mod
4.0K /boot/grub/i386-pc/date.mod
16K /boot/grub/i386-pc/font.mod
4.0K /boot/grub/i386-pc/crypto.lst
4.0K /boot/grub/i386-pc/minix3_be.mod
16K /boot/grub/i386-pc/multiboot2.mod
4.0K /boot/grub/i386-pc/part_bsd.mod
4.0K /boot/grub/i386-pc/msdospart.mod
4.0K /boot/grub/i386-pc/tar.mod
4.0K /boot/grub/i386-pc/cmdline_cat_test.mod
4.0K /boot/grub/i386-pc/cmosdump.mod
8.0K /boot/grub/i386-pc/affs.mod
4.0K /boot/grub/i386-pc/gcry_rsa.mod
4.0K /boot/grub/i386-pc/shift_test.mod
4.0K /boot/grub/i386-pc/usbserial_usbdebug.mod
4.0K /boot/grub/i386-pc/vga_text.mod
4.0K /boot/grub/i386-pc/trig.mod
4.0K /boot/grub/i386-pc/mul_test.mod
4.0K /boot/grub/i386-pc/usbserial_pl2303.mod
4.0K /boot/grub/i386-pc/ntldr.mod
28K /boot/grub/i386-pc/xnu.mod
16K /boot/grub/i386-pc/xzio.mod
4.0K /boot/grub/i386-pc/configfile.mod
4.0K /boot/grub/i386-pc/parttool.lst
4.0K /boot/grub/i386-pc/hello.mod
12K /boot/grub/i386-pc/cryptodisk.mod
4.0K /boot/grub/i386-pc/macbless.mod
8.0K /boot/grub/i386-pc/zfscrypt.mod
4.0K /boot/grub/i386-pc/setjmp_test.mod
4.0K /boot/grub/i386-pc/truecrypt.mod
4.0K /boot/grub/i386-pc/dm_nv.mod
8.0K /boot/grub/i386-pc/zfsinfo.mod
8.0K /boot/grub/i386-pc/squash4.mod
40K /boot/grub/i386-pc/zfs.mod
28K /boot/grub/i386-pc/core.img
8.0K /boot/grub/i386-pc/gcry_sha1.mod
4.0K /boot/grub/i386-pc/chain.mod
4.0K /boot/grub/i386-pc/cbtable.mod
4.0K /boot/grub/i386-pc/sleep_test.mod
36K /boot/grub/i386-pc/gcry_twofish.mod
4.0K /boot/grub/i386-pc/cbtime.mod
8.0K /boot/grub/i386-pc/jpeg.mod
8.0K /boot/grub/i386-pc/macho.mod
4.0K /boot/grub/i386-pc/freedos.mod
4.0K /boot/grub/i386-pc/part_amiga.mod
8.0K /boot/grub/i386-pc/ntfscomp.mod
8.0K /boot/grub/i386-pc/gcry_sha256.mod
8.0K /boot/grub/i386-pc/hfs.mod
4.0K /boot/grub/i386-pc/boot.img
4.0K /boot/grub/i386-pc/mdraid09.mod
24K /boot/grub/i386-pc/gcry_whirlpool.mod
4.0K /boot/grub/i386-pc/part_gpt.mod
4.0K /boot/grub/i386-pc/part_dfly.mod
8.0K /boot/grub/i386-pc/ext2.mod
4.0K /boot/grub/i386-pc/exfctest.mod
4.0K /boot/grub/i386-pc/password_pbkdf2.mod
4.0K /boot/grub/i386-pc/pxechain.mod
4.0K /boot/grub/i386-pc/bitmap_scale.mod
4.0K /boot/grub/i386-pc/testload.mod
4.0K /boot/grub/i386-pc/at_keyboard.mod
16K /boot/grub/i386-pc/ahci.mod
4.0K /boot/grub/i386-pc/pbkdf2.mod
116K /boot/grub/i386-pc/normal.mod
4.0K /boot/grub/i386-pc/echo.mod
4.0K /boot/grub/i386-pc/cbmemc.mod
8.0K /boot/grub/i386-pc/gettext.mod
4.0K /boot/grub/i386-pc/blocklist.mod
4.0K /boot/grub/i386-pc/hwmatch.mod
4.0K /boot/grub/i386-pc/sleep.mod
4.0K /boot/grub/i386-pc/random.mod
8.0K /boot/grub/i386-pc/hashsum.mod
8.0K /boot/grub/i386-pc/scsi.mod
16K /boot/grub/i386-pc/multiboot.mod
4.0K /boot/grub/i386-pc/gcry_arcfour.mod
4.0K /boot/grub/i386-pc/minix2_be.mod
4.0K /boot/grub/i386-pc/hfspluscomp.mod
4.0K /boot/grub/i386-pc/morse.mod
12K /boot/grub/i386-pc/lvm.mod
8.0K /boot/grub/i386-pc/crypto.mod
4.0K /boot/grub/i386-pc/terminal.lst
8.0K /boot/grub/i386-pc/nilfs2.mod
4.0K /boot/grub/i386-pc/datehook.mod
4.0K /boot/grub/i386-pc/hexdump.mod
4.0K /boot/grub/i386-pc/div.mod
8.0K /boot/grub/i386-pc/gcry_rmd160.mod
8.0K /boot/grub/i386-pc/png.mod
8.0K /boot/grub/i386-pc/linux16.mod
12K /boot/grub/i386-pc/iso9660.mod
4.0K /boot/grub/i386-pc/boot.mod
4.0K /boot/grub/i386-pc/bswap_test.mod
4.0K /boot/grub/i386-pc/procfs.mod
4.0K /boot/grub/i386-pc/minix_be.mod
4.0K /boot/grub/i386-pc/search_label.mod
12K /boot/grub/i386-pc/gfxterm.mod
4.0K /boot/grub/i386-pc/memrw.mod
12K /boot/grub/i386-pc/pgp.mod
8.0K /boot/grub/i386-pc/915resolution.mod
8.0K /boot/grub/i386-pc/hfsplus.mod
12K /boot/grub/i386-pc/ohci.mod
8.0K /boot/grub/i386-pc/vga.mod
16K /boot/grub/i386-pc/gcry_cast5.mod
4.0K /boot/grub/i386-pc/backtrace.mod
4.0K /boot/grub/i386-pc/cpio_be.mod
12K /boot/grub/i386-pc/gcry_sha512.mod
8.0K /boot/grub/i386-pc/fat.mod
4.0K /boot/grub/i386-pc/password.mod
4.0K /boot/grub/i386-pc/lsmmap.mod
8.0K /boot/grub/i386-pc/pata.mod
4.0K /boot/grub/i386-pc/cpio.mod
4.0K /boot/grub/i386-pc/xnu_uuid.mod
4.0K /boot/grub/i386-pc/cbls.mod
4.0K /boot/grub/i386-pc/newc.mod
8.0K /boot/grub/i386-pc/halt.mod
8.0K /boot/grub/i386-pc/sfs.mod
4.0K /boot/grub/i386-pc/bufio.mod
12K /boot/grub/i386-pc/ntfs.mod
36K /boot/grub/i386-pc/functional_test.mod
4.0K /boot/grub/i386-pc/videotest_checksum.mod
32K /boot/grub/i386-pc/bsd.mod
4.0K /boot/grub/i386-pc/usbserial_ftdi.mod
28K /boot/grub/i386-pc/mpi.mod
4.0K /boot/grub/i386-pc/spkmodem.mod
32K /boot/grub/i386-pc/legacycfg.mod
4.0K /boot/grub/i386-pc/gcry_rfc2268.mod
8.0K /boot/grub/i386-pc/video_colors.mod
4.0K /boot/grub/i386-pc/true.mod
8.0K /boot/grub/i386-pc/exfat.mod
4.0K /boot/grub/i386-pc/elf.mod
4.0K /boot/grub/i386-pc/search_fs_file.mod
4.0K /boot/grub/i386-pc/gcry_md4.mod
8.0K /boot/grub/i386-pc/video_bochs.mod
4.0K /boot/grub/i386-pc/gptsync.mod
8.0K /boot/grub/i386-pc/plan9.mod
4.0K /boot/grub/i386-pc/strtoull_test.mod
4.0K /boot/grub/i386-pc/gcry_idea.mod
4.0K /boot/grub/i386-pc/part_sunpc.mod
20K /boot/grub/i386-pc/gcry_rijndael.mod
60K /boot/grub/i386-pc/net.mod
16K /boot/grub/i386-pc/ehci.mod
4.0K /boot/grub/i386-pc/raid6rec.mod
8.0K /boot/grub/i386-pc/cmp_test.mod
8.0K /boot/grub/i386-pc/extcmd.mod
12K /boot/grub/i386-pc/mmap.mod
8.0K /boot/grub/i386-pc/smbios.mod
4.0K /boot/grub/i386-pc/odc.mod
4.0K /boot/grub/i386-pc/aout.mod
4.0K /boot/grub/i386-pc/minix.mod
4.0K /boot/grub/i386-pc/gfxterm_background.mod
8.0K /boot/grub/i386-pc/lsacpi.mod
4.0K /boot/grub/i386-pc/testspeed.mod
36K /boot/grub/i386-pc/gcry_camellia.mod
8.0K /boot/grub/i386-pc/lzopio.mod
12K /boot/grub/i386-pc/udf.mod
8.0K /boot/grub/i386-pc/usbms.mod
4.0K /boot/grub/i386-pc/command.lst
4.0K /boot/grub/i386-pc/bitmap.mod
4.0K /boot/grub/i386-pc/cs5536.mod
20K /boot/grub/i386-pc/btrfs.mod
4.0K /boot/grub/i386-pc/part_plan.mod
4.0K /boot/grub/i386-pc/datetime.mod
4.0K /boot/grub/i386-pc/probe.mod
4.0K /boot/grub/i386-pc/minix3.mod
12K /boot/grub/i386-pc/diskfilter.mod
4.0K /boot/grub/i386-pc/reboot.mod
8.0K /boot/grub/i386-pc/nativedisk.mod
48K /boot/grub/i386-pc/zstd.mod
4.0K /boot/grub/i386-pc/archelp.mod
4.0K /boot/grub/i386-pc/cpuid.mod
52K /boot/grub/i386-pc/regexp.mod
8.0K /boot/grub/i386-pc/ufs1.mod
8.0K /boot/grub/i386-pc/jfs.mod
4.0K /boot/grub/i386-pc/memdisk.mod
8.0K /boot/grub/i386-pc/ldm.mod
4.0K /boot/grub/i386-pc/video.lst
8.0K /boot/grub/i386-pc/http.mod
8.0K /boot/grub/i386-pc/ufs1_be.mod
4.0K /boot/grub/i386-pc/gcry_dsa.mod
24K /boot/grub/i386-pc/video_fb.mod
4.0K /boot/grub/i386-pc/pci.mod
4.0K /boot/grub/i386-pc/part_dvh.mod
4.0K /boot/grub/i386-pc/priority_queue.mod
4.0K /boot/grub/i386-pc/crc64.mod
4.0K /boot/grub/i386-pc/mda_text.mod
8.0K /boot/grub/i386-pc/gfxterm_menu.mod
4.0K /boot/grub/i386-pc/keystatus.mod
4.0K /boot/grub/i386-pc/search.mod
8.0K /boot/grub/i386-pc/hdparm.mod
4.0K /boot/grub/i386-pc/play.mod
20K /boot/grub/i386-pc/gcry_des.mod
8.0K /boot/grub/i386-pc/div_test.mod
4.0K /boot/grub/i386-pc/lsapm.mod
4.0K /boot/grub/i386-pc/time.mod
8.0K /boot/grub/i386-pc/sendkey.mod
8.0K /boot/grub/i386-pc/video_cirrus.mod
8.0K /boot/grub/i386-pc/romfs.mod
12K /boot/grub/i386-pc/gcry_crc.mod
4.0K /boot/grub/i386-pc/raid5rec.mod
8.0K /boot/grub/i386-pc/drivemap.mod
4.0K /boot/grub/i386-pc/usbserial_common.mod
4.0K /boot/grub/i386-pc/progress.mod
16K /boot/grub/i386-pc/gcry_seed.mod
12K /boot/grub/i386-pc/efiemu64.o
8.0K /boot/grub/i386-pc/ufs2.mod
8.0K /boot/grub/i386-pc/afs.mod
4.0K /boot/grub/i386-pc/help.mod
12K /boot/grub/i386-pc/acpi.mod
4.0K /boot/grub/i386-pc/pbkdf2_test.mod
4.0K /boot/grub/i386-pc/afsplitter.mod
16K /boot/grub/i386-pc/terminfo.mod
8.0K /boot/grub/i386-pc/xfs.mod
4.0K /boot/grub/i386-pc/pcidump.mod
8.0K /boot/grub/i386-pc/moddep.lst
4.0K /boot/grub/i386-pc/rdmsr.mod
8.0K /boot/grub/i386-pc/tftp.mod
12K /boot/grub/i386-pc/usb.mod
4.0K /boot/grub/i386-pc/part_msdos.mod
4.0K /boot/grub/i386-pc/eval.mod
4.0K /boot/grub/i386-pc/ls.mod
4.0K /boot/grub/i386-pc/usb_keyboard.mod
4.0K /boot/grub/i386-pc/part_apple.mod
8.0K /boot/grub/i386-pc/tga.mod
16K /boot/grub/i386-pc/luks2.mod
4.0K /boot/grub/i386-pc/verifiers.mod
4.0K /boot/grub/i386-pc/usbtest.mod
8.0K /boot/grub/i386-pc/gcry_blowfish.mod
8.0K /boot/grub/i386-pc/terminal.mod
8.0K /boot/grub/i386-pc/uhci.mod
8.0K /boot/grub/i386-pc/f2fs.mod
4.0K /boot/grub/i386-pc/cmostest.mod
8.0K /boot/grub/i386-pc/serial.mod
8.0K /boot/grub/i386-pc/luks.mod
16K /boot/grub/i386-pc/linux.mod
8.0K /boot/grub/i386-pc/parttool.mod
4.0K /boot/grub/i386-pc/fs.lst
4.0K /boot/grub/i386-pc/gcry_md5.mod
4.0K /boot/grub/i386-pc/partmap.lst
4.0K /boot/grub/i386-pc/cat.mod
4.0K /boot/grub/i386-pc/cbfs.mod
4.0K /boot/grub/i386-pc/json.mod
8.0K /boot/grub/i386-pc/video.mod
4.0K /boot/grub/i386-pc/all_video.mod
12K /boot/grub/i386-pc/vbe.mod
4.0K /boot/grub/i386-pc/adler32.mod
4.0K /boot/grub/i386-pc/offsetio.mod
4.0K /boot/grub/i386-pc/modinfo.sh
12K /boot/grub/i386-pc/gcry_tiger.mod
4.0K /boot/grub/i386-pc/minicmd.mod
4.0K /boot/grub/i386-pc/part_acorn.mod
4.0K /boot/grub/i386-pc/fshelp.mod
4.0K /boot/grub/i386-pc/part_sun.mod
4.0K /boot/grub/i386-pc/xnu_uuid_test.mod
4.0K /boot/grub/i386-pc/cmp.mod
8.0K /boot/grub/i386-pc/bfs.mod
8.0K /boot/grub/i386-pc/geli.mod
20K /boot/grub/i386-pc/syslinuxcfg.mod
28K /boot/grub/i386-pc/gdb.mod
8.0K /boot/grub/i386-pc/biosdisk.mod
4.0K /boot/grub/i386-pc/iorw.mod
8.0K /boot/grub/i386-pc/setpci.mod
16K /boot/grub/i386-pc/legacy_password_test.mod
4.0K /boot/grub/i386-pc/loopback.mod
4.0K /boot/grub/i386-pc/ctz_test.mod
24K /boot/grub/i386-pc/efiemu.mod
8.0K /boot/grub/i386-pc/signature_test.mod
8.0K /boot/grub/i386-pc/keylayouts.mod
4.0K /boot/grub/i386-pc/test_blockarg.mod
4.0K /boot/grub/i386-pc/pxe.mod
4.0K /boot/grub/i386-pc/tr.mod
4.0K /boot/grub/i386-pc/disk.mod
16K /boot/grub/i386-pc/relocator.mod
4.0K /boot/grub/i386-pc/search_fs_uuid.mod
2.5M /boot/grub/i386-pc
11M /boot/grub
547M /boot/initrd.img-6.6.0-rc1gilbert+
74M /boot/initrd.img-6.2.0-26-generic
272K /boot/config-6.2.0-26-generic

I apologize for the overly long list

> You could try to reove some older kernels.
>
How do I remove old kernels? I have tried a lot of commands that I
could find online and I didn't get the desired result
> > /dev/sda11       60G   28G   30G  49% /home
>
> BTW, are you working in your home directory?
>
No, I'm not working in the home directory
> Andi
>
> > /dev/sda2        96M   32M   65M  33% /boot/efi
> > tmpfs           784M  120K  784M   1% /run/user/1000


Thanks
Gilbert
