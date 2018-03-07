X-GM-THRID: 6530150669896122368
X-Received: by 10.46.67.147 with SMTP id z19mr1435866lje.24.1520419939136;
        Wed, 07 Mar 2018 02:52:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.88.85 with SMTP id x21ls154484ljd.2.gmail; Wed, 07 Mar 2018
 02:52:17 -0800 (PST)
X-Google-Smtp-Source: AG47ELsGpW9AdBbTYgrm/YfsW5NSGjjfK9o9MP1sM5e7oU9JsKjEiG9qsukSbUOBfc1w7Vc2eaJE
X-Received: by 10.46.129.206 with SMTP id s14mr1492177ljg.9.1520419937809;
        Wed, 07 Mar 2018 02:52:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520419937; cv=none;
        d=google.com; s=arc-20160816;
        b=utsyHKG4s9J1+/AvntTuRnUPeYj4vgaH6hz4Yf+yUXK4sSTWboFVQxVPfsm0MaE/7J
         Z5345yNJ1H6oQE/XRdQ2kxy76A3Q3qH39IJetJ3UTudTw50o9E/fQUJLxAyaZwG9GjZE
         G7x/hrw4SJrV6B9N+a1vN4HA+ADvsaXcR6ZyvmX2UGzedXeEDh/k2m0VCYyygIiLlzCi
         I9RjUIl9TqcnI9qCAsYjUa5Z3+h+HnUqpwA2QacQ26vOXrB0sea9dwxzvpxD5rkL63uz
         b4v73dJ1Op6iW6AWb9uwDzgvqfDQzhUlgLli0t23dSqr2BEMZWjhzdo48eDmGnk8DnvY
         o5oA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=C+zGrAEdD6PjCVmBa+BrJaAJDwoegRIYxVyKO2IOlvQ=;
        b=gpo+4IjxhsB5w5/12QCps5EeyXNB8i5zVsYY7fm3GQMnVfsxUXNmwz8adLCfb2AyA/
         ihsLVKTght35BVQvOKxx56HW1urdxKiinbFijSYVNb/pUKJ1/44U7v29QsZwS+frhCO2
         g/pi4javSIQ8QpgY2om7cwx7K3Ix2KtbtYGtAWBiQscivEwDPiiKiyNOnrXU+zMd8v8h
         DHeavdx2AJsWgelbWglzZFDUtfm6FPskLmTHkiL0WAji99aXYIPrtP5VAG9qapaPoxi4
         aUeCtJh4CvpiHgl9Ze/mri4qPR4WScC28SzsNV4dOuxfcIoBsbG5mOdNei265IvO49Od
         28ZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id j4si685901lja.1.2018.03.07.02.52.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Mar 2018 02:52:17 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,435,1515452400"; 
   d="scan'208";a="316830180"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Mar 2018 11:52:17 +0100
Date: Wed, 7 Mar 2018 11:52:16 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Dan Carpenter <dan.carpenter@oracle.com>
cc: Arushi Singhal <arushisinghal19971997@gmail.com>, 
    gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    outreachy-kernel@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] Re: [PATCH v3] staging: rtl8192u: Replace
 printk() with more standardize output format.
In-Reply-To: <20180307104741.mdy2wa7hplfwxmb3@mwanda>
Message-ID: <alpine.DEB.2.20.1803071151080.3361@hadrien>
References: <20180307103908.GA19612@seema-Inspiron-15-3567> <20180307104741.mdy2wa7hplfwxmb3@mwanda>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 7 Mar 2018, Dan Carpenter wrote:

> On Wed, Mar 07, 2018 at 04:09:09PM +0530, Arushi Singhal wrote:
> > @@ -276,22 +276,22 @@ static int ieee80211_ccmp_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
> >  	keyidx = pos[3];
> >  	if (!(keyidx & (1 << 5))) {
> >  		if (net_ratelimit()) {
> > -			printk(KERN_DEBUG "CCMP: received packet without ExtIV flag from %pM\n",
> > -				hdr->addr2);
> > +			netdev_dbg(skb->dev, "CCMP: received packet without ExtIV flag from %pM\n",
> > +				   hdr->addr2);
> >  		}
>
> I'm sorry.  I really hate to do this to you...  But the right thing here
> is to use net_dbg_ratelimited() but get rid of the if (net_ratelimit())
> check.  So it looks like this:
>
> 	if (!(keyidx & (1 << 5))) {
> 		net_dbg_ratelimited(skb->dev,
> 				    "CCMP: received packet without ExtIV flag from %pM\n",
> 				    hdr->addr2);
> 	}
>
> Sorry again, when I looked at it before I just replied what my fast
> thinking lizard brain said instead of taking time to look at what I was
> saying.

I don't think that net_dbg_ratelimited wants a skb->dev argument.  The
various definitions in include/linux/net.h just have fmt as the first
argument.

julia

>
>
> regards,
> dan carpenter
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180307104741.mdy2wa7hplfwxmb3%40mwanda.
> For more options, visit https://groups.google.com/d/optout.
>

