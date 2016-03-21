X-GM-THRID: 6263480963249995776
X-Received: by 10.50.143.101 with SMTP id sd5mr12969612igb.4.1458597881621;
        Mon, 21 Mar 2016 15:04:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.11.22 with SMTP id v22ls1532863ioi.35.gmail; Mon, 21 Mar
 2016 15:04:41 -0700 (PDT)
X-Received: by 10.66.246.230 with SMTP id xz6mr24585763pac.29.1458597881190;
        Mon, 21 Mar 2016 15:04:41 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ui7si4114629pab.0.2016.03.21.15.04.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 15:04:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-138-182-192.hsd1.ma.comcast.net [50.138.182.192])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id ADCEE2C;
	Mon, 21 Mar 2016 22:04:40 +0000 (UTC)
Date: Mon, 21 Mar 2016 18:04:39 -0400
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 3/4] staging: comedi: amplc_pci224:
 Convert macro GAT_CONFIG to static inline function
Message-ID: <20160321220439.GB5091@kroah.com>
References: <cover.1458500647.git.bhaktipriya96@gmail.com>
 <3fb9a7d5bc5bd1da65837facf3d03eec87078423.1458500647.git.bhaktipriya96@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3fb9a7d5bc5bd1da65837facf3d03eec87078423.1458500647.git.bhaktipriya96@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Mar 21, 2016 at 12:46:26AM +0530, Bhaktipriya Shridhar wrote:
> Convert macro GAT_CONFIG to static inline function as static inline
> functions are preferred over macros. Since every single user of this
> macro passes the argument into the outb() function, with
> (devpriv->iobase1 + ...) as the address, the two calls have been merged
> into one.
> 
> This was done using Coccinelle:
> 
> @r@
> identifier f;
> expression e;
> @@
> - #define GAT_CONFIG(chan, src) e
> + static inline void pci224_gat_config(struct pci224_private *devpriv,
> +                                      unsigned int reg, unsigned int chan,
> +                                      unsigned int src)
> +{
> +       outb(((chan & 3) << 3) | (src & 7), devpriv->iobase1 + reg);
> +}
> 
> @r1@
> expression devp,reg,chan,src;
> @@
> -outb(GAT_CONFIG(chan, src), devp->iobase1 + reg);
> +pci224_gat_config(devp, reg, chan, src);
> 
> Also, the comment describing the macro has been removed manually.
> 
> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
> ---
>  Changes in v2:
> 	-Since every single user of this macro passes the argument into
> 	the outb() function, with (devpriv->iobase1 + ...) as the address,
> 	the two calls have been merged into one.
> 
>  drivers/staging/comedi/drivers/amplc_pci224.c | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)

Again, I'm not going to take this, sorry.

greg k-h

