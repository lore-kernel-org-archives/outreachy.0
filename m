X-GM-THRID: 6331266648892243968
X-Received: by 10.107.176.80 with SMTP id z77mr2194130ioe.52.1474174251075;
        Sat, 17 Sep 2016 21:50:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.3.1 with SMTP id 1ls6127628otv.45.gmail; Sat, 17 Sep 2016
 21:50:50 -0700 (PDT)
X-Received: by 10.31.16.75 with SMTP id g72mr2276832vki.41.1474174250443;
        Sat, 17 Sep 2016 21:50:50 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id um12si3847682pab.2.2016.09.17.21.50.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 21:50:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id q2so2853613pfj.0
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Sep 2016 21:50:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=XZog0m22fLUBHBFLiZMVPN7bkTvX5Xm5qY/yk+DPkrQ=;
        b=X+QSGPMUl6kM+0BnQDTLPoLVIKAGIcPg7qitY+HNftx2huu/W5vtPGhQsQRzuahoi3
         LcW/brT9GkryALRO7yTtb/vN5hWLsMlWWWl81ToI3nzbnFWpNDg1/OBk37Kux3B75/W3
         Sh6VQqTj+HoMkMSWhMxhjAVsvRcU+/i/qMIgVkgM4ASB924rcnSXcUhx+8BdZsE3B15+
         OmzVJuJobq/jYk7g159X95YlDhSKUT/s4IH8P8BBXiG0ZAqQYaFiKBOHMvEjFU81CiZx
         G/MeQwSCXowxNQ+EyOr8zU+ECoFLpeWNUtc4e08cLrzsvrukFaKIMKkYviH7J3YKBZLh
         OTUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=XZog0m22fLUBHBFLiZMVPN7bkTvX5Xm5qY/yk+DPkrQ=;
        b=N7zvi2tRCfJ/jbs3uXOALM2tKIDkqmL7G1G5GQk+CmRx3QyqHXeRYXtSTBAx3OBF4Q
         PsNmb2IKXIaUgYrKai+rhu1G+B9Zzjb1qg198OH5kkQzU01krUJd/2zS6iYx6z+9Ihq7
         A3PE4/kxwBSwr8p1devv+J92BylqjXN8qIxFGerC/SJz/hlgNJEuGwFTIgHUPqE5Abhb
         U9ohgrEkQbu4MiTzEZ0s01L70+IKE0ozI4yf6paUWg+KkH+qI5phsq1+0e8YhEHA8t/f
         LKWAAMqm/hyCfOmZ6Gq+v3+8g4oWOcwRjEDaGRn+0hhReQL3KRQpq0VkRNfOrsZbmp9s
         v4Kw==
X-Gm-Message-State: AE9vXwM8Pa7nD+CDD6GthjQKDBSJAQD5ZKD8p+ekhHf0NxvziX8X1AdrTtb/NUMAGKGEdg==
X-Received: by 10.98.91.197 with SMTP id p188mr36649121pfb.101.1474174250230;
        Sat, 17 Sep 2016 21:50:50 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id y3sm62131368pfy.36.2016.09.17.21.50.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 21:50:49 -0700 (PDT)
Date: Sun, 18 Sep 2016 10:20:44 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Forest Bond <forest@alittletooquiet.net>,
	Malcolm Priestley <tvboxspy@gmail.com>,
	Anson Jacob <ansonjacob.aj@gmail.com>,
	Haneen Mohammed <hamohammed.sa@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH 1/4] staging: vt6655: Replace explicit NULL comparison
Message-ID: <20160918045043.GC4499@namrata-HP-Pavilion-g6-Notebook-PC>
References: <cover.1474108444.git.namrataashettar@gmail.com>
 <241ad34249b77e68f1a52ebe7255747c77e43645.1474108445.git.namrataashettar@gmail.com>
 <20160917213945.GA21575@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160917213945.GA21575@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Sep 17, 2016 at 11:39:45PM +0200, Greg Kroah-Hartman wrote:
> On Sat, Sep 17, 2016 at 05:18:19PM +0530, Namrata A Shettar wrote:
> > Replace explicit NULL comparison to resolve checkpatch issue.
> > Comparing variable x with NULL same as !x in this case.
> > 
> > Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> > ---
> >  drivers/staging/vt6655/device_main.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> You have 4 patches here, yet you only have 2 unique subjects.  Don't
> have 2 different patches with the same subject line, that implies that
> they are identical, right?
> 
> Please fix that up and resend this series.
> 
> thanks,
> 
> greg k-h

Thanks for pointing that out. Will correct that and resend the series.

namrata

