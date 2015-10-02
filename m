X-GM-THRID: 6200896862154653696
X-Received: by 10.68.131.193 with SMTP id oo1mr12679755pbb.6.1443790755532;
        Fri, 02 Oct 2015 05:59:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.42.6 with SMTP id b6ls1679468qga.3.gmail; Fri, 02 Oct 2015
 05:59:14 -0700 (PDT)
X-Received: by 10.129.33.86 with SMTP id h83mr12591170ywh.29.1443790754909;
        Fri, 02 Oct 2015 05:59:14 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id w5si1591787pbt.1.2015.10.02.05.59.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 05:59:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id lk4so105718337pab.3
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 05:59:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=wlVRF2m3gGSU22wRHpt5wsk7hPdpD990UmUaFctce1E=;
        b=bq/NBUG6mTd0ex+DAFeP0sv3F6z2fWxRnHAHrzoniS/eVecsdsLV6LRPJT8fYQXKc+
         QazHStBD88yWFetfm5YwOmZ8crNg2u7pUfl6uGm9xgk9CQQWjfbDV5oqkMpNlhbaxedX
         mRd+HQFDfDD5n5ASYgOfOfaz7QVtgek/kpg5xw5ALFp8AF7JjUMGzvz09B95qEXmliWw
         KjRtHbqzikmjD+Rq41DH32uTK1rVb+TPc5elgtPDFCJxtDeuwUTuOPAhE4tuYutt/uVL
         KQZrvxP5Wi4LRpwjn9/S57smPvON2GTl1fp4qpaXywPf/Yd3uvkrbGJDBQYNSCs1BbFf
         9tqQ==
X-Received: by 10.68.244.34 with SMTP id xd2mr19705605pbc.50.1443790754745;
        Fri, 02 Oct 2015 05:59:14 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([49.206.244.224])
        by smtp.gmail.com with ESMTPSA id u3sm11979246pbs.33.2015.10.02.05.59.13
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Fri, 02 Oct 2015 05:59:14 -0700 (PDT)
Date: Fri, 2 Oct 2015 18:29:09 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: board: Fixed the error for
 implicit declaration of function
Message-ID: <20151002125909.GB32540@sudip-pc>
References: <20151002040637.GA41415@ubuntu>
 <alpine.DEB.2.10.1510020959500.2633@hadrien>
 <83a1df2c-03c5-456a-9131-3dca7182d7ef@googlegroups.com>
 <20151002102819.GD9346@sudip-pc>
 <775721a0-c98a-427c-a988-49ccb0ad72dc@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <775721a0-c98a-427c-a988-49ccb0ad72dc@googlegroups.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Fri, Oct 02, 2015 at 05:01:06AM -0700, Shivani Bhardwaj wrote:
> Hi Sudeep! I'm having trouble with inline mode of communication, I think 
> I'm doing it wrong. I'm not getting exactly difference between top-post and 
> inline way, I've been warned about this before as well. I'll learn as soon 
> as possible. I've sent my .config file. You can check it. 
Ok, now I understand why you are getting the warning. :)
In your .config CONFIG_STAGING_BOARD is not selected. So staging/board
is not included in the build and as a result the modules on which board
is dependent are also not built. So in this scenario when you try to do
make M=drivers/staging/board it gives warning. To test properly try with
make allmodconfig.

regards
sudip

