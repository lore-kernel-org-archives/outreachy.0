X-GM-THRID: 6209587037429825536
X-Received: by 10.66.146.73 with SMTP id ta9mr18563011pab.18.1445931779977;
        Tue, 27 Oct 2015 00:42:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.34.106 with SMTP id k97ls3627804qgk.48.gmail; Tue, 27 Oct
 2015 00:42:59 -0700 (PDT)
X-Received: by 10.129.88.87 with SMTP id m84mr33547637ywb.0.1445931779432;
        Tue, 27 Oct 2015 00:42:59 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id pe1si3996775pac.2.2015.10.27.00.42.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 00:42:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pasz6 with SMTP id z6so214400208pas.2
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2015 00:42:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=lzevXNpQU2DwlGzmWzv0D1w0KZnG+qcZcbvxgZ9Y/Bo=;
        b=tzfNPEPzsTeeOYA/mDzCQieSQvXpURm29CsoUhFp14xrtaWa4Oz9ZvNtE6SCh2J5pg
         zlqoj1V5PpD9VhvrWCvhTLS5PAaqIu6PT/1QGTnkGqhLzCYUY3QLfseY/MIJSC03s4hj
         MLhcmgI85/SKynQxdGqPlhcdioAtDs/00Ifw2dDGL8QHP8fZStHV55wkmlKFjDVeea3a
         omeUmq8zCKu9U1r0Yx5njzEeX89YAf480P5/WggeUO6WsAA68WVZj2xSZ88lfbWBIVzV
         sogv/qcb4L1pyaPPx+fLzIoShFJTE8wulCdScWuJdWhd/BA/OAxA9tVyv16S5/t+DYuz
         DIfQ==
X-Received: by 10.67.8.101 with SMTP id dj5mr26281956pad.127.1445931779259;
        Tue, 27 Oct 2015 00:42:59 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([122.169.137.63])
        by smtp.gmail.com with ESMTPSA id w8sm37834460pbs.87.2015.10.27.00.42.57
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 27 Oct 2015 00:42:58 -0700 (PDT)
Date: Tue, 27 Oct 2015 13:12:37 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Burcin Akalin <brcnakalin@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: skein:Add space around '/'
Message-ID: <20151027074237.GA22738@sudip-pc>
References: <1445782135-4972-1-git-send-email-brcnakalin@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1445782135-4972-1-git-send-email-brcnakalin@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Sun, Oct 25, 2015 at 04:08:55PM +0200, Burcin Akalin wrote:
> Add space around operator '/'. Problem found using
> checkpatch.pl
> CHECK: spaces preferred around that '/' (ctx:VxV)
> 
> Signed-off-by: Burcin Akalin <brcnakalin@gmail.com>
> ---

This has already been done by 9efbbfada99c ("skein: fix coding style")

regards
sudip

