X-GM-THRID: 6330466800696819712
X-Received: by 10.237.53.90 with SMTP id b26mr2497799qte.8.1473944320365;
        Thu, 15 Sep 2016 05:58:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.2.208 with SMTP id 74ls3409861otl.4.gmail; Thu, 15 Sep
 2016 05:58:40 -0700 (PDT)
X-Received: by 10.31.163.71 with SMTP id m68mr2379511vke.6.1473944319992;
        Thu, 15 Sep 2016 05:58:39 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id si10si1206327pab.1.2016.09.15.05.58.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 05:58:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 128so2212259pfb.0
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 05:58:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=bTS1fzhrv0QKvyT2eAYhw/aqdaqv3GSyyRQVDuXlDBI=;
        b=dWsX0utxm6MPX/4JO6KpYRkIAx2WQUi3tEYnZVta/gRJUZv7KQ/Rh+8W9Dc7PA64Af
         CYOzl+tGXLCdLQlFOy4edK4iSXn4Yb03qTfcuEZEY9fqKZUNMgURkRgkcegMUrmepYUu
         hM9qLsSQbe4giDl+TWje1TYrLMjEd79zMR41Zps02gz2ToQdmdHdbSGTlI7Gii2SU2t2
         87axWqQAutViRGCf5UrKTwRw8Y7jfAxXk1nQJhAugdit73HfVR/NjNmTQvGLzX0MRjW0
         ejzUmCwhKOrXXjQ+GxPNWLKI3w6USAAQjldev7d2RPf6RukKZUxoqu76ndDx8Cv/404j
         Xr3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=bTS1fzhrv0QKvyT2eAYhw/aqdaqv3GSyyRQVDuXlDBI=;
        b=ksNlAu+Z6lB/m4S+ZG+CZ0hdi5Owk3oaB6ZVGQ6M+72Ni+VmZ0bocYYSFJyEdhp61A
         G2yc+Y4OCfU5xoZSBSaiCqrc/2I69ixMrpdP7RSfYHSzKzus1wGVuFH1hxZROk+An9l6
         VJwc2m41y24Aw9ha8XwgwGn79tnCvOZsvIe+nnhdItcFV0mtcvNDrMpOBD+LxRI2X7vA
         7Esx8WTejJy7nEodoxGEh0PaplIql/DiHezm61M0+VcUwTYn35GX1DbeClkZSbo11+TR
         tR+Jorx5tZfEcnXn4qbhNWdxVwYwqwOWk1mNmD1o6q8Xkyk20hQruKmpBExwBDb+N9wm
         GZIQ==
X-Gm-Message-State: AE9vXwOuICJ63MhSLpH7NWKeXmE5mGA34XrslcbU96oDUwKymw5HZfBHpizRI4xKe+r6tw==
X-Received: by 10.98.153.202 with SMTP id t71mr14424441pfk.114.1473944319761;
        Thu, 15 Sep 2016 05:58:39 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id e71sm19477741pfc.75.2016.09.15.05.58.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 05:58:39 -0700 (PDT)
Date: Thu, 15 Sep 2016 18:28:30 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH 5/6] staging: lustre: Remove
 unnecessary 'return'
Message-ID: <20160915125830.GA14355@toblerone>
References: <cover.1473923837.git.aquannie@gmail.com>
 <bfedf0128abd4c08512b015481be1d5fd1d0d01e.1473923837.git.aquannie@gmail.com>
 <alpine.DEB.2.10.1609151010010.3045@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1609151010010.3045@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Sep 15, 2016 at 10:10:49AM +0200, Julia Lawall wrote:
> On Thu, 15 Sep 2016, Rehas Sachdeva wrote:
> 
> > Fixes checkpatch.pl warning:
> > WARNING: void function return statements are not generally useful.
> 
> It would be better to say what you did, rather than saying fix.  Here you
> could say:
> 
> Remove unnecessary void return at the end of a function.  Issue detected
> by checkpatch.
> 
> julia
> 

Hi Julia,
Please take a look at v2. Also please suggest if I should make similar
changes to the commit messages on other patches in this patchset as well.
Thanks.

Rehas

> 
> >
> > Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
> > ---
> >  drivers/staging/lustre/lustre/llite/rw.c | 2 --
> >  1 file changed, 2 deletions(-)
> >
> > diff --git a/drivers/staging/lustre/lustre/llite/rw.c b/drivers/staging/lustre/lustre/llite/rw.c
> > index bb85d16..23747fa 100644
> > --- a/drivers/staging/lustre/lustre/llite/rw.c
> > +++ b/drivers/staging/lustre/lustre/llite/rw.c
> > @@ -667,7 +667,6 @@ static void ras_update_stride_detector(struct ll_readahead_state *ras,
> >  	ras->ras_stride_length = stride_gap + ras->ras_consecutive_pages;
> >
> >  	RAS_CDEBUG(ras);
> > -	return;
> >  }
> >
> >  /* Stride Read-ahead window will be increased inc_len according to
> > @@ -883,7 +882,6 @@ out_unlock:
> >  	RAS_CDEBUG(ras);
> >  	ras->ras_request_index++;
> >  	spin_unlock(&ras->ras_lock);
> > -	return;
> >  }
> >
> >  int ll_writepage(struct page *vmpage, struct writeback_control *wbc)
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/bfedf0128abd4c08512b015481be1d5fd1d0d01e.1473923837.git.aquannie%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

