Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6779C137F
	for <outreachy@lists.linux.dev>; Fri,  1 Apr 2022 17:58:32 +0000 (UTC)
Received: by mail-ed1-f44.google.com with SMTP id h4so3846546edr.3
        for <outreachy@lists.linux.dev>; Fri, 01 Apr 2022 10:58:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Tvh7PojNOU8ixwM/VVoBe7OJ3tPnUoL+wy9VL5Eh99M=;
        b=mEyqPOy/vdn0Atw3WBSWSwe4clSEqjbbZnxsy2ewo/e6KlEVBz8/r3UiAtdPwj3c+T
         XtyTc4DitOv8fE7AnPMx8Oc/HLU2AcXIkfTkxAywe0b9yfoinXlMsutN5HN840yUhSFz
         4C68KTn0+nJlVGKDt50/9pkqz/EM+FhxWf1F8wl7I/qFCHc39sz7b0MNfjvdXalbCEX2
         TwgGPboqXcOVp0YKig4fN+sREZLvPdoebsOkmJJb6C2MDDrJT4aY9OPqt0RoBLTqUtEq
         fobuhBSof7qbowJ+/34W0qYr73lF5ag1I/lmo6K2AiwhlLbuUqUIS+qt5vLAh6tUGQ6U
         SzuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Tvh7PojNOU8ixwM/VVoBe7OJ3tPnUoL+wy9VL5Eh99M=;
        b=c85GN+DvYdumtCyL2LYMs/QZtHQQCPIgZ0ArbD9K1BZR4mLXyU5gF1i4kbz2zpon0t
         tBaoFQ2Z9/wdyUa5OOA0S8geDio4rwuyYqOdYr9dvlt3rwjde7bmUozdHy+VA+v09IfM
         Bd6ftNt3lErCyp3MfwT1EBpBD03kPhbKGp2Tcu5WTMRhQLRFthvK3PZ4HV5xmv8g7kus
         vZ+X0a+WoS1Zvxk02gmECgshKCMkpze1w5XtKl5tU05EHSsGXobh/Bro5jRB8JrTmzQo
         vhpYZBiqS1TCcnBZ6KuhRW3Y7s8KdopdV/z1tPF68LZLiYXMhq8yKOc90uYcWlV+UaGP
         F14g==
X-Gm-Message-State: AOAM5322RpANFsGRNRnSE7YlXvMzEkklbY2zsK2WIgwPXGY+Wu00wnQ/
	gOMlCIYrUazpgSdXqfmk3aI=
X-Google-Smtp-Source: ABdhPJx98HUnS9yU+Rlhl1XP4eV/g3NBwJeJHslH+VYGoQfkqgyDVdrwWEHbM4HLO3fFT8OvGnQ+gw==
X-Received: by 2002:a50:ec16:0:b0:40f:28a0:d0d6 with SMTP id g22-20020a50ec16000000b0040f28a0d0d6mr22345747edr.368.1648835910597;
        Fri, 01 Apr 2022 10:58:30 -0700 (PDT)
Received: from leap.localnet (host-95-249-145-232.retail.telecomitalia.it. [95.249.145.232])
        by smtp.gmail.com with ESMTPSA id sd7-20020a1709076e0700b006e015549bdfsm1213470ejc.53.2022.04.01.10.58.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Apr 2022 10:58:29 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Alison Schofield <alison.schofield@intel.com>
Cc: Stefano Brivio <sbrivio@redhat.com>, outreachy@lists.linux.dev
Subject: Re: Compilation errors
Date: Fri, 01 Apr 2022 19:58:28 +0200
Message-ID: <2937420.687JKscXgg@leap>
In-Reply-To: <20220401160901.GA1186855@alison-desk>
References: <3603561.MHq7AAxBmi@leap> <1943335.PIDvDuAF1L@leap> <20220401160901.GA1186855@alison-desk>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On venerd=EC 1 aprile 2022 18:09:01 CEST Alison Schofield wrote:
> On Fri, Apr 01, 2022 at 03:07:24PM +0200, Fabio M. De Francesco wrote:
> > On venerd=EC 1 aprile 2022 14:57:14 CEST Stefano Brivio wrote:
> > >=20
> > > Okay, then that's really an error.
> > >=20
> > > It might simply be that the you're building some drivers on your
> > > staging tree that you're not building on the mainline tree.
> >=20
> > Yes, this is why I've decided to use the .config that I have in Torvald=
's=20
> > tree. They should only differ for the drivers/staging part and the suff=
ix=20
> > for vmlinuz.
> >=20
> > Now it builds correctly with gcc11 :)
> >=20
> > I must look carefully at the diff between the two files and figure out
> > what doesn't work.
> >=20
> > However what really counts is that now I can go back to work with "stag=
ing".
> >=20
> > Thanks for your time,
> >=20
> > Fabio=20
>=20
> Sounds like you all got things moving along wrt the compile issue.

Yes, thank you. The problem was due to UBSan enabled.

> I do want to follow up on a couple of things buried in this thread.
>=20
> It's good that compile issue is getting fixed because you can't get
> too far without hitting requirements to build w ALLYESCONFIG or
> ALLMODCONFIG, or the like, while doing kernel development.
>=20
> The thought of not compiling before sending is blasphemy ;)

I agree in full. It was just the desperation talking :-)

> wrt the 10 patch cleanup requirement. We often have applicants work
> multiple contribution periods for a multitude of reasons. For applicants
> who already have patches accepted in drivers/staging, we ask that they
> submit a few, to show they are current (if needed). Again, if your 'old'
> patches were from last month, no need to prove currency.

Most of my patches (a bit less than 100) are a bit older. The large part of=
=20
them are since March 2021 to October 2021. In 2022 I have submitted only=20
7 patches to net/smc, usb/core, staging.=20

But I usually don't do clean-ups. For instance, two recent patches were to
fix bugs reported by Syzbot in "net" and in "usb". A couple of recent=20
"staging" patches are about converting kmap() to kmap_local_page().

> So, Fabio, this means for you personally, go ahead and link to prior
> patches when you record your contribution in the Outreachy application.

Therefore, since the number of recent patches is low, can you please confirm
whether or not I can register also some of those of 2021 "to prove currency=
"?
Please notice that only 4 or 5 are from the last month.

Thanks,

=46abio
=20
> Anyone else in this situation, please ask.=20
>=20
> Thanks,
> Alison



