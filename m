X-GM-THRID: 6751912583325810688
X-Received: by 2002:a9d:68ce:: with SMTP id i14mr13528246oto.155.1572383208391;
        Tue, 29 Oct 2019 14:06:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6808:60f:: with SMTP id y15ls1701283oih.16.gmail; Tue,
 29 Oct 2019 14:06:47 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwH/LMW94ewONNtyXDbU6ivfp4GLULwfqBMUFVI2riYgphHKVJ0IV42c0SAo8mxZYkCUJAz
X-Received: by 2002:aca:5686:: with SMTP id k128mr6127245oib.34.1572383207528;
        Tue, 29 Oct 2019 14:06:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572383207; cv=none;
        d=google.com; s=arc-20160816;
        b=XwnddfhLxi5hrfDmftLeD2QPF8VB8bAF6yXPcg5DbaQ4p9PD5ErLF2zbnqqlMWsyYN
         hvVg+adWuCq0np9R02jqG5cPrUPBxWRqFfyP29pRb06S4kTSJoO5TpSFFG6ShOtJfcK7
         AGJuE2Q4hrP+e6fcWD9XhLeTU6ehJHqeMUvmraDZqKy0m5sr84uZ9V3I57PTSjwmkshX
         wfLT/8XZfo/UAzIpnnZ152JW9TqS7O+AgtJ72FYtBrlz/Rm9JA4yMLJiGIdcmBBiiErQ
         V0q19LgFyPeVVaw3RmycL2AyDPQwcWOmydbx0a1zDXq5uPqIHaL8m/K2lBJi+4eUjCaN
         X0pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=6skVi0rtFkpi80eSxc0+eNXVONcB80vIIOqF9Qu6A+Q=;
        b=XLMh3Dlog6PZUJgphIm7WqaOyOvAuLqC71+3NPuj5+4J6kU1EakIJ+01bZcIMvuKFi
         YZG7AMDTsaVrcNTT8yAzu8FHLg47dY2dTYpzi3hjqWzVxahjGZtyLuHpRtQ3kVHAThUs
         /S7yTCx3fgTeWj/rNITsqY+lWjj5KvAFR8APv42erWFGwOVqDo5L1OHiubRkDK8aLeZR
         9FeZBRfJWAifcMQMuKb3+7dubMUDLW2+KXWYL0SkE6D45vZGruQRs2DyTaD2jjrfv691
         VhDZQxXUXDoIlIozM0yMqNLwkRTVV49rJOlehDfCS1LAcjjY8cclr/FL9jILVVuanRyM
         fDVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="lIdb3C/G";
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id c19si8762oto.3.2019.10.29.14.06.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Oct 2019 14:06:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="lIdb3C/G";
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x742.google.com with SMTP id m4so345377qke.9
        for <outreachy-kernel@googlegroups.com>; Tue, 29 Oct 2019 14:06:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=6skVi0rtFkpi80eSxc0+eNXVONcB80vIIOqF9Qu6A+Q=;
        b=lIdb3C/GTtX/EWs3x2yYpBWFePbIdBuKx2Or1kdG1cA44GGtSfnGnU4mO+Fsq2bqXX
         Hn70rswGjIxsJTYl4jUV4Hmc7J7zbNXlwDykdkiPG3T6dQpq9h189jj+aL6MmTpg8pms
         ND/8G7/fMtQ2TpvVsvhfZ6Efs5pmvNAFS0SHImlhYxLpxcWBbO5i6zHTVIaZVNU+JPve
         P6afrFEEBw5WwbOfnVWhHJj65KnlRCCzLSsuNjVAqUJAOq0WgThJ6BQaao/JjoAZaCfg
         usCi9O2dRyTvj4Bg2e/AdBP+EmNkLRXMYImVCO8n5BRBuiTAAg5c01OafYd6Rd763ms3
         INHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=6skVi0rtFkpi80eSxc0+eNXVONcB80vIIOqF9Qu6A+Q=;
        b=T4nIzHkmLqzxTkZMq+56ER8R8UGZkgGs1gq6LR/v71U8mrTB3GM+M1rHXqXCrEdmbv
         OwLfQ508Zxd+9emVlq78roRtzHw8YJpDftdIqX02b8v6Z0qj06ZBFFwJhovOqCcMx4ZG
         z+ZMacnIJxTikS1XCGuHVbXfk6NBLZbeX3DaJebjKMlwUKwek7TB3E8KxJpQmqy1mbtk
         MnRr3uxEIp00S8d/ySyivo6TfIdTu57fJ1yovuoW97/S/Waf462TuPbQV0RQmx73xwns
         7+dm9uGV8cURzmgfymFFJOSXpKLkSgMuha3Tatou2C6PGcqRuNX9Vry8XpWzWqb35mlx
         ej5Q==
X-Gm-Message-State: APjAAAVdBbM4x1WAHnOElXWnMiB8k5YXafZy7qLw6c07pQsgybmfagTv
	PwTpBU+m45ntjTJkN6rYGgU=
X-Received: by 2002:a37:6f06:: with SMTP id k6mr23897684qkc.143.1572383206932;
        Tue, 29 Oct 2019 14:06:46 -0700 (PDT)
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
        by smtp.gmail.com with ESMTPSA id k17sm12690744qtk.7.2019.10.29.14.06.45
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Oct 2019 14:06:46 -0700 (PDT)
Date: Tue, 29 Oct 2019 18:06:42 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH v3 1/2] staging: rtl8712: Fix
 Alignment of open parenthesis
Message-ID: <20191029210642.GA14913@cristiane-Inspiron-5420>
References: <cover.1572273794.git.cristianenavescardoso09@gmail.com>
 <158960d90adff42169bb7ce968a4082bf3e73387.1572273794.git.cristianenavescardoso09@gmail.com>
 <20191028190259.GF1944@kadam>
 <20191028212137.GC2311@cristiane-Inspiron-5420>
 <20191029080554.GA506924@kroah.com>
 <20191029081501.GA549977@kroah.com>
 <20191029202157.GA2188@cristiane-Inspiron-5420>
 <alpine.DEB.2.21.1910292159170.2199@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1910292159170.2199@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Oct 29, 2019 at 09:59:31PM +0100, Julia Lawall wrote:
> 
> 
> On Tue, 29 Oct 2019, Cristiane Naves wrote:
> 
> > On Tue, Oct 29, 2019 at 09:15:01AM +0100, Greg KH wrote:
> > > On Tue, Oct 29, 2019 at 09:05:54AM +0100, Greg KH wrote:
> > > > On Mon, Oct 28, 2019 at 06:21:37PM -0300, Cristiane Naves wrote:
> > > > > On Mon, Oct 28, 2019 at 10:02:59PM +0300, Dan Carpenter wrote:
> > > > > > On Mon, Oct 28, 2019 at 12:15:52PM -0300, Cristiane Naves wrote:
> > > > > > > Fix alignment should match open parenthesis. Issue found by checkpatch.
> > > > > > >
> > > > > > > Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
> > > > > > > ---
> > > > > > >  drivers/staging/rtl8712/rtl8712_recv.c | 36 +++++++++++++++++-----------------
> > > > > > >  1 file changed, 18 insertions(+), 18 deletions(-)
> > > > > > >
> > > > > > > diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
> > > > > > > index af12c16..304d031 100644
> > > > > > > --- a/drivers/staging/rtl8712/rtl8712_recv.c
> > > > > > > +++ b/drivers/staging/rtl8712/rtl8712_recv.c
> > > > > > > @@ -61,13 +61,13 @@ void r8712_init_recv_priv(struct recv_priv *precvpriv,
> > > > > > >  		precvbuf->ref_cnt = 0;
> > > > > > >  		precvbuf->adapter = padapter;
> > > > > > >  		list_add_tail(&precvbuf->list,
> > > > > > > -				 &(precvpriv->free_recv_buf_queue.queue));
> > > > > > > +			      (&precvpriv->free_recv_buf_queue.queue));
> > > > > >
> > > > > > You did this correctly in v2.
> > > > > >
> > > > > > -				 &(precvpriv->free_recv_buf_queue.queue));
> > > > > > +			      &precvpriv->free_recv_buf_queue.queue);
> > > > > >
> > > > > > >  		precvbuf++;
> > > > > > >  	}
> > > > > > >  	precvpriv->free_recv_buf_queue_cnt = NR_RECVBUFF;
> > > > > > >  	tasklet_init(&precvpriv->recv_tasklet,
> > > > > >
> > > > > > regards,
> > > > > > dan carpenter
> > > > > >
> > > > > I wondered if it was better to use parentheses or not. Is it necessary
> > > > > to send a new v5 version containing this change or it's possible to get it from
> > > > > v2?
> > > >
> > > > Send a follow-on patch to fix this up please as your other one is in my
> > > > tree now I think.
> > >
> > > Or maybe it isn't in my tree, I have no idea, I can't remember.  YOu
> > > know if it is applied or not as you will get an email when it happens.
> > >
> > > thanks,
> > >
> > > greg k-h
> >
> > I received an email with the subject patch "staging: rtl8712: Remove
> > lines before a close brace" added to staging-next on October 27th. Is
> > this the confirmation email when a patch is accepted or is there any
> > other email?
> 
> No, that means it's good.
> 
> julia
>
So when do I know if a patch has been accepted or not? Is When An
Acked-By Is Placed?
> >
> > thanks,
> >
> > Cristiane Naves
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191029202157.GA2188%40cristiane-Inspiron-5420.
> >

