X-GM-THRID: 6252531554516467712
X-Received: by 10.13.242.134 with SMTP id b128mr8651365ywf.28.1456666158656;
        Sun, 28 Feb 2016 05:29:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.169.168 with SMTP id f40ls1130968ioj.83.gmail; Sun, 28 Feb
 2016 05:29:18 -0800 (PST)
X-Received: by 10.50.50.138 with SMTP id c10mr6125947igo.3.1456666158329;
        Sun, 28 Feb 2016 05:29:18 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from mail-ob0-x241.google.com (mail-ob0-x241.google.com. [2607:f8b0:4003:c01::241])
        by gmr-mx.google.com with ESMTPS id p10si839505igg.1.2016.02.28.05.29.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 05:29:18 -0800 (PST)
Received-SPF: pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4003:c01::241 as permitted sender) client-ip=2607:f8b0:4003:c01::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4003:c01::241 as permitted sender) smtp.mailfrom=htejun@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-ob0-x241.google.com with SMTP id wz1so8495059obc.1
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 05:29:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=gAbDCulAQCGA4fcC7WYH+HY+FjS3qxlieGcPGP4LwxM=;
        b=K/iWbZ7pCvAsdhAmB6Dj4nUujkg52Vo3W7nGdu0IIZjr3mBJsk8b0FS1oyXu/ewDUy
         2Frocz2+g0+A/C22Wtw0RpX3iEmCZ74ATQQzSL/ykTvxe09/1nW243oKnb84N3iO2SkE
         bYMq8jmooOTS5QR/BrsrVXDwhmjnm7kEktEjztojFDNroSMHWn5ZSx6x/HC3GfzNZ/Fc
         CREK6MPnnrMU9JDc1uW8h5R27lpsH0j/5EcRXu5TR795NoKpTVIwQ1NzHpOMMqMBFZqK
         n6mWVDNXrFVaeJtym6yLEJB5HOxPIPbJpPUpMe24VaS7+YKjtOmZ55belgD0eLAeOIzz
         +lYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=gAbDCulAQCGA4fcC7WYH+HY+FjS3qxlieGcPGP4LwxM=;
        b=kNA9LvyCz5NLTU2OYaXGrc06X/zIjsetr6iUeuuptaBQs7o17RmUXIZO2TGFYZNzqz
         fa7TTouNWFBCulcScCAHy2CIGA6Aq8r4og5ftWG2EfLOnP7N3JHVMEwbpNUmee6qaKFP
         K8oKpl3vD/t0+hLPxC5RTppfjOQFYGC6CiqB3DjPjOm0+50HXewVmb4tUZbLfOzA/Nox
         IZSrCHSuLdL/VWw1Jr3zrZZILMyK0ak0LextY1Y/b+2fKYrZiYY5vQgKY6JEOefdGo6y
         d/feHIEcctOx55UHAK3yd4L2+EvRNFCxP9aMOmqcXDc627XK6d79aDCbe1gj0Yr05niT
         /OEA==
X-Gm-Message-State: AD7BkJKBxHQ3X5JUtgyQoJeOVnjDWRfpgI5SJXU+7/FuLWJSEgc3MsDtMK+jkCMLGkiZpg==
X-Received: by 10.182.213.70 with SMTP id nq6mr7865096obc.8.1456666158045;
        Sun, 28 Feb 2016 05:29:18 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from localhost ([2602:306:b8cd:a0d0::2f])
        by smtp.gmail.com with ESMTPSA id u193sm14650831oie.25.2016.02.28.05.29.17
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 05:29:17 -0800 (PST)
Sender: Tejun Heo <htejun@gmail.com>
Date: Sun, 28 Feb 2016 08:29:17 -0500
From: Tejun Heo <tj@kernel.org>
To: Eva Rachel Retuya <eraretuya@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/5] staging: iio: light: omit space
 after a cast
Message-ID: <20160228132917.GM3965@htj.duckdns.org>
References: <cover.1455730714.git.eraretuya@gmail.com>
 <69141518c3c2f1a6730bcd20c5aed92c48871b7d.1455730714.git.eraretuya@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <69141518c3c2f1a6730bcd20c5aed92c48871b7d.1455730714.git.eraretuya@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Feb 18, 2016 at 03:35:37PM +0800, Eva Rachel Retuya wrote:
> Remove the unneeded space as pointed out by checkpatch:
> CHECK: No space is necessary after a cast
> 
> Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>

Acked-by: Tejun Heo <tj@kernel.org>

Thanks.

-- 
tejun

