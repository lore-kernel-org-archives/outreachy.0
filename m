Received: from mail-40133.protonmail.ch (mail-40133.protonmail.ch [185.70.40.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41ADD20F4
	for <outreachy@lists.linux.dev>; Tue, 29 Mar 2022 05:53:29 +0000 (UTC)
Date: Tue, 29 Mar 2022 05:53:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail; t=1648533206;
	bh=kUc+bsHE6QxdfJ+yvls3s4KlNDZwIxXC1aTnR7KHtv0=;
	h=Date:To:From:Cc:Reply-To:Subject:Message-ID:In-Reply-To:
	 References:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID;
	b=39Seco04JmKq3siuSnG5sMhBGepmr9p7H9Xht04oW5MnN2sQjF3QqQj+OxmZAVpaz
	 N+9tq5nI1gT8TRFX+heuG0Jx/heqwT5mv3IJuQYB+2eOAEUCEBE2YUkjJ76wEi3icF
	 0nmTMFEmQuMre8zkfjh8Tb5q892CsrLELYNx/32QTgGXfXb8B2lUPRnnnyzj0a+CkV
	 2sI9AAKOeXfPODLAmlztiRttA2P8WajioRmYD1mwvuFLlSca+tpjgFRiOG9StUzVHU
	 JEQ4fTgR5FKLZ4vSL59IbGRt1iYPzrppYIMbLdNz+3RR07IoscCMjKWwOVmeB0h233
	 12AE2T0krCrSQ==
To: Formasit Fokunang <formasitf@gmail.com>
From: Rebecca Mckeever <rebecca.mckeever@protonmail.com>
Cc: outreachy@lists.linux.dev
Reply-To: Rebecca Mckeever <rebecca.mckeever@protonmail.com>
Subject: Re: Build Error
Message-ID: <2U_Eq4CJuJ8U_2OxXTu8LsSjc9QLQpWrnZerrdsl8-FU1Oq2odof3SAg2A5-X1OLk7BXwXMTuIcOGo1FbVgvvpqfv50104ElDnhOEMYcV7M=@protonmail.com>
In-Reply-To: <CAL1a2sm42ebvt5zKNbQEdojR2vnQqvO6-v2+JGbEE4puxFXRzQ@mail.gmail.com>
References: <CAL1a2sm42ebvt5zKNbQEdojR2vnQqvO6-v2+JGbEE4puxFXRzQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Formasit,

------- Original Message -------

On Monday, March 28th, 2022 at 23:32, Formasit Fokunang <formasitf@gmail.co=
m> wrote:

> Hello,
>
> I have this error when building my new kernel it occurs when
>
> run the make -j3 command,though it continues to run after error but i
>
> can't install the new kernel . I tried looking at the file at
>
> ./include/linux/elfnote.h to check if i could override the permission
>
> but i couldn't figure out what exactly caused the error.
>
> please i will really appreciate some help.
>
> In file included from ./include/linux/build-salt.h:4,
>
> from init/version.c:11:
>
> ./include/linux/elfnote.h:74:10: fatal error: opening dependency file ini=
t/
>
> .version.o.d: Permission denied
>

Have you tried checking the permissions for that file with the following co=
mmand?

ls -l init/.version.o.d

When I run it, it shows that I have read permissions for owner, group, and =
others:

-rw-rw-r--

To add missing read permissions, run

chmod a+r init/.version.o.d

> 74 | struct elf##size##_note _nhdr; \
>
> | ^~~
>
> ./include/linux/elfnote.h:93:2: note: in expansion of macro =E2=80=98_ELF=
NOTE=E2=80=99
>
> 93 | _ELFNOTE(size, name, LINE, type, desc)
>
> | ^~~~~~~~
>
> ./include/linux/elfnote.h:95:37: note: in expansion of macro =E2=80=98ELF=
NOTE=E2=80=99
>
> 95 | #define ELFNOTE32(name, type, desc) ELFNOTE(32, name, type, desc)
>
> | ^~~~~~~
>
> ./include/linux/elfnote-lto.h:11:24: note: in expansion of macro =
=E2=80=98ELFNOTE32
>
> =E2=80=99
>
> 11 | #define BUILD_LTO_INFO ELFNOTE32("Linux", LINUX_ELFNOTE_LTO_INFO, 0
>
> )
>
> | ^~~~~~~~~
>
> init/version.c:49:1: note: in expansion of macro =E2=80=98BUILD_LTO_INFO=
=E2=80=99
>
> 49 | BUILD_LTO_INFO;
>
> | ^~~~~~~~~~~~~~
>
> compilation terminated.
>
> make[1]: *** [scripts/Makefile.build:288: init/version.o] Error 1
>
> make: *** [Makefile:1831: init] Error 2
>
> make: *** Waiting for unfinished jobs....

Rebecca
