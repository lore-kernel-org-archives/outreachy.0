Received: from mail-40133.protonmail.ch (mail-40133.protonmail.ch [185.70.40.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13D0A17E7
	for <outreachy@lists.linux.dev>; Mon, 28 Mar 2022 23:16:08 +0000 (UTC)
Date: Mon, 28 Mar 2022 23:15:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail; t=1648509360;
	bh=ERdvr4koN//8O0yWGGTOqTrB4qDUF6+4RCVc2IgfTmU=;
	h=Date:To:From:Cc:Reply-To:Subject:Message-ID:In-Reply-To:
	 References:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID;
	b=HEEmnWhUT/WaU90xYPxTbhkdNRqN3vbX2IIWK4nIDAsKN2YzDn9GpjgM+Bop+k/JW
	 j3jhDHl7uByf2re7e9neD3RQd61dMIouZ+wdlc36rAShE2mFkFp7mgvx6dc/S6rMmB
	 qm+tCsmlrBlFPBKQ+YNrFLZDr4RL000815yvK0GkFQhO6p6Nc8hgTAsbqlWDrYTFOf
	 tHPFe+a2wuHiYqbzAidA9auIvJ7eliOet+y0KBrzZ9AM1QXhuodKaXRVOs5+dSduw5
	 V9v+kyGZn5F0VxpxEEP7kk69gI7Zgwb0wNuYHBwP5RX7O62VTwuA8tQzWOl9eexeHd
	 ++XomvrIlcVpA==
To: Stefano Brivio <sbrivio@redhat.com>
From: Rebecca Mckeever <rebecca.mckeever@protonmail.com>
Cc: "outreachy@lists.linux.dev" <outreachy@lists.linux.dev>
Reply-To: Rebecca Mckeever <rebecca.mckeever@protonmail.com>
Subject: Re: Help with Outreachy Setup
Message-ID: <tNBPktxWF2otxi8_ncSeM-0JgzTQmBXSgYhPAg1PevCPu-Lqr8pJDNRwMcq7onLpeAUF70r1P7JUlHeP-P7RxoR3aloWi-yuosT_E7k4xk8=@protonmail.com>
In-Reply-To: <20220327105438.26ec0e70@elisabeth>
References: <VlGZ-Rt6GMrT_vsR1Bi_X3co5-hOiETSXBNNVG77hbb2vELgPzsd2fv5T4Qnd14G3z6f-ocpRTj2uT2ampl1aB6PyXJkWRS_5l8BH3nNcRM=@protonmail.com> <hIoORnc6IGx_3SqRrbAJGrJBMH4ZnHvpDMUrXAkvsbULD_5Ab9D-w_2na1gq1TlO7bX0JdMAx_CBriDDpoqStYKNXmqu4HZUugAX1HJ0ius=@protonmail.com> <20220327105438.26ec0e70@elisabeth>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Stefano,

------- Original Message -------

On Sunday, March 27th, 2022 at 03:54, Stefano Brivio <sbrivio@redhat.com> w=
rote:

> Hi Rebecca,
>
> First off, welcome to Outreachy and I'm glad you were able to build the
>
> kernel and boot it! About the issues you hit.
>
> On Sun, 27 Mar 2022 04:58:01 +0000
>
> Rebecca Mckeever rebecca.mckeever@protonmail.com wrote:
>
> > I was able to get it working on a different computer. It still shows
> >
> > the "CONFIG_X86_X32 enabled but no binutils support" message, but
> >
> > there was no error message and I was able to boot into it, so
> >
> > hopefully it's not a problem.
>
> CONFIG_X86_X32 enables, I quote from the Kconfig help: "x32 native
>
> 32-bit ABI for 64-bit processors" -- which is a memory-saving feature
>
> not commonly enabled.
>
> On 64-bit processors (such as, probably, yours), pointers (that is,
>
> references to data, or functions) use 64 bits. That's convenient, among
>
> other reasons, because 4 GiB of memory nowadays isn't that much and,
>
> using fewer bits, some (further) translation of memory addresses is
>
> needed to address what programs and kernel might want to refer to.
>
> It takes a bit more space, in both programs and kernel. So the kernel
>
> offers, as a rather extreme measure of memory optimisation, the
>
> possibility to keep the storage of pointers to 32 bits. That would be
>
> used mostly by embedded systems, I guess.
>
> To build the kernel with that option, you don't just need binutils, you
>
> would also need binutils with this specific support, which is not
>
> commonly available in distribution. I bet "elf32-86-64" is missing in
>
> the list of supported "targets" when you issue:
>
> objcopy --help

Yes, "elf32-86-64" was missing from the list of targets. But the list did i=
nclude "elf32-x86-64". Do you know what the difference between them is?

>
> Anyway, yes, it's just a warning. You can get rid of the warning by
>
> disabling the CONFIG_X86_X32 in your kernel configuration. Maybe you
>
> could make sure you disabled it with the correct syntax with this, from
>
> your kernel tree:
>
> scripts/config -d CONFIG_X86_X32
>
> ...it can still be that it's selected by another option, so it would be
>
> re-enabled automatically. Search for it from 'make menuconfig', typing
>
> '/' (slash) and searching for X86_X32. Then you will see if that's the
>
> case.

This worked for me. I was able to recompile without seeing the warning.

>
> The actual build error you got on the other machine is probably a
>
> dependency issue between options, which happens with your particular
>
> configuration, but it really shouldn't happen no matter how your
>
> configuration looks like.
>
> The relevant configuration options are CONFIG_CRYPTO_AES_NI_INTEL and
>
> CONFIG_64BIT -- you could start having a look at the state of those two.
>

CONFIG_CRYPTO_AES_NI_INTEL was set to m. I tried changing it to n and then =
y, and neither removed the error. Changing CONFIG_64BIT didn't remove the e=
rror either. I think I may have made a mistake early in the process and wou=
ld need to start over to get it working. I will stick with compiling on the=
 other machine for now; I actually prefer it that way.

> I hope this helps,
>
> --
>
> Stefano

Thanks for you help Stefano!

Rebecca
