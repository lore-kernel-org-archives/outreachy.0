X-GM-THRID: 6947643199215108096
X-Received: by 2002:a2e:90c1:: with SMTP id o1mr16205992ljg.510.1617627043736;
        Mon, 05 Apr 2021 05:50:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:e86:: with SMTP id 128ls2010lfo.0.gmail; Mon, 05 Apr
 2021 05:50:41 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwtQf9OdAAC75/hyI/RgPJ/21hT8QuHeLpcGXhTyoj+ZLdTdwpxuxDQLEmN2eCc1tlItB60
X-Received: by 2002:a05:6512:3ac:: with SMTP id v12mr16612128lfp.285.1617627041859;
        Mon, 05 Apr 2021 05:50:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617627041; cv=none;
        d=google.com; s=arc-20160816;
        b=hpcf87zQK9XuOkJkwmP8aIR8wR03VM7ZkUz+UP6MtHY5JjJ3XI0JnqM+EwArVzy7e1
         THACV9y/ENeUhN46MSDck5FVFfVGejGqNFm9sq21qW+4q/jK7AwkA9Ot+yJR/o9hg7up
         t3opDtG9b4DzcPVUi2u/3T5CkXACFK196VecruCQwrFZXU2lu4Wkwwj5MjRkTBL682dS
         LREEvrwb2te/furpDh9vxP34AqzZ0BsC1OBfLqAIAlaoVPS250ZlzMn2D3DKRfpMmnCh
         iRTXIkplRlb6GSkiFrY93zLEBraJDWsN4Wvb5rmFiyR9nvJONLu1DKUiKTZgnF8WLs1l
         04Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=HlD8dyZLbyCWrB0j7m2gISJDBVEUoZLCehngniwWqPs=;
        b=H77rBhmTb0Jd2GjYgHD8gP74YjK5vR/93zJ8ntDZSpCXAQS49meiZKbDRxAsQ5D9DZ
         XD6y1B+Nmo0Kxs8xMGGCgu2kJjgcaDd3r3pNDjDy+0gMzf2YlZDt0aPSnOJww7YTKDNW
         b7i3ZwNfyvzMdeBIfo8i3DhA0bkHIjVetqvfzUZp0PT4N1DCqt8KqyrW8/PtoZDRhLdz
         bHizS1JYEHXO6cv6T7PYMsbUiForuQbUbxVlrI025HTb4Ou3ZkZMnmojFwQB524Q1nPS
         frRFQcxdkPkzS+eUTyliX0TOcHkoVonlQT3r2XHOLrk5LWjpI+hekNIKlT2aWi8YSRrL
         BoTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id b12si1112575lfv.7.2021.04.05.05.50.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Apr 2021 05:50:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AW0/W9K9m2SI584hitWhuk+FFdb1zdoIgy1kn?=
 =?us-ascii?q?xilNYDRIb8rdrdykmPQHyBP44QxhJ00Is9aGJaWGXDfg7pZz+4YcJvOPWwPhtW?=
 =?us-ascii?q?uuIuhZnO7f6hfnHDDz8fMY6Ld4f8FFeb/NJHVzkMqS2mKFOvk6xt3vysqVrMfY?=
 =?us-ascii?q?i0xgVAR7L5xnhj0WNi+/EldqAClKbKBJbaa0w8pcun6dfm4KZd6wHXkPU4H41q?=
 =?us-ascii?q?X2vbbrewQPCRJiyCTmt1yVwZr7FxTd4RsESTNIxt4ZgAv4ujf07KmirP23oyW0?=
 =?us-ascii?q?v1P71JhYlMDszdFOHqW36/Q9ETn0jxbtWYIJYdC/lQooq+Ki4ktCqrnxiionVv?=
 =?us-ascii?q?4e11rhOkmovB2o4AX7yTAo8XOn80OAmGDuu9aRfkNFN+NxwaxYbz7Q4A4Bpsth?=
 =?us-ascii?q?3OZq8guixuFqJCKFsiThwtDCEzFxjFa55VoDvIco/gZieLpbRr9NiIQVuGRSDZ?=
 =?us-ascii?q?cOHCjz9YAgF9JjBNvb459tAC6nRkGckGlz5dSmGk0pGBSLSFVqgL3w7xFm2F54?=
 =?us-ascii?q?0m4Rz4gnhXEC+JghD7lIjt60VZhApfVhTtIyZak4PfwGQse8Fyj1SQ/MWVjiR2?=
 =?us-ascii?q?jPJeUoO2/po5Wy27kt4fHvWpAZpaFC5Kj8bA=3D=3D?=
X-IronPort-AV: E=Sophos;i="5.81,306,1610406000"; 
   d="scan'208";a="501591579"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Apr 2021 14:50:41 +0200
Date: Mon, 5 Apr 2021 14:50:41 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: wlan-ng: correct formatting
 in cfg80211.c
In-Reply-To: <2363786.RpparQ0tlI@localhost.localdomain>
Message-ID: <alpine.DEB.2.22.394.2104051449520.2981@hadrien>
References: <20210405120349.12338-1-fmdefrancesco@gmail.com> <alpine.DEB.2.22.394.2104051410020.2981@hadrien> <2363786.RpparQ0tlI@localhost.localdomain>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 5 Apr 2021, Fabio M. De Francesco wrote:

> On Monday, April 5, 2021 2:10:50 PM CEST Julia Lawall wrote:
> >
> > On Mon, 5 Apr 2021, Fabio M. De Francesco wrote:
> >
> > > According to checkpatch message "CHECK: Lines should not end with a
> > > '('", fix formatting in cfg80211.c
> >
> > I'm not sure it's worth exceeding 80 characters in this way.
> >
> > julia
>
> Thanks, Julia. Now I understand that exceeding 80 characters is only allowed where it is strictly necessary (and those lines are not).

Yes.  Sometimes it is necessary to take the suggestions of checkpatch with
a grain of salt...  There might be another way of addressing the issue in
some cases.

julia

>
> Fabio
>
> >
> > >
> > > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > > ---
> > >  drivers/staging/wlan-ng/cfg80211.c | 6 ++----
> > >  1 file changed, 2 insertions(+), 4 deletions(-)
> > >
> > > diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
> > > index 759e475e303c..eda5b5a4e089 100644
> > > --- a/drivers/staging/wlan-ng/cfg80211.c
> > > +++ b/drivers/staging/wlan-ng/cfg80211.c
> > > @@ -324,8 +324,7 @@ static int prism2_scan(struct wiphy *wiphy,
> > >  		(i < request->n_channels) && i < ARRAY_SIZE(prism2_channels);
> > >  		i++)
> > >  		msg1.channellist.data.data[i] =
> > > -			ieee80211_frequency_to_channel(
> > > -				request->channels[i]->center_freq);
> > > +			ieee80211_frequency_to_channel(request->channels[i]->center_freq);
> > >  	msg1.channellist.data.len = request->n_channels;
> > >
> > >  	msg1.maxchanneltime.data = 250;
> > > @@ -478,8 +477,7 @@ static int prism2_connect(struct wiphy *wiphy, struct net_device *dev,
> > >  				goto exit;
> > >
> > >  			/* send key to driver */
> > > -			did = didmib_dot11smt_wepdefaultkeystable_key(
> > > -					sme->key_idx + 1);
> > > +			did = didmib_dot11smt_wepdefaultkeystable_key(sme->key_idx + 1);
> > >  			result = prism2_domibset_pstr32(wlandev,
> > >  							did, sme->key_len,
> > >  							(u8 *)sme->key);
> > > --
> > > 2.30.2
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20210405120349.12338-1-fmdefrancesco%40gmail.com.
> > >
> >
>
>
>
>
>

