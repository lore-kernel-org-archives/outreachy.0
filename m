X-GM-THRID: 6465930684409053184
X-Received: by 10.200.36.56 with SMTP id c53mr13387358qtc.25.1505728112891;
        Mon, 18 Sep 2017 02:48:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.159.70 with SMTP id i67ls10863884ioe.9.gmail; Mon, 18 Sep
 2017 02:48:32 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb6W5y/JdPRJRGqX6BjSJvZAuVtqHF7Rta92rcgCvC2Mwpizd0SN5cbSOJRmxOUTGmeFhXXg
X-Received: by 10.98.147.216 with SMTP id r85mr18122553pfk.33.1505728112175;
        Mon, 18 Sep 2017 02:48:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505728112; cv=none;
        d=google.com; s=arc-20160816;
        b=xQLm15won3LypUiZ4j6MaO0Rnf2nG9gwi8YlAPa0gvzrFKWhKC3AxrjgtY6dx5WAm7
         QPZSJ/LTT3TudWGJd3fppC6qgL4tn8cvv77NXNBiDxgjouRjK6qn26uqPvZUfF5s6roQ
         UWm/tfGrrJ8WFundib3wKCaoBFfmgXC1vTTcvRhr5Su1qgqDnQ86XxQTYY9QwreQl59h
         An8LlPJG7xup+RthELATsrtNgPbRQYa2/WD63Ev264mudwsJ+uRIbE1O/ab5Bi8B02GW
         zyXFc2c7EpBit/InONCKexMakQn3MQ/DvmvQqEiiD2UTKshLwTM9+oT4KQhJIzS/Rkyt
         mGew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=u/a0nuiU8PKoAS547pQ2QJdhB/jd0DFqQLmHgTdYRXY=;
        b=hoV4atQJFXP6Qp2a4gAa316UfMhQaXaKR1ekx1soaRLxB48c1jAFq4lMMBqirvi7AK
         AAcBMLdcFVbvhN2TRW9Kel8Um2UcTWikNDnAdLGY+78+joVEWrNZKWOYvIpF/0R2MwdS
         cGmWTy2uD3IX+Ks9c8O/ewtQYEVa77HL2itVK2XvwdWZ/T1HSp2uZY8C8HJ7r68T5o3R
         Z0OK7aENYN4bqJef48apHP8dI9FUmvLtTpU6EK0s6wCepojnhvVgP9x99tk7i7LI+3jZ
         IbiE6A3U9dtEYxG8qf5ZtR3+hnb3tme2olKrcqne7f5BWPj5xJneWxssYrYLbfvM6DLF
         HwWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=LB/NbaqO;
       spf=neutral (google.com: 66.111.4.25 is neither permitted nor denied by best guess record for domain of greg@kroah.com) smtp.mailfrom=greg@kroah.com
Return-Path: <greg@kroah.com>
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com. [66.111.4.25])
        by gmr-mx.google.com with ESMTPS id a43si77382itj.3.2017.09.18.02.48.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Sep 2017 02:48:31 -0700 (PDT)
Received-SPF: neutral (google.com: 66.111.4.25 is neither permitted nor denied by best guess record for domain of greg@kroah.com) client-ip=66.111.4.25;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=LB/NbaqO;
       spf=neutral (google.com: 66.111.4.25 is neither permitted nor denied by best guess record for domain of greg@kroah.com) smtp.mailfrom=greg@kroah.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 6D02F20B16;
	Mon, 18 Sep 2017 05:48:31 -0400 (EDT)
Received: from frontend2 ([10.202.2.161])
  by compute6.internal (MEProxy); Mon, 18 Sep 2017 05:48:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc:x-sasl-enc; s=fm1; bh=u/a0nuiU8PKoAS547p
	Q2QJdhB/jd0DFqQLmHgTdYRXY=; b=LB/NbaqOZwdyXMYBdo+mnBiFaOzAuQxjVN
	rtIteZ4+C/kHB1pmSWQ9FJM62N5uf6lF34+QYSsdlexl0so37ZmWe4BrYqQzXePZ
	PPBS4bAsTNRSBsCLJJcL0/oEaNhyDA3+F3JXUqRnEWyAfeR+g2bPoUMrO3r/ofGW
	eF1cXShuMzr+YOv6U2OIWEiLR0jnUlKxzYXcC+CZiLHGfYRVib1U9+w8Az57VOgk
	dz2MWNMis6PH5JsmRvY4imN3koG8ig9g8TJg+Ot3tGLlPQB0EiFHERjVEKvDLRvk
	XB6fWk6tv1bsncrOKRUSi1dXJsRxCpWBUpa3eXlED3r7yX803GuA==
X-ME-Sender: <xms:b5a_WcSwmrpql2VUqg-IJNJkmsQOlIu1u1aXQRy0KyHafOJpzO3WNw>
X-Sasl-enc: pS38aRSFgyHmy10EOzn6dLptpCoEEZtUBG0y8w9MX6bW 1505728111
Received: from localhost (lfbn-1-12253-150.w90-92.abo.wanadoo.fr [90.92.67.150])
	by mail.messagingengine.com (Postfix) with ESMTPA id 15CCB24235;
	Mon, 18 Sep 2017 05:48:31 -0400 (EDT)
Date: Mon, 18 Sep 2017 11:48:43 +0200
From: Greg KH <greg@kroah.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Meghana Madhyastha <meghana.madhyastha@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: irda: drivers: Replace (skb
 == NULL) with (!skb)
Message-ID: <20170918094843.GA24318@kroah.com>
References: <20170915091310.GA21039@meghana-HP-Pavilion-Notebook>
 <alpine.DEB.2.20.1709151240450.3146@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1709151240450.3146@hadrien>
User-Agent: Mutt/1.9.0 (2017-09-02)

On Fri, Sep 15, 2017 at 12:42:42PM +0200, Julia Lawall wrote:
> 
> 
> On Fri, 15 Sep 2017, Meghana Madhyastha wrote:
> 
> > Some functions return NULL as an indication of failure.
> > The style (!skb) is more common than (skb == NULL) for these
> > functions.
> >
> > Found by the following Coccinelle script.
> >
> > @@
> > identifier i;
> > statement S;
> > @@
> >
> > i = (\(kmalloc\|devm_kzalloc\|kmalloc_array\|devm_ioremap\|usb_alloc_urb\|
> > alloc_netdev\|dev_alloc_skb\)(...));
> >
> > (
> > -if (i == NULL)
> > +if (!i)
> > S
> 
> If you provide just this option, Coccinelle should expand your rule to
> consider the other option as well.
> 
> You can see the section on isomorphisms in the Coccinelle tutorial.
> 
> > |
> > -if (NULL == i)
> > +if (!i)
> > S
> > )
> >
> > Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> 
> Acked-by: drivers/staging/irda/drivers/ali-ircc.c

Odd acked-by signature :)


