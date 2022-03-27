Received: from mail-4322.protonmail.ch (mail-4322.protonmail.ch [185.70.43.22])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAC0315A4
	for <outreachy@lists.linux.dev>; Sun, 27 Mar 2022 02:54:45 +0000 (UTC)
Date: Sun, 27 Mar 2022 02:54:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail; t=1648349682;
	bh=qjMZ53dWYqoys9WYqlLtGduOD0GGuXwYMPuvTBPi8us=;
	h=Date:To:From:Reply-To:Subject:Message-ID:From:To:Cc:Date:Subject:
	 Reply-To:Feedback-ID:Message-ID;
	b=xjOujVTaKsoFfRnF0aSoZZyCUl2W0KAg4HbB/jCKxAzfV2eqoU9j1+Sna6ZStcMUf
	 HvHnvBW5rLf+oBVQb8vd824Mj9ysuQYFY95t8OG618MYNgUXWw5odOHVyus7DwYauu
	 Kbm/wNtsyNX6VMMjomFVeFlxxRtir/Jpbk6TLeDGu8vk+4CfnN6mXDonjDaK+6Gi7y
	 KpAOABgAJI47YFSnGPfw84ic6JxmhoVBkGijrSUTVoerR6iw/6jwm5+VFXquVUAKCk
	 zfl9sda79bGDxV8Mv0rYG9gAEY+BGlj82W3fN9pysXMYaLmBb0oSsLg5ti5H2KNJJ8
	 G6FSK9+ybohLw==
To: "outreachy@lists.linux.dev" <outreachy@lists.linux.dev>
From: Rebecca Mckeever <rebecca.mckeever@protonmail.com>
Reply-To: Rebecca Mckeever <rebecca.mckeever@protonmail.com>
Subject: Help with Outreachy Setup
Message-ID: <VlGZ-Rt6GMrT_vsR1Bi_X3co5-hOiETSXBNNVG77hbb2vELgPzsd2fv5T4Qnd14G3z6f-ocpRTj2uT2ampl1aB6PyXJkWRS_5l8BH3nNcRM=@protonmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

I am going through the Outreachy setup instructions (https://kernelnewbies.=
org/OutreachyfirstpatchSetup), and I am stuck at 'Installing the kernel'. M=
y computer is an HP laptop with Intel Core i5-8250U and I'm using Ubuntu.

When I run

    sudo make modules_install install

I receive the following error message:

arch/x86/Makefile:154: CONFIG_X86_X32 enabled but no binutils support
make[2]: *** No rule to make target '/lib/modules/5.17.0-rc8-outreachy+/ker=
nel/arch/x86/crypto/aesni-intel.ko', needed by '__modinst'.  Stop.
make[1]: *** [Makefile:1757: modules_install] Error 2
make: *** [Makefile:350: __build_one_by_one] Error 2

I already have binutils installed:

sudo apt install binutils

Reading package lists... Done
Building dependency tree
Reading state information... Done
binutils is already the newest version (2.34-6ubuntu1.3).

I searched online and couldn't find anything helpful. I tried setting CONFI=
G_X86_X32 to n in .config and that didn't help. Anyone have suggestions abo=
ut what else I can do?
