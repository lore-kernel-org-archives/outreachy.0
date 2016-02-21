X-GM-THRID: 6253655179876368384
X-Received: by 10.194.62.69 with SMTP id w5mr2911049wjr.5.1456073506696;
        Sun, 21 Feb 2016 08:51:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.24.194 with SMTP id 63ls204148lfy.18.gmail; Sun, 21 Feb
 2016 08:51:45 -0800 (PST)
X-Received: by 10.25.138.84 with SMTP id m81mr1296422lfd.5.1456073505974;
        Sun, 21 Feb 2016 08:51:45 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x229.google.com (mail-wm0-x229.google.com. [2a00:1450:400c:c09::229])
        by gmr-mx.google.com with ESMTPS id h73si643001wme.0.2016.02.21.08.51.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 08:51:45 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::229 as permitted sender) client-ip=2a00:1450:400c:c09::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::229 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x229.google.com with SMTP id g62so128134537wme.0
        for <outreachy-kernel@googlegroups.com>; Sun, 21 Feb 2016 08:51:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=x2t76sBbZFvk6xe7PpmBUjhGF5g6mhKzN4L3xTEt4Xg=;
        b=SvOxLp5nKo6ATrBhr6z2eOLJb6JoR3dLHLX89Ec0hA9bOBL94TAe67GhCzbDv28bC/
         UsPv9u5Z6robX+2RcyzK7g1bbgq61RUT/vZ/ViYTqDXTUmlMYKNCU0qgp4MMV5k44Nrc
         icjwCXJy/w+VkkvS/yIEOv/+2jiW55xIgNiJFIuHZ//I1tpNet6C1Ca7mw9q5VjRXdl+
         GhyTv/74xBBkZGCliNtzaXpgh5+/w+t1NcGEnmhGUa7RoznRyjmc7Yqz96ZMkpTmyEhT
         W0YAD43yEV3WJ9R9CaBht9zVfc9gutLU6kRh+xN++vhpVnVzq5bZQyDIIwkGoHQkPGuI
         12QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=x2t76sBbZFvk6xe7PpmBUjhGF5g6mhKzN4L3xTEt4Xg=;
        b=Gm7UhvsSIBhwAa1TzzuoOxNGesyVzkeuQCn6IhAUJ+SAIZa+1xkxJUDL27+AqPR02+
         GoGXyQ+0VpfSxSYv77cQeke5kBqL5JoShCFii0CpRw6QFdKjfrEiZh8aQzm8wLusl7j/
         8njMsUjjdPzjZjQKZaY3RoVrBVQmk5mxm9+40AZ7u/bz9JvxU/Y0R4jyrfF/x7XbRGoR
         fyqqNn87BANSBD3zax3P418Ho/fySQDagQw7SZvZNjTOifnBY6ZU/6yMA44qn3WTC0Zt
         SdfJWihCJLkT7uCDJYBRHclB3molFVCQ2tnZ6Soet2mamsFAoLsulPyyDAZ7798oqMBM
         1maQ==
X-Gm-Message-State: AG10YOT9aBGWmuJOb2NHPfrdFRMzugIuz1ORID59E2LUV4nuUaElgoQLIWeaA5pB51UOGQ==
X-Received: by 10.28.131.134 with SMTP id f128mr8220110wmd.41.1456073505733;
        Sun, 21 Feb 2016 08:51:45 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (164.Red-2-136-25.dynamicIP.rima-tde.net. [2.136.25.164])
        by smtp.gmail.com with ESMTPSA id u132sm16037142wmd.1.2016.02.21.08.51.44
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sun, 21 Feb 2016 08:51:45 -0800 (PST)
Date: Sun, 21 Feb 2016 17:51:42 +0100
From: Laura Garcia <nevola@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: nvec: Avoid the use of BUG_ON
Message-ID: <20160221165141.GA2213@sonyv>
References: <20160221081553.GA4327@sonyv>
 <alpine.DEB.2.10.1602210730280.2782@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1602210730280.2782@hadrien>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Sun, Feb 21, 2016 at 07:31:12AM -0500, Julia Lawall wrote:
> On Sun, 21 Feb 2016, Laura Garcia Liebana wrote:
> 
> > Prevent a kernel panic by avoiding the use of the BUG_ON macro and using the
> > WARN_ON macro instead. Checkpatch detected this issue.
> 
> Why is nvec->state = 0; the right thing to do?  What will happen when the
> break is taken?
> 
> julia
> 
> > Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
> > ---
> >  drivers/staging/nvec/nvec.c | 14 ++++++++++++--
> >  1 file changed, 12 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c
> > index c335ae2..3b5b94f 100644
> > --- a/drivers/staging/nvec/nvec.c
> > +++ b/drivers/staging/nvec/nvec.c
> > @@ -641,11 +641,21 @@ static irqreturn_t nvec_interrupt(int irq, void *dev)
> >  			nvec_msg_free(nvec, nvec->rx);
> >  			nvec->state = 3;
> >  			nvec_tx_set(nvec);
> > -			BUG_ON(nvec->tx->size < 1);
> > +			if (WARN_ON(nvec->tx->size < 1)) {
> > +				dev_err(nvec->dev,
> > +					"Invalid TX size\n");
> > +				nvec->state = 0;
> > +				break;
> > +			}
> >  			to_send = nvec->tx->data[0];
> >  			nvec->tx->pos = 1;
> >  		} else if (status == (I2C_SL_IRQ)) {
> > -			BUG_ON(nvec->rx == NULL);
> > +			if (WARN_ON(!nvec->rx)) {
> > +				dev_err(nvec->dev,
> > +					"Invalid RX\n");
> > +				nvec->state = 0;
> > +				break;
> > +			}
> >  			nvec->rx->data[1] = received;
> >  			nvec->rx->pos = 2;
> >  			nvec->state = 4;
> > --
> > 2.7.0
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160221081553.GA4327%40sonyv.
> > For more options, visit https://groups.google.com/d/optout.
> >
I got inspired by an earlier case, for example in case 1:

nvec->rx = nvec_msg_alloc(nvec, NVEC_MSG_RX);
/* Should not happen in a normal world */
if (unlikely(!nvec->rx)) {
        nvec->state = 0;
        break;
}

A similar case appears in the case 2 (same function):

if (nvec->rx->data[0] != 0x01) {
        dev_err(nvec->dev,
                "Read without prior read command\n");
        nvec->state = 0;
        break;
}

Please let me know your thoughts about it.
Kind Regards.


