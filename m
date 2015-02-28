X-GM-THRID: 5152931053568
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,711868de202b757d
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.8.67 with SMTP id p3mr1241707wia.7.1425153723171;
        Sat, 28 Feb 2015 12:02:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.14.105 with SMTP id o9ls326687wic.38.gmail; Sat, 28 Feb
 2015 12:02:02 -0800 (PST)
X-Received: by 10.181.13.236 with SMTP id fb12mr1243989wid.1.1425153722903;
        Sat, 28 Feb 2015 12:02:02 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-x231.google.com (mail-we0-x231.google.com. [2a00:1450:400c:c03::231])
        by gmr-mx.google.com with ESMTPS id o3si351859wib.2.2015.02.28.12.02.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 12:02:02 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::231 as permitted sender) client-ip=2a00:1450:400c:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::231 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesk11 with SMTP id k11so26253714wes.11
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 12:02:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=cX3eBZMt0mUpIc20KvMNCuDyzo/WATpjAWeHZqUJKuY=;
        b=nHgByTMGbks/WA5ORMEsGfDJutEN/p6Ok5b4C5htKtnahgesAKbee8Cm0UUOIEVGc4
         oRdTJp5DgPUZrWTANaz+Pk0q6X21Pi2es+lHvWLJNX8l00c4VtzokVN9TCLcS98RnFz5
         Npw6XfHrch5VPOTRclVoxALyvCiRdeVQDbnI1JUkxF3Nw96l4Zoi+s4BzVeAyDIsOSiV
         9T9aVVgXe8xwd5FzJfz93UahtGPWEyRhQQk6rpqPn53pFowx6g99SAXKHNq/gweOD8H0
         8HBL0RXK/YZJ29E6/ujSMj28LrQUsurEm6am9J5LDkdphbzjhESN4KDsSvLR+o0jiadJ
         yjVg==
X-Received: by 10.194.142.205 with SMTP id ry13mr42660404wjb.73.1425153722788;
        Sat, 28 Feb 2015 12:02:02 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from localhost ([79.170.55.43])
        by mx.google.com with ESMTPSA id cf12sm11513934wjb.10.2015.02.28.12.02.01
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 28 Feb 2015 12:02:02 -0800 (PST)
Date: Sat, 28 Feb 2015 23:01:58 +0300
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 5/5] Staging: lustre: lustre: ldlm:
 Concatenate strings into single string
Message-ID: <20150228200158.GA12813@example.com>
References: <1425150717-30750-1-git-send-email-hamohammed.sa@gmail.com>
 <1425152027-31192-1-git-send-email-hamohammed.sa@gmail.com>
 <alpine.DEB.2.10.1502281455370.2688@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1502281455370.2688@hadrien>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Sat, Feb 28, 2015 at 02:56:10PM -0500, Julia Lawall wrote:
> On Sat, 28 Feb 2015, Haneen Mohammed wrote:
> 
> > This patch concatenate two consecutive strings into one, addressing checkpatch.pl warning:
> >  "Consecutive strings are generally better as a single string"
> >
> > Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> > ---
> >  drivers/staging/lustre/lustre/ldlm/ldlm_pool.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c b/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
> > index bfdb2b3..0d65d80 100644
> > --- a/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
> > +++ b/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
> > @@ -688,8 +688,8 @@ static int lprocfs_pool_state_seq_show(struct seq_file *m, void *unused)
> >  			      "  GP:  %d\n",
> >  			      grant_step, grant_plan);
> >  	}
> > -	seq_printf(m, "  GR:  %d\n" "  CR:  %d\n" "  GS:  %d\n"
> > -		      "  G:   %d\n" "  L:   %d\n",
> > +	seq_printf(m, "  GR:  %d\n  CR:  %d\n  GS:  %d\n"
> > +		      "  G:   %d\n  L:   %d\n",
> 
> The two lines are consecutive strings also.  Checkpatch should have given
> you a warning on your result.
> 
> julia
> 

Strangely it didn't so I thought that was special case. Should I
combine them all into one?

Thanks,
Haneen
> >  		      grant_rate, cancel_rate, grant_speed,
> >  		      granted, limit);
> >
> > --
> > 1.9.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1425152027-31192-1-git-send-email-hamohammed.sa%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

