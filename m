X-GM-THRID: 9643848892416
X-Received: by 10.112.202.227 with SMTP id kl3mr8777509lbc.2.1427109901121;
        Mon, 23 Mar 2015 04:25:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.212.42 with SMTP id nh10ls792910wic.52.gmail; Mon, 23 Mar
 2015 04:25:00 -0700 (PDT)
X-Received: by 10.194.221.65 with SMTP id qc1mr15467213wjc.7.1427109900832;
        Mon, 23 Mar 2015 04:25:00 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id i8si436687wif.1.2015.03.23.04.25.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2015 04:25:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wibg7 with SMTP id g7so32900013wib.1
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Mar 2015 04:25:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :content-type:mime-version:content-transfer-encoding;
        bh=fO4yMdeEN5LG+Ec5NA6McOL/nkQqlqRDwfBpWS8g2r8=;
        b=Q+7FYJyyzyC3TxPxWsB9Id3168lXKoYSkY9uo4pxvItjNwee1HEQNCjae1xb082MKh
         JQYBubDnVch6dFtMlMF1/VS4RwxnGyEIKgdF3d6ppUKBrFPF2zJPIKe9H/4fsCFGwqD8
         HYgHf+wT7dEhwSe1bey3A+Z1eYsYgxxakjBVRVievIb8OA+yjs1DOv9DpO/q63lp2lRX
         9c+GgbTdrJwp2eESMxynccHUD404ZlOVW0/sjfyjevJgQHlpYWkA+gnzi7Pm8yWgnsM8
         ACyem0vw2+2DcXwg+28ggMMzRUnyHMMRl86zwhEpuUqqRX3AWFRZcogkSg04wH4rnnVD
         0oew==
X-Received: by 10.194.192.104 with SMTP id hf8mr184912393wjc.44.1427109900744;
        Mon, 23 Mar 2015 04:25:00 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from [192.168.0.101] ([46.214.223.212])
        by mx.google.com with ESMTPSA id cn10sm10680130wib.15.2015.03.23.04.24.59
        (version=SSLv3 cipher=RC4-SHA bits=128/128);
        Mon, 23 Mar 2015 04:24:59 -0700 (PDT)
Message-ID: <1427109852.6799.12.camel@Inspiron>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8712: Use mem_dup()
 instead of copy_from_user()
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Date: Mon, 23 Mar 2015 13:24:12 +0200
In-Reply-To: <alpine.DEB.2.02.1503222101410.2195@localhost6.localdomain6>
References: <20150322190400.GA1115@Inspiron>
	 <alpine.DEB.2.02.1503222101410.2195@localhost6.localdomain6>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.10.4-0ubuntu2 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Du, 2015-03-22 at 21:04 +0100, Julia Lawall wrote:
> 
> On Sun, 22 Mar 2015, Cristina Opriceana wrote:
> 
> > Use mem_dup() instead of its duplicated implementation in order
> > to simplify code. Found with coccinelle.
> > 
> > Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
> > ---
> >  drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 10 +++-------
> >  1 file changed, 3 insertions(+), 7 deletions(-)
> > 
> > diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> > index 81f39c3..c39d031 100644
> > --- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> > +++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> > @@ -1912,13 +1912,9 @@ static int r871x_mp_ioctl_hdl(struct net_device *dev,
> >  	bset = (u8)(p->flags & 0xFFFF);
> >  	len = p->length;
> >  	pparmbuf = NULL;
> > -	pparmbuf = kmalloc(len, GFP_ATOMIC);
> > -	if (pparmbuf == NULL) {
> > -		ret = -ENOMEM;
> > -		goto _r871x_mp_ioctl_hdl_exit;
> > -	}
> > -	if (copy_from_user(pparmbuf, p->pointer, len)) {
> > -		ret = -EFAULT;
> > +	pparmbuf = memdup_user(p->pointer, len);
> 
> There is a potential problem with this.  memdup_user uses GFP_KERNEL 
> (blocking allowed), while the original code used GFP_ATOMIC (blocking not 
> allowed).  You could check whether any locks can be held on the way to 
> this code, which would require GFP_ATOMIC.  On the other hand, it may be 
> that copy_from_user can only be used when blocking is allowed.
> 
> julia
> 
As far as i understand, since copy_from_user() may sleep, it cannot be
used while holding a lock. So, the use of GFP_ATOMIC might be useless in
this context.
Either that or copy_from_user shouldn't be used, which is not the case
because the purpose of this function is to receive a command from the
userspace and call its associated handler.

Cristina







