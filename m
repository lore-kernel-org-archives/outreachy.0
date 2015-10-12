X-GM-THRID: 6203527091850313728
X-Received: by 10.182.89.129 with SMTP id bo1mr23117360obb.4.1444643035708;
        Mon, 12 Oct 2015 02:43:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.104.205 with SMTP id a71ls1471914qgf.23.gmail; Mon, 12 Oct
 2015 02:43:55 -0700 (PDT)
X-Received: by 10.129.156.216 with SMTP id t207mr23068946ywg.26.1444643035065;
        Mon, 12 Oct 2015 02:43:55 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id pe1si1548175pac.2.2015.10.12.02.43.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 02:43:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x234.google.com with SMTP id rc13so14992331pab.0
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Oct 2015 02:43:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=aBo80oKRHGrK2FS87mo6jcStyK/dK636qRMnzAmaZnk=;
        b=X3rTjApOPsbBI5cgO2qmkvKcuLqnjNJ/KGYQZHPo2UX+7F5xLeT9mJVc7Qpe4UzcWT
         NrmUQNrHTpzGBj1LBZGMc6dyZdnrJtHYXVq9DL7Y+hE+vycwKEDqNHPCEgrsV8H5YdCH
         alQGYnrrMMwffw5Sr0sYN/q5LvNtIa5NqqAy9E/M9932UstD35kswSyLWHSwy+sc9anu
         c/gIgT9CAp2jwjgQ5Vsl/4Dp3o8spd/WSzSJJdaI8bXu/5Skv8WsMj8g5aM6yJm1zoVY
         IOCQlDHoCIMb+FoX3zVKqlKLZR0arlWA1sDwyYMOxXGokGEpvVvtdYmSglk3Wgj4M8+v
         fLJA==
X-Received: by 10.68.202.40 with SMTP id kf8mr5051642pbc.119.1444643034889;
        Mon, 12 Oct 2015 02:43:54 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([49.206.251.3])
        by smtp.gmail.com with ESMTPSA id v6sm17255686pbs.40.2015.10.12.02.43.52
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 12 Oct 2015 02:43:54 -0700 (PDT)
Date: Mon, 12 Oct 2015 15:13:46 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Alison Schofield <amsfield22@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: gdmwm: move constant to
 right side of comparison test
Message-ID: <20151012094318.GA13596@sudip-pc>
References: <20151009061314.GA31693@Ubuntu-D830>
 <20151010070034.GA4795@sudip-pc>
 <alpine.DEB.2.02.1510100921000.2062@localhost6.localdomain6>
 <20151011063707.GA6423@Ubuntu-D830>
 <alpine.DEB.2.02.1510111203300.2052@localhost6.localdomain6>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1510111203300.2052@localhost6.localdomain6>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Sun, Oct 11, 2015 at 12:04:22PM +0200, Julia Lawall wrote:
> 
> 
> On Sat, 10 Oct 2015, Alison Schofield wrote:
> 
> > On Sat, Oct 10, 2015 at 09:22:27AM +0200, Julia Lawall wrote:
> > > On Sat, 10 Oct 2015, Sudip Mukherjee wrote:
> > > 
> > > > On Thu, Oct 08, 2015 at 11:13:23PM -0700, Alison Schofield wrote:
<snip>
> > > 
> > > I'm not sure there is such a semantic intent to the rule.  Do something 
> > > complex and then see if it is like T, looks better to me than see if T is 
> > > like doing something complex.  The checkpatch/commit message is indeed 
> > > misleading, but the layout of characters looks better.
> > > 
> > > julia
> > 
> > Let me see if I have the correct understanding.
> > 
> > T and L are variables, not constants, therefore the checkpatch error and
> > my subsequent commit msg are misleading. 
> 
> Yes.
> 
> > Regardless of whether this
> > case should have been flagged by checkpatch the edit improves
> > readability.
> > 
> > So, I'd lean towards keeping the edit and changing the commit msg & 
> > description like this:
> > 
> > 	staging: gdmwm: move variable to right side of comparison test
> >     
> > 	Move variables to right side of comparison test to improve readability.
> > 		
> > Your thoughts?
> 
> It seems good to me.

Sorry for the late reply. Commit message looks good now.

regards
sudip

