Received: from mail-4322.protonmail.ch (mail-4322.protonmail.ch [185.70.43.22])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 076B87E
	for <outreachy@lists.linux.dev>; Sun, 27 Mar 2022 04:58:12 +0000 (UTC)
Date: Sun, 27 Mar 2022 04:58:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail; t=1648357083;
	bh=8hWB/ewaRvIOlGMtiSEr46UXFz8i/Gh3Otjmv5WbBZ0=;
	h=Date:To:From:Reply-To:Subject:Message-ID:In-Reply-To:References:
	 From:To:Cc:Date:Subject:Reply-To:Feedback-ID:Message-ID;
	b=Ou8be1u42NKUmIEBCtsMppKBUpdnIg6t5DftLPRitTdaDx2fSdk5XhrGbxGn7vhkF
	 El1t2HNMFEg0rcb+USVQq39g+fqyjkECJaTEQE7j7tqzwIJPZd9K2/tx/6T/HbUXT2
	 m8pGq0FcoNEMHCBCFdrFRO5M00LV7fmbdgTluhhZajLvp0zvuD6WgEjl+SE3kcO2Kx
	 XHKy/sJfEDvzQTtGPlIT6vEeX9hYg/eR+NTQwbvlkeBbC2Uka7aHstnE0zjpiids+m
	 GGkINbQk6GWoFhBJOOyu8D/bJCMqW2dl06eqEEbio3v/z04AD55Vb9aFi7Rv8JPL+h
	 +LGzI87aFpXkQ==
To: "outreachy@lists.linux.dev" <outreachy@lists.linux.dev>
From: Rebecca Mckeever <rebecca.mckeever@protonmail.com>
Reply-To: Rebecca Mckeever <rebecca.mckeever@protonmail.com>
Subject: Re: Help with Outreachy Setup
Message-ID: <hIoORnc6IGx_3SqRrbAJGrJBMH4ZnHvpDMUrXAkvsbULD_5Ab9D-w_2na1gq1TlO7bX0JdMAx_CBriDDpoqStYKNXmqu4HZUugAX1HJ0ius=@protonmail.com>
In-Reply-To: <VlGZ-Rt6GMrT_vsR1Bi_X3co5-hOiETSXBNNVG77hbb2vELgPzsd2fv5T4Qnd14G3z6f-ocpRTj2uT2ampl1aB6PyXJkWRS_5l8BH3nNcRM=@protonmail.com>
References: <VlGZ-Rt6GMrT_vsR1Bi_X3co5-hOiETSXBNNVG77hbb2vELgPzsd2fv5T4Qnd14G3z6f-ocpRTj2uT2ampl1aB6PyXJkWRS_5l8BH3nNcRM=@protonmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

I was able to get it working on a different computer. It still shows the "C=
ONFIG_X86_X32 enabled but no binutils support" message, but there was no er=
ror message and I was able to boot into it, so hopefully it's not a problem=
.

------- Original Message -------

On Saturday, March 26th, 2022 at 21:54, Rebecca Mckeever <rebecca.mckeever@=
protonmail.com> wrote:

> I am going through the Outreachy setup instructions (https://kernelnewbie=
s.org/OutreachyfirstpatchSetup), and I am stuck at 'Installing the kernel'.=
 My computer is an HP laptop with Intel Core i5-8250U and I'm using Ubuntu.
>
> When I run
>
> sudo make modules_install install
>
> I receive the following error message:
>
> arch/x86/Makefile:154: CONFIG_X86_X32 enabled but no binutils support
>
> make[2]: *** No rule to make target '/lib/modules/5.17.0-rc8-outreachy+/k=
ernel/arch/x86/crypto/aesni-intel.ko', needed by '__modinst'. Stop.
>
> make[1]: *** [Makefile:1757: modules_install] Error 2
>
> make: *** [Makefile:350: __build_one_by_one] Error 2
>
> I already have binutils installed:
>
> sudo apt install binutils
>
> Reading package lists... Done
>
> Building dependency tree
>
> Reading state information... Done
>
> binutils is already the newest version (2.34-6ubuntu1.3).
>
> I searched online and couldn't find anything helpful. I tried setting CON=
FIG_X86_X32 to n in .config and that didn't help. Anyone have suggestions a=
bout what else I can do?
