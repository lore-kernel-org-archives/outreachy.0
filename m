X-GM-THRID: 6249264575111233536
X-Received: by 10.50.109.136 with SMTP id hs8mr3833505igb.12.1455020555387;
        Tue, 09 Feb 2016 04:22:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.83.200 with SMTP id j66ls3551119qgd.92.gmail; Tue, 09 Feb
 2016 04:22:34 -0800 (PST)
X-Received: by 10.129.82.76 with SMTP id g73mr34333207ywb.57.1455020554733;
        Tue, 09 Feb 2016 04:22:34 -0800 (PST)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pf0-x22a.google.com (mail-pf0-x22a.google.com. [2607:f8b0:400e:c00::22a])
        by gmr-mx.google.com with ESMTPS id u66si5236741pfa.2.2016.02.09.04.22.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 04:22:34 -0800 (PST)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) client-ip=2607:f8b0:400e:c00::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22a.google.com with SMTP id c10so60335051pfc.2
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 04:22:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=D86kcf5mWQojbxLLMz8u6UqokLg4VoshWWabtmvlVfg=;
        b=dBFHuMRt8zoR8P4+0otDEKL49k4GhgeKAMe49f51naLy6D3WxEVUyIWYdXRE+7C9Rf
         pTMsb5T8EQpRBZ/vEoNWBnKNhF/coj52FeK//H7lq0ce1fdfd1oVDa75+9+Fdrp6BdvY
         nYlbT1RUcjKa6BqusFyMNcoMazlpSXun82CvJRjvh1iGfNI74j/VlvOxB69MRnu7SpNf
         wUmIj0gvGn9eEkhmo9eaNQbmOeYykccm1uFr1GbkyH+p1V5J9HLETA4KBZjvQRGuIBUd
         gi8WKLDOq6b1byil8XA4/zu+tBNJXpe1TWa3y2A/UhmoKoE9yF7eUloOgk+dSzcYyn0w
         9mhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=D86kcf5mWQojbxLLMz8u6UqokLg4VoshWWabtmvlVfg=;
        b=f/ohvbu28oQQQNVhhlQ0y6Z7mbl/4INqN4TtI3XRa+DotNNi9TxT9u6GhD5oMvzx39
         +2j/UXC/RyiF88J10SbV5a+5JL+kA9K2Grf7RtezGt42xLDoB9pW3wkL7H+6nDuxlVqu
         PvpOE2XJC7bW/mWabfhjuojESf0kCx7lZdypwQ7UN/p3M55jK/YoiRrTku+UruDQk4Dt
         oNLmJvPKW079bPAqsr8G6KuX2B907MR10VbecQmXmDVt0LL0JDNcQqtjdSVnin7SmdQq
         53zxVcWb+bDVb3epZaqH9/5e5ya7h4KBs9ZBGo6R6Uxis8SdUuIdhekiouvlSYi5NJuk
         K9bQ==
X-Gm-Message-State: AG10YORK9J9kYoqqE8hQ4xxBHE1FdpMBvG8cu9457XLJfX/rQFhrw+AVmMifSx2dPHpeFw==
X-Received: by 10.98.43.151 with SMTP id r145mr17675111pfr.4.1455020554569;
        Tue, 09 Feb 2016 04:22:34 -0800 (PST)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([183.82.227.168])
        by smtp.gmail.com with ESMTPSA id vy6sm37488233pac.38.2016.02.09.04.22.33
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 09 Feb 2016 04:22:34 -0800 (PST)
Date: Tue, 9 Feb 2016 17:52:26 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: dgap: Merge two separate if
 conditions
Message-ID: <20160209122226.GA13226@sudip-pc>
References: <20160209171735.GA4048@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160209171735.GA4048@janani-Inspiron-3521>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Tue, Feb 09, 2016 at 12:17:35PM -0500, Janani Ravichandran wrote:
> Merge two if conditions with the same statements to avoid code
> duplication.
> 
> Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> ---
>  drivers/staging/dgap/dgap.c | 6 +-----

dgap is no longer in staging tree. Which tree are you using?

regards
sudip

