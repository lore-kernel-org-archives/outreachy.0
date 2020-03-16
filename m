X-GM-THRID: 6803246482935775232
X-Received: by 2002:a2e:9d11:: with SMTP id t17mr15254697lji.169.1584322083381;
        Sun, 15 Mar 2020 18:28:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:3188:: with SMTP id i8ls2293762lfe.4.gmail; Sun, 15
 Mar 2020 18:28:01 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtslHzG5B54yQAAAqpedGybnyQDCeX79p9/7dmRJ8Wn3gCgBFXDuXSuvOSZHu2LNOrAa8Q1
X-Received: by 2002:a19:4cc2:: with SMTP id z185mr15419511lfa.0.1584322081744;
        Sun, 15 Mar 2020 18:28:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584322081; cv=none;
        d=google.com; s=arc-20160816;
        b=NdwJ6cXR7IZiko/fRJPznn87NnaKZUM166EEzNVY3ipYeHwfy74zs5yH6dymXJI4lA
         mTYOX7JZQ6BJeHZ7ji65KxAg5rQWRZmNCfs+ROX4Lds62CDUGYSlRTBxBU+z8+ISKdxi
         OdaaeGD2SiuJBkG1W9J11ebIqSZ8t3y0vEWE7TB/jFGhSaammEOjocJ3MI6xNIgY57md
         u82EuF1/MXpR3fasZ2fcem9il9oPjJYMNZYiJJhhBODusNaVGhZNcdHwcdNM1hhQeHGM
         ny/BdEW87OdGqH+EH0utdeeOAqQqLWk8cd2IWFV226AWLqT0FKRVmqx59AEKqq53mcwV
         3wKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=SCHIrHEbjV7HkzW1cmYlWIyDyLOAIDx9UA2YnbJNVQc=;
        b=esvkIH19z8wbttQz8rLIu6fcaOmGUiWPeVSnx6wrO+yPaABjTlNb5nYgHIvPRwuVRp
         zhl/CubhCZ5LkTxIMvVCt0agyM+CoVQKkxjdJOdHHToXdFEwpMg4GZaQO/WkgfzQXKV5
         mRRclSM2TJhAx+VuZuuPkt1IJyLx2iqAoGkqGJB18SP1MXLOLNw8G8EYd2HGaiuwoaqw
         r1AZrGZ5nmUTZz95dChd4GokG8go4egCnTooHFncQQWLNWuRLLGU0APq+Q/VE1Tnp5cp
         5WyOZ1Pbz4RP3MwzVCEKrANAhfkaxKePfE5xdQyh8flKci7OLqiXDVZP65fOcYyemIVX
         Cxbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id j11si632267lfe.4.2020.03.15.18.28.01
        for <outreachy-kernel@googlegroups.com>;
        Sun, 15 Mar 2020 18:28:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 20961 invoked from network); 16 Mar 2020 01:27:59 -0000
Received: from unknown (HELO tulip.local) (vkor@vkten.in@117.251.238.193)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 16 Mar 2020 01:27:59 -0000
Date: Mon, 16 Mar 2020 06:57:53 +0530
From: R Veera Kumar <vkor@vkten.in>
To: Stefano Brivio <sbrivio@redhat.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Larry Finger <Larry.Finger@lwfinger.net>,
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: Fixes for simple
 typos in C comments
Message-ID: <20200316012751.GA608@tulip.local>
References: <20200312091042.GA4246@tulip.local>
 <20200315212901.6b515c24@elisabeth>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200315212901.6b515c24@elisabeth>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Sun, Mar 15, 2020 at 09:29:01PM +0100, Stefano Brivio wrote:
> Hi,
> 
> On Thu, 12 Mar 2020 14:40:48 +0530
> R Veera Kumar <vkor@vkten.in> wrote:
> 
> > Fixes for simple typos in C comments.
> > Found using checkpatch.pl.
> 
> This looks good to me, except for the same points Julia had on your
> patch:
> 	"[Outreachy kernel] [PATCH] staging: rts5208: Fix long line in C func call argument"
> 
> Can you please fix that up (title and description) and resend?
> 

But, this patch has already been accepted by Greg KH and is in
staging-testing and staging-next branch. May be late.

Regards,
Veera

> -- 
> Stefano
> 

