X-GM-THRID: 6751912583325810688
X-Received: by 2002:a9d:7995:: with SMTP id h21mr230303otm.304.1572380522749;
        Tue, 29 Oct 2019 13:22:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:7483:: with SMTP id t3ls1316388otk.2.gmail; Tue, 29 Oct
 2019 13:22:01 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzlM+0wtgumcZ+AGDIltDQP4in+0VAYJ/OWUJu9okW0owH57gRYv0T51E5UWFfQYwkLj7TE
X-Received: by 2002:a9d:684c:: with SMTP id c12mr11634905oto.218.1572380521770;
        Tue, 29 Oct 2019 13:22:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572380521; cv=none;
        d=google.com; s=arc-20160816;
        b=tFJ9Jt/53kRwycV1/P2czuHRQdeIsUFL5tKvTHH78x/EvB6bgXD6XvB3PZknQxNXkP
         O1Ut27fcv1g71Y1JX5vdxcJr5BKwnQaNz0EjWCydgC2uZQD9hIsg0HdgZx23ctN55T0c
         /TRJ792hzeJruZm4zAzjwAxkGuaXEWB75Q3L6J2QlCPnQ942X4+Ajr1zY+BnrurBxDc/
         h87NwLkeIvyGtWkF7oxwAXLBpxCipO5NUpjUJsMBOSPttELVxUm5vSxp9Avne81t0ukN
         04HM2UP24DHs9Z2D7yWY1/0hG6NCN7o6D+PbLKQ0LNGE7Sy5dR2vIeWKMBCcx6JR/DEk
         7gUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=7eC6dKWNvMsoqE27sx3SJtL+ni55vLSbV7uaZSvk6HA=;
        b=jKWya+YANXx2f9C3ATTiWeTXPd9D82TCgDmEkOxqhJKchL2W8gA87M6Klwb11CGQ6x
         +sJVz/v7kXauBx2/3u6R1IJ/KfBemPNc+5Y7HL7SqYYqiEbkJwWuT+wy/o5ePqRdYATD
         c6P1mFW52q+2J91nhTGSEvrvykl1u4MS7hBqYplyBOtsbdqGUg4bdrkldkInPRavbFd5
         PZu7oE6O6iMQnClCiXRqvuo5WtbDUyXuDLrgbz7IL8GHqiiyYOeslpe0FYYfbX/1VhQ+
         +YQItRDUmRukNaT5EbLlwg8xDynh4aVoMNley17cEkNyDCaItFk6XobhtMsO0m1GrO17
         lFaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LsT3FVjt;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id l141si1509oib.4.2019.10.29.13.22.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Oct 2019 13:22:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LsT3FVjt;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x844.google.com with SMTP id x14so202qtq.3
        for <outreachy-kernel@googlegroups.com>; Tue, 29 Oct 2019 13:22:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=7eC6dKWNvMsoqE27sx3SJtL+ni55vLSbV7uaZSvk6HA=;
        b=LsT3FVjts49lemsUAOOtwSTP4d5OSdi5fhMk/nyXObbUvGuzATIbQt5aKsHtCjHG4A
         RX5N2UoDwiooYK9NCYBZQPun4PKRhb8Aal/JQxMABh03kefb1S1V+Ekhzoe7OMuAAm38
         pBR7qE4prndhih0etAFRMqVZ8Xmm2kwqg5U+r31agtGVEUceFn4EYfu5FGG6vs6fpJNP
         pKJm7r5x8SR46RmUszEyYC/iCq5dzofzh/kfKcg7fRAwrFclpUMTsCtu2FyBkw9F4vWa
         SS5M/Djn3y0O+oEhdUn8JkXzGf2m/S5p+1eXCDpBUWIQYMjoJJyZT9O6UKgQQ2JWjFTi
         wmsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=7eC6dKWNvMsoqE27sx3SJtL+ni55vLSbV7uaZSvk6HA=;
        b=ayNBjc0YIt4q4ErUFWQ9Dd4PYitZo6bBEpJkLVQTwPhYFfhD0oWluPYsPHOm6bUksZ
         W8ITs5JXBTBwO1FhreCV6auJWZ+CckB/C4xrOCuVIx78EslXvWti2Kewhg1VsuzYCnNc
         axZZgnI7aSSYrin660yZL/vJat7JN3ihDWgs0gcD5B2SrntbLdoaSt/DpNL8FsxDELYX
         nCD0N8fTOF/OWWH9pbDfI/tjEzIWIDypU9ZkjgciQ1yG/5pD7v8vkjkZ9JRLQ+wkHJ2p
         eAKSYK/punGTnr8Ov6iJj+wjOQ/7pAq/znoNUpUMTAca3/7TuyH7Ys8C58w3xC0dHDp/
         OTOA==
X-Gm-Message-State: APjAAAWeJogO0iB2ZDlAB+gt14oQOAltQztE1yTsqj1VXuNq9QDf5se1
	3SUH0eYBh3s5CBcPgMTMq0Y=
X-Received: by 2002:aed:3baf:: with SMTP id r44mr1073334qte.255.1572380521112;
        Tue, 29 Oct 2019 13:22:01 -0700 (PDT)
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
        by smtp.gmail.com with ESMTPSA id o28sm2309673qtk.4.2019.10.29.13.21.59
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Oct 2019 13:22:00 -0700 (PDT)
Date: Tue, 29 Oct 2019 17:21:57 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Dan Carpenter <dan.carpenter@oracle.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH v3 1/2] staging: rtl8712: Fix
 Alignment of open parenthesis
Message-ID: <20191029202157.GA2188@cristiane-Inspiron-5420>
References: <cover.1572273794.git.cristianenavescardoso09@gmail.com>
 <158960d90adff42169bb7ce968a4082bf3e73387.1572273794.git.cristianenavescardoso09@gmail.com>
 <20191028190259.GF1944@kadam>
 <20191028212137.GC2311@cristiane-Inspiron-5420>
 <20191029080554.GA506924@kroah.com>
 <20191029081501.GA549977@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191029081501.GA549977@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Oct 29, 2019 at 09:15:01AM +0100, Greg KH wrote:
> On Tue, Oct 29, 2019 at 09:05:54AM +0100, Greg KH wrote:
> > On Mon, Oct 28, 2019 at 06:21:37PM -0300, Cristiane Naves wrote:
> > > On Mon, Oct 28, 2019 at 10:02:59PM +0300, Dan Carpenter wrote:
> > > > On Mon, Oct 28, 2019 at 12:15:52PM -0300, Cristiane Naves wrote:
> > > > > Fix alignment should match open parenthesis. Issue found by checkpatch.
> > > > > 
> > > > > Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
> > > > > ---
> > > > >  drivers/staging/rtl8712/rtl8712_recv.c | 36 +++++++++++++++++-----------------
> > > > >  1 file changed, 18 insertions(+), 18 deletions(-)
> > > > > 
> > > > > diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
> > > > > index af12c16..304d031 100644
> > > > > --- a/drivers/staging/rtl8712/rtl8712_recv.c
> > > > > +++ b/drivers/staging/rtl8712/rtl8712_recv.c
> > > > > @@ -61,13 +61,13 @@ void r8712_init_recv_priv(struct recv_priv *precvpriv,
> > > > >  		precvbuf->ref_cnt = 0;
> > > > >  		precvbuf->adapter = padapter;
> > > > >  		list_add_tail(&precvbuf->list,
> > > > > -				 &(precvpriv->free_recv_buf_queue.queue));
> > > > > +			      (&precvpriv->free_recv_buf_queue.queue));
> > > > 
> > > > You did this correctly in v2.
> > > > 
> > > > -				 &(precvpriv->free_recv_buf_queue.queue));
> > > > +			      &precvpriv->free_recv_buf_queue.queue);
> > > > 
> > > > >  		precvbuf++;
> > > > >  	}
> > > > >  	precvpriv->free_recv_buf_queue_cnt = NR_RECVBUFF;
> > > > >  	tasklet_init(&precvpriv->recv_tasklet,
> > > > 
> > > > regards,
> > > > dan carpenter
> > > >
> > > I wondered if it was better to use parentheses or not. Is it necessary
> > > to send a new v5 version containing this change or it's possible to get it from
> > > v2?
> > 
> > Send a follow-on patch to fix this up please as your other one is in my
> > tree now I think.
> 
> Or maybe it isn't in my tree, I have no idea, I can't remember.  YOu
> know if it is applied or not as you will get an email when it happens.
> 
> thanks,
> 
> greg k-h

I received an email with the subject patch "staging: rtl8712: Remove
lines before a close brace" added to staging-next on October 27th. Is
this the confirmation email when a patch is accepted or is there any
other email?

thanks,

Cristiane Naves

