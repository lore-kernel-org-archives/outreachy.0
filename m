X-GM-THRID: 6661007874148270080
X-Received: by 2002:a24:13d3:: with SMTP id 202mr3723697itz.20.1550974373129;
        Sat, 23 Feb 2019 18:12:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:5a55:: with SMTP id v82ls2494568ita.0.canary-gmail; Sat,
 23 Feb 2019 18:12:52 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZZeQL3LvknceB/2UAQuq4mjy6sTIhACwJQoFR2iUX60a8RLy8PZBpYrD6G6368zwD7pe0f
X-Received: by 2002:a24:7381:: with SMTP id y123mr3504376itb.32.1550974372193;
        Sat, 23 Feb 2019 18:12:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550974372; cv=none;
        d=google.com; s=arc-20160816;
        b=REztsIjW8IiXg2O6eFS7KaGr6B09HH5wMYHdPHOWfNSepYXJE+OvmO03ow8tyoS+b6
         DPhVG9vmD7MibQevv4bRIlqUqa1fu0Ns7eKqBzi2NJl+bDkGdaX4D0w/j4lg0gaumH29
         JY+pQ2oULEPKiGnwmgt4zEuwMOwAtNpLxcJN9ATHHkA2xHjkx2poJbUPH/p6KX8GzQDq
         9WP2W1mZ9V6dTooP0kE9Y8plHW2mSJIc44uwYlyK015ta8ZiQzQJI0Nvf4mlF6f5BSbg
         HI9POOAPFs34cC2c0RiDbvkICv7n+VJAS0jJXDUV4PoOUsh3T5Gt4M6UeJQdhGw3LUmi
         fqDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=tbIutJKgnV4qSC6ag2f6av2n5iQJsUk89jC/qHQU74Q=;
        b=sjYYtLsqtTFNX/GY54EOMWW1Lz8NQwEbPt4hPo11l5zv7WJ4Q3iJ27uyksifhFris3
         Mwm1PuYjnG5I8agwval/zj4dZ8f/NuyyJSpry+ivMZrxVjSpmm6igPoJ+hvVQ0N/6mZM
         7LpsxKamBjz1obdl6KQg4ov/lIreVpx/jHq+VJ//Q5zcsf3BPoIJSn/UzL71NS98ixZP
         14YqxOAa2qtd5tH6mp+qUc+2aM4Z0TgXjtyw0U7szJUV2x6YWDHTHR4eIOUCOhlJ9ygN
         Rkk+1L8waJZF0Uir0Qvwu2qBtz20OxO70T2IJjSD8phl/LDI6JH0yIdEVclbfn17awHG
         1YOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Xdr4K0KL;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id y7si334549iof.5.2019.02.23.18.12.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Feb 2019 18:12:52 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Xdr4K0KL;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x341.google.com with SMTP id z19so5115822otm.2
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Feb 2019 18:12:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=tbIutJKgnV4qSC6ag2f6av2n5iQJsUk89jC/qHQU74Q=;
        b=Xdr4K0KLpI4cCoo3eB4gwIY1Vw+0zQyoN19psM+JreJjuY0slFWYufLISiu/vNy9zn
         F49G+R9MQMn7q79+Ya+U4/Rbi9aYldHoqQXTIH0pYsqbc0bhVx+OZsUKsZlMD9V1sMMg
         +uTFkbEipL1yEwE7+OswIJrKL/q8n5YmOhD+ppB1Jba71o3Ru0JtzSybBWwpltv4+B/k
         v/GJPdenLvsWS3f9uX7XUlu3FLuKjrWRlMl7paj94In91K5WOWgLcfreoCVa1NnivsS/
         3X9pPtpN15+99Q8g8mX4D0z/4khgGVMfrVW4OoSqhQLo9r2k8Xp+o1VDEyPLIREh+lCN
         yJ/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=tbIutJKgnV4qSC6ag2f6av2n5iQJsUk89jC/qHQU74Q=;
        b=oIxwaUNM56/QjBJZPIoB/BInnZsZcLLzrxpMf2ikwcVIwtHpFeDs1UQTh85wIXsnOw
         IUGlFCuW/VbEIxcqnvmmzCk+DiyUODJtcO0bBVjzMYhBzCYdACO1SH0Jt0vitIsCL1UE
         xmCApH9NvLoVgXv2geqZUImo4UQuTQwx2l5oEDfl8HujrGCFHPmHEtGs2QIiOkX1LRfR
         6fr84Jn+RGmMR85YDTeBWruEK4yhnElPvEaxkNUbgWsCNh6q6+bc0dIXCGSSPPplH+Co
         j+qEvpG6OGoUKNx1qJBt3KHVZuwxuIW2hbwcyQEt0Iz+OF0ssIu6mqqKB2uEz4xMTfYb
         inaQ==
X-Gm-Message-State: AHQUAuZaVnU/anCrglS77kxijf6d8dPW0HnqQqQA5Ioeu1GlumxnmG7k
	g+PM06S+ZNGA0aG8UaprKorYTqpD9BF73w==
X-Received: by 2002:a05:6830:20da:: with SMTP id z26mr7748574otq.204.1550974371717;
        Sat, 23 Feb 2019 18:12:51 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id 187sm2483378oid.22.2019.02.23.18.12.50
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 23 Feb 2019 18:12:51 -0800 (PST)
Date: Sat, 23 Feb 2019 20:12:48 -0600
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>, sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: sm750fb: Fix missing blank
 line
Message-ID: <20190224021247.GA27173@madhuleo>
References: <20190223015223.3282-1-madhumithabiw@gmail.com>
 <20190223074434.GB921@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190223074434.GB921@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Sat, Feb 23, 2019 at 08:44:34AM +0100, Greg KH wrote:
> On Fri, Feb 22, 2019 at 07:52:23PM -0600, Madhumitha Prabakaran wrote:
> > This patch fix a warning
> > WARNING: Missing a blank line after declarations.
> > 
> > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > ---
> >  drivers/staging/sm750fb/sm750_accel.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/sm750fb/sm750_accel.c b/drivers/staging/sm750fb/sm750_accel.c
> > index 242fc29e5738..67f1d9cd566e 100644
> > --- a/drivers/staging/sm750fb/sm750_accel.c
> > +++ b/drivers/staging/sm750fb/sm750_accel.c
> > @@ -302,7 +302,7 @@ int sm750_hw_imageblit(struct lynx_accel *accel,
> >  		 u32 fColor,   /* Foreground color (corresponding to a 1 in the monochrome data */
> >  		 u32 bColor,   /* Background color (corresponding to a 0 in the monochrome data */
> >  		 u32 rop2)     /* ROP value */
> > -		 
> > +
> 
> Shouldn't you just delete this line entirely?
> 
 There is no necessity for blank line, as it doesn't serve any purpose. So, I leave this patch alone and work on another one. 

