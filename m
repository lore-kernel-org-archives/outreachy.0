X-GM-THRID: 6250301403759116288
X-Received: by 10.13.219.80 with SMTP id d77mr2698474ywe.39.1455300238806;
        Fri, 12 Feb 2016 10:03:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.225.71 with SMTP id ri7ls237754igc.14.canary; Fri, 12 Feb
 2016 10:03:58 -0800 (PST)
X-Received: by 10.107.164.208 with SMTP id d77mr3813445ioj.22.1455300238178;
        Fri, 12 Feb 2016 10:03:58 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id u66si1723647pfa.2.2016.02.12.10.03.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 10:03:58 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id c10so4277161pfc.0
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 10:03:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=JnK85NOPubXWaGoDREX5k8MghaG+XxvnjdFACH9cRz4=;
        b=CBdGr2QS2lDLlZMMA3COnM6uW0uEwa7Qu4c+fLMNqircy0derZNo6HLo6PgAql4kFh
         bEPBvypDM2pNizmKt788/Z4i6nx+p0UDG82i0bxelETI73J6YwJZ9BAGzgmP72cs3F0s
         7fejyk54IItKqR9lAkqMuf2GLN1Bb5mssb8TR6KXnIe6Oq9HZSa8AmVgFrN5+f8zhqOi
         fZaMoVkRb8T8VqXSTu6OTkGauBJfPQZBBGX67uEh6+xgJ8QHPQGYLR+qMbOpJrY1qmPP
         lJ5lZiDbZDPPCFoOoyYwcOeXcOf4lrz82qJW6dPpWg9PyIqWtvoSr2K/yrZNPETjantr
         jvpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=JnK85NOPubXWaGoDREX5k8MghaG+XxvnjdFACH9cRz4=;
        b=X3Jt8GAzgrfdM4Ua4l6YP9AkD44Y90e/5mdy4/RxJGCtqqz9BLLAye1Xj+BvJwD33h
         Y0DvbZeudB5pqyyFg+PvXlIKxGS2WXrQJ3KhXl9nwxPBqaY9y3Fwrzgh2+mVALRxMUqG
         TZs26XiZUFzz6tu+FrbBcLwk/xfJxv05wW8JuBOzG4YXrqj64ClhsdQMpEnS7nOFDctx
         Un7ba5cfi9ZO5zyAIDa6wiZuwKSaVFUt4mF5LwGfOMODn2EJeo5hxqczEWOPK/d/FmgW
         6c/NYtB+1u5wmgsXEzoxZhEUxwyO6wCNaUuuGXaX247xYedLKbpyMBd1lkHcGAW88ybu
         F86Q==
X-Gm-Message-State: AG10YOQXvd0CpJBgNPOT+8QVpZntsaL3k+URKT1sKWv6DCf6MKsEBdOmYPHdq62RxXC4lw==
X-Received: by 10.98.18.8 with SMTP id a8mr4073977pfj.41.1455300237997;
        Fri, 12 Feb 2016 10:03:57 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-97.dhcp.embarqhsd.net. [67.232.66.97])
        by smtp.gmail.com with ESMTPSA id qj8sm20921012pac.40.2016.02.12.10.03.56
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 12 Feb 2016 10:03:57 -0800 (PST)
Date: Fri, 12 Feb 2016 10:03:55 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: Daniel Baluta <daniel.baluta@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: vt6656: replace
 GFP_ATOMIC with GFP_KERNEL for urb allocation
Message-ID: <20160212180354.GA2283@d830.WORKGROUP>
References: <20160212072127.GA14416@d830.WORKGROUP>
 <1455262646-14649-1-git-send-email-amsfield22@gmail.com>
 <CAEnQRZD3vm2jfVM+j5jU3p2ya=8QxeT=Tq+fcCjsPz4U9Sx9EA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAEnQRZD3vm2jfVM+j5jU3p2ya=8QxeT=Tq+fcCjsPz4U9Sx9EA@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Feb 12, 2016 at 01:44:47PM +0200, Daniel Baluta wrote:
> On Fri, Feb 12, 2016 at 9:37 AM, Alison Schofield <amsfield22@gmail.com> wrote:
> > Replace one instance of GFP_ATOMIC with GFP_KERNEL during urb buffer
> > allocation.  This makes vnt_alloc_bufs() consistent in setting GFP_KERNEL
> > during kmalloc() and usb_alloc_urb(). GFP_KERNEL is safe because we are in
> > process context, not in an interrupt handler, nor holding any spinlock.
> >
> > Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> 
> Really nice idea. While at it please also fix the allocations in the same
> function for priv->interrupt_urb and rcb->urb.

Credit goes to Julia's eagle eye!
Sending patch update.
alison

> 
> > ---
> > Changes in v2:
> > expanded abbreviations in commit message
> >
> >  drivers/staging/vt6656/main_usb.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
> > index 05f86ff..f7c4362 100644
> > --- a/drivers/staging/vt6656/main_usb.c
> > +++ b/drivers/staging/vt6656/main_usb.c
> > @@ -439,7 +439,7 @@ static bool vnt_alloc_bufs(struct vnt_private *priv)
> >                 tx_context->pkt_no = ii;
> >
> >                 /* allocate URBs */
> > -               tx_context->urb = usb_alloc_urb(0, GFP_ATOMIC);
> > +               tx_context->urb = usb_alloc_urb(0, GFP_KERNEL);
> >                 if (!tx_context->urb) {
> >                         dev_err(&priv->usb->dev, "alloc tx urb failed\n");
> >                         goto free_tx;
> > --
> > 2.1.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1455262646-14649-1-git-send-email-amsfield22%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.

