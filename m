X-GM-THRID: 6336227865604915200
X-Received: by 10.66.134.174 with SMTP id pl14mr1585869pab.111.1475270466264;
        Fri, 30 Sep 2016 14:21:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.203.7 with SMTP id u7ls982567itg.16.canary; Fri, 30 Sep
 2016 14:21:04 -0700 (PDT)
X-Received: by 10.66.147.34 with SMTP id th2mr2530957pab.24.1475270464363;
        Fri, 30 Sep 2016 14:21:04 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id ua1si809414pac.1.2016.09.30.14.21.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Sep 2016 14:21:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id 21so5443509pfy.1
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Sep 2016 14:21:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=br+X4y/qdR1At9TP4YWaE1/DRyI64toDsfU9RkheS1E=;
        b=Zb3n67R15YPuuDFL0iThTGpjNKO1W+bupiVMyMpmxn5R9g+QjH/6e/O7xjV1lEwqoW
         /xkjCX5VVy76EO2sAjSfQCwiOocfiw3BbNNixLWS9Lbbg3z8mr0cpEWARIw9s6wo8Rrg
         jwiwx8xBkNNDGT6vQsuIdhxaPnWYgh/TLqmhFz0gFHh6DfzOOipL5l6cYKCY2WpACu63
         yb85FqXVMKQqPVTDRa7hTeb/GIcMRa2dqyf1C8tl5Rbz28dlmlVLqHthdjfh4oINSsj+
         k5qsIj8y7Fqmrew1CNh7JpE/q73JqOFO0xrTjxPhGssHXW35WBlKIPEpUUZSi7enT2mE
         Gp8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=br+X4y/qdR1At9TP4YWaE1/DRyI64toDsfU9RkheS1E=;
        b=lNO/3PquwdvgBfNTYPhSoInrhyNZjKeptZziyQQMfan5UkRMc5oBNe4hTCIXQXJxur
         +xQrZQv5xk4XtAYWGtJSp7RFuTa25LlqGxMFR2Qmd5D6IIxuhOrdJPA9XLL/Fqt1cEdS
         F8+0eCyYZ50PmAyLiM3q4HmayzEHd2lDC+lN83THDSMC/paSvELZ2uMHPB7ilYbea/tk
         LRJT0uk9AZDk+ofiaZzCiuZflldMm4rSG4B6zu8JO/tTSijLv6tqffrVK2f/sVa4I9+h
         pleRUhG3wq4imAXA/Y7WxMiXbFJq5e0wislDQHICjDmncBu/ZwN9F87HyTepfnpyhAPl
         9nXQ==
X-Gm-Message-State: AA6/9RmE1yQ/u+vJR614NQgfAuYDnHFyd0j1ICxLf4SjyoukXzLa11rVzTsWdwoQaG/P5g==
X-Received: by 10.98.41.131 with SMTP id p125mr15421177pfp.108.1475270464199;
        Fri, 30 Sep 2016 14:21:04 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:fd6b:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id l3sm19330742pfl.75.2016.09.30.14.21.03
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Sep 2016 14:21:03 -0700 (PDT)
Date: Fri, 30 Sep 2016 14:21:01 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] outreachy
Message-ID: <20160930212101.GA3662@localhost>
References: <alpine.DEB.2.10.1609302238110.3399@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1609302238110.3399@hadrien>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Sep 30, 2016 at 10:40:10PM +0200, Julia Lawall wrote:
> Hello,
> 
> We are around the halfway mark of the application period.
> 
> So that I can get an overview of the current interests of the applicants,
> could you send me a list of your current first and second project choices?
> It's OK to change your mind later, but I would like to know what everyone
> is thinking about now.
> 
> Please do this even if you don't yet have many accepted patches.
> 
Hey Julia,

My first two project choices are: 

1. IIO driver
2. Coccinelle

thanks,
liz
> thanks,
> julia

