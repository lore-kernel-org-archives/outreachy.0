X-GM-THRID: 6462776611954491392
X-Received: by 10.28.128.131 with SMTP id b125mr74433wmd.18.1504733185691;
        Wed, 06 Sep 2017 14:26:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.43.71 with SMTP id r68ls15363wmr.14.gmail; Wed, 06 Sep 2017
 14:26:24 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb7aCy+6ijyXZ38QZH73m9d0XwoEBRpXVyNqHNvpVcWjMEOk0aq7vJiTuWdYr4dsIP/gTtCn
X-Received: by 10.28.129.84 with SMTP id c81mr84428wmd.11.1504733184842;
        Wed, 06 Sep 2017 14:26:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504733184; cv=none;
        d=google.com; s=arc-20160816;
        b=wuJd0zOJvOu+W5K1arMb4HjNnn2jXbZ5rV/ZNrJFM4nxPsAs48lO/lZvJbGY7CdzWF
         ENALr2K2ujI3ysFZkPNk4SaL9ngYP1oOcGvJ28X46gVY+L3+9tJY2CHiak5rXVOQbs6h
         /PotdDVIhXdlzBmMloDjvNWG67rLfd2JpD4cKBA9SF5aBBX4wO7lJ0/Fk2JDWpEK/gI2
         8Hh2m+mq5VZGG9c/PELtjQS9zTJQOY9150qgEoM3pUdBZDyqT8HNE6mvNnwpn3N0wIkk
         2PUjsJALOx1+xKS3gk/1sPkTBzxYt+JOl+/sy8V+BFo/SXA9dm7X87fx9d2tUCmRQUP3
         K+KQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=982oTPzma+ANJQ2sz6eq/7BTeJUojCtcJT2RIbYJCeA=;
        b=qa+4bSGwXpGOsJ5hshcuraas1A01QREQH0tPqD62C50Iv8wS3RoQ6R7iEp+EP2tiuY
         3ScYOCiPPQ8z2rcjgI/lIdf0GAGgrLNEZWTbqT3Md7SHpvNXMJ3Ui8/wUMrfhJh/WL4t
         rpJ8X1y+CV50PUliTa75s83kOzLkt0GGF1cQtWhvuE7hWN2pfvMTUpk6xpKhu99RonHb
         9CZ1EagbNTL8SPOkIQ1wpaM5aFvJ+ZuteAGnsP/H1YFJMgB90K8+M1URPU+U1gqrR7T5
         hH3cE1vqOT/m548LXG0bRMtTdx6vNTVIyQG1V1SmBtxNFRrUegzS8Zn761QsE2LAZE97
         H/AA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 7si220675wme.7.2017.09.06.14.26.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Sep 2017 14:26:24 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,355,1500933600"; 
   d="scan'208";a="236573501"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Sep 2017 23:26:24 +0200
Date: Wed, 6 Sep 2017 23:26:23 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Srishti Sharma <srishtishar@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, 
    Gilad Ben-Yossef <gilad@benyossef.com>, linux-crypto@vger.kernel.org, 
    driverdev-devel@linuxdriverproject.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: ccree: ssi_cipher.c:
 Remove unused variable.
In-Reply-To: <CAB3L5owYErPk2hh3OnE68eHCyrbgqUY0cHj3TrU6DUL44ZbPgQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1709062325070.2984@hadrien>
References: <1504732426-9765-1-git-send-email-srishtishar@gmail.com> <alpine.DEB.2.20.1709062316450.2984@hadrien> <CAB3L5owYErPk2hh3OnE68eHCyrbgqUY0cHj3TrU6DUL44ZbPgQ@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 7 Sep 2017, Srishti Sharma wrote:

> On Thu, Sep 7, 2017 at 2:47 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Thu, 7 Sep 2017, Srishti Sharma wrote:
> >
> >> Remove local variable inflight_counter ,as it is never used.
> >
> > "counter ,as" -> "counter, as"
> >
> >> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
> >> ---
> >> Changes in v3:
> >>  - There was no longer a need to make the comment more comprehensible as
> >>    I have deleted the variable associated with it because it is unused .
> >>  drivers/staging/ccree/ssi_cipher.c | 5 +----
> >>  1 file changed, 1 insertion(+), 4 deletions(-)
> >>
> >> diff --git a/drivers/staging/ccree/ssi_cipher.c b/drivers/staging/ccree/ssi_cipher.c
> >> index fec2faa..609ebe4 100644
> >> --- a/drivers/staging/ccree/ssi_cipher.c
> >> +++ b/drivers/staging/ccree/ssi_cipher.c
> >> @@ -702,10 +702,7 @@ static int ssi_blkcipher_complete(struct device *dev,
> >>
> >>       ssi_buffer_mgr_unmap_blkcipher_request(dev, req_ctx, ivsize, src, dst);
> >>
> >> -     /*
> >> -      * Save inflight_counter in a local variable.
> >> -      */
> >> -     inflight_counter =  ctx_p->drvdata->inflight_counter;
> >> +
> >
> > This is a patch on your previous patch.  It should be a patch on the
> > original code.  Also, don't add a new blank line.  Just remove the line
> > completely.
>
>   so , when I resend it should I version it as v3 or send as a new
> patch as it is now fixing a different problem ?

v3 (or maybe now v4?) would be fine.  It's still the same code that is
under consideration.  Then it will be clear that he previosu patches are
not needed.

julia

>  Regards,
>  Srishti
> >
> > julia
> >
> >>       /*Decrease the inflight counter*/
> >>       if (ctx_p->flow_mode == BYPASS && ctx_p->drvdata->inflight_counter > 0)
> >>               ctx_p->drvdata->inflight_counter--;
> >> --
> >> 2.7.4
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1504732426-9765-1-git-send-email-srishtishar%40gmail.com.
> >> For more options, visit https://groups.google.com/d/optout.
> >>
>

