X-GM-THRID: 6204202017564393472
X-Received: by 10.107.132.81 with SMTP id g78mr26688656iod.10.1444685701653;
        Mon, 12 Oct 2015 14:35:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.132.144 with SMTP id o16ls1598809ioi.38.gmail; Mon, 12 Oct
 2015 14:35:01 -0700 (PDT)
X-Received: by 10.107.26.84 with SMTP id a81mr25781097ioa.6.1444685701373;
        Mon, 12 Oct 2015 14:35:01 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id el2si1947781pbb.0.2015.10.12.14.35.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 14:35:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id hy16so163593186pad.1
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Oct 2015 14:35:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=3/5ZK3UTHk/YWK81ykRWTWMp0VSfA0o3L8Va5/cX5OE=;
        b=cWLPscueNQ9UvP/BXRAOefXQrhvXppHGoB6NuXLsau1PUiSYCsWZUbTI2mwsTwtAKS
         26TZFs4Kb4u9vzs47YdUggXrsTw27BOUPRtsaK8TxQLNW0FKbUoQf5oh7JUQ/7TFly1+
         L6ZNoZxiFS1HeW2xNzkQaTNOBJk82xK41RWF0ypb8FqJtWEmY1rz+Qmrs5dor0si8SWr
         +AquWoo+16FwCx2zLZFrqKEfJ4kCgqdHn1n97TvHuWt5nImSSqkqGTP4I+GLk/2Obdlm
         SYxcvqg/RtnrnoYK+plmU9wS1O1k6XImPKXi40GKQFi/i6t9Z4tf4KYmfSQVpApp0AXF
         WNEQ==
X-Received: by 10.68.223.34 with SMTP id qr2mr36654693pbc.97.1444685701235;
        Mon, 12 Oct 2015 14:35:01 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from Ubuntu-D830 (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id ir4sm17669788pbb.93.2015.10.12.14.35.00
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 12 Oct 2015 14:35:00 -0700 (PDT)
Date: Mon, 12 Oct 2015 14:35:00 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] sending patch revisions w mutt ???
Message-ID: <20151012213458.GA11878@Ubuntu-D830>
References: <20151011015226.GA3134@Ubuntu-D830>
 <20151012100623.GD13596@sudip-pc>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151012100623.GD13596@sudip-pc>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Oct 12, 2015 at 03:36:23PM +0530, Sudip Mukherjee wrote:
> On Sat, Oct 10, 2015 at 06:52:27PM -0700, Alison Schofield wrote:
> > Looking for help threading my patch revisions in mutt.
> > 
> > I use the mutt -H option to send the original and now I want to send v2 threaded.  
> > 
> > I can open mutt, goto thread, select reply, and then read (:r) in the patch
> > file with vim.  This also means I edit the Subject line manually. None of this is very elegant. 
> > 
> > Is there a better way?
> 
> For sending patch I always use git send-email. mutt is only for replying
> to mails.
> for sending v2 threaded you can use --in-reply-to option of git
> send-email.
> 
> regards
> sudip

Thanks Sudip!  I used git send-email today. (I still hold out hope of
finding mutt instructs too)

alison

