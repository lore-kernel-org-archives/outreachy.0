X-GM-THRID: 6806960507457634304
X-Received: by 2002:a05:6e02:c89:: with SMTP id b9mr22120832ile.77.1585033149575;
        Mon, 23 Mar 2020 23:59:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:a49:: with SMTP id 70ls2146778jaw.0.gmail; Mon, 23 Mar
 2020 23:59:08 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuKBfzLSrJjDMJbVDiCUrkEaS+RDxNOHkw4NSl0obKQSKFsaU2YP7iTiOnjJtm6cpeHOFfs
X-Received: by 2002:a02:1444:: with SMTP id 65mr16017822jag.84.1585033148363;
        Mon, 23 Mar 2020 23:59:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585033148; cv=none;
        d=google.com; s=arc-20160816;
        b=WNw0NHRddYneTFx5pibNOY0xEDaodBjsRLxlzoiuZPVuKXKJkEL4kB+BpHGYs0krsB
         u2E1Ay7bVSsnX7hr2r2RAXigzwLsLAlDPRaccjeGzWJOXHWQ1ZHpWMSDoFxdUL+CYkWZ
         1+9TcjJpWqeVRUYTeb3V/WS+NXYBjFi2nYSdNkzeVYXF79UxsMAvD6ToPsoRePBD+Bzs
         x9X+IY6b66wLjp0cpA0l6YxyqghnL60wOx9RX7fKfLUIpysvrtuDQmKxAOSTfYNROkk/
         ndsxNOmOsuog7mOaBwh4IcL7at/SLxlZyBdnHfrsNCfzA/eGv3O6eH5ZDjDhYQhlMyGM
         j62Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=Vy0mj7J+pFwdHwhweX1FBes1EbdCyUcvrN+XKY9kPmE=;
        b=rP2rc+luQLurdSEKE+9waoj/fR4DWO03R/zHZpNZ/QESjSwWcYPlC1rM2jE9H4I6Qe
         QjMkrqEQC4PAl6ZcSzllehf0+rMvR0HWtXQbccMJAQ/SAN0GqQdltUPVD8o40eXQzJb3
         20FE7ugQsaYVzJJZbM+i0FI0AfcnSje5iUyIElG1LVUA3TJ/O5mbUVSaD0Mmr32lR4B5
         UdLhMOed7+Y9FNnU79HljqT3C9b9SJX9obBdO+65twJF3wG1KJR5IxJ2Ya1sBn8o+uhr
         lNtUczcEfx+T5MGnHEL71iU5srsjGxAKcauR6HO5PoVZ1FNpLPOfPbuxxEl6VsMu01Iu
         Fy0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dqCeP0VW;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbwyatt4@gmail.com>
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id j25si428759ili.4.2020.03.23.23.59.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 23:59:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dqCeP0VW;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x242.google.com with SMTP id k9so4893137oia.8
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Mar 2020 23:59:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=Vy0mj7J+pFwdHwhweX1FBes1EbdCyUcvrN+XKY9kPmE=;
        b=dqCeP0VWg4DouMWCjNSp2/ZF3QZnkYkzswl4o92uOnka5hcLWIszfiSHDtY4Ws5RxP
         H9ewIAMOKC/KwgM3AS103/dqNEnRNMN+m0pdVM2IX4Ds3eRrjuuHGCUyX0CVmQ/nn4dV
         ehMrC8uLqesiBqo6+phQcX+k/GQgSkkss/2mvOr4R9BFctgpxmwt9YnoXUlwKpDLRYwq
         AS1hl+nEeygoxnLFwmxJPZX1d4ivG+r9pCGeUpnC6Hs9OjO8Xb2xuWmepaQ2Up/rCWLD
         vWc6ffsj4hWt7Egd4m2NNO1CfxxhKKnz0DJCV1bUSTR1vcSqRG4DnAWsLH6r8IpBjz9s
         umhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=Vy0mj7J+pFwdHwhweX1FBes1EbdCyUcvrN+XKY9kPmE=;
        b=XCAjd4P2uCeMFRh9CWGrArK4p54Yl4RjBox+uSYERMfD1uK3kASY20CkOHOcGgew4+
         Eaf0XYKGkJbFpk8bSjEnF95FvAWIim66bBnVh9Q72652zpVRVQa2n/jXZohGF+XNq10a
         q1RIOnSrUWppISqaphgth4gFbEpM5SknRGVUMGzMKyw1bQIF+UWcjMW4sOcK3BhzbULF
         hBxbKG3nOLFflcOOa6RkMCs7wl8S2hupmhOrA3xawc4G4pxoNkoAL4g6+v6nClNAUsMa
         Dsb8jccOf0wPM/Z1T1eaq3Pzt6umfkmW8K2Rs81om9ALLTl4ByPU18xRALh4DPTCV4aC
         5b5w==
X-Gm-Message-State: ANhLgQ1G1YQUXOwfevXzd4a3IwZnc2ee5qI5WN11m2kgsD5QkKWNuWbp
	oEpw3vyIdvpFUdfqPFR5YmCGicKHXQMwxg==
X-Received: by 2002:aca:4a08:: with SMTP id x8mr2431133oia.158.1585033148078;
        Mon, 23 Mar 2020 23:59:08 -0700 (PDT)
Return-Path: <jbwyatt4@gmail.com>
Received: from ManjaroKDE ([47.144.161.84])
        by smtp.gmail.com with ESMTPSA id x8sm6054072oie.18.2020.03.23.23.59.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Mar 2020 23:59:07 -0700 (PDT)
Message-ID: <88d614ec5191b77ba303df3592bd557fc0d8d3e0.camel@gmail.com>
Subject: Re: [PATCH] staging: vt6656: remove unneeded variable: ret
From: John Wyatt <jbwyatt4@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>
Date: Mon, 23 Mar 2020 23:59:01 -0700
In-Reply-To: <20200322112611.GB75383@kroah.com>
References: <20200322092303.2518033-1-jbwyatt4@gmail.com>
	 <20200322112611.GB75383@kroah.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Sun, 2020-03-22 at 12:26 +0100, Greg Kroah-Hartman wrote:
> On Sun, Mar 22, 2020 at 02:23:03AM -0700, John B. Wyatt IV wrote:
> > Remove unneeded variable ret; replace with 0 for the return value.
> > 
> > Update function documentation (comment) on the return status as
> > suggested by Julia Lawall <julia.lawall@inria.fr>.
> > 
> > Issue reported by coccinelle (coccicheck).
> > 
> > Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
> > ---
> >  drivers/staging/vt6656/card.c | 6 ++----
> >  1 file changed, 2 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/staging/vt6656/card.c
> > b/drivers/staging/vt6656/card.c
> > index dc3ab10eb630..05b57a2489a0 100644
> > --- a/drivers/staging/vt6656/card.c
> > +++ b/drivers/staging/vt6656/card.c
> > @@ -716,13 +716,11 @@ int vnt_radio_power_off(struct vnt_private
> > *priv)
> >   *  Out:
> >   *      none
> >   *
> > - * Return Value: true if success; otherwise false
> > + * Return Value: 0
> 
> If this always returns something, why have it return anything at all?
> 
> Why not make this a patch series, doing this, and then fixing up the
> callers and the function to not return anything.
> 

Understood. Patchset sent.

Adding the URL to the patchset to make it easy to track.

https://groups.google.com/forum/#!topic/outreachy-kernel/19S4zdbNLIg



