X-GM-THRID: 6206645020679733248
X-Received: by 10.66.147.33 with SMTP id th1mr14035155pab.27.1445159038360;
        Sun, 18 Oct 2015 02:03:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.12.69 with SMTP id w66ls853857ioi.58.gmail; Sun, 18 Oct
 2015 02:03:57 -0700 (PDT)
X-Received: by 10.66.90.231 with SMTP id bz7mr4193418pab.31.1445159037914;
        Sun, 18 Oct 2015 02:03:57 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id fa8si6308pab.1.2015.10.18.02.03.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 02:03:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pabrc13 with SMTP id rc13so160817327pab.0
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2015 02:03:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=QMoKJL+TxyxoonWCobd7mdXJUcxo3UWvzM4M7gT6xIw=;
        b=EeSrBK0x/G0SCM1DR8B4TVHwUK5wZH5LC0JTnqHGIL44qiRfiZxQaEOm4auUyiBD4G
         9VeHj55nLEUprZHlOKTi99Txh+fHoLjXG15ik77NAm9IOQTWhaUIZPnPiBWJ478SJCGs
         v1nxmlEgy3zXKYuv4m7bDeKLQR19WglhXcvYxtULMtYeJy53fHFcYPXLFdUbO6D95psX
         oMaZRsjUm8vwvIlXU5QDpefidvYGC5IfauRooLN0+DIUdcDcTc36rek+v9AlVhsfT2Q3
         ifyNf4GmKuRiZ+BMHDTwuchDJwKa9bNYUp7RDZPCoiTj7J7xXmWTwsm4CfqvmNcewYmb
         lTEA==
X-Received: by 10.68.100.226 with SMTP id fb2mr27385953pbb.92.1445159037778;
        Sun, 18 Oct 2015 02:03:57 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([203.215.120.246])
        by smtp.gmail.com with ESMTPSA id oo2sm30132492pbb.86.2015.10.18.02.03.56
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 18 Oct 2015 02:03:57 -0700 (PDT)
Date: Sun, 18 Oct 2015 17:03:53 +0800
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: mt29f_spinand: Remove space
 after a cast
Message-ID: <20151018090250.GA4509@Socrates-Mint>
References: <20151017155226.GA6368@Socrates-Mint>
 <alpine.DEB.2.02.1510171850000.2093@localhost6.localdomain6>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1510171850000.2093@localhost6.localdomain6>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Sat, Oct 17, 2015 at 06:52:18PM +0200, Julia Lawall wrote:
> On Sat, 17 Oct 2015, Eva Rachel Retuya wrote:
> 
> > Modify retval to reflect removal of space during cast operation.
> 
> Thanks for your patch.  However, the commit message is a bit confusing.  
> Retval is not modified.  Actually, there is not much to say beyond what 
> you have in the subject line.  Maybe you could say "Remove the unneeded 
> space before retval".
> 
> Please send v2.
> 
> julia
>

Sorry I made it confusing. I will revise according to your suggestion.
Thank you for the feedback!

Eva
 

