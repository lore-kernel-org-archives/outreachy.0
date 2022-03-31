Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DED3BA4C
	for <outreachy@lists.linux.dev>; Thu, 31 Mar 2022 21:47:39 +0000 (UTC)
Received: by mail-qt1-f169.google.com with SMTP id v2so707540qtc.5
        for <outreachy@lists.linux.dev>; Thu, 31 Mar 2022 14:47:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=owBbYy/4AU/VruKxnWf9mi1ZYxEMOz8C+F1MekbmMlw=;
        b=lXgqdGQW9KqHfE5BcFTp4Ip1odEWuGp1IJeSXDYNRQftUy3GZ+AvmF/xKxPMPJ0Pia
         e7eU7rBFnQrHrVAykycnul+FDzPS7lNjKc5l7d++BCEA4KP2qXU29yeidndO1qaW4HNa
         RrdTQbDZQ1bL7xybI8/3/RiR3BTXLbZJewAptS+yjr9j79g4MUmYqNq1QzPhDrGCVFAm
         LQSOfIZFkTOXi0j4uYVfqyYzaPjpZLblgmj/6HEFL3BCOzSsNRJtSudYqi8O+krlz7+C
         Sjiz2w980QQTNpm399f/0tbz0Snthmd51A/MbfUYTFX+u5XtvTPqRI64dkj04j/JfWrJ
         tkhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=owBbYy/4AU/VruKxnWf9mi1ZYxEMOz8C+F1MekbmMlw=;
        b=Phs2KuEPjG7NFlRYGWSmAacV/UVfc1N3jOsxifu3GHqkte3hrozscUl2PLIpi40DBf
         Zs+JGz4lyz97H//xfhLEKjG0YuhvSBD4R1Kih3R2G89CRwwfcDFB19tlDw4Y2rgyvjEU
         zip/auAsex8DuGoiKqTZGciv3+HohEOh+XGuNwZ4gzMrGl13DxnWgTyo08XYhPcYLTKD
         BmmcGp5Ku+pZCpg2t0cqwvLVSgaPa1nF7Jy2XZySEifU2wuELVytB3M7Ns9iSQrHUigC
         BD3T+v9fm0bCPFwG1TNS8YUXsQZq47GgLoRjy8qUqCtRcLroTAGLUhUtXDDpCYupPiD0
         vGHQ==
X-Gm-Message-State: AOAM533uNdln/x6cI7RCkpZptOzgPutUNurCd1Xu/lbMWnbs6YBG3bsh
	pRCSdnHMdE5XWqnNcejHipwV2MW2ID4kZQ==
X-Google-Smtp-Source: ABdhPJwQfshnqONN74hphJt8Zr6UkUXRLiOFlJzR5N8KEdr6jJ80gJl1Ny62pPcaS9gHrCKwIWwEqA==
X-Received: by 2002:ac8:7e82:0:b0:2eb:8ebd:6f3f with SMTP id w2-20020ac87e82000000b002eb8ebd6f3fmr6238037qtj.79.1648763258570;
        Thu, 31 Mar 2022 14:47:38 -0700 (PDT)
Received: from jaehee-ThinkPad-X1-Extreme ([4.34.18.218])
        by smtp.gmail.com with ESMTPSA id x6-20020ac86b46000000b002e02be9c0easm333979qts.69.2022.03.31.14.47.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Mar 2022 14:47:37 -0700 (PDT)
Date: Thu, 31 Mar 2022 17:47:33 -0400
From: Jaehee Park <jhpark1013@gmail.com>
To: Stefano Brivio <sbrivio@redhat.com>
Cc: outreachy@lists.linux.dev
Subject: Re: patch idea for wfx
Message-ID: <20220331214733.GA1508153@jaehee-ThinkPad-X1-Extreme>
References: <20220331141434.GA1104155@jaehee-ThinkPad-X1-Extreme>
 <20220331195212.7e25d12a@elisabeth>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220331195212.7e25d12a@elisabeth>

On Thu, Mar 31, 2022 at 07:52:12PM +0200, Stefano Brivio wrote:
> Hi Jaehee,
> 
> On Thu, 31 Mar 2022 10:14:34 -0400
> Jaehee Park <jhpark1013@gmail.com> wrote:
> 
> > I was reading the wfx codebase yesterday and it seems like there are
> > a lot of instances of "container_of()" structure which is specific to
> > the linux kernel. I saw a "fixme" comment in the code that says that
> > the container_of() structure is preferred and I wanted to tackle it.
> > Here's the line with the fixme comment:
> > https://github.com/SiliconLabs/wfx-linux-driver/blob/63952592e64d2ca5b4613ab5559ba40b73ef47e8/sta.c#L744
> > 
> > Maybe it's too big of a task though. What do you think?
> 
> At a glance, it doesn't look *that* big:
> 
> 	~/net-next/drivers/staging/wfx$ grep "\->vif" * | wc -l
> 	49
> 
> ...maybe spend a couple of hours on it and decide if it turns out to be
> too complicated? I also can't evaluate so easily. :)
> 
> > (Side question: The wfx project is also in the staging/driver but I'm
> > not seeing the linux/kernel/git/gregkh/staging repository anywhere on
> > github -- I'm probably not understanding something basic here but
> > shouldn't the staging directory be a subrepo or submodule within the
> > linux kernel repo? ) 
> 
> Kernel development doesn't happen on Github: you see some repositories
> on Github because they are provided as mirrors of the original
> repositories, but the staging tree is here:
> 	https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/
> 
> By the way, staging is not a sub-repository of any sort, it's just
> another tree, and merges (following pull requests) happen "between"
> trees, this is an example:
> 	https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=dfdc1de64248b5e1024d8188aeaf0e59ec6cecd5
> 
> Note: the staging tree contains the whole kernel, not just staging
> drivers. However, it's the place where development happens for staging
> drivers. Let me know if this is clear enough ;)
> 

This makes a lot of sense. Thank you!

> Now, for the wfx driver itself: the Github repository hosts an
> out-of-tree version of the driver, the reason is explained here:
> 	https://github.com/SiliconLabs/wfx-linux-driver#upstream-status
> 
> that is, provide users/hardware vendors with a simplified way to do
> backports, meaning applying new changes to older kernel versions.
> 
> By the way, for some reason, wfx driver development actually seems to
> happen here:
> 	https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.git/log/drivers/staging/wfx
> 

Good to know!

> (check the date of the latest change) rather than here:
> 
> 	https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/log/drivers/staging/wfx
> 
> so I would suggest that you use the net-next tree in this case. Or,
> even better, ask the maintainer about it.
> 
> > Now I'm trying to understand the wvif structure they are using in the
> > functions. In their previous examples container_of() took in 3
> > things: [1] work, [2] struct wfx_dev, and [3] the name. I'm refering
> > to the man page for the container_of inputs. I'm not entirely sure
> > why container_of structure is helpful. But this article seems to say
> > it makes runtime faster:
> > http://www.kroah.com/log/linux/container_of.html
> 
> Let's consider the example you found. You have, at the beginning of
> that function:
> 
>         struct wfx_vif *wvif = (struct wfx_vif *)vif->drv_priv;
> 
> which means: get a pointer to the private data of the driver.
> 
> Here we have "vif", a representation of a generic WiFi interface
> (struct ieee80211_vif), which contains a structure including
> driver-specific data.
> 
> That is, the driver needs to associate to this interface some data that
> is specific to this hardware, it can store and access it using drv_priv.
> 
> Look at the structure definition:
> 	https://elixir.bootlin.com/linux/latest/C/ident/ieee80211_vif
> 
> the drv_priv pointer is _contained_ in (not referenced by) that, more
> generic, struct (see below).
> 
> Then:
> 
>         /* FIXME: prefer use of container_of() to get vif */
>         wvif->vif = vif;
> 
> the vif in struct wfx_vif points "back" to the generic interface data.
> Once this is set, whenever the driver needs to access that interface
> data, it uses wvif->vif:
> 
> .-----------------------------------.
> |  .------------------------------. |
> '->| struct ieee80211_vif         | |
>    |------------------------------| |
>    | 1                            | |
>    | 2                            | |
>    |  .--------------------------.| |
>    | 3| struct wfx_vif drv_priv   | |
>    |  |---------------------------| |
>    |  | ...                       | |
>    |  |                           | |
>    |  | struct ieee80211_vif *vif---'
>    '------------------------------'
> 
> ...but there's no need to have a pointer there! The compiler knows the
> offset of drv_priv within a struct ieee80211_vif. In the example that's
> "3", but it's actually 888 in my build:
> 
> 	$ pahole drivers/staging/wfx/wfx.o | grep -A50 "^struct ieee80211_vif " | grep drv_priv
> 	u8                         drv_priv[] __attribute__((__aligned__(8))); /*   888     0 */
> 
> so, by substracting "3" (or, actually, 888) from the address of your
> drv_priv, you already have a pointer to struct ieee80211_vif.

Ok so my understanding is: vif is an instance of the struct ieee80211_vif which is from the /net/mac80211.h in the linux kernel code and so the compiler knows the offset of drv_priv because it's defined within this generic struct.

This makes is so much clearer in my head; Thank you so much!! I didn't know about pahole. Such a neat tool!

> 
> So far, this is just what Greg explained in that article. Why is it
> "faster", then?
> 
> Well, in the current version with the pointer, the CPU will need to
> 1. load what's written at that location, and then 2. load the result.
> 
> Instead, container_of tells the CPU: you have the data at this point,
> minus 888. That value is already in the code, you don't need step 1.
> 
> Well, step 1. itself isn't that slow, but skipping it probably helps
> with prefetching:
> 	https://en.wikipedia.org/wiki/Cache_prefetching
> 
> > Another question I had has to do with testing. I understand we're
> > building the kernel to check if the code-change compiles correctly
> > (I've enabled the silicon labs driver in the menuconfig and saw that
> > it builds successfully for basic changes). But for more complex
> > changes, would it be a good idea to test it on the hardware -- after
> > build, install the kernel package on an apu2 for example? I have a
> > apu2 and I can buy a siliconlab wifi card to test it on there. 
> 
> Another possibility can also be to ask the maintainer, or on the
> project mailing list, if somebody can test your changes.
> 
> If you switch to container_of(), and it builds properly, that's a very
> good indication of correctness, but I would personally feel a bit more
> confident if an actual functionality test was done.
> 
> > I'm brain-dumping ideas messily (sorry! please let me know what you'd
> > recommend)
> 
> No no, it's appreciated!
> 
> > and I'm mostly just conveying my thought process. I am
> > having trouble with IRC at the moment so I'm sending my thoughts
> > here. 
> 
> Let us know if you need assistance with IRC troubles, by the way.
> 
> -- 
> Stefano
> 

Thank you Stefano for explanining contain_of() so clearly! To implement it, I think I need to implement work_struct from linux/workqueue.h because I see it's being used in container_of() defined in functions: wfx_cooling_timeout_work, wfx_beacon_loss_work, wfx_update_tim_work.
I'm not totally sure of my questions / what to ask here - maybe how does the kernel know that there is work and what work to queue? My questions aren't clear even to me so I need to do more research into mac80211 subsystem's hardware handling. I'll try to ask again in a few hours :)

Thanks!
Jaehee ("Jay-hee")
