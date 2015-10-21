X-GM-THRID: 6207874064974872576
X-Received: by 10.182.52.226 with SMTP id w2mr8808378obo.40.1445447894005;
        Wed, 21 Oct 2015 10:18:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.136.42 with SMTP id k42ls676936iod.101.gmail; Wed, 21 Oct
 2015 10:18:13 -0700 (PDT)
X-Received: by 10.107.132.77 with SMTP id g74mr9294080iod.10.1445447893587;
        Wed, 21 Oct 2015 10:18:13 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id vy6si1176529pbc.1.2015.10.21.10.18.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 10:18:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pabrc13 with SMTP id rc13so60157581pab.0
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2015 10:18:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=crVXnZf3cFHiG1+LOiodEMasVTn4io+iBJToeWymRQ0=;
        b=mhqGv9gGPNwdIWdTdp2JjgIzo7ObMvAJPOhTE9cd5xc5mcm5DApBGEIobIaOa3NtVs
         KwiHdkUhuTm2cJvOE7l5YyInV/YGhEKgwuHH6ehtCz3MPdVcFiVN7ZAKXKSfM7t9h/H/
         n9jTu2raCIolL9fwbwDJ1Egz6fbfSbJ6rV4HvK7I3k2Cx2VqyUVKd7kTCr8uyqEBAkRh
         vXkSiWy3LCJqLdc8VjxqOiUGM4Dd9FtGJqddU5fRFh4n7MHVQ+4crQdDZvvDajDNA4kU
         oC1MDwxh0H0OBD8I5TehzJxfSJlTovwaiVTRFgWCtzm8nnp5E1DuozVaG2lDiYwwprCR
         sL4Q==
X-Received: by 10.66.139.201 with SMTP id ra9mr11840102pab.153.1445447893444;
        Wed, 21 Oct 2015 10:18:13 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from Ubuntu-D830 (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id fe8sm10164623pab.40.2015.10.21.10.18.12
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Oct 2015 10:18:13 -0700 (PDT)
Date: Wed, 21 Oct 2015 10:18:12 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] patchset question
Message-ID: <20151021171811.GA16768@Ubuntu-D830>
References: <20151020232149.GA13649@Ubuntu-D830>
 <alpine.DEB.2.02.1510210723340.2038@localhost6.localdomain6>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1510210723340.2038@localhost6.localdomain6>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Oct 21, 2015 at 07:24:15AM +0200, Julia Lawall wrote:
> On Tue, 20 Oct 2015, Alison Schofield wrote:
> 
> > 
> > Patchset help needed:
> > 
> > I've changed one file in 5 different ways..all cleanup related. 
> > It will be split into 5 patches.
> > 
> > In one branch I used git add -pi followed by commit to incrementally
> > create 5 commits.  Each one dependent on the previous.  This is easy to grab 
> > and build as a patchset because they are all on the same branch.
> > 
> > Is this method  OK?
> > 
> > (The alternative is to give each commit it's own branch to keep them
> > independent.)
> > 
> > Searching archives of opw kernel I found reference to the dependent
> > commits, stating it was OK.  But that may be outdated, so checking in.
> 
> I still don't understand why this methodology would cause code to move 
> from above to below a comment.
> 
> julia
>

You are right Julia.  Good methodology, but error in implementation ;)

In reviewing the set of diffs for version 1, I do find that the comment 
moved when I picked the comments out for their patch.  The bad move is 
visible in the comments patch and in the patch where you noticed it in the
diff.

It wasn't intentional.  It happened during the partial add. In this
'hunk', as git add calls it, when the changes are too close together to
be hunks, or to split, you get popped into vim to manually edit.  That
has to be where I made the mistake.

The partial add is a nice feature.  I hope to try it again with these
lessons learned.

alisons





> > 
> > Thanks!
> > alison
> > 
> > 
> > -- 
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151020232149.GA13649%40Ubuntu-D830.
> > For more options, visit https://groups.google.com/d/optout.
> > 

