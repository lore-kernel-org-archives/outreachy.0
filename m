X-GM-THRID: 6200896862154653696
X-Received: by 10.129.92.197 with SMTP id q188mr12356082ywb.25.1443788105144;
        Fri, 02 Oct 2015 05:15:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.79.193 with SMTP id l1ls512531igx.1.canary; Fri, 02 Oct
 2015 05:15:04 -0700 (PDT)
X-Received: by 10.68.248.137 with SMTP id ym9mr12539748pbc.14.1443788104562;
        Fri, 02 Oct 2015 05:15:04 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id wl2si1633989pab.1.2015.10.02.05.15.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 05:15:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id hy16so105627263pad.1
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 05:15:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=3uEVdzH4f2FQlDsCCqYISPfi5wL9kWFXeMve/YbBXvw=;
        b=ZT45o5jLVHdQ+CqJvibkJeLsyRzWhff1xxhmHBWfpAyZra/7z7GwxPA3TKQNODZrqX
         J1Fw6G9P0U5C65aqKZMjHpQC1kgyu75jh2vn1AooiAUxyn7VIaVw0DJXDG/ibHsi5ekh
         S2OxDiyo8gnUzJv9ofFQf+b73G0secROHMMNDXUcLzpN2rfvPxY0viJd5L4kND8Vnmlc
         G8FifdzvhWZSJcSlehXxRvsjDshOs4BuhYteVZD7uBekNrh5TW4G/dkdTRl3ad9sFahU
         +eNuT7201KqKA5q5AWnj3RC7+8q2Gfo/qA2VaGin4wnf7ZGeaMrjwGXtGmU0Bnonz+lU
         jOPA==
X-Received: by 10.66.152.200 with SMTP id va8mr19674484pab.17.1443788104450;
        Fri, 02 Oct 2015 05:15:04 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([49.206.244.224])
        by smtp.gmail.com with ESMTPSA id tk4sm11811163pab.45.2015.10.02.05.15.02
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Fri, 02 Oct 2015 05:15:03 -0700 (PDT)
Date: Fri, 2 Oct 2015 17:44:55 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: board: Fixed the error for
 implicit declaration of function
Message-ID: <20151002121455.GA32540@sudip-pc>
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

This is top posting .. replying on top of the mail.

> Hi Sudeep! I'm having trouble with inline mode of communication, I think 
> I'm doing it wrong. I'm not getting exactly difference between top-post and 
> inline way, I've been warned about this before as well. I'll learn as soon 
> as possible. I've sent my .config file. You can check it. 

And this in inline posting. BTW, are you using gmail web interface for
replying? I could not find any reference of client in this mail's
header.

regards
sudip

