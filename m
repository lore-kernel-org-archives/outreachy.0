Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03C7CA4C
	for <outreachy@lists.linux.dev>; Thu, 31 Mar 2022 22:12:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1648764742;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5ywNPOixItCwgtLaWhB4rCstLBtOoIeIWk205IUF9Ik=;
	b=VKO615IcEn1ChDdkrUUg/LJZA6IayHBxi4L9roZCDvlyUvBpNGx4+ESw37dZPhGoEFV+Ax
	EU5hJntIO2tQaFI2XcoUUcOxsF+5MABolIr4+dW8TPXT5ux3PgIVApWVcy56NWwKKGhJA1
	jGSGNQMiVFwdBsZlM1mlD2/Y3oawzfg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-267-8GeJdQSHP36A3PrqayEIiA-1; Thu, 31 Mar 2022 18:12:21 -0400
X-MC-Unique: 8GeJdQSHP36A3PrqayEIiA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2C0C41080865;
	Thu, 31 Mar 2022 22:12:19 +0000 (UTC)
Received: from maya.cloud.tilaa.com (unknown [10.40.208.6])
	by smtp.corp.redhat.com (Postfix) with ESMTP id CBB135D9D5;
	Thu, 31 Mar 2022 22:12:18 +0000 (UTC)
Date: Fri, 1 Apr 2022 00:12:16 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Jaehee Park <jhpark1013@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: patch idea for wfx
Message-ID: <20220401001216.727c2ef1@elisabeth>
In-Reply-To: <20220331214733.GA1508153@jaehee-ThinkPad-X1-Extreme>
References: <20220331141434.GA1104155@jaehee-ThinkPad-X1-Extreme>
	<20220331195212.7e25d12a@elisabeth>
	<20220331214733.GA1508153@jaehee-ThinkPad-X1-Extreme>
Organization: Red Hat
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=sbrivio@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Thu, 31 Mar 2022 17:47:33 -0400
Jaehee Park <jhpark1013@gmail.com> wrote:

> [...]
>
> Ok so my understanding is: vif is an instance of the struct
> ieee80211_vif which is from the /net/mac80211.h in the linux kernel
> code and so the compiler knows the offset of drv_priv because it's
> defined within this generic struct.

Correct! Well, it's not an instance, it's just a reference to an
instance -- note that it's a pointer. Usually by "instance" one refers
to something more concrete (such as the storage for a given struct).

	struct ieee80211_vif vif <- instance!

	struct ieee80211_vif *vif -> hmm, you could call it an
				     instance, but might cause confusion

> This makes is so much clearer in my head; Thank you so much!! I
> didn't know about pahole. Such a neat tool!

You're welcome, I'm glad it's clear now!

> [...]
>
> Thank you Stefano for explanining contain_of() so clearly! To
> implement it, I think I need to implement work_struct from
> linux/workqueue.h because I see it's being used in container_of()
> defined in functions: wfx_cooling_timeout_work, wfx_beacon_loss_work,
> wfx_update_tim_work.

Hah, no, forget about that! It's just the very same construct but it
has little to do with what you want to change.

Take wfx_update_tim_work(): struct wfx_vif here is like struct
ieee80211_vif because it carries a struct work_struct, here, which is
like your struct wfx_wif:

	struct wfx_vif *wvif = container_of(work, struct wfx_vif, update_tim_work);

meaning:

- struct wfx_vif contains a struct work_struct, and you have a pointer
  to the inner struct ("work")

- "update_tim_work" is the name of the instance of struct work_struct
  inside struct wfx_vif

- from "work", take a pointer to the struct wfx_vif which contains it

> I'm not totally sure of my questions / what to ask here - maybe how
> does the kernel know that there is work and what work to queue?

http://www.makelinux.net/ldd3/chp-7-sect-6.shtml

...but it's unrelated with the issue at hand. :)

-- 
Stefano

