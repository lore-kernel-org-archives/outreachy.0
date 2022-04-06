Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437B233D7
	for <outreachy@lists.linux.dev>; Wed,  6 Apr 2022 13:54:45 +0000 (UTC)
Received: by mail-ej1-f54.google.com with SMTP id n6so4358522ejc.13
        for <outreachy@lists.linux.dev>; Wed, 06 Apr 2022 06:54:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8xDyPfj6UDl0oLu7z7wuxFo8zbZVoYhd5X5rj7SrlRo=;
        b=kZOK0dbk2GiISqhUjdJ6iuS78XLmqnjmfj/uTCZ6GJwVHwV9yZrcjWuAgw7Owau1VJ
         nxS6Kzk57mnjF2isJy58eExsjPrUiXTwTJm5ggZxJZ3G+OozWqSh89QIq99TIgVI4KMe
         e3bus3zNHtB2ApOByl9BqK8qv1yhEDSnM3A/fjF7uO9b2SyV4+XseEe83IswDcs1YrE9
         wmJOc7hgzIjomM9O7xXwfi7gI4PzdlfHDGsfAyzWvnxZHGtKqlRxjvjWJt7hRQ5C2BWN
         Z4MsZ0PEkh5myvzbuwWcOD8ed3SWzTvtS0HCmY3MOz1iofV7KmnpLTonmBzw4FtEKsDi
         cMzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8xDyPfj6UDl0oLu7z7wuxFo8zbZVoYhd5X5rj7SrlRo=;
        b=IbdsbLu/UHNP52hbb5/iN2C7o3yIOj2EFO+ntpAQ105ymvlqJpiqDjlRZ56LEK4y0z
         qKdXOmXL7UUH4mn140Euj5zOmbFNC8ylXkw5QJ5hri/R2nUsgZbs+CF/XeEjJZ+G7FvB
         3sOwb1JTOjzDEV17N1YNnT3frIYwut0ZoFTClWWiC4SQT42wMB/rAOy9Kc/R1tio4Me5
         5IYoYdZgGk1MRmIJ9mf0pWlkDVcxiN0OKP2tPRyjvXkWtkBsG+FEGwHPGo7iG1rppntf
         qPtJyhNIxzV/bjdai5wOFI46mEfp2Ds2qJrYEsw5vLF70fR0Ex9Ap5+eWzw4LiOvTrjh
         eecw==
X-Gm-Message-State: AOAM5301rgCq0Do3klQec0Wsrm4dGErgQCTXqdxkercI2M14ZIipAC3j
	jAOK83inYicRLgEMVGhrS7bcoRzCKVE=
X-Google-Smtp-Source: ABdhPJw772pbcXudmMNx5/i6huswQ0CX7GqwOj/Ctr+SsyuStSVE8r4VaZtG1AsFtoXzYsZQgm5D1Q==
X-Received: by 2002:a17:907:961a:b0:6e4:a32a:f78f with SMTP id gb26-20020a170907961a00b006e4a32af78fmr8416216ejc.7.1649253283449;
        Wed, 06 Apr 2022 06:54:43 -0700 (PDT)
Received: from leap.localnet (host-95-249-145-232.retail.telecomitalia.it. [95.249.145.232])
        by smtp.gmail.com with ESMTPSA id nd31-20020a170907629f00b006dff863d41asm6661111ejc.156.2022.04.06.06.54.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Apr 2022 06:54:42 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Stefano Brivio <sbrivio@redhat.com>, jhpark1013@gmail.com, Jaehee Park <jhpark1013@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: patch idea for wfx
Date: Wed, 06 Apr 2022 15:54:35 +0200
Message-ID: <4705777.GXAFRqVoOG@leap>
In-Reply-To: <20220406042821.GA989392@jaehee-ThinkPad-X1-Extreme>
References: <20220331141434.GA1104155@jaehee-ThinkPad-X1-Extreme> <20220401001216.727c2ef1@elisabeth> <20220406042821.GA989392@jaehee-ThinkPad-X1-Extreme>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On mercoled=C3=AC 6 aprile 2022 06:28:21 CEST Jaehee Park wrote:
> -----Section 2-----
> Here's my diff (below). I've implemented container_of() in function wfx_a=
dd_interface (to start).
> - If I'm understanding this correctly, we're replacing the line
> `struct wfx_vif *wvif =3D (struct wfx_vif *)vif->drv_priv`
> and replacing it with
> `struct wfx_vif *wvif =3D container_of(vif, struct ieee80211_vif, drv_pri=
v)`
>=20
> This is the error message I get:
> ./include/linux/container_of.h:17:41: error: initialization of =E2=80=98s=
truct wfx_vif *=E2=80=99 from incompatible pointer type =E2=80=98struct iee=
e80211_vif *=E2=80=99 [-Werror=3Dincompatible-pointer-types]

Hi Jaehee,

Probably, before changing any code which could be improved with the use of=
=20
container_of(), you'd better see how this macro is used in other code that=
=20
works properly.

Look at the following example. In drivers/dma/tegra20-apb-dma.c, we can loo=
k=20
at a one line function called "to_tegra_dma_chan()":

static inline struct tegra_dma_channel *to_tegra_dma_chan(struct dma_chan *=
dc)
{
        return container_of(dc, struct tegra_dma_channel, dma_chan);
}

"to_tegra_dma_chan()" takes a pointer to a "struct dma_chan" that is called=
=20
"dc" and it returns a pointer to the "struct tegra_dma_channel" which embed=
s=20
the above-mentioned "struct dma_chan".=20

Please take a look at the definition of "struct tegra_dma_channel". You'll=
=20
notice that it has a field of type "dma_chan" that is called "dma_chan"=20
(coincidentally the names of field and type are the same; this could confus=
e=20
you but you easily see that they are different entities):

struct tegra_dma_channel {
        struct dma_chan dma_chan;
        ...
}

How can "to_tegra_dma_chan()" return a pointer to the embedding "struct=20
tegra_dma_channel"?

It uses cointainer_of(). The first argument of that macro is the pointer=20
passed to the function ("struct dma_chan *dc"). The second argument is=20
the embedding "struct tegra_dma_channel". The third is the name of the=20
field (not the type) pointed by "dc".

I hope it helps.

=46abio


