X-GM-THRID: 6806733335671341056
X-Received: by 2002:a17:906:2db2:: with SMTP id g18mr12601415eji.235.1584816503147;
        Sat, 21 Mar 2020 11:48:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:1d99:: with SMTP id dk25ls5467187edb.3.gmail; Sat,
 21 Mar 2020 11:48:21 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtvAZ4BVLDVUcOR7pAkctcQ8FOj++HwcrJBR8WCRkZfb9nRg7XQmiUkctXKiObsEHwoz1UI
X-Received: by 2002:a50:bae7:: with SMTP id x94mr14382414ede.261.1584816501723;
        Sat, 21 Mar 2020 11:48:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584816501; cv=none;
        d=google.com; s=arc-20160816;
        b=qdaH/WIf+fvshaNJjuXS9GzGrOLa55fiqqzRkLo65evG3YmJbIJGz4zoqarHElNpL0
         5gsY5Xwh5VJG/lay+NBSc2ynOjZ4I5OH8rG+tlYrh2H2uxcXqz8UatgvMFjZTcoINJhE
         LYUTRoMSMSbpm0NL/KEuajJp54AFk4JtKwhfxH0JXoavqCShe+/uk9U8+p/8lRhSKHvt
         M5poFdcfv3Dl9ZuChxMYNiuhOan6nxF0W3gOq02zwh/FQXBJ8ngJSh4lTSGLzpTfvH5A
         xwkUJAV6pldoDqVQdAJsj+kiaA1C87TjNjuBUAejF8/DkG1tsCZgrCWVbXqGMbKpTh0q
         TKZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=j1ljRZx/BNcQlZKv3JittYnntb7gjbxulPTEo6WEulY=;
        b=JdOGUtQHXEpWknUu/B+zWa+GTEX0eC0c7avZu5hbdqbqlty9xcOIyXFGDm8xxpam0j
         Tk7v1E1xiIU4o/JYVVj/Bx4m7D/tX2w3Lik3OEp5UjgCczY/DQ2BVwdS0+/bGNiHNH7e
         Ew/MByRlVhA3Slwdv+lWy4Q5qTT1yHi37hdx1SpGUWGE32m4uu3HH+gim9Lpv6zeupPe
         ilSgVWO/p102OiK591pLedhYHmwXFfuiivryTYufJ6Dk88KConJgIr3EXbmD5hPFLrSI
         /kr1vSB+AAZxrMQP3iJusiEEgRu+qvaEDgHZVOdjBvWvssf3f0ol5sArQdZ+wVe/eIrq
         yRnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id f2si230131edm.1.2020.03.21.11.48.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2020 11:48:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,289,1580770800"; 
   d="scan'208";a="441501180"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Mar 2020 19:48:21 +0100
Date: Sat, 21 Mar 2020 19:48:21 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Sam Muhammed <jane.pnx9@gmail.com>
cc: Jaroslav Kysela <perex@perex.cz>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: hp: Replace printk(KERN_WARNING
 ...) with netdev_warn().
In-Reply-To: <20200321184132.1908-1-jane.pnx9@gmail.com>
Message-ID: <alpine.DEB.2.21.2003211945390.2522@hadrien>
References: <20200321184132.1908-1-jane.pnx9@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 21 Mar 2020, Sam Muhammed wrote:

> Fixup the following checkpatch.pl WARNING:
> WARNING: Prefer [subsystem eg: netdev]_warn([subsystem]dev, ...
> then dev_warn(dev, ... then pr_warn(...  to printk(KERN_WARNING ...

Sorry to complain some more, but the subject line and the log message are
not really idea.  The subject line should be concise and get the main
point across, but doen't need a lot of detail.  So "use netdev_warn" could
be fine.  The log message is where you should explain what you do and why.
Your log message has a lot of words, but the only one that says what you
do is "Fixup", which is not very descriptive, and there is no mention of
why.

julia

>
> Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> ---
> Changes in v2:
> - Removing " : " in the print message, netdev_warn() doesn't need it.
>
>  drivers/staging/hp/hp100.c | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
> index b89c4dcf53f5..1afd511260d0 100644
> --- a/drivers/staging/hp/hp100.c
> +++ b/drivers/staging/hp/hp100.c
> @@ -469,8 +469,7 @@ static int hp100_probe1(struct net_device *dev, int ioaddr, u_char bus,
>
>  	eid = hp100_read_id(ioaddr);
>  	if (eid == NULL) {	/* bad checksum? */
> -		printk(KERN_WARNING "%s: bad ID checksum at base port 0x%x\n",
> -		       __func__, ioaddr);
> +		netdev_warn(dev, "bad ID checksum at base port 0x%x\n", ioaddr);
>  		goto out2;
>  	}
>
> @@ -478,9 +477,9 @@ static int hp100_probe1(struct net_device *dev, int ioaddr, u_char bus,
>  	for (i = uc = 0; i < 7; i++)
>  		uc += hp100_inb(LAN_ADDR + i);
>  	if (uc != 0xff) {
> -		printk(KERN_WARNING
> -		       "%s: bad lan address checksum at port 0x%x)\n",
> -		       __func__, ioaddr);
> +		netdev_warn(dev,
> +			    "bad lan address checksum at port 0x%x)\n",
> +			    ioaddr);
>  		err = -EIO;
>  		goto out2;
>  	}
> ---
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200321184132.1908-1-jane.pnx9%40gmail.com.
>

