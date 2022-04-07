Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C7817F3
	for <outreachy@lists.linux.dev>; Thu,  7 Apr 2022 01:57:49 +0000 (UTC)
Received: by mail-qt1-f180.google.com with SMTP id t7so6984591qta.10
        for <outreachy@lists.linux.dev>; Wed, 06 Apr 2022 18:57:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=/vC1HedW2WP2oUTEU9qhfcDgmKT3dmtCwtJCiolXwuQ=;
        b=ErRcmRMp9nMR4atjusx4jjkd4IPQNqyVDAe1TU0sV337zlpAJDrEfNHrjpHDPvGY//
         IAusFiWvQ1uhqPpy3ffekVVuvj43567gJe/flfrZS3Iulv0Ldqco2dh0xN3TWTrcZ3xu
         eOvMI60ZfUFoBzPzyS0LUuCAx8dqWgQsPmOe0lZ8voEXU8XzmWqdwRUvfoZxxF5O6q8T
         eTuUpDm+grWC7k0FEsE7m8z0hrY6EeZ8/HQ+hKVBI82Bx4X3zJFZgVcWn3LMLPeFMPg5
         vIBEx4r79nw72KhAqDgPUHNbTzZ8QgIuZO1YVH18KM3za9hCBuLsYuD5HAmsecnlbHgT
         sXFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=/vC1HedW2WP2oUTEU9qhfcDgmKT3dmtCwtJCiolXwuQ=;
        b=hr4/HwQqD6cdPa1AdhuOE7g3uyC9s4Yzj3WEMdyYKzS4jpZ1QRvkcsQlKrGwllm1qV
         1e8XJ3fVcR68pFu2n4uWwzrbzn8nub05/OKY0U2JH5rWeHJuxOfioyRyPcZfQvh8Gjpq
         JTtAbtjkPaOP3Azikh638Zz+LWPnYmT9gQBZ/13stk1vUghiZhfRHViPQWE15wcYb46y
         0VPdyJVoh/0HDRRmVDJCKJjLospREUVJ0s25XsTM/SEYSdGGkwHx+TPqAOeuwfSCX96P
         jViNdVSUrM86apVXuJKfunopi6rrPyo02nYshpcX9tc5nXZj5VJ+4VQcNUU2Fyv1QKph
         u5Yg==
X-Gm-Message-State: AOAM532L+/1/LQ7BOX9HnCsMKBt4ApIAtkCGbrmeJp9VxLIr1/pS2ow5
	u8L0wbcI/dZhr/t58xsAGDE=
X-Google-Smtp-Source: ABdhPJxshN2jhq8/pLXiZ1F6pB1dpuUaggvLkPwCj6fDIA/mP417mpx+XmYli2yc2+BK8XSrjIbtJA==
X-Received: by 2002:ac8:7dc3:0:b0:2e1:cfdc:1a28 with SMTP id c3-20020ac87dc3000000b002e1cfdc1a28mr10006264qte.459.1649296667893;
        Wed, 06 Apr 2022 18:57:47 -0700 (PDT)
Received: from jaehee-ThinkPad-X1-Extreme ([2607:fb90:5335:484d:fc70:59f:6d6c:d33a])
        by smtp.gmail.com with ESMTPSA id z6-20020ae9c106000000b0067d3b9ef387sm10736881qki.28.2022.04.06.18.57.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Apr 2022 18:57:47 -0700 (PDT)
Date: Wed, 6 Apr 2022 21:57:45 -0400
From: Jaehee Park <jhpark1013@gmail.com>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: Stefano Brivio <sbrivio@redhat.com>, outreachy@lists.linux.dev
Subject: Re: patch idea for wfx
Message-ID: <20220407015745.GA1618544@jaehee-ThinkPad-X1-Extreme>
References: <20220331141434.GA1104155@jaehee-ThinkPad-X1-Extreme>
 <4705777.GXAFRqVoOG@leap>
 <20220406142432.GA1113438@jaehee-ThinkPad-X1-Extreme>
 <1744943.TLkxdtWsSY@leap>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1744943.TLkxdtWsSY@leap>

On Wed, Apr 06, 2022 at 06:04:12PM +0200, Fabio M. De Francesco wrote:
> On mercoledì 6 aprile 2022 16:24:32 CEST Jaehee Park wrote:
> > On Wed, Apr 06, 2022 at 03:54:35PM +0200, Fabio M. De Francesco wrote:
> > > On mercoledì 6 aprile 2022 06:28:21 CEST Jaehee Park wrote:
> > > > -----Section 2-----
> > > > Here's my diff (below). I've implemented container_of() in function wfx_add_interface (to start).
> > > > - If I'm understanding this correctly, we're replacing the line
> > > > `struct wfx_vif *wvif = (struct wfx_vif *)vif->drv_priv`
> > > > and replacing it with
> > > > `struct wfx_vif *wvif = container_of(vif, struct ieee80211_vif, drv_priv)`
> > > > 
> > > > This is the error message I get:
> > > > ./include/linux/container_of.h:17:41: error: initialization of ‘struct wfx_vif *’ from incompatible pointer type ‘struct ieee80211_vif *’ [-Werror=incompatible-pointer-types]
> > > 
> > > Hi Jaehee,
> > > 
> > > Probably, before changing any code which could be improved with the use of 
> > > container_of(), you'd better see how this macro is used in other code that 
> > > works properly.
> > > 
> > > Look at the following example. In drivers/dma/tegra20-apb-dma.c, we can look 
> > > at a one line function called "to_tegra_dma_chan()":
> > > 
> > > static inline struct tegra_dma_channel *to_tegra_dma_chan(struct dma_chan *dc)
> > > {
> > >         return container_of(dc, struct tegra_dma_channel, dma_chan);
> > > }
> > > 
> > > "to_tegra_dma_chan()" takes a pointer to a "struct dma_chan" that is called 
> > > "dc" and it returns a pointer to the "struct tegra_dma_channel" which embeds 
> > > the above-mentioned "struct dma_chan". 
> > > 
> > > Please take a look at the definition of "struct tegra_dma_channel". You'll 
> > > notice that it has a field of type "dma_chan" that is called "dma_chan" 
> > > (coincidentally the names of field and type are the same; this could confuse 
> > > you but you easily see that they are different entities):
> > > 
> > > struct tegra_dma_channel {
> > >         struct dma_chan dma_chan;
> > >         ...
> > > }
> > > 
> > > How can "to_tegra_dma_chan()" return a pointer to the embedding "struct 
> > > tegra_dma_channel"?
> > > 
> > > It uses cointainer_of(). The first argument of that macro is the pointer 
> > > passed to the function ("struct dma_chan *dc"). The second argument is 
> > > the embedding "struct tegra_dma_channel". The third is the name of the 
> > > field (not the type) pointed by "dc".
> > > 
> > > I hope it helps.
> > > 
> > > Fabio
> > > 
> > >
> > Hi Fabio, Thank you for your explanation! I wanted to go over how I defined container_of() -- I think I am following the macros input correctly (see my explanation below). Let me know if there's anything odd:
> > 
> > As you've mentioned, the container_of() function contains first the pointer, container struct that embeds the member, and the name of the member within the struct.
> > 
> > In my case, the first argument of the macro is the pointer vif which is from struct ieee80211_vif *vif.
> > The second argument is the embedding structure struct ieee80211_vif.
> > The third is the name of the field pointed by vif which is drv_priv (this is a member within the struct ieee80211_vif.)
> > 
> > I also found this example:
> > https://github.com/open-sdr/openwifi/blob/b9b3abd35319afbe6475a268730b06772cef23a5/driver/sdr.c#L1742
> > Their implementation seems similar. But they are setting the output of container of to struct ieee80211_vif -- this makes total sense because the pointer types of the container_of output and whatever we're setting it to should match.
> > 
> > I'm setting it to struct wfx_vif which doesn't match. The reason I did this is so that I can follow the original code which seems to be type punning ieee80211_vif into wfx_vif.
> > 
> > (Attempt 1)
> > So, to match, it should actually be:
> > struct wfx_vif *wvif = (struct wfx_vif *)container_of(vif, struct ieee80211_vif, drv_priv);
> > But this gives an error:
> >  error: static assertion failed: "pointer type mismatch in container_of()"
> > 
> > (Attempt 2)
> > Another thing I tried was
> > struct ieee80211_vif *vif_container = container_of(vif, struct ieee80211_vif, drv_priv);
> > struct wfx_vif *wvif = (struct wfx_vif *)vif_container;
> > Here, I was trying to set it to struct ieee80211_vif first before type punning it to struct wfx_vif.. but got the same error.
> > error: static assertion failed: "pointer type mismatch in container_of()
> > 
> > (Attempt 3):
> > Then I tried:
> > struct ieee80211_vif *vif_container = container_of((void *)vif, struct ieee80211_vif, drv_priv);
> > struct wfx_vif *wvif = (struct wfx_vif *)vif_container;
> > 
> > and now it's building without errors.
> > 
> > But I'm still not sure if this is correct. I'm trying to understand it right now.
> > I wanted to convey my thought process but maybe I made it more confusing. Let me know your thoughts!
> > 
> > Thanks,
> > Jaehee
> > 
> Hi Jaehee,
> 
> A little premise: I haven't neither looked at the code you are trying to 
> change, nor at the struct ieee80211_vif and its members. 
> 
> Instead I've only taken a look at the prototype of the function 
> wfx_add_interface(), which is:
> 
> int wfx_add_interface(struct ieee80211_hw *hw, struct ieee80211_vif *vif);
> 
> It is clear that "vif" is a pointer to a "struct ieee80211_vif".
> 
> You wrote the following:
> 
> "In my case, the first argument of the macro is the pointer vif which is 
> from struct ieee80211_vif *vif.".
> 
> Nit, pointers are addresses _to_ memory locations, not _from_ memory 
> locations. Besides. if vif is a pointer to a "struct ieee80211_vif" (as
> the prototype says) how can it be a pointer to a member field of the
> same "struct ieee80211_vif"?
> 
> And the you went on with this:
> 
> "The second argument is the embedding structure struct ieee80211_vif.
> The third is the name of the field pointed by vif which is drv_priv 
> (this is a member within the struct ieee80211_vif.)"
> 
> ^^^^^ here you write that "vif" is a pointer to a member within the struct ieeee80211_vif ^^^^^
> 
> Having said this, now I'm looking at "Attempt 3":
> 
> "struct ieee80211_vif *vif_container = container_of((void *)vif, struct ieee80211_vif, drv_priv);"
> 
> You are still using container_of() incorrectly. As you see, the function's 
> prototype says that "vif" is a pointer to a "struct ieee80211_vif".
> 
> Either "vif" is a pointer to the embedding structure (struct ieee80211_vif)
> or it is a pointer to a member contained in the above struct :) 
> 
> Instead you're still confusing members (fields, if you prefer) and embedding 
> structures. 
> 
> The first parameter of container_of() must be a pointer to the third parameter 
> (a member of the struct whose name is in the second parameter of that macro), 
> but you are still using a pointer to the second parameter (i.e., the struct that contains "drv_priv" (I take your words for true when you say that "drv_priv" is a member of 
> "struct ieee80211_vif" because I haven't checked).
> 
> As I said I don't want to read the code of wfx_add_interface() and I don't
> want to say to you what has to be fixed. But you are still using container_of()
> incorrectly and for the wrong purpose: the purpose of container_of() is to 
> return a pointer to the second parameter, while you have only the name of a
> member and a pointer to that same member.
> 
> The fact that the code compiles only after casting the first argument to 
> "void *" is another strong hint that something is still wrong.
> 
> Please take your time to re-read the emails that Stefano and I sent to you.
> I'm sure that you now have enough information to figure it out when and
> how to use container_of()
> 
> Thanks,
> 
> Fabio
> 
>
Thanks for helping! I sorted it out through on irc; the container_of() inputs have been corrected.

