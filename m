Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D87133D7
	for <outreachy@lists.linux.dev>; Wed,  6 Apr 2022 14:24:38 +0000 (UTC)
Received: by mail-qv1-f52.google.com with SMTP id f3so2311661qvz.10
        for <outreachy@lists.linux.dev>; Wed, 06 Apr 2022 07:24:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=Peb1Z7d7/fYRXkUwX76ZS6mdU2HIQmIi5NVycg4zauE=;
        b=a6XXjQzCAaLbLhOW7txeUaiTgrsBL2somqVOFGQqbJ76L76snmWE4UQ3Lw2OBDjGaG
         iaPHKVifZhFyNs/DOOb1i4iGq0DUbz2EdL1L5IN4q+wnLuFddhsqqsvW/DS71kJPhfM4
         R36dv559l8ODf9Gli3xUAgVzfgK+mbKDDvM2ELzNbegMA1t3PAdh9qGQYxX/kotFHrFG
         hTMnwjFFdosdkz8TxR4h9n3eKkjjSl/C3/KfUvgkHe0jf42QSoTvg5AOLALFcbP2BIvu
         rkVTxbYW9WPD4H3BozIF+2ak7zgIi3D7oPOcG85ir4gGqCO/ZvJqRg1cmvB4O7497NCE
         2G3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=Peb1Z7d7/fYRXkUwX76ZS6mdU2HIQmIi5NVycg4zauE=;
        b=t5bJvXKPN5pUEUOhrfoLqt8uVU/mHLAWt5QCgmc93PYgOI5dChAOi6sele6STYG+4c
         HP5Fs60e5BeizbQe7s2P4qNQRjdpVaXPXnEDSD+QENsWOYxhWEzqq1sCHv5AM43FL4XN
         0l3qyoPoMh/r4/9uZEGpsfKpDeDlQ17mdBJMDoqjSWDsKjWyepsGrF/Axiw+Z/vx7F9Q
         EYLnfy2jO/a3R30Yl6fe4I+Til189zYrmpV0YjUz8FuC5EOuNXmjB4XMpt1bUS4cXUD+
         TDulOo7udycO1j0H7tbpzrRr1N/mFymlk14UE/t/RWO20rmg2X3/DcwLhviz+fLcHdoh
         u6hg==
X-Gm-Message-State: AOAM532ekKzwADPv8C3+CAAneSlZBU7e+sAcrrzqQcgpD+RfbUg0El8e
	vNQetJAL5y448sBEGW+LpjzxLluRAZVrYg==
X-Google-Smtp-Source: ABdhPJwLgW52YA3U8y/XYQiyZhbbuzUr7Mq/fHz5LU1Ddl33q6swCumw/IZBtw9cYVsgr8xZase8WA==
X-Received: by 2002:a05:6214:5001:b0:441:2e9b:3997 with SMTP id jo1-20020a056214500100b004412e9b3997mr7671242qvb.103.1649255076855;
        Wed, 06 Apr 2022 07:24:36 -0700 (PDT)
Received: from jaehee-ThinkPad-X1-Extreme ([4.34.18.218])
        by smtp.gmail.com with ESMTPSA id o27-20020a05620a111b00b0067d5f359007sm9354000qkk.23.2022.04.06.07.24.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Apr 2022 07:24:36 -0700 (PDT)
Date: Wed, 6 Apr 2022 10:24:32 -0400
From: Jaehee Park <jhpark1013@gmail.com>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: Stefano Brivio <sbrivio@redhat.com>, outreachy@lists.linux.dev
Subject: Re: patch idea for wfx
Message-ID: <20220406142432.GA1113438@jaehee-ThinkPad-X1-Extreme>
References: <20220331141434.GA1104155@jaehee-ThinkPad-X1-Extreme>
 <20220401001216.727c2ef1@elisabeth>
 <20220406042821.GA989392@jaehee-ThinkPad-X1-Extreme>
 <4705777.GXAFRqVoOG@leap>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4705777.GXAFRqVoOG@leap>

On Wed, Apr 06, 2022 at 03:54:35PM +0200, Fabio M. De Francesco wrote:
> On mercoledì 6 aprile 2022 06:28:21 CEST Jaehee Park wrote:
> > -----Section 2-----
> > Here's my diff (below). I've implemented container_of() in function wfx_add_interface (to start).
> > - If I'm understanding this correctly, we're replacing the line
> > `struct wfx_vif *wvif = (struct wfx_vif *)vif->drv_priv`
> > and replacing it with
> > `struct wfx_vif *wvif = container_of(vif, struct ieee80211_vif, drv_priv)`
> > 
> > This is the error message I get:
> > ./include/linux/container_of.h:17:41: error: initialization of ‘struct wfx_vif *’ from incompatible pointer type ‘struct ieee80211_vif *’ [-Werror=incompatible-pointer-types]
> 
> Hi Jaehee,
> 
> Probably, before changing any code which could be improved with the use of 
> container_of(), you'd better see how this macro is used in other code that 
> works properly.
> 
> Look at the following example. In drivers/dma/tegra20-apb-dma.c, we can look 
> at a one line function called "to_tegra_dma_chan()":
> 
> static inline struct tegra_dma_channel *to_tegra_dma_chan(struct dma_chan *dc)
> {
>         return container_of(dc, struct tegra_dma_channel, dma_chan);
> }
> 
> "to_tegra_dma_chan()" takes a pointer to a "struct dma_chan" that is called 
> "dc" and it returns a pointer to the "struct tegra_dma_channel" which embeds 
> the above-mentioned "struct dma_chan". 
> 
> Please take a look at the definition of "struct tegra_dma_channel". You'll 
> notice that it has a field of type "dma_chan" that is called "dma_chan" 
> (coincidentally the names of field and type are the same; this could confuse 
> you but you easily see that they are different entities):
> 
> struct tegra_dma_channel {
>         struct dma_chan dma_chan;
>         ...
> }
> 
> How can "to_tegra_dma_chan()" return a pointer to the embedding "struct 
> tegra_dma_channel"?
> 
> It uses cointainer_of(). The first argument of that macro is the pointer 
> passed to the function ("struct dma_chan *dc"). The second argument is 
> the embedding "struct tegra_dma_channel". The third is the name of the 
> field (not the type) pointed by "dc".
> 
> I hope it helps.
> 
> Fabio
> 
>
Hi Fabio, Thank you for your explanation! I wanted to go over how I defined container_of() -- I think I am following the macros input correctly (see my explanation below). Let me know if there's anything odd:

As you've mentioned, the container_of() function contains first the pointer, container struct that embeds the member, and the name of the member within the struct.

In my case, the first argument of the macro is the pointer vif which is from struct ieee80211_vif *vif.
The second argument is the embedding structure struct ieee80211_vif.
The third is the name of the field pointed by vif which is drv_priv (this is a member within the struct ieee80211_vif.)

I also found this example:
https://github.com/open-sdr/openwifi/blob/b9b3abd35319afbe6475a268730b06772cef23a5/driver/sdr.c#L1742
Their implmentation seems similar. But they are setting the output of container of to struct ieee80211_vif -- this makes total sense because the pointer types of the container_of output and whatever we're setting it to should match.

I'm setting it to struct wfx_vif which doesn't match. The reason I did this is so that I can follow the original code which seems to be type punning ieee80211_vif into wfx_vif.

(Attempt 1)
So, to match, it should actually be:
struct wfx_vif *wvif = (struct wfx_vif *)container_of(vif, struct ieee80211_vif, drv_priv);
But this gives an error:
 error: static assertion failed: "pointer type mismatch in container_of()"

(Attempt 2)
Another thing I tried was
struct ieee80211_vif *vif_container = container_of(vif, struct ieee80211_vif, drv_priv);
struct wfx_vif *wvif = (struct wfx_vif *)vif_container;
Here, I was trying to set it to struct ieee80211_vif first before type punning it to struct wfx_vif.. but got the same error.
error: static assertion failed: "pointer type mismatch in container_of()

(Attempt 3):
Then I tried:
struct ieee80211_vif *vif_container = container_of((void *)vif, struct ieee80211_vif, drv_priv);
struct wfx_vif *wvif = (struct wfx_vif *)vif_container;

and now it's building without errors.

But I'm still not sure if this is correct. I'm trying to understand it right now.
I wanted to convey my thought process but maybe I made it more confusing. Let me know your thoughts!

Thanks,
Jaehee

