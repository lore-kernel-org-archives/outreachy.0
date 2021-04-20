X-GM-THRID: 6952926381632126976
X-Received: by 2002:a05:600c:4a09:: with SMTP id c9mr5314516wmp.64.1618934378611;
        Tue, 20 Apr 2021 08:59:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:4e12:: with SMTP id g18ls1915566wmh.1.canary-gmail; Tue,
 20 Apr 2021 08:59:37 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzViikqAnrApBiFbjJBHHpSB8kfLJRsL1hKmQlqEXQVT5aB9nAkPZep99cw1FzDuVGK/9Hs
X-Received: by 2002:a1c:7e45:: with SMTP id z66mr5080159wmc.126.1618934377262;
        Tue, 20 Apr 2021 08:59:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618934377; cv=none;
        d=google.com; s=arc-20160816;
        b=We3hr9JofUZWISkN4EiFsmhKRHxpxltAAwC4M+6gb2NY9dfTdfxPDjl5Z4fxuieFaM
         3BCj0pYIqRImBMr6REgzFF6COsb4zkjeSR4hoUC6e0S0m7dgJlvAIIOKYHtTjvopUKc7
         tDClkUKeF8jmWiGbP7sOq3/9i74ncnnBCcd4BNN3UaefALLeOQThSwE4ApxxFLx3Icbf
         VghI8Q8QhCBMCz0uMWQ7NeNTMxDLXO5jO9l6J2KpdnmenZjqbiKe/JMF+LjhT+fDw5eS
         GNS11nkiYsRJzc2Pu8MwFGRoW6bTM9rZyhORe0TLImMIEF9s/RTY4h32vWI+xbMPc+R9
         CVQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=rm6Vez6gUwQNqpzSXx7XGs6DXtLh3ukgrAe9cUgO2h0=;
        b=YyKYcBwJ4egfDGkbPkNXHvn+F3JVbPfKbCwcfy4/10qAXrDRqdkJv/kezl67iXK2pY
         vb7LpdIZgdHGKJsDpdxkbbsbdfPlQsctCEPfx8AfYGXhrcaj9HEDSZXsw0u8J7KtmvEX
         5KE0qQlUxVCqttJCoU/yKAB8kYSETxYiNw5osmGnObB4Pa/3ffS+IgGGVtHLFuyZByap
         +Sth/xmMNRvN/tA8syjytStTIOO3Lf+SJRP4FWzWhMethh/yk/9cDHFhUNGA1vfXhgUu
         mvQC7VNtJBbawgDz9NjQTuMLJ7xonBZJbSI0mcibidBr1v85FOGEHmMdn22YOU75joqO
         Ox9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SrRPdR28;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::629 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com. [2a00:1450:4864:20::629])
        by gmr-mx.google.com with ESMTPS id p189si222339wmp.1.2021.04.20.08.59.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Apr 2021 08:59:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::629 as permitted sender) client-ip=2a00:1450:4864:20::629;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SrRPdR28;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::629 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x629.google.com with SMTP id r12so59082980ejr.5
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Apr 2021 08:59:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=rm6Vez6gUwQNqpzSXx7XGs6DXtLh3ukgrAe9cUgO2h0=;
        b=SrRPdR28OZy9blAmAD3PRzMb9rWvLKARrqRVjUBIuO/BGXwI0vrn0J5vQKhV4P6USj
         a7FnKEVNpkVXohye2SaOTBQBiGHfYrJUgRrirVX09F1mMpkei2EJfVXQlFxwPcD8yXhg
         HkyjRZsALxJULSYCSNezuLtTtDpXqtZvzX7vXGujUmCLtfVKcvXbQOWTRzImnbYZ0rmt
         y78wOE3Xf3Y3rbtus6eXEJeI3Dkkx9WXrt8zBICDfi6syFAf+8pLFCr0vcvcv4KoDJ5O
         UnWPTFEAaSvUX3fXlzOSMzelr3vHVUCqvjc/y3bgw2kQflleqXBRHJhDIus2jA9etrAa
         ojTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rm6Vez6gUwQNqpzSXx7XGs6DXtLh3ukgrAe9cUgO2h0=;
        b=iBzhd7V50djirQC3pREL444yVrXdvl2cdf4xIV+vNFt3xB3yoI0z0QkD00T+CtjstF
         9NlASTX8cXpCpI2RUFcUkbTpW+5kdtCA9ewcUFpfhe17rVQM0atr0md5diYbXKFsHnRc
         9IOKmasrWwd/C3aZqL04Cqw5kuTJBrls1Ppv3fyrURm4syJNTqDJEChtryw8ZLoOzWhG
         JGK+dGskvOA8RXORdey3w3KEPqxyEUXAz1nee5rfu+pmbizHWe7yHDdN48FQ5MTQGrsS
         MwdUiIONnSa3eugUGLDlH/RyYjjgBcLTjWxQEuZHzev2FVQM6UURKBWj5AmMkpwWQ2aQ
         HkkA==
X-Gm-Message-State: AOAM533TsGkXX1c2GNDyWLeqQoMwlqOTgvS0IF6RV6GTQcf3u7NpefVz
	nMxn07A4FZOT9xlJwUthIIAcmkBn9e70Xw==
X-Received: by 2002:a17:906:265b:: with SMTP id i27mr28416222ejc.450.1618934376996;
        Tue, 20 Apr 2021 08:59:36 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-79-52-107-152.retail.telecomitalia.it. [79.52.107.152])
        by smtp.gmail.com with ESMTPSA id n14sm13001109ejy.90.2021.04.20.08.59.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Apr 2021 08:59:36 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Coccinelle: understanding its output
Date: Tue, 20 Apr 2021 17:59:35 +0200
Message-ID: <1987250.8xKNmIyY3v@linux.local>
In-Reply-To: <alpine.DEB.2.22.394.2104192054440.23529@hadrien>
References: <3557115.gcaS8tdjop@linux.local> <alpine.DEB.2.22.394.2104192054440.23529@hadrien>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="US-ASCII"

On Monday, April 19, 2021 8:58:24 PM CEST Julia Lawall wrote:
> On Mon, 19 Apr 2021, Fabio M. De Francesco wrote:
> > I think that I don't yet understand Coccinelle's output.
> > 
> > I've just run the following command:
> > spatch --sp-file scripts/coccinelle/free/kfree.cocci --dir drivers/
staging/
> > wlan-ng/prism2fw.c
> > 
> > It outputs something that looks like a patch:
> > 
> > HANDLING: drivers/staging/wlan-ng/prism2fw.c
> > 
> >      (ONCE) already tagged but only removed, so safe
> > 
> > diff =
> > --- drivers/staging/wlan-ng/prism2fw.c
> > +++ /tmp/cocci-output-17844-0c6c7c-prism2fw.c
> > 
> > First, what is /tmp/cocci-output-17844-0c6c7c-prism2fwc? It is not a file 
in
> > / tmp. If it is a file, where is it?
> > 
> > The output goes on with lines like the following ones:
> >   @@ -1008,8 +1005,6 @@ static int writeimage(struct wlandevice
> >   
> >         rstmsg = kzalloc(sizeof(*rstmsg), GFP_KERNEL);
> >         rwrmsg = kzalloc(sizeof(*rwrmsg), GFP_KERNEL);
> >         if (!rstmsg || !rwrmsg) {
> > 
> > -               kfree(rstmsg);
> > -               kfree(rwrmsg);
> > 
> >                 netdev_err(wlandev->netdev,
> >                 
> >                            "%s: no memory for firmware download, aborting
> > 
> > download\n",
> > 
> >                            __func__);
> > 
> > Please read the two lines with a trailing '-'... Does Coccinelle mean that
> > they should be removed? If yes, I'm not able to understand why, because I
> > think they must not be removed. Am I wrong?
> 
> Sorry.  I think that the *s are a left over from a version of the semantic
> patch that was trying to do more.  The semantic patches in the Linux
> kernel are meant to be used with make coccicheck, which would have avoided
> this problem.  The key is the lines
>
"make coccicheck" fails with the following message:

Python error: No module named coccilib.elems
coccicheck failed
make: *** [Makefile:1937: coccicheck] Error 255
> 
> virtual org
> virtual report
> 
> near the top of the file.  This means that the semantic patch should only
> be run with either the option -D org (producing emacs org mode) or the
> option -D report (producing text).  Both of these modes suppress the -
> that you are seeing.
>
Run of "spatch -D report --sp-file scripts/coccinelle/api/kfree_mismatch.cocci 
--dir drivers/staging/" fails too:

init_defs_builtins: /usr/bin/../lib/coccinelle/standard.h
Python error: No module named coccilib.elems

I think that it depends on some package I have not yet installed, or to some 
environment variable that must be set for the Python interpreter to find the  
coccili.elems module... I really don't know.

Do you have any idea for solving this problem?

Thanks,

Fabio
> 
> The - comes from the uses of * in the semantic patch, that is used to
> highlight lines of interest, where the highlighting is done by putting a -
> at the beginning of the line.  It's not meant as a suggestion to remove
> the line, just that you might want to look at it.  But in this case, as
> you noted, there is nothing interesting to see.  I will remove the *s.
> 
> julia






