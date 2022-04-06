Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7AE417CA
	for <outreachy@lists.linux.dev>; Wed,  6 Apr 2022 04:28:25 +0000 (UTC)
Received: by mail-qt1-f172.google.com with SMTP id z19so2599982qtw.2
        for <outreachy@lists.linux.dev>; Tue, 05 Apr 2022 21:28:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=v3ODBzb7ld0ddiQQcxmXGvUh8IAwuLSWoIGBToz9rI4=;
        b=S4E23sJ2Rh6sUCNoBCE3ZAmIGqc4CU79xsBftV8CQlwhgmWojrB3Ogb/LN2rbnFOvQ
         WvUdGyg8LENBl9cZzViSA8nR47cDIAc7/vt919U7XIRsT7kbtzrfoUEF2zDRvCVlwlRy
         zstMsp4xYJvqT+FWuMIPjn0SKJOujtmH3PNi4s58TYXSMLaMNshakUzAajhCsXYieYq5
         CG1ruvBHY5oNPVKo53BjxHyFY+9WGLW8cTjqLfSOs3i3uNFq9G+rN4pObnE6S7hzvd6D
         tX4+9CJPu3XiaY0gQANvAG7qCcjjT/cyTVVaXgCyLnHUQlI8RsQU7qCy90zNdEdLXxLY
         ralw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=v3ODBzb7ld0ddiQQcxmXGvUh8IAwuLSWoIGBToz9rI4=;
        b=c+CMzD9ddq4vkRblZPBjlKyni6vp7/EMehJQ91+urm1rKvf4vhwCPQZmHQOgzAwFwD
         SA+qLDJJdnIgp8R+/GwvAsQL2H6nuxvvKGDX4TpifrBSC6vXBpJiAkwx6h7aGyKLcrlc
         g99Fmg+WfjboN46hlHwoDkwF4vvSqp/LMaX4xbvJe3y2sp6Obb7jECgDZlJ/OD6Y4JA9
         R/18wSdyXeMzTjqaS1VStS+ztCwzZeBPe5wLxyl24SzWlucpjJg59VI1fnaa+P6rYuFk
         prbE/Ape0IS0LTC9MuxSGO9ET8mRESKL/yhR0Sht/RJTXL4iIo9eb6o29ETmYl9qj2OQ
         fftQ==
X-Gm-Message-State: AOAM531DK++6IFZ64SJHnmORjG8oCgtUl0ua1fI5wOomqRIP3eQRkD6u
	jN/hIoQIqBe6wR2xGvA+9us=
X-Google-Smtp-Source: ABdhPJzaqKFd66F5FOLpw+KosCrUAiQ9nPrMcwAwcvmBv99yiARe5jYgAX1Aklr49k9p3plGslLjHA==
X-Received: by 2002:a05:622a:215:b0:2e1:cda3:e837 with SMTP id b21-20020a05622a021500b002e1cda3e837mr6118553qtx.538.1649219304566;
        Tue, 05 Apr 2022 21:28:24 -0700 (PDT)
Received: from jaehee-ThinkPad-X1-Extreme ([2607:fb90:5335:484d:75e3:f077:8656:6949])
        by smtp.gmail.com with ESMTPSA id w8-20020a05622a134800b002eb8401862bsm11939952qtk.34.2022.04.05.21.28.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Apr 2022 21:28:24 -0700 (PDT)
Date: Wed, 6 Apr 2022 00:28:21 -0400
From: Jaehee Park <jhpark1013@gmail.com>
To: Stefano Brivio <sbrivio@redhat.com>, jhpark1013@gmail.com
Cc: outreachy@lists.linux.dev
Subject: Re: patch idea for wfx
Message-ID: <20220406042821.GA989392@jaehee-ThinkPad-X1-Extreme>
References: <20220331141434.GA1104155@jaehee-ThinkPad-X1-Extreme>
 <20220331195212.7e25d12a@elisabeth>
 <20220331214733.GA1508153@jaehee-ThinkPad-X1-Extreme>
 <20220401001216.727c2ef1@elisabeth>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220401001216.727c2ef1@elisabeth>

On Fri, Apr 01, 2022 at 12:12:16AM +0200, Stefano Brivio wrote:
> On Thu, 31 Mar 2022 17:47:33 -0400
> Jaehee Park <jhpark1013@gmail.com> wrote:
> 
> > [...]
> >
> > Ok so my understanding is: vif is an instance of the struct
> > ieee80211_vif which is from the /net/mac80211.h in the linux kernel
> > code and so the compiler knows the offset of drv_priv because it's
> > defined within this generic struct.
> 
> Correct! Well, it's not an instance, it's just a reference to an
> instance -- note that it's a pointer. Usually by "instance" one refers
> to something more concrete (such as the storage for a given struct).
> 
> 	struct ieee80211_vif vif <- instance!
> 
> 	struct ieee80211_vif *vif -> hmm, you could call it an
> 				     instance, but might cause confusion
> 
> > This makes is so much clearer in my head; Thank you so much!! I
> > didn't know about pahole. Such a neat tool!
> 
> You're welcome, I'm glad it's clear now!
> 
> > [...]
> >
> > Thank you Stefano for explanining contain_of() so clearly! To
> > implement it, I think I need to implement work_struct from
> > linux/workqueue.h because I see it's being used in container_of()
> > defined in functions: wfx_cooling_timeout_work, wfx_beacon_loss_work,
> > wfx_update_tim_work.
> 
> Hah, no, forget about that! It's just the very same construct but it
> has little to do with what you want to change.
> 
> Take wfx_update_tim_work(): struct wfx_vif here is like struct
> ieee80211_vif because it carries a struct work_struct, here, which is
> like your struct wfx_wif:
> 
> 	struct wfx_vif *wvif = container_of(work, struct wfx_vif, update_tim_work);
> 
> meaning:
> 
> - struct wfx_vif contains a struct work_struct, and you have a pointer
>   to the inner struct ("work")
> 
> - "update_tim_work" is the name of the instance of struct work_struct
>   inside struct wfx_vif
> 
> - from "work", take a pointer to the struct wfx_vif which contains it
> 
> > I'm not totally sure of my questions / what to ask here - maybe how
> > does the kernel know that there is work and what work to queue?
> 
> http://www.makelinux.net/ldd3/chp-7-sect-6.shtml
> 
> ...but it's unrelated with the issue at hand. :)
> 
> -- 
> Stefano
>
Hi Stefano,

Sorry about the late reply! It's taking me a while to wrap my head around this! I think I'm slowly getting it, but I have a few questions. This email is long so here's an outline to make it a bit more readable:
Section 1: my current understanding (reiteration of what you had already explained)
Section 2: my implementation of container_of() and the error message
Section 3: my confusion about the different types (struct wfx_vif vs u8 drv_priv[])

-----Section 1-----
- We're implementing container_of() to get vif. we are doing so with container_of() which does two things: [1] it speeds up compilation because the container_of() saves steps that the cpu would have to take to retrieve data, [2] we don't have to define multipe pointers by setting it in code:
    - the code before: got a pointer to the drv_priv, then point back to the generic interface data (wvif->vif = vif;). So, another pointer is defind by the vif in struct wfx_vif to point to the struct ieee80211_vif interface.
    - after implementing container_of: we don't have to define another pointer. the compiler already has the pointer to the struct ieee80211_vif via offset of drv_priv! So all it needs to do is subtract the offset and you have the pointer.


-----Section 2-----
Here's my diff (below). I've implemented container_of() in function wfx_add_interface (to start).
- If I'm understanding this correctly, we're replacing the line
`struct wfx_vif *wvif = (struct wfx_vif *)vif->drv_priv`
and replacing it with
`struct wfx_vif *wvif = container_of(vif, struct ieee80211_vif, drv_priv)`

This is the error message I get:
./include/linux/container_of.h:17:41: error: initialization of ‘struct wfx_vif *’ from incompatible pointer type ‘struct ieee80211_vif *’ [-Werror=incompatible-pointer-types]


-----Section 3-----
So there is an incompatible pointer type error. I think to solve this error, I need to clarify this line:
struct wfx_vif *wvif = (struct wfx_vif *)vif->drv_priv; link below
Can you help me understand this line of code again?
https://github.com/SiliconLabs/wfx-linux-driver/blob/63952592e64d2ca5b4613ab5559ba40b73ef47e8/sta.c#L724

**Question: Are they punning raw bytes from drv_priv into the struct wfx_vif?**

So there's already data in the drv_priv, and this line of code is taking those raw bytes (u8 drv_priv[]) into the wfx_vif struct?

This is a very new concept to me and I wanted to ask if this is a correct thought:

- drv_priv: the bytes are in u8 array so whatever is in this array will be ordered in contiguous memory (https://elixir.bootlin.com/linux/latest/source/include/net/mac80211.h#L1756) where the __aligned is a compiler builtin that guarantees alignment.
- (struct wfx_vif *): The pointer seems to be of unsigned bytes (https://github.com/SiliconLabs/wfx-linux-driver/blob/63952592e64d2ca5b4613ab5559ba40b73ef47e8/wfx.h#L115)
- They are taking those raw bytes into the struct. (or the other way around?)

So maybe the solution would be to set the container_of() to struct ieee80211_vif to match the pointer type. And then afterwards pack that into struct wfx_vif? 

Let me know if my question doesn't make sense and I'm happy to get on a chat/call if it makes it easier.

Thanks!
Jaehee

-----container_of() implementation attempt-----
diff --git a/drivers/staging/wfx/sta.c b/drivers/staging/wfx/sta.c
index 03025ef7f1be..0aeb848f4164 100644
--- a/drivers/staging/wfx/sta.c
+++ b/drivers/staging/wfx/sta.c
@@ -689,7 +689,7 @@ int wfx_add_interface(struct ieee80211_hw *hw, struct ieee80211_vif *vif)
 {
 	int i;
 	struct wfx_dev *wdev = hw->priv;
-	struct wfx_vif *wvif = (struct wfx_vif *)vif->drv_priv;
+	struct wfx_vif *wvif = container_of(vif, struct ieee80211_vif, drv_priv);

 	vif->driver_flags |= IEEE80211_VIF_BEACON_FILTER |
 			     IEEE80211_VIF_SUPPORTS_UAPSD |
@@ -708,7 +708,7 @@ int wfx_add_interface(struct ieee80211_hw *hw, struct ieee80211_vif *vif)
 	}

 	/* FIXME: prefer use of container_of() to get vif */
-	wvif->vif = vif;
+	// wvif->vif = vif;
 	wvif->wdev = wdev;

 	wvif->link_id_map = 1; /* link-id 0 is reserved for multicast */


