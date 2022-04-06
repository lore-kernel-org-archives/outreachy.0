Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76CCF33E0
	for <outreachy@lists.linux.dev>; Wed,  6 Apr 2022 16:04:16 +0000 (UTC)
Received: by mail-ed1-f54.google.com with SMTP id g22so3223779edz.2
        for <outreachy@lists.linux.dev>; Wed, 06 Apr 2022 09:04:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=M0Izk0Hd4WJtcCDvFkvADp8fh12NNTPSGRH6P1Mi5Rw=;
        b=SQc80mHxBNCtlwLHqI3H+eO3kBHftV/Y8yXzBINOttuSM4PQa2005Mmhkl/6UJgxF3
         WU6j3No0vI91PrGFaPax3il0kA7or6u09GKfQvv8tC3Y/f9OkOP07YK4H5mDDni0OfUg
         P+8sEA/LEOQx6ZWWiIvVkbpKL5x0La5HXsmzniVbZOguhqF1c3dNQ7pUUh/RWk4OWXCO
         iqC9DsCps1ebiTTVKKMv2OO/r7+oMy8ULzvcBG8I3BhmaKIoBH/974NbBKV+4IQHlaVD
         EovVAFwM3qYUlummabE19HExBmKi9dFXy5wBZecEJBlho4bme5LaMarTA8quukE4R1LY
         8Bhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=M0Izk0Hd4WJtcCDvFkvADp8fh12NNTPSGRH6P1Mi5Rw=;
        b=TW0fEjVFHYaa57iGLraK3VJWTl5DLbSMKWSOrreTmdwMIVe+65XIY4YAPBVi1X6URU
         n6SVy/Wr8jmDIG6vkBQ9iyJhWayu+m4iHBNJvmUSybLDJRmOvVPDdlmLEvmDmBmadB55
         ZLacA17gLrnESw7rGW6ooFanx9yfy5+rMhoXDnit7s372eqhTVR3VhETR0n/LVqOyRu1
         T6pmQMsF2GMNl5g1Q0xU/HtsIJJH255GTD+P9ULopghlrcFkOC8gevESXp9j60EgZed7
         vHMLhuj8KDSWgyMgSzGbtct2d18U+FCANK7WzxYCg9npC1cAwVVZhlRmXXXTXaIbc+/R
         Atag==
X-Gm-Message-State: AOAM533EsGbTqG1cFdJESStE4OHaNu+ujbFLbbXKZHHegAHPHuYXDfQP
	A5hJehsv02Ih2HBSrR+4lrI=
X-Google-Smtp-Source: ABdhPJw7dONxjosSPm3shz+ymMFeAIZbf2PrCQt3jOKoaoJHhbqI2hRUVfVlyM7njFeacpjQHDDJew==
X-Received: by 2002:a05:6402:4248:b0:419:4583:eaa2 with SMTP id g8-20020a056402424800b004194583eaa2mr9574496edb.376.1649261054414;
        Wed, 06 Apr 2022 09:04:14 -0700 (PDT)
Received: from leap.localnet (host-95-249-145-232.retail.telecomitalia.it. [95.249.145.232])
        by smtp.gmail.com with ESMTPSA id n21-20020a170906725500b006e10a7d6d03sm6606879ejk.219.2022.04.06.09.04.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Apr 2022 09:04:13 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Jaehee Park <jhpark1013@gmail.com>
Cc: Stefano Brivio <sbrivio@redhat.com>, outreachy@lists.linux.dev
Subject: Re: patch idea for wfx
Date: Wed, 06 Apr 2022 18:04:12 +0200
Message-ID: <1744943.TLkxdtWsSY@leap>
In-Reply-To: <20220406142432.GA1113438@jaehee-ThinkPad-X1-Extreme>
References: <20220331141434.GA1104155@jaehee-ThinkPad-X1-Extreme> <4705777.GXAFRqVoOG@leap> <20220406142432.GA1113438@jaehee-ThinkPad-X1-Extreme>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On mercoled=C3=AC 6 aprile 2022 16:24:32 CEST Jaehee Park wrote:
> On Wed, Apr 06, 2022 at 03:54:35PM +0200, Fabio M. De Francesco wrote:
> > On mercoled=C3=AC 6 aprile 2022 06:28:21 CEST Jaehee Park wrote:
> > > -----Section 2-----
> > > Here's my diff (below). I've implemented container_of() in function w=
fx_add_interface (to start).
> > > - If I'm understanding this correctly, we're replacing the line
> > > `struct wfx_vif *wvif =3D (struct wfx_vif *)vif->drv_priv`
> > > and replacing it with
> > > `struct wfx_vif *wvif =3D container_of(vif, struct ieee80211_vif, drv=
_priv)`
> > >=20
> > > This is the error message I get:
> > > ./include/linux/container_of.h:17:41: error: initialization of =E2=80=
=98struct wfx_vif *=E2=80=99 from incompatible pointer type =E2=80=98struct=
 ieee80211_vif *=E2=80=99 [-Werror=3Dincompatible-pointer-types]
> >=20
> > Hi Jaehee,
> >=20
> > Probably, before changing any code which could be improved with the use=
 of=20
> > container_of(), you'd better see how this macro is used in other code t=
hat=20
> > works properly.
> >=20
> > Look at the following example. In drivers/dma/tegra20-apb-dma.c, we can=
 look=20
> > at a one line function called "to_tegra_dma_chan()":
> >=20
> > static inline struct tegra_dma_channel *to_tegra_dma_chan(struct dma_ch=
an *dc)
> > {
> >         return container_of(dc, struct tegra_dma_channel, dma_chan);
> > }
> >=20
> > "to_tegra_dma_chan()" takes a pointer to a "struct dma_chan" that is ca=
lled=20
> > "dc" and it returns a pointer to the "struct tegra_dma_channel" which e=
mbeds=20
> > the above-mentioned "struct dma_chan".=20
> >=20
> > Please take a look at the definition of "struct tegra_dma_channel". You=
'll=20
> > notice that it has a field of type "dma_chan" that is called "dma_chan"=
=20
> > (coincidentally the names of field and type are the same; this could co=
nfuse=20
> > you but you easily see that they are different entities):
> >=20
> > struct tegra_dma_channel {
> >         struct dma_chan dma_chan;
> >         ...
> > }
> >=20
> > How can "to_tegra_dma_chan()" return a pointer to the embedding "struct=
=20
> > tegra_dma_channel"?
> >=20
> > It uses cointainer_of(). The first argument of that macro is the pointe=
r=20
> > passed to the function ("struct dma_chan *dc"). The second argument is=
=20
> > the embedding "struct tegra_dma_channel". The third is the name of the=
=20
> > field (not the type) pointed by "dc".
> >=20
> > I hope it helps.
> >=20
> > Fabio
> >=20
> >
> Hi Fabio, Thank you for your explanation! I wanted to go over how I defin=
ed container_of() -- I think I am following the macros input correctly (see=
 my explanation below). Let me know if there's anything odd:
>=20
> As you've mentioned, the container_of() function contains first the point=
er, container struct that embeds the member, and the name of the member wit=
hin the struct.
>=20
> In my case, the first argument of the macro is the pointer vif which is f=
rom struct ieee80211_vif *vif.
> The second argument is the embedding structure struct ieee80211_vif.
> The third is the name of the field pointed by vif which is drv_priv (this=
 is a member within the struct ieee80211_vif.)
>=20
> I also found this example:
> https://github.com/open-sdr/openwifi/blob/b9b3abd35319afbe6475a268730b067=
72cef23a5/driver/sdr.c#L1742
> Their implementation seems similar. But they are setting the output of co=
ntainer of to struct ieee80211_vif -- this makes total sense because the po=
inter types of the container_of output and whatever we're setting it to sho=
uld match.
>=20
> I'm setting it to struct wfx_vif which doesn't match. The reason I did th=
is is so that I can follow the original code which seems to be type punning=
 ieee80211_vif into wfx_vif.
>=20
> (Attempt 1)
> So, to match, it should actually be:
> struct wfx_vif *wvif =3D (struct wfx_vif *)container_of(vif, struct ieee8=
0211_vif, drv_priv);
> But this gives an error:
>  error: static assertion failed: "pointer type mismatch in container_of()"
>=20
> (Attempt 2)
> Another thing I tried was
> struct ieee80211_vif *vif_container =3D container_of(vif, struct ieee8021=
1_vif, drv_priv);
> struct wfx_vif *wvif =3D (struct wfx_vif *)vif_container;
> Here, I was trying to set it to struct ieee80211_vif first before type pu=
nning it to struct wfx_vif.. but got the same error.
> error: static assertion failed: "pointer type mismatch in container_of()
>=20
> (Attempt 3):
> Then I tried:
> struct ieee80211_vif *vif_container =3D container_of((void *)vif, struct =
ieee80211_vif, drv_priv);
> struct wfx_vif *wvif =3D (struct wfx_vif *)vif_container;
>=20
> and now it's building without errors.
>=20
> But I'm still not sure if this is correct. I'm trying to understand it ri=
ght now.
> I wanted to convey my thought process but maybe I made it more confusing.=
 Let me know your thoughts!
>=20
> Thanks,
> Jaehee
>=20
Hi Jaehee,

A little premise: I haven't neither looked at the code you are trying to=20
change, nor at the struct ieee80211_vif and its members.=20

Instead I've only taken a look at the prototype of the function=20
wfx_add_interface(), which is:

int wfx_add_interface(struct ieee80211_hw *hw, struct ieee80211_vif *vif);

It is clear that "vif" is a pointer to a "struct ieee80211_vif".

You wrote the following:

"In my case, the first argument of the macro is the pointer vif which is=20
from struct ieee80211_vif *vif.".

Nit, pointers are addresses _to_ memory locations, not _from_ memory=20
locations. Besides. if vif is a pointer to a "struct ieee80211_vif" (as
the prototype says) how can it be a pointer to a member field of the
same "struct ieee80211_vif"?

And the you went on with this:

"The second argument is the embedding structure struct ieee80211_vif.
The third is the name of the field pointed by vif which is drv_priv=20
(this is a member within the struct ieee80211_vif.)"

^^^^^ here you write that "vif" is a pointer to a member within the struct =
ieeee80211_vif ^^^^^

Having said this, now I'm looking at "Attempt 3":

"struct ieee80211_vif *vif_container =3D container_of((void *)vif, struct i=
eee80211_vif, drv_priv);"

You are still using container_of() incorrectly. As you see, the function's=
=20
prototype says that "vif" is a pointer to a "struct ieee80211_vif".

Either "vif" is a pointer to the embedding structure (struct ieee80211_vif)
or it is a pointer to a member contained in the above struct :)=20

Instead you're still confusing members (fields, if you prefer) and embeddin=
g=20
structures.=20

The first parameter of container_of() must be a pointer to the third parame=
ter=20
(a member of the struct whose name is in the second parameter of that macro=
),=20
but you are still using a pointer to the second parameter (i.e., the struct=
 that contains "drv_priv" (I take your words for true when you say that "dr=
v_priv" is a member of=20
"struct ieee80211_vif" because I haven't checked).

As I said I don't want to read the code of wfx_add_interface() and I don't
want to say to you what has to be fixed. But you are still using container_=
of()
incorrectly and for the wrong purpose: the purpose of container_of() is to=
=20
return a pointer to the second parameter, while you have only the name of a
member and a pointer to that same member.

The fact that the code compiles only after casting the first argument to=20
"void *" is another strong hint that something is still wrong.

Please take your time to re-read the emails that Stefano and I sent to you.
I'm sure that you now have enough information to figure it out when and
how to use container_of()

Thanks,

=46abio


