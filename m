X-GM-THRID: 6751912583325810688
X-Received: by 2002:a25:ba0b:: with SMTP id t11mr15678520ybg.395.1572297703720;
        Mon, 28 Oct 2019 14:21:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:6e54:: with SMTP id j81ls2948222ybc.11.gmail; Mon, 28
 Oct 2019 14:21:42 -0700 (PDT)
X-Google-Smtp-Source: APXvYqww3lukSye/C/OzeEoeHUoqbxknuzWyFo7RJNQmj/AlNJ1bYjJPTEE5JZLaPSAzlW9DZrSb
X-Received: by 2002:a25:230f:: with SMTP id j15mr16594402ybj.397.1572297702197;
        Mon, 28 Oct 2019 14:21:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572297702; cv=none;
        d=google.com; s=arc-20160816;
        b=FAMkjsNUV1/tbRt856TYdCccrnD3FOvRRlgiqkpZR4ShxYpHKOsRQvxpfxwHmYM+Fa
         GusgIJASyRQB+qXQ7Fgmof9S5rcEwD1T4g4AxYYiYJBkfD8HZdLCy6IPwDbXTF+luc9x
         0vufw19vSN83L87DFAmvrU1qm6zlWW/uy1wmg6lH8lVCILaOakjdzWrXzB+g0bZQSddg
         6zy9GN99dWziYz5g9/F21/01kXzAatOLAAdTl5t6mSr4pZxMebKW3S6Z0x93OcD7Hh89
         UrPVkQUwCRg+9juq9HN54LJY2/DXnsKYMd6VOtKIIBJNArtlvWAy/osyhv9f0vASnq14
         uewg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=nEYu/q/yin2n506DX1msPOl+RRPMS0tt3OGIg0GKpLs=;
        b=HBDpccT0GWc79xM6v3uVSmQthxmbdEZ9D0/vATJR1OLH0Rdpkl4zyBrS8CifaRGn7V
         huYSP9dy8NpXbIfaAPNPSiUdbkqq5pyBRDwipfnHxbxur213SDQw16FQgYuVjUCHa8hU
         N6nrr2MwsQAOSyze9iOFLIQxHsdqONxL1OrwaP+a+j+7lNlBSliPTx7tep2Q3fvQsld6
         2T3fsJPXvSHCqyFylY0kGhEWD9yS1JwQPYGxR+W4jVGhssYHVy4SIr24N6oGo9xMVE+K
         baKIEibF4U+0d/tJg21U2f9jVEc5kPbLSmoMVksjVVEatmDRRA9SKhnH+ebd2in/e+jw
         fGkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kKS8z32r;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id r185si64314ywe.2.2019.10.28.14.21.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2019 14:21:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kKS8z32r;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x744.google.com with SMTP id 15so9975889qkh.6
        for <outreachy-kernel@googlegroups.com>; Mon, 28 Oct 2019 14:21:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=nEYu/q/yin2n506DX1msPOl+RRPMS0tt3OGIg0GKpLs=;
        b=kKS8z32rbrJj9x2g/tYS+skq1wGsHGkm58aRNYdSLjTi6xcg9EzKcWzgwtZF/MGqnV
         9iN7cx7g7U1zAEfvAH9gbMGJuCiU2nYHVIqjlTWTQtoJSDEosmcMjNcoft9kOtQftvNA
         RR6Udn1rQiEwrJvrMFXrnDc8XeAj/DCrJzEkaDvcNOZ8RgwAk7y4jP6JmiyzRyirmMRC
         UTlvqSJH+M5PCMEcC2GM/Z7X3CXRc4F7faZxQPzPLI9JSZ/2H3OaxCWF26uxHahPB5Nw
         AXnAUXuaoY5dbGGQPWQVvt+nRUi9tevAiz9FVpNGYLxU5WWtZ4eoAMQOAr51oQwX8W4a
         pVzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=nEYu/q/yin2n506DX1msPOl+RRPMS0tt3OGIg0GKpLs=;
        b=h3B7zz0Ym4iEhiJiyJLZJmghmmynEKt7u0+46p6ReJtlcCH8iQAxEB0kgBfMErclkQ
         oAvKAH+1/rcPIBJQQRwZ37/2+SNm0whMGReIupxSmRTt0NLW+fwQ8KeoYXOa3Y8VVafz
         F+KqbXtRxc8PksTTWvzciNTBSO0AvnmriY1/FTBxTf4JH+dJZOmA6FMNqM23u3sheYYS
         XSfhSrFzJBTNVZv8dJOLOcq5awwvfgwmrYIOKxISnKz98CgaBymIENPduWoPZgG8Fpyu
         p5n2zQdJsj6Tb+xQ/nQh2pxrJirREO3zh910rZTjVeF3IwMg9QAHHCyCx2OjLbi+F0e/
         8RfA==
X-Gm-Message-State: APjAAAXKWn9TSu5Zodb/Wrs9CCjF7SflJjVD+1ULCul34LjUC8UO3zdh
	R9/agDUVn9KB9O0GOONKgSk=
X-Received: by 2002:a05:620a:993:: with SMTP id x19mr1193151qkx.34.1572297701811;
        Mon, 28 Oct 2019 14:21:41 -0700 (PDT)
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
        by smtp.gmail.com with ESMTPSA id m10sm3988423qkk.125.2019.10.28.14.21.40
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Oct 2019 14:21:41 -0700 (PDT)
Date: Mon, 28 Oct 2019 18:21:37 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v3 1/2] staging: rtl8712: Fix Alignment of open
 parenthesis
Message-ID: <20191028212137.GC2311@cristiane-Inspiron-5420>
References: <cover.1572273794.git.cristianenavescardoso09@gmail.com>
 <158960d90adff42169bb7ce968a4082bf3e73387.1572273794.git.cristianenavescardoso09@gmail.com>
 <20191028190259.GF1944@kadam>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191028190259.GF1944@kadam>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Oct 28, 2019 at 10:02:59PM +0300, Dan Carpenter wrote:
> On Mon, Oct 28, 2019 at 12:15:52PM -0300, Cristiane Naves wrote:
> > Fix alignment should match open parenthesis. Issue found by checkpatch.
> > 
> > Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
> > ---
> >  drivers/staging/rtl8712/rtl8712_recv.c | 36 +++++++++++++++++-----------------
> >  1 file changed, 18 insertions(+), 18 deletions(-)
> > 
> > diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
> > index af12c16..304d031 100644
> > --- a/drivers/staging/rtl8712/rtl8712_recv.c
> > +++ b/drivers/staging/rtl8712/rtl8712_recv.c
> > @@ -61,13 +61,13 @@ void r8712_init_recv_priv(struct recv_priv *precvpriv,
> >  		precvbuf->ref_cnt = 0;
> >  		precvbuf->adapter = padapter;
> >  		list_add_tail(&precvbuf->list,
> > -				 &(precvpriv->free_recv_buf_queue.queue));
> > +			      (&precvpriv->free_recv_buf_queue.queue));
> 
> You did this correctly in v2.
> 
> -				 &(precvpriv->free_recv_buf_queue.queue));
> +			      &precvpriv->free_recv_buf_queue.queue);
> 
> >  		precvbuf++;
> >  	}
> >  	precvpriv->free_recv_buf_queue_cnt = NR_RECVBUFF;
> >  	tasklet_init(&precvpriv->recv_tasklet,
> 
> regards,
> dan carpenter
>
I wondered if it was better to use parentheses or not. Is it necessary
to send a new v5 version containing this change or it's possible to get it from
v2?
Thanks for your help!

