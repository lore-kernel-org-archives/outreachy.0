X-GM-THRID: 6523850474748116992
X-Received: by 10.25.141.211 with SMTP id p202mr755541lfd.23.1518959370166;
        Sun, 18 Feb 2018 05:09:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.170.83 with SMTP id t80ls588825lfe.0.gmail; Sun, 18 Feb
 2018 05:09:28 -0800 (PST)
X-Google-Smtp-Source: AH8x227gEqqMi+0kOsk9/DweG/jO0fCjSkHmC3i6hrO28oRncrZ0KEbyxOTbDOVdIUNuUlbLq4kA
X-Received: by 10.25.0.140 with SMTP id 134mr838014lfa.9.1518959368903;
        Sun, 18 Feb 2018 05:09:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518959368; cv=none;
        d=google.com; s=arc-20160816;
        b=SNnGxsQCs7CP+BYlD1fOwidEDu5CWk8n6ANIY+Bo+55Ll9mnx6HfvJypP3bYeORGSn
         pcG0nRUD1Ex8Fmqo2as0diMYGt7Q38arbS3vBXGfRz/+Aa3N5MRYi3qJcF3JMEE1FHqU
         O+JRHmunBHA8dr6MBOipfCPuWG4IIIHAJSVAScN13+hRGP6ViiPmCiRv4i/49hr32GfD
         r0wa5dZ1ETCDLC5/WiXSzYi3mFZ+jj2hC8965QLvfMNVYEXbxfN3SDnz8jV5q42t7FmH
         1rCAZ9/buARbxwQ3p/oX2BB8yw1KvjOrkgPwGNaMuRUgO1Jfrv0Wjdg+BqX8m8hLgv+G
         +64g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=QvRGVoQGsJDWcuNZMMkjMYo6hMYnvJAn1x/CzJ4rVkc=;
        b=vomI3TVIGTK0Mi/oh5QGLsjLeD6gJIYtc3hfPhYsPtEQginF2VgS9ZpnmO7H9qy/bi
         Zzp7mKAB3lC27cb1cJ2mhpSuo0KvfDNT2pb3zlldYSlX6xRwpIF/QuJ3cgs9NDjeI7ti
         DHjLPaGRkPNKoeoSZQrrXyVNqTcpw31eMvfvP9xF8QpOdlirJ6mWgmKJPwPOEP5IZCbs
         CqTa/Y4S6JBFfAQJZU95lz4C6TGY3OIzuJaDfhiTo2EhDIrx/mWvBznhWyGQXhZaQzB1
         JieOy4eSMONXrx/SuaoZ6A8lXDt3T+fF3j5M+ZA1ORmBrIr/mMT8WPW0MiMvp5NauwTa
         z+xw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ANgqAPxs;
       spf=pass (google.com: domain of chenyensu0@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) smtp.mailfrom=chenyensu0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <chenyensu0@gmail.com>
Received: from mail-wr0-x242.google.com (mail-wr0-x242.google.com. [2a00:1450:400c:c0c::242])
        by gmr-mx.google.com with ESMTPS id k82si508565lfe.1.2018.02.18.05.09.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Feb 2018 05:09:28 -0800 (PST)
Received-SPF: pass (google.com: domain of chenyensu0@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) client-ip=2a00:1450:400c:c0c::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ANgqAPxs;
       spf=pass (google.com: domain of chenyensu0@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) smtp.mailfrom=chenyensu0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x242.google.com with SMTP id s5so7065957wra.0
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Feb 2018 05:09:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=QvRGVoQGsJDWcuNZMMkjMYo6hMYnvJAn1x/CzJ4rVkc=;
        b=ANgqAPxscvSh4LmAt8BI7cN7baJA3SmDm70tQ6XQea+9WA1mIPsC7jnujicM9bOl0H
         gmcpeefPBncY2LEx1xxWsI6c6ML1VjAOBPwLDHixlYkvRVufcmY8rDvax1HrShTqdX+u
         kB0WlYKBQsLm/xIq5tEbuOI+h3bx2Itze8rCksppVBtzEUBQ4qkKnyZuXgxGBK//2tzi
         98HFoHdWYArLw6lohTc2aT/aY6TeAciFc9eGbn+fKGB0+TX4xD1CqrZxj47ZU9Qlu4Q0
         BwgwmI1qd5YsMGbMYPCiBi15w7Vul9laGD6GlViQst/5itYr0Uj05FjX+V9ItAuNDPyl
         OnzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QvRGVoQGsJDWcuNZMMkjMYo6hMYnvJAn1x/CzJ4rVkc=;
        b=U7vx9cWqBtILbd7WNP5GbJCfv9+hoJSvd5ZZog8WSJMpP5+19nOCBJBhSfgR8gZec0
         v0oIx/F6oC+yJgjz/WMDn3ozG/XmlxcFs5vDlbCPaPpevAipG9dFVYnRoSn3E1QGcp8I
         i/FAjtJJ2i4bMD/O7Vux5eN+ckgTuxyn938Xj48966z0gQw5AxkwdwEAUgXe0HUklPeP
         ciktF/zE8XeVeJJiP/4YWqHLqseMc50VSqpv22ZhqTgamPSJbv4oKUf5gxBFeA6tCT3x
         f0Yd8AUS5jbIr8X3nPwqBOamRJZDaXirum6HOwBFTV8JJ895H1JUMcpCYALBEEUWQxSW
         eKyA==
X-Gm-Message-State: APf1xPD1/ubIMKvFgsMGmIHjUX8aaOgd8R9cPYRDy1CYTEd5LS67rTPn
	lmUCwVu2HMQpUfVBsMMBFuGdbIU9nUM=
X-Received: by 10.223.184.26 with SMTP id h26mr4223129wrf.65.1518959368630;
        Sun, 18 Feb 2018 05:09:28 -0800 (PST)
Return-Path: <chenyensu0@gmail.com>
Received: from outreachy-kernel (eth-west-pareq2-46-193-1-181.wb.wifirst.net. [46.193.1.181])
        by smtp.gmail.com with ESMTPSA id i75sm16093602wmg.41.2018.02.18.05.09.28
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 18 Feb 2018 05:09:28 -0800 (PST)
Date: Sun, 18 Feb 2018 14:09:25 +0100
From: Eisha Chen-yen-su <chenyensu0@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, abbotti@mev.co.uk,
 hsweeten@visionengravers.com
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: Use '"%s:",
 __func__' instead of function name
Message-ID: <20180218140925.2a93a51c@outreachy-kernel>
In-Reply-To: <alpine.DEB.2.20.1802181351230.2777@hadrien>
References: <20180218111041.7762-1-chenyensu0@gmail.com>
	<alpine.DEB.2.20.1802181351230.2777@hadrien>
X-Mailer: Claws Mail 3.15.1-dirty (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sun, 18 Feb 2018 13:55:11 +0100 (CET)
Julia Lawall <julia.lawall@lip6.fr> wrote:

> On Sun, 18 Feb 2018, Eisha Chen-yen-su wrote:
> 
> > The script "checkpatch.pl" pointed information out like the following:
> > WARNING: Prefer using '"%s...", __func__' to using 's626_ai_cmd',
> > this function's name, in a string.  
> 
> Thank you for the patch.  The change looks fine, but the commit message
> could be improved.  It is not clear what is meant by "information like the
> following".  It suggests that checkpatch provided some other similar
> information, but for some reason you only addressed this case.  The focus
> is furthermore too much on checkpatch, and not enough one what you did.
> The actual checkpatch message is indeed not very important.  Instead, say
> what you did and why.  And it should be stated in the imperative, as
> though you are telling git what to do.  So it could be "Replace an
> occurrence of the function name in a string by a reference to __func__, to
> improve robustness.  Problem found with checkpatch.".
> 
> julia
>

Thank you for the feedback. I will rephrase the commit message by sending
a v2 of my patch.

Eisha

> >
> > Signed-off-by: Eisha Chen-yen-su <chenyensu0@gmail.com>
> > ---
> >  drivers/staging/comedi/drivers/s626.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/comedi/drivers/s626.c b/drivers/staging/comedi/drivers/s626.c
> > index 0b3cfe934e14..ec54dc3e9ad6 100644
> > --- a/drivers/staging/comedi/drivers/s626.c
> > +++ b/drivers/staging/comedi/drivers/s626.c
> > @@ -1700,7 +1700,7 @@ static int s626_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
> >
> >  	if (devpriv->ai_cmd_running) {
> >  		dev_err(dev->class_dev,
> > -			"s626_ai_cmd: Another ai_cmd is running\n");
> > +			"%s: Another ai_cmd is running\n", __func__);
> >  		return -EBUSY;
> >  	}
> >  	/* disable interrupt */
> > --
> > 2.14.3
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180218111041.7762-1-chenyensu0%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >  


