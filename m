X-GM-THRID: 6801971762574655488
X-Received: by 2002:a05:6000:108:: with SMTP id o8mr19220114wrx.312.1583739448068;
        Mon, 09 Mar 2020 00:37:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:498c:: with SMTP id r12ls1448709wrq.10.gmail; Mon, 09
 Mar 2020 00:37:26 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtVoMr8OP7NivbPrpdPy2D+u7Qw4ff0i5FqM1PHDcLlumk3igb7pyAA2pdkS+cObeV7RTwI
X-Received: by 2002:a05:6000:12c6:: with SMTP id l6mr20378110wrx.217.1583739446915;
        Mon, 09 Mar 2020 00:37:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583739446; cv=none;
        d=google.com; s=arc-20160816;
        b=TFvU537uxPOzn4tOSxdJ8GpGhb8vYgLeL7P3XRyzq+ZR2LQK+VNd22asGMmpN/L4n3
         clV+S8uwrD+hojABXj7egNPAJlbLdM27RKrl0mYAuIPsyrJKIvS+O5YfB+RvSxs0CenM
         NBu5u0wXFQRIsY73IrYv4zvhzeZl1a8LFmOYva//s2Dgd6HpTDnkSPzWPtjgxpMlPIXo
         pX8Xv/MR33CrzJeGawos0ZqSUp60umbIt/lh2YdusTejF7hm5aPQsIkYlnvY6bMjw1Cz
         KAveIRE3bij3k7LDx9qLrSwXv+/icyyZ5Fz6MwXM4TX/YrNas7XJCeROBjCsxI1/TPG1
         f7yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=79r+zkCJN6+Ev8Xod8iGmxK2dA6M/5huSiLhr7NPRb0=;
        b=ltTjyg1QTIOBOfnTE30VZJqRewAozgEZvmWdOxSLnEhyLlHQC7pQkd7zFBETD3JrlI
         xZ18EAINirXAmCP8e2X3MrSsqYqn9i+MFVWE2w2W8soNCrJPgxc7LMzFICjxksfZDmef
         MGomGv5vdDKDjj1ft2yJWsJaTuNbgplDg4L+0XVMpUDl1EV9WG0q2JLEIwysFhRv5zgL
         VvwSoXW6iBhni/Eq7wmJKGZBC79Uarux3IaX0caLhXO4YkdCqUjAuUw4Ua9DI9Fuqa/J
         RPEJUunyTRnLM5c9Jddhcn9xtR6nZxd3LvEfANJGQW/mKcwjerWxaTaDs+FTo1U+cNoV
         NPSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y185si342821wmd.2.2020.03.09.00.37.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2020 00:37:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,532,1574118000"; 
   d="scan'208";a="439418492"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Mar 2020 08:37:26 +0100
Date: Mon, 9 Mar 2020 08:37:26 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Lourdes Pedrajas <lu@pplo.net>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] A question: commented out code
In-Reply-To: <20200308224412.GA14124@supernova>
Message-ID: <alpine.DEB.2.21.2003090836290.2676@hadrien>
References: <20200308224412.GA14124@supernova>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Sun, 8 Mar 2020, Lourdes Pedrajas wrote:

> Is removing commented out, unused code, a good cleanup patch? I'm
> wondering that maybe that code is there for a reason. I checked TODO files
> prior to removing that code to see if they provide a reason, but for the files
> I edited, they did not.

The general principle is that it should go.  The git history is always
there, so the code is not lost forever.  You can use your judgement, of
course.

julia

>
> Thank you!
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200308224412.GA14124%40supernova.
>

