X-GM-THRID: 6330211515190214656
X-Received: by 10.66.73.101 with SMTP id k5mr3495053pav.9.1473881879049;
        Wed, 14 Sep 2016 12:37:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.40.231 with SMTP id s94ls1815672ota.17.gmail; Wed, 14 Sep
 2016 12:37:58 -0700 (PDT)
X-Received: by 10.157.34.41 with SMTP id o38mr3350912ota.34.1473881878635;
        Wed, 14 Sep 2016 12:37:58 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id z4si1489367pam.0.2016.09.14.12.37.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 12:37:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 128so1176712pfb.0
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 12:37:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ZrzkIki1V8UXWYtZOGr/nYzU1oRRw8M5Cb65u9dAgEE=;
        b=pGNalfQX1R7QdK/78bV9RdQEk+DVTRDQd+PMgz1v+7K7+kZLOLaBxlcJgI0PokH/48
         29qRIWm07mbZMmmUdKwfnlPtoxLUpo5kdb35gIy3p3Ck87BNn4DnUCCKtPgEBzes4WOU
         RDbiD4z958J/Z2BlvVJ2D6zB7euBjL787aGq0aVQiCx4+Xhb4lSiOWiOFx4MJQB3pTwG
         iwblJeBQ2JQpV15slsWQjviO0iusAL4/bDIEQEVRha1TJUJx4pOxKsiJdQqCuTS56iUT
         FJrCai/mZSsDIuUiz/d8PnFMmM55wIZrgzclMBSGvzqP2laVR0lOz+h0qXtHSdHTcWGg
         SsKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ZrzkIki1V8UXWYtZOGr/nYzU1oRRw8M5Cb65u9dAgEE=;
        b=Kfje1dyRR1gktpj4yM5KT8Xr7iPcEPX9oh4nNyN7rUjsOXe8mQUS/qzxLIXmG8j8WP
         NHKT9kzn5zFrXGHVa0oBpun0WN09no8WfOhmAamDeLlG20CynLBb4i+hCYbGy96iSWJx
         0oavFcnC0E43tm8Datl3zhMDGAxafuME7wHiyUviYkqjXoDkoDV+EMGfuEm5J+5DP6j0
         6gWjn5btOyqIzog0KqqpqD8p+76zNVUPDqR4ZnbMBhX9A10QgowQ9umQbumCfEcT4V8l
         52UE8KP9yIaNctwaw3zy3068VEQ6v7QxhxUj3v7aZxzGD7DG/MzgZ8pZAP4U18qg9Osq
         ZH0Q==
X-Gm-Message-State: AE9vXwPrk+GXaE0JvamrnYfdq/5ZufmjwYgefdVWhrm2wFOPw28ibZ33cS5Zr8zrmqScdw==
X-Received: by 10.98.107.198 with SMTP id g189mr7735635pfc.14.1473881878424;
        Wed, 14 Sep 2016 12:37:58 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id h66sm39922030pfc.47.2016.09.14.12.37.55
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 12:37:57 -0700 (PDT)
Date: Thu, 15 Sep 2016 01:07:48 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com,
	Lidza Louina <lidza.louina@gmail.com>,
	Mark Hounschell <markh@compro.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: dgnc: Fix alignment with
 open parentheses
Message-ID: <20160914193748.GA2072@toblerone>
References: <20160914153331.GA22396@toblerone>
 <alpine.DEB.2.10.1609142111380.3347@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1609142111380.3347@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Sep 14, 2016 at 09:12:19PM +0200, Julia Lawall wrote:
> On Wed, 14 Sep 2016, Rehas Sachdeva wrote:
> 
> > This patch removes the checkpatch.pl warning:
> > CHECK: Alignment should match open parenthesis.
> >
> > Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
> > ---
> >  drivers/staging/dgnc/dgnc_tty.c | 5 +++--
> >  1 file changed, 3 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/dgnc/dgnc_tty.c b/drivers/staging/dgnc/dgnc_tty.c
> > index 31b18e6..75e0a6b 100644
> > --- a/drivers/staging/dgnc/dgnc_tty.c
> > +++ b/drivers/staging/dgnc/dgnc_tty.c
> > @@ -1037,8 +1037,9 @@ static int dgnc_tty_open(struct tty_struct *tty, struct file *file)
> >  	 * ch_flags_wait to wake us back up.
> >  	 */
> >  	rc = wait_event_interruptible(ch->ch_flags_wait,
> > -		(((ch->ch_tun.un_flags | ch->ch_pun.un_flags) &
> > -		  UN_CLOSING) == 0));
> > +				      (((ch->ch_tun.un_flags |
> > +					 ch->ch_pun.un_flags) &
> > +					UN_CLOSING) == 0));
> 
> Bother are not so nice, but maybe it was better before.  It's nice to have
> at least both arguments to | on the same line.
> 
> julia
>

Alright. I'll keep that in mind.

Thanks

Rehas

> >
> >  	/* If ret is non-zero, user ctrl-c'ed us */
> >  	if (rc)
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160914153331.GA22396%40toblerone.
> > For more options, visit https://groups.google.com/d/optout.
> >

