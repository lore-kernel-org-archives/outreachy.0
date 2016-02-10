X-GM-THRID: 6249445155877683200
X-Received: by 10.182.137.193 with SMTP id qk1mr35557913obb.50.1455089877482;
        Tue, 09 Feb 2016 23:37:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.78.133 with SMTP id b5ls516357igx.5.canary; Tue, 09 Feb
 2016 23:37:57 -0800 (PST)
X-Received: by 10.107.16.87 with SMTP id y84mr38374898ioi.2.1455089877212;
        Tue, 09 Feb 2016 23:37:57 -0800 (PST)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pf0-x234.google.com (mail-pf0-x234.google.com. [2607:f8b0:400e:c00::234])
        by gmr-mx.google.com with ESMTPS id tn7si222985pac.1.2016.02.09.23.37.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 23:37:57 -0800 (PST)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) client-ip=2607:f8b0:400e:c00::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x234.google.com with SMTP id x65so7891167pfb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 23:37:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=YMiFJ6u2HAy2hf549AaHzLoVKThmEx+em/77xo66QZM=;
        b=du+nyU5uBIME65Enh6kp1WBUW7SANxeaCX/7Ie/UdepYBGAWIfNMf7lX42U0ka5B3a
         nGPrcY2E/AmXEu0mOCQvSRfMBaLjc2FYbKbYfOBzKpLPamte238fzLsCPZI7Jecr6Dbk
         4uCGgbsgG42mxeA6tlKS5+JoVlFLsOQdzvMHZThV2FkDNCuIUcU0xldJYCnBEW2v47Ag
         Xuwb50E9236ZR7Qz98wGN6Ze9jKA42cxmnwCkeByu18Ad7YAZftSIIlcqjbSoTk/kp6x
         V3eL209eIjZWLKtQfOPR++Muhk0kbfr1yHl19tCkY2UHH47iRzt6o6c0llCV8g1BiJjs
         Mrpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-type:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent;
        bh=YMiFJ6u2HAy2hf549AaHzLoVKThmEx+em/77xo66QZM=;
        b=LYhNHvyrmudNKQltz7lpw3TkfEje2s6JvduMC7IHkJy5CXymT14/uROF2KA241rqzs
         9Kjx4rkXHWX5NXoOviWMk8FiAZULvhoKxdDTioFnoYqo80WqdXPddmtl3mFrRE1JVj1Q
         STQozCRZtAESmPNI08SMafDf+9xUCwj0LWQ98CD+TGUEZ17Wopvz1KzWM7THeg1G6fWB
         zWS2WxBtXzYp+cNpVyRKjrgPEUDb6cJLBIvXYRccgXAPEc2TNh53XFw/aY8mQwX2piYN
         w9lrumH4FsKbVF68jYSymuHJq+og5AJo3W9CKisSNkxJg0xZqmm7ZAl7F34lq3L6nv6H
         dHkw==
X-Gm-Message-State: AG10YORkbrIKF0xAaoGvXXRIOA4L1DAWwGYAzXdHP0/BTbtZdXTHU3YROA0uLE+LTyJajA==
X-Received: by 10.98.75.200 with SMTP id d69mr56991641pfj.108.1455089877092;
        Tue, 09 Feb 2016 23:37:57 -0800 (PST)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([183.82.227.168])
        by smtp.gmail.com with ESMTPSA id fl9sm2695532pab.30.2016.02.09.23.37.54
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 09 Feb 2016 23:37:56 -0800 (PST)
Date: Wed, 10 Feb 2016 13:07:47 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: RAKHI SHARMA <rakhish1994@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Julia Lawall <Julia.Lawall@lip6.fr>,
	Daniel Baluta <daniel.baluta@gmail.com>, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] drivers: staging: lustre: lustre:
 lov: lov_pool: Fixed a warning
Message-ID: <20160210073747.GA24358@sudip-pc>
References: <1455062326-20870-1-git-send-email-rakhish1994@gmail.com>
 <20160210061455.GA374@sudip-pc>
 <CAMnyiXsk1P19XHUCx11=s+RtwXSDL-fMxAJdkSaaqdrD6hFSyw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAMnyiXsk1P19XHUCx11=s+RtwXSDL-fMxAJdkSaaqdrD6hFSyw@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Wed, Feb 10, 2016 at 12:24:56PM +0530, RAKHI SHARMA wrote:
> On Wed, Feb 10, 2016 at 11:44 AM, Sudip Mukherjee <
> sudipm.mukherjee@gmail.com> wrote:
> 
> > On Wed, Feb 10, 2016 at 05:28:46AM +0530, Rakhi Sharma wrote:
> > > Fixed a checkpatch warning.
> > > WARNING: struct file_operations should normally be const
> > >
> > > Signed-off-by: Rakhi Sharma <rakhish1994@gmail.com>
> > > ---
> >
> > It now adds new build warning:
> >
> > ../drivers/staging/lustre/lustre/lov/lov_pool.c: In function
> > ‘lov_pool_new’:
> > ../drivers/staging/lustre/lustre/lov/lov_pool.c:438:7: warning: passing
> > argument 4 of ‘ldebugfs_add_simple’ discards ‘const’ qualifier from pointer
> > target type [enabled by default]
> >        &pool_proc_operations);
> >        ^
> > In file included from
> > ../drivers/staging/lustre/lustre/lov/../include/linux/../obd_support.h:43:0,
> >                  from
> > ../drivers/staging/lustre/lustre/lov/../include/linux/obd.h:44,
> >                  from
> > ../drivers/staging/lustre/lustre/lov/../include/obd.h:40,
> >                  from ../drivers/staging/lustre/lustre/lov/lov_pool.c:49:
> > ../drivers/staging/lustre/lustre/lov/../include/linux/../lprocfs_status.h:547:16:
> > note: expected ‘struct file_operations *’ but argument is of type ‘const
> > struct file_operations *’
> >  struct dentry *ldebugfs_add_simple(struct dentry *root,
> >
> > regards
> >
> hi Sudip,
> Will you please help me to understand why this warning produce? Is the
> const I have put there is wrong? but as I think it is ok there.may be I am
> wrong this side, please let me know how this is going on?

you should have also made it as const in the argument of
ldebugfs_add_simple() in
drivers/staging/lustre/lustre/include/lprocfs_status.h.

regards
sudip

