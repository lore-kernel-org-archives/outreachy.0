X-GM-THRID: 6811027108156932096
X-Received: by 2002:a17:90a:252b:: with SMTP id j40mr6822920pje.189.1585876906710;
        Thu, 02 Apr 2020 18:21:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a65:5c88:: with SMTP id a8ls3791099pgt.8.gmail; Thu, 02 Apr
 2020 18:21:45 -0700 (PDT)
X-Google-Smtp-Source: APiQypK2ErWq7XA41NmRONjeKZPYVzl8OV9tlYsBrZtTtlknGyhHa7s+OEMwN5VTLZPekpF6FYbp
X-Received: by 2002:aa7:8082:: with SMTP id v2mr6223845pff.18.1585876905256;
        Thu, 02 Apr 2020 18:21:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585876905; cv=none;
        d=google.com; s=arc-20160816;
        b=oeYonkjI18+OtkWph4ugdrLtPSCwDg2+13TDlSqa1nwaRtqLQZ6CGdndX6XlVNuzSB
         jA12u3qFP4T3r6KvItMPPOqZ71X3r5D51nAuPfkpqM7Be/OiUiQbW9aFk7V4rugNYegI
         WhePx66PT4fxuh2VWu115Mgm1hakCHsw3I9hJKia70T/Ss4+mgTG8ESowJcrA8qTx4SU
         9AMgdBY80xA2roVn8nrDCkTYjS293qb+yu60J8PZ3V/3iq1/Bgp1d/2U6Ju18DUTbbI7
         4D4DWNpesPNZqR9JJXyuaBlE+Ld1BS5Ysc28EJrthpVkjDwpFzBAewlw3B8QVbtnoF4G
         u/qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=0vy93LEfToiQD6ucavY21R2VkcgeMFhoz2zDbTtJ4Rs=;
        b=CDeL9QPi1N1wpA7LMk7fqCNVxbsUBki42jiVU63km9neM8uLxwPkf88cMFoQGmYrzD
         rbrtGNmbmC25yTdaJorLQ4uCX/fsddfa9ZVnHjB6mm6giQvdPfDOsKl+wE1BUVB8rWeq
         fgZX4qVr3usMd5ACZxC+BdFFN3vO4WJdIAF+vSvEsfOCjBViR0Z9hw89pqqn6gLLCe0L
         JwY6DqirNMhzPj/lMI2PKpEWTLc28/6MZqBaBxUEQgsc0zW8YqHdjP7ov7VXt1f17BdF
         f39NBSp71bJhIOtrxMKes0lcT3Wvr2S8IjrMt4IyLOC6d9rbMa3GM9wPmmyA76q3QZB4
         +1mw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TJ5krP3b;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbwyatt4@gmail.com>
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id f8si475851pjw.3.2020.04.02.18.21.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Apr 2020 18:21:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TJ5krP3b;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x343.google.com with SMTP id a6so5644511otb.10
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Apr 2020 18:21:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=0vy93LEfToiQD6ucavY21R2VkcgeMFhoz2zDbTtJ4Rs=;
        b=TJ5krP3bqZHU1QHPbN+FvtNdzOIu2dOMsI7xgZqOI4zKZHSDaE9pj7aNnD+lbGPqQI
         qGk0Pj80NvM21tG5NNaY3g8xDukzpHe2Rq724C0RTlFOY2We/HX8HyLxkDrjWJbFWQbw
         0UyjUWFbuIXMe2b/LNLoCbhXFFRaxia4JTpa2VJGAneWMdqCqz0WnQjK8HZ0Jax1tTJ6
         jINBmS9hvrJLfFdK7jiNEBKhEdiZ7d7F5TKg1P2+tv/lfbViqLOWSz1vhdDsuWgov+A2
         gcpczFjq5w16S45F7UMO5ekQlTLGYwfvJJFOH9pxo/h7wa4/+8e7/nb7QYFYgaqzk37k
         aRYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=0vy93LEfToiQD6ucavY21R2VkcgeMFhoz2zDbTtJ4Rs=;
        b=JRmkIYQ7XtBPmKOKD9BRyPKBse2K08mprachcSRA1AkcnZbzXcq+0v9rlhvXUaRoyh
         nGfuGJuNFICMVHtSoSQt1iZBl49UBT8+P/BkXdowPnYFWEAF/gue1uPILxJhgM90hw9o
         8RHH37DEDCacEF5Z3+Ade65e4AwSW7XFT+P0Fj5ZKPkGqYWm1WOSh5oISWP5BUxRBxIT
         fUsoKpY+dRviqRYy1BHd81hUF26rZCIYX3l7NXvzwfFoPr432fOKHVvGr+N/7KA8Wq5u
         eZ1hzmGlFc0L9kBiRw3cELKwdSyKJa3wePUCUiMds46IVIfb1DvdRGxwDgWz9UT9MYev
         1Qtg==
X-Gm-Message-State: AGi0PuaRVEXEFwBn+CqBvF4mb186bAyho7P26MxcaQIYJm49dN2oFlmG
	DSC+SRJ71ZZNv3EmbZP0/jZkjHInAgKw8g==
X-Received: by 2002:a4a:b141:: with SMTP id e1mr4999150ooo.54.1585876904607;
        Thu, 02 Apr 2020 18:21:44 -0700 (PDT)
Return-Path: <jbwyatt4@gmail.com>
Received: from OptiPlexFedora ([47.144.161.84])
        by smtp.gmail.com with ESMTPSA id x17sm1811463oif.28.2020.04.02.18.21.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Apr 2020 18:21:44 -0700 (PDT)
Message-ID: <3492c120971177bb0b523d78565130981acd1eda.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: ralink-gdma: Move blank
 line to fix warning
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy-kernel@googlegroups.com, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Harold =?ISO-8859-1?Q?Andr=E9?=
 <harold.andre@gmx.fr>, YueHaibing <yuehaibing@huawei.com>, "Gustavo A. R.
 Silva" <gustavo@embeddedor.com>, Nishka Dasgupta
 <nishka.dasgupta@yahoo.com>, Stephen Boyd <swboyd@chromium.org>, Joe
 Perches <joe@perches.com>, Julia Lawall <julia.lawall@inria.fr>
Date: Thu, 02 Apr 2020 18:21:43 -0700
In-Reply-To: <alpine.DEB.2.21.2004021129490.3014@hadrien>
References: <20200402082309.839063-1-jbwyatt4@gmail.com>
	 <alpine.DEB.2.21.2004021129490.3014@hadrien>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Thu, 2020-04-02 at 11:31 +0200, Julia Lawall wrote:
> 
> On Thu, 2 Apr 2020, John B. Wyatt IV wrote:
> 
> > Move a blank line within a struct to fix/silence a style warning.
> > 
> > Reported by checkpatch.
> > 
> > Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
> > ---
> > Note:
> > ralink-gdma does not build; even with make allyesconfig.
> > I did not find a menu option with make menuconfig.
> > 
> >  drivers/staging/ralink-gdma/ralink-gdma.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/ralink-gdma/ralink-gdma.c
> > b/drivers/staging/ralink-gdma/ralink-gdma.c
> > index eabf1093328e..9c398048daac 100644
> > --- a/drivers/staging/ralink-gdma/ralink-gdma.c
> > +++ b/drivers/staging/ralink-gdma/ralink-gdma.c
> > @@ -122,9 +122,9 @@ struct gdma_dma_dev {
> >  	struct gdma_data *data;
> >  	void __iomem *base;
> >  	struct tasklet_struct task;
> > +
> 
> Adding a blank line here is not correct. checkpatch is confused. 

It is not, but I was unsure of how this should be addressed. Thank you
for letting me know.

The second version of the patch removes the blank line.

> Perhaps
> it lacks a pattern considering wolatile to indicate a type.

I have CC'ed Joe Perches on this.



