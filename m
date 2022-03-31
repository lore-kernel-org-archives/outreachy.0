Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03521A2D
	for <outreachy@lists.linux.dev>; Thu, 31 Mar 2022 17:52:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1648749151;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=1IOBsgHzA9cC4h76fHVdPYeYkyl9xZbft+l2kASHsH0=;
	b=QgsFKJfKEvF2QHfdqEuBhVWaMkx15gOYh9alRWRvBrMpFj9B2RXBbiQrGsHLLBWN/yaQhz
	9MMrvQZNAa8cM/xBkQbl16KvttakA+Giz5rjp7b8T9E8cLiZCM7Qhv9FIiwsDggx0rmJvo
	tlVeNNvmPRycVxLxiN+3fwG6q/t0ED8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-660-0tX0u40tM9qlxGG8xPyPng-1; Thu, 31 Mar 2022 13:52:28 -0400
X-MC-Unique: 0tX0u40tM9qlxGG8xPyPng-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 78DBC1800DB7;
	Thu, 31 Mar 2022 17:52:27 +0000 (UTC)
Received: from maya.cloud.tilaa.com (unknown [10.40.208.6])
	by smtp.corp.redhat.com (Postfix) with ESMTP id EF5D05C26A;
	Thu, 31 Mar 2022 17:52:26 +0000 (UTC)
Date: Thu, 31 Mar 2022 19:52:12 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Jaehee Park <jhpark1013@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: patch idea for wfx
Message-ID: <20220331195212.7e25d12a@elisabeth>
In-Reply-To: <20220331141434.GA1104155@jaehee-ThinkPad-X1-Extreme>
References: <20220331141434.GA1104155@jaehee-ThinkPad-X1-Extreme>
Organization: Red Hat
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=sbrivio@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Hi Jaehee,

On Thu, 31 Mar 2022 10:14:34 -0400
Jaehee Park <jhpark1013@gmail.com> wrote:

> I was reading the wfx codebase yesterday and it seems like there are
> a lot of instances of "container_of()" structure which is specific to
> the linux kernel. I saw a "fixme" comment in the code that says that
> the container_of() structure is preferred and I wanted to tackle it.
> Here's the line with the fixme comment:
> https://github.com/SiliconLabs/wfx-linux-driver/blob/63952592e64d2ca5b4613ab5559ba40b73ef47e8/sta.c#L744
> 
> Maybe it's too big of a task though. What do you think?

At a glance, it doesn't look *that* big:

	~/net-next/drivers/staging/wfx$ grep "\->vif" * | wc -l
	49

...maybe spend a couple of hours on it and decide if it turns out to be
too complicated? I also can't evaluate so easily. :)

> (Side question: The wfx project is also in the staging/driver but I'm
> not seeing the linux/kernel/git/gregkh/staging repository anywhere on
> github -- I'm probably not understanding something basic here but
> shouldn't the staging directory be a subrepo or submodule within the
> linux kernel repo? ) 

Kernel development doesn't happen on Github: you see some repositories
on Github because they are provided as mirrors of the original
repositories, but the staging tree is here:
	https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/

By the way, staging is not a sub-repository of any sort, it's just
another tree, and merges (following pull requests) happen "between"
trees, this is an example:
	https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=dfdc1de64248b5e1024d8188aeaf0e59ec6cecd5

Note: the staging tree contains the whole kernel, not just staging
drivers. However, it's the place where development happens for staging
drivers. Let me know if this is clear enough ;)

Now, for the wfx driver itself: the Github repository hosts an
out-of-tree version of the driver, the reason is explained here:
	https://github.com/SiliconLabs/wfx-linux-driver#upstream-status

that is, provide users/hardware vendors with a simplified way to do
backports, meaning applying new changes to older kernel versions.

By the way, for some reason, wfx driver development actually seems to
happen here:
	https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.git/log/drivers/staging/wfx

(check the date of the latest change) rather than here:

	https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/log/drivers/staging/wfx

so I would suggest that you use the net-next tree in this case. Or,
even better, ask the maintainer about it.

> Now I'm trying to understand the wvif structure they are using in the
> functions. In their previous examples container_of() took in 3
> things: [1] work, [2] struct wfx_dev, and [3] the name. I'm refering
> to the man page for the container_of inputs. I'm not entirely sure
> why container_of structure is helpful. But this article seems to say
> it makes runtime faster:
> http://www.kroah.com/log/linux/container_of.html

Let's consider the example you found. You have, at the beginning of
that function:

        struct wfx_vif *wvif = (struct wfx_vif *)vif->drv_priv;

which means: get a pointer to the private data of the driver.

Here we have "vif", a representation of a generic WiFi interface
(struct ieee80211_vif), which contains a structure including
driver-specific data.

That is, the driver needs to associate to this interface some data that
is specific to this hardware, it can store and access it using drv_priv.

Look at the structure definition:
	https://elixir.bootlin.com/linux/latest/C/ident/ieee80211_vif

the drv_priv pointer is _contained_ in (not referenced by) that, more
generic, struct (see below).

Then:

        /* FIXME: prefer use of container_of() to get vif */
        wvif->vif = vif;

the vif in struct wfx_vif points "back" to the generic interface data.
Once this is set, whenever the driver needs to access that interface
data, it uses wvif->vif:

.-----------------------------------.
|  .------------------------------. |
'->| struct ieee80211_vif         | |
   |------------------------------| |
   | 1                            | |
   | 2                            | |
   |  .--------------------------.| |
   | 3| struct wfx_vif drv_priv   | |
   |  |---------------------------| |
   |  | ...                       | |
   |  |                           | |
   |  | struct ieee80211_vif *vif---'
   '------------------------------'

...but there's no need to have a pointer there! The compiler knows the
offset of drv_priv within a struct ieee80211_vif. In the example that's
"3", but it's actually 888 in my build:

	$ pahole drivers/staging/wfx/wfx.o | grep -A50 "^struct ieee80211_vif " | grep drv_priv
	u8                         drv_priv[] __attribute__((__aligned__(8))); /*   888     0 */

so, by substracting "3" (or, actually, 888) from the address of your
drv_priv, you already have a pointer to struct ieee80211_vif.

So far, this is just what Greg explained in that article. Why is it
"faster", then?

Well, in the current version with the pointer, the CPU will need to
1. load what's written at that location, and then 2. load the result.

Instead, container_of tells the CPU: you have the data at this point,
minus 888. That value is already in the code, you don't need step 1.

Well, step 1. itself isn't that slow, but skipping it probably helps
with prefetching:
	https://en.wikipedia.org/wiki/Cache_prefetching

> Another question I had has to do with testing. I understand we're
> building the kernel to check if the code-change compiles correctly
> (I've enabled the silicon labs driver in the menuconfig and saw that
> it builds successfully for basic changes). But for more complex
> changes, would it be a good idea to test it on the hardware -- after
> build, install the kernel package on an apu2 for example? I have a
> apu2 and I can buy a siliconlab wifi card to test it on there. 

Another possibility can also be to ask the maintainer, or on the
project mailing list, if somebody can test your changes.

If you switch to container_of(), and it builds properly, that's a very
good indication of correctness, but I would personally feel a bit more
confident if an actual functionality test was done.

> I'm brain-dumping ideas messily (sorry! please let me know what you'd
> recommend)

No no, it's appreciated!

> and I'm mostly just conveying my thought process. I am
> having trouble with IRC at the moment so I'm sending my thoughts
> here. 

Let us know if you need assistance with IRC troubles, by the way.

-- 
Stefano

