X-GM-THRID: 6529221119652659200
X-Received: by 10.28.212.200 with SMTP id l191mr682194wmg.9.1520283802991;
        Mon, 05 Mar 2018 13:03:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.184.114 with SMTP id u47ls4635072wrf.10.gmail; Mon, 05 Mar
 2018 13:03:21 -0800 (PST)
X-Google-Smtp-Source: AG47ELtvvppNOeL5U2uxiY0r52VNZqBQRQMlG2LhmV5YQ4n8Z95g4Ue6NOnvX/Km3MzuPRDXJzyt
X-Received: by 10.223.155.145 with SMTP id d17mr1521681wrc.30.1520283801825;
        Mon, 05 Mar 2018 13:03:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520283801; cv=none;
        d=google.com; s=arc-20160816;
        b=c+ZokjlWmstBYblZ8wXWLIX0okmeTwzD8YrFT0DX/8V2Y7Kl3BVndSp2mDpq1nZF4X
         AjPUkewPTU2pr0nAe/WloZRb5x1qH1hgS1Tbbd4Rpdp7M1W06bmttgF/UhW6It4L/oF0
         /NJx5/HUE6nrzOHXFJ8E6RmSpENna04DS+vXsqklzlI4xpOFcC+1SD4HLNANs8LYMkAZ
         iE5jpYHg6OCnsssdPZiknhdfUcVGbsXhXInNCt4HSKxEYMTIfyKjVaxQ39zDEjq1UFfj
         Hg84qbBLnGLOL8vflx3GTbPC8Q0wAV2jU3WuiGCCKJqLv7tUz2WdZAkLcDRBuTV8F+Av
         uQ2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=UA00/zv9aVxKRvm532Psfk/jDwfjQCjv9SqImNS2eig=;
        b=z9aGFDOYwaA2FXmpg7gh6uzVRe9UtBskfK6q2aEBrEubtlBdvhq4EJhHnXQFHixr/q
         ldhNl0oqsR0NFWDA1JouzF8k1CG/0KXTE8U7He7rsD1ZnZd8wHgVCBjfOkk1XoJAIodB
         PR59IenbQqTyGJ7kYMXMtVAdJnpLWWTKXQPSlODJlVuEje0VaNc0Da9U1m2qnZUU5rEm
         vgxTvFvrf2OmUdRiYX0U6f5/VZlg/1126ozk9BJAHSSPpeK8BZrDPIUstLv5wNH6j9v9
         00AvsP7N9ToacRPRMLkwm5XyaoNJm0vQ9QW2azYyxa12k067DVZ5pyREM465dBFjc3Qm
         n/uw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id k16si233069wrf.2.2018.03.05.13.03.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Mar 2018 13:03:21 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,428,1515452400"; 
   d="scan'208";a="316528854"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Mar 2018 22:03:21 +0100
Date: Mon, 5 Mar 2018 22:03:20 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: Dan Carpenter <dan.carpenter@oracle.com>, 
    Greg KH <gregkh@linuxfoundation.org>, 
    driverdevel <devel@driverdev.osuosl.org>, 
    outreachy-kernel@googlegroups.com, LKML <linux-kernel@vger.kernel.org>
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: irda: Replace printk()
 with appropriate net_*macro_ratelimited()
In-Reply-To: <CA+XqjF9tBqpgp7ymQOAWeJHm1hPd6w01u3ZVS8ozq4JuoBNSEg@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1803052203001.2763@hadrien>
References: <20180304223205.GA31416@seema-Inspiron-15-3567> <20180305100345.v6ajs7vdgzmwu5x4@mwanda> <CA+XqjF9tBqpgp7ymQOAWeJHm1hPd6w01u3ZVS8ozq4JuoBNSEg@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1001131651-1520283801=:2763"

--8323329-1001131651-1520283801=:2763
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Mon, 5 Mar 2018, Arushi Singhal wrote:

>
>
> On Mon, Mar 5, 2018 at 3:33 PM, Dan Carpenter <dan.carpenter@oracle.com> wrote:
>       On Mon, Mar 05, 2018 at 04:02:06AM +0530, Arushi Singhal wrote:
>       > Replace printk having a log level with the appropriate
>       > net_*macro_ratelimited.
>       > It's better to use actual device name as a prefix in error messages.
>       > Indentation is also changed, to fix the  checkpatch issue if line is not
>       > exceding 80 characters.
>       >
>       > Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
>       > ---
>       >  .../rtl8192u/ieee80211/ieee80211_crypt_ccmp.c      | 22 +++++++++++-----------
>       >  1 file changed, 11 insertions(+), 11 deletions(-)
>       >
>       > diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
>       > index e6648f7..200fe5f 100644
>       > --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
>       > +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
>       > @@ -73,7 +73,7 @@ static void *ieee80211_ccmp_init(int key_idx)
>       >
>       >       priv->tfm = (void *)crypto_alloc_cipher("aes", 0, CRYPTO_ALG_ASYNC);
>       >       if (IS_ERR(priv->tfm)) {
>       > -             printk(KERN_DEBUG "ieee80211_crypt_ccmp: could not allocate crypto API aes\n");
>       > +             net_dbg_ratelimited("ieee80211_crypt_ccmp: could not allocate crypto API aes\n");
>
>
>       This should probably just be deleted.
>
> Hello Dan
> Why we should make this change?
> According to me it's use here to print debug message.
> Wanted to know more about your thought on this.
>
>       >               priv->tfm = NULL;
>       >               goto fail;
>       >       }
>       > @@ -276,22 +276,22 @@ static int ieee80211_ccmp_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
>       >       keyidx = pos[3];
>       >       if (!(keyidx & (1 << 5))) {
>       >               if (net_ratelimit()) {
>       > -                     printk(KERN_DEBUG "CCMP: received packet without ExtIV flag from %pM\n",
>       > -                             hdr->addr2);
>       > +                     net_dbg_ratelimited("CCMP: received packet without ExtIV flag from %pM\n",
>       > +                                         hdr->addr2);
>       >               }
>
>       The "if (net_ratelimit()) " already means the message is ratelimited so
>       it's net_dbg() ok?  I think so, but I've never looked at this before.
>
>  
> net_dbg() is an implicit declaration of a function. So we can't do this change.

Perhaps you can add the header file that declares net_dbg.

julia
--8323329-1001131651-1520283801=:2763--

