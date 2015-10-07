X-GM-THRID: 6202847107501522944
X-Received: by 10.107.165.5 with SMTP id o5mr875842ioe.5.1444218584875;
        Wed, 07 Oct 2015 04:49:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.138.137 with SMTP id qq9ls192141igb.43.gmail; Wed, 07 Oct
 2015 04:49:44 -0700 (PDT)
X-Received: by 10.68.166.132 with SMTP id zg4mr436641pbb.7.1444218584414;
        Wed, 07 Oct 2015 04:49:44 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id w5si4550904pbt.1.2015.10.07.04.49.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2015 04:49:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id lk4so19613052pab.3
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Oct 2015 04:49:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=/IU/lONJNfsCvbt377zcXo/EXR2W7dfF8jnrQH4hx2I=;
        b=o8SWK2BTELfsx/Kvg2eCdq3MkgfE0IsDZY/VWmPsBBQuqKr4ladQMKzbrCX1FP71JI
         0+hsVu4IJqKDJqROD0kDLzxfMRWzxeK35/lWV/xp7Bo06NyJHa4ym/GLCavNK/9aphFx
         sErqJqWrOoO77u0kKWffgqUDS/TJzDuwBDeqcdWjSfpRhv4MBFaXi8mEBF2wEPsAMAkL
         2Q1rdaNHD0NwfuS2xR4mh9TLfvxAwXiVpwYBgaowsjPlp49DvpoL/IKQlmd0hmpdGntv
         iF9NT6iN/LK7WYAsN4w5ZnBnzGqwB4CsVW+myyYBeLmJZyMFfUuP7j0Pddj8cQNK00bR
         oN2Q==
X-Received: by 10.68.179.33 with SMTP id dd1mr739002pbc.134.1444218584193;
        Wed, 07 Oct 2015 04:49:44 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([49.206.251.3])
        by smtp.gmail.com with ESMTPSA id aw5sm7390806pbc.13.2015.10.07.04.49.42
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 07 Oct 2015 04:49:43 -0700 (PDT)
Date: Wed, 7 Oct 2015 17:19:33 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: most: video: Changed the
 return value integer to NULL
Message-ID: <20151007114933.GA17761@sudip-pc>
References: <20151007101433.GA50144@ubuntu>
 <alpine.DEB.2.10.1510071214591.2533@hadrien>
 <20151007113026.GA51614@ubuntu>
 <alpine.DEB.2.10.1510071233150.2536@hadrien>
 <20151007113602.GA51792@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151007113602.GA51792@ubuntu>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Wed, Oct 07, 2015 at 05:06:02PM +0530, Shivani Bhardwaj wrote:
> On Wed, Oct 07, 2015 at 12:33:32PM +0100, Julia Lawall wrote:
> > 
> > 
> > On Wed, 7 Oct 2015, Shivani Bhardwaj wrote:
> > 
> > > On Wed, Oct 07, 2015 at 12:15:11PM +0100, Julia Lawall wrote:
> > > > On Wed, 7 Oct 2015, Shivani Bhardwaj wrote:
> > > >
<snip>
> > > >
> > > Thanks, Julia! Is this patch not acceptable?
> > 
> > The patch looks fine :)  It was just something else to try.
> > 
> > julia
> >
> OK. Thank you, Julia! :)

:(
This has also been done by 9b532df0fc1e ("staging: most: return NULL instead of integer")
I think you are using Linus's tree and not Greg's staging tree.

regards
sudip

