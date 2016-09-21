X-GM-THRID: 6330560970566402048
X-Received: by 10.200.54.136 with SMTP id a8mr17745101qtc.5.1474462182073;
        Wed, 21 Sep 2016 05:49:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.217.70 with SMTP id p67ls4036033itg.14.gmail; Wed, 21 Sep
 2016 05:49:40 -0700 (PDT)
X-Received: by 10.66.20.97 with SMTP id m1mr7556986pae.120.1474462180289;
        Wed, 21 Sep 2016 05:49:40 -0700 (PDT)
Return-Path: <ronladred@gmail.com>
Received: from mail-qk0-x244.google.com (mail-qk0-x244.google.com. [2607:f8b0:400d:c09::244])
        by gmr-mx.google.com with ESMTPS id w124si3191661ywc.4.2016.09.21.05.49.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2016 05:49:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of ronladred@gmail.com designates 2607:f8b0:400d:c09::244 as permitted sender) client-ip=2607:f8b0:400d:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of ronladred@gmail.com designates 2607:f8b0:400d:c09::244 as permitted sender) smtp.mailfrom=ronladred@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x244.google.com with SMTP id w204so2980900qka.2
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Sep 2016 05:49:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=tKq82JCUiFzJ94J1gDLgVQkeHn4hgX5zjxWkQvYDJMA=;
        b=Jv3I/uLiW82LDVA6CEnNzjPiPTLtVXA5IrMFZ/YJ5fbVHvMJMmYwcsxOkzNKt++kc/
         /IkpSn13RJAI40oJ5l+ieqaQR6J1wP0U6ZRs2yvlx/3YGi7SHwgAMuNXqk15jy36R9T8
         m9J6A49Q0+gax4QekAA+v81ATVC/c8WZmm5g48TQYZwOm/cbyOU49zZ0vGSXdkvol0A+
         h4dWmDyCvq+GxjktPm7wC1qUi/QK0FXGOffRnMqBz6gAYH0mO8MZ4hpnZqhw1ZG9ZR8r
         K6DVecMT2glhHzxMbw4LIsHOZlM9mNtumFJJ3NZ3ku8XZKNqLVEhlmmtPZwmNJFWSVOq
         Vwtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=tKq82JCUiFzJ94J1gDLgVQkeHn4hgX5zjxWkQvYDJMA=;
        b=Hw1dIwnTVf/uUzXj7RujMzE0qbFbup7a9tBFpI6cRTJzGJ1+xsPN2MAI5KqcnuDgfg
         p3ozj8zOvZUr0lbBtAU8KryWevXThiMuuzQCibdmRcWHftwGeDgKyB4Z8JsXJ2+mk8lV
         sXENIl0WhEfzRh2Sp1imRuyO5YKLRa4+vazEHHpwF/pGBr3634nR2mkAe6MuPD2oZ6IG
         31WGPCU/oXwsG+Ly+wrBCMpzuXuL4lDwsuJEn6fZXhYSRDNlQ6RAdPx3BcmFWCyFPV8+
         TLUokEk72bjvL5wwI5Bdn4DFkb9PWLScqWe2Sl+/Rdib/+NaMcACQpQNv3NYunJpgHk0
         PsXQ==
X-Gm-Message-State: AE9vXwOs9zrvyuaboA4aprq1PFkTqlHtCyVE5NqtMl12nNWtaq8l2T4nE1+rMC22vFx8iQ==
X-Received: by 10.233.232.149 with SMTP id a143mr41305127qkg.79.1474462179996;
        Wed, 21 Sep 2016 05:49:39 -0700 (PDT)
Return-Path: <ronladred@gmail.com>
Received: from fedora (NYUFWA-WLESSAUTHCLIENTS-03.NATPOOL.NYU.EDU. [216.165.95.74])
        by smtp.gmail.com with ESMTPSA id o65sm18791974qkc.48.2016.09.21.05.49.39
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Sep 2016 05:49:39 -0700 (PDT)
Date: Wed, 21 Sep 2016 08:49:39 -0400
From: Ronald Rojas <ronladred@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v7] Staging: octeon: Fix blank lines warnings
Message-ID: <20160921124938.GB28807@fedora>
References: <20160918230417.GA5289@fedora.home>
 <20160920115119.GA14587@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160920115119.GA14587@kroah.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Tue, Sep 20, 2016 at 01:51:19PM +0200, Greg KH wrote:
> On Sun, Sep 18, 2016 at 07:04:19PM -0400, Ronald Rojas wrote:
> > Fixes several of the checkpatch.pl warnings to
> > not use multiple blank lines
> > 
> > Signed-off-by: Ronald Rojas <ronladred@gmail.com>
> > ---
> > v7: changed to staging tree instead of torvalds tree
> >  drivers/staging/octeon/ethernet.c | 2 --
> >  1 file changed, 2 deletions(-)
> 
> What branch are you using?  This still doesnt apply.  Please use the
> staging-next or better yet, staging-testing.
I'd like to confirm that I'm doing this correctly so that the next patch 
I send to you will be correct. This is what I have done: 
I cloned your repository directly under gregkh/staging.git . I've checked 
out staging-testing and created my own branch I called ronald-branch. 
Then, when I had ronald-branch checked out, I ran "git merge staging-testing", 
to make sure ronald-branch was up to date.
Then I make the appropriate changes and resubmit patch the patch?
> 
> thanks,
> 
> greg k-h

Thanks for the help,
Ronald Rojas

