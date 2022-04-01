Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F2397C
	for <outreachy@lists.linux.dev>; Fri,  1 Apr 2022 12:01:08 +0000 (UTC)
Received: by mail-ej1-f51.google.com with SMTP id o10so5422179ejd.1
        for <outreachy@lists.linux.dev>; Fri, 01 Apr 2022 05:01:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BL7k0Lr3OyamxCO4GVBKI0iVsi4HC1q9jopHhrmxGVM=;
        b=PPDF4Kkj5ZSJMohCprxfcJPuWOTnDTwQOdFOumAXi3J1+u4oGsqZh6/bG7/hF5Mo1/
         d/pWjFH9OUM9uM/UQJeXY6X0DQkPN2Y4eof+C3Y9wgcCe2fET6T/3EB6ixJOmlLK1Fl3
         lW0hBWqa1gUsJore3nCPxxsbI8yw+OoKKDzx6ACH3VqTZiG0bLSslf8pwztD5Lpk/gId
         BuutfKREQOaPiWhnNEjRxKrdr/FWIrMXH8r1+bgDIQDJHH620RSSp3FtUEdfi0IUjaDJ
         gLCnfFAZrOvn9mqrXC/OUr6cb2b8UkLSIX2SgZ4GJRpQf0zvC2NB9PmTAZD6Uwaq1Vj/
         RzDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BL7k0Lr3OyamxCO4GVBKI0iVsi4HC1q9jopHhrmxGVM=;
        b=ai7cylsktlo8qiIDwM3srKtENAUZKao5jQ1KyUFbBFRT08OroRw6JTIjDM4FBVl6Of
         A+WeH1YAuph2BziWYVBwpoqtoqf3KLpXHmcuDxv3IwhG6buAxpnPBi9QMqk5PoywMOdi
         Q5EJ0ODDmxuH3GOCcp94YoLDKMSbLwDOsdEJRet9xpXqd9gS9+66K61FiW9TPXBlY+dS
         /3Exzcq9iqkdmIE2AddZ1akHsqSM3rkg9WlXGp9p4vD05ZGSEwwJH7vJYjI75mm62yQi
         Dde7TFfzgdmnKmg/u1EkWKuTWwEIF48M72KaHMo3c5psygr6ET0RjPDhz+HdjtlejjMI
         3TJQ==
X-Gm-Message-State: AOAM531zFWNgfV/+qO1ZD6fziP/qT6wIHQ8F7F7lZ5hql6BwK4lo5UDe
	075k0Mbex9itaRazR9+H1iSLfAAnYhU=
X-Google-Smtp-Source: ABdhPJzeArtpz3UsdrrU0yEqbXs1/y48D6RBvteLZQAWGJvnWQoQkzv3SNZBanpXt/SnqCcDR4uzUQ==
X-Received: by 2002:a17:906:2991:b0:6cc:fc18:f10c with SMTP id x17-20020a170906299100b006ccfc18f10cmr8913901eje.744.1648814465350;
        Fri, 01 Apr 2022 05:01:05 -0700 (PDT)
Received: from leap.localnet (host-95-249-145-232.retail.telecomitalia.it. [95.249.145.232])
        by smtp.gmail.com with ESMTPSA id qb24-20020a1709077e9800b006e029bd4c24sm951949ejc.193.2022.04.01.05.01.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Apr 2022 05:01:04 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Stefano Brivio <sbrivio@redhat.com>
Cc: outreachy@lists.linux.dev
Subject: Re: Compilation errors
Date: Fri, 01 Apr 2022 14:01:03 +0200
Message-ID: <3410190.V25eIC5XRa@leap>
In-Reply-To: <20220401121357.09ae33d7@elisabeth>
References: <3603561.MHq7AAxBmi@leap> <20220401121357.09ae33d7@elisabeth>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

On venerd=C3=AC 1 aprile 2022 12:13:57 CEST Stefano Brivio wrote:
> Hi Fabio,
>=20
> On Fri, 01 Apr 2022 11:35:13 +0200
> "Fabio M. De Francesco" <fmdefrancesco@gmail.com> wrote:
> >
> > [...]
> >=20
> > Can someone help me to understand what is happening and how to fix this=
 issue?
> > Could it depend on a configuration option that, unintentionally enabled=
, make=20
> > the build fail whenever "case label does not reduce to an integer const=
ant" is=20
> > hit? If so, which option?
>=20
> Those would be warnings, but kernel builds switched to -Werror by
> default a while ago, see commit 3fe617ccafd6 ("Enable '-Werror' by
> default for all kernel builds") -- meaning that all warnings are
> treated as errors. You can disable CONFIG_WERROR:
>=20
> 	scripts/config -d WERROR
>=20
> to double check.=20

Hi Stefano,

Thanks for your prompt reply!

I know that the kernel has switched to -Werror by default. I use a largely=
=20
customized .config and I can confirm you that CONFIG_WERROR is _not_ enable=
d:

xp4ns3@leap> grep CONFIG_WERROR .config
# CONFIG_WERROR is not set

>
> [...]
>
> As to why it started happening for you recently: maybe you just
> switched to gcc 11 and a newer version of clang? Can you try with
> gcc 10 if you have it still installed?

I had it not anymore installed, so I had to re-install gcc v10. With it
I ran "make clean && CC=3Dgcc-10 make -j12" but it still triggers the same=
=20
errors and the build still fails.

The last output line, just before exit, is:

make: *** [Makefile:1838: drivers] Error 2

=46urthermore, I want to make you notice that I have no errors when I=20
build Torvald's tree with gcc v11. In fact, I rebuilt it now again and=20
got no failures.

Why is this issue showing only with staging-testing? I cannot yet see=20
any reasonable explanation.

Any other ideas? If I'm not able to figure out what's happening, I won't
be able to contribute to staging anymore. Greg (reasonably) requires that
all the changes get built before sending patches, therefore, this issue
is a blocker. I'm losing the chance to be selected for the Outreachy
internship.

Since I have more or less 100 patches already in Torvald's tree, can I
be exempted from working on those 10 required patches for staging?=20
Otherwise I could simply send 10 clean-up patches that I can confidently
send without trying to compile them. Or I can send patches for Torvald's
tree. I really don't know what to do.

As said above: any more ideas?=20

Regards,

=46abio
=20
>=20
> --=20
> Stefano
>=20



