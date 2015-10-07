X-GM-THRID: 6202847107501522944
X-Received: by 10.129.84.198 with SMTP id i189mr398906ywb.32.1444217437083;
        Wed, 07 Oct 2015 04:30:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.89.228 with SMTP id v91ls214969qgd.33.gmail; Wed, 07 Oct
 2015 04:30:36 -0700 (PDT)
X-Received: by 10.13.216.77 with SMTP id a74mr405404ywe.9.1444217436419;
        Wed, 07 Oct 2015 04:30:36 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id el2si4948121pbb.0.2015.10.07.04.30.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2015 04:30:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id lk4so19168881pab.3
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Oct 2015 04:30:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=fa37ybaQEpj2oWWsQPsDrUdSZztKTn+nQlUqv2uwLJY=;
        b=Q6wnIsuDuFF6wCUe5+9aFP8McA9DMFBuiqjdPOURA8aYseZ3I9StxyrsM0xZAm5SGG
         sxc0OLFJq+ZIEwhW3mptWoxbHDMBd5PQrSERKKbsLHQaponQ3PF7RROwDFEZ60NW2QHx
         dsQAbNqhyDYE4iZ3U+HwjFSfIeCgKlMCyY+8PkkezQRXSzZ/iHn3Gu6WBYiIR8NJUjKU
         Ujld9aEntNTqQx2Tih8i2filvAx9+TN1XvbOiPa1I9babzJM8eyA0aoDVwuIHHVQLkbc
         bB/O7NW6Co1Cwnh+NKrEYAcOUUHih7rxfLUrMCs4TZ2rPVDjzyoLbK/euprXJlpFfzf0
         G2Qw==
X-Received: by 10.68.69.45 with SMTP id b13mr598155pbu.67.1444217436243;
        Wed, 07 Oct 2015 04:30:36 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id dk2sm38978789pbd.57.2015.10.07.04.30.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2015 04:30:35 -0700 (PDT)
Date: Wed, 7 Oct 2015 17:00:26 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: most: video: Changed the
 return value integer to NULL
Message-ID: <20151007113026.GA51614@ubuntu>
References: <20151007101433.GA50144@ubuntu>
 <alpine.DEB.2.10.1510071214591.2533@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1510071214591.2533@hadrien>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Oct 07, 2015 at 12:15:11PM +0100, Julia Lawall wrote:
> On Wed, 7 Oct 2015, Shivani Bhardwaj wrote:
> 
> > Fixed the sparse warning : Using plain integer as NULL pointer, by
> > changing the return value of function *get_aim_dev(struct, int) from 0
> > to NULL.
> 
> If you want, you could try doing this sort of thing with Coccinelle.  An
> easy case is the assignment case.  The following would find an assignment
> where the type is a pointer and the value is 0:
> 
> @@
> type T;
> T *x;
> @@
> 
> x =
> - 0
> + NULL
> 
> This makes a rule where T is an arbitrary type and x is an expression that
> has type pointer to type T.  Then it searches for an assignment where
> there is this pointer typed expression on the left side and 0 on the right
> side, and then makes the change.
> 
> The function return case is a bit more complicated, because you have to
> find the function return type and the return statement, which are not
> right next to each other.  But it can be done as well.
> 
> You can find out more at the Coccinelle web site: coccinelle.lip6.fr.
> There are some tutorials at the papers and slides link.
> 
> julia
> 
Thanks, Julia! Is this patch not acceptable?
> >
> > Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> > ---
> >  drivers/staging/most/aim-v4l2/video.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/most/aim-v4l2/video.c b/drivers/staging/most/aim-v4l2/video.c
> > index d968791..8333245 100644
> > --- a/drivers/staging/most/aim-v4l2/video.c
> > +++ b/drivers/staging/most/aim-v4l2/video.c
> > @@ -430,7 +430,7 @@ static struct most_video_dev *get_aim_dev(
> >  		}
> >  	}
> >  	spin_unlock(&list_lock);
> > -	return 0;
> > +	return NULL;
> >  }
> >
> >  static int aim_rx_data(struct mbo *mbo)
> > --
> > 2.1.0
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151007101433.GA50144%40ubuntu.
> > For more options, visit https://groups.google.com/d/optout.
> >

