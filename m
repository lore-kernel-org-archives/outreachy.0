X-GM-THRID: 6885936091088551936
X-Received: by 2002:a05:6512:6c3:: with SMTP id u3mr177292lff.9.1603685818252;
        Sun, 25 Oct 2020 21:16:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:b016:: with SMTP id y22ls1164483ljk.3.gmail; Sun, 25 Oct
 2020 21:16:56 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzei3tQnLqP8Dv129nMo3lCcIsd5gVas1KaVZvRtsJt66qFiTX3hyTXxp4uR4boiywio5s5
X-Received: by 2002:a2e:7a0f:: with SMTP id v15mr5425524ljc.241.1603685816230;
        Sun, 25 Oct 2020 21:16:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603685816; cv=none;
        d=google.com; s=arc-20160816;
        b=pyKwBV7XaVSALPOAnkNOLxWATDHzTjpmW7qbDv2g4SxCncD6pduTsK1ciGlXgC/C9i
         paH7wZGQrverP+u8HKp33/38UEkfjfB4RnriXOT0xP8N3ZVi7DPQN4uca5fbMo7kQ/7O
         6R+UhtSpTLtyOvAuMdwbrLFCkRfW+RcnNJkoHfPD8zZ3WFRq7bjYAOk5hcGW0byvA9IP
         xV6uVHIh/9WzFCBCFg3pIcDpENWnF8Cmbh1MiocLbHvw9czFAX2KFeqQcXubbZvb5KM6
         a3V/uHIXApAg8WjTtSh7txSu5gMHkVUfTAMiMZ0WQmdmhp4/1wuqsaAUf1iHgAP/zEOu
         Blvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Q4SO66+iv4ulprZbhTuLgvmNfQrq/X9LHRBymUOL+kI=;
        b=SRPM14+N54bRBhPkEkcDgWrgMkkMnB1JaUHFfDD9m8RmPS2WKVZUXzgDVEVYtl4wW2
         milqEmkGrILtIRvHs2+Am25LBY1zP5n1P6NU6qxBJM6MSeceajYURpSXu0Ul9uSQwOJU
         4EGn34H2on8/5gXhwvB2fCloZvtKSa36ye/XzyTS22aWn2+HlKU2z6awVq+vAZD0puET
         yOZ+CafFzHfz0EFpDTpiYm6JXLbPTPqf9GZ5LRQmzZ4Ym5XkQLctCLjtII4PDU9Q4LnY
         vY3GCYg9WGGNROQqKNWbTsmVe7VMqjOR8tpTFurQK6x10CwtQWDK2xnWzgeHBr8/VYsA
         xwAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=HJqwX2LR;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Return-Path: <willy@infradead.org>
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id a16si285842lfr.5.2020.10.25.21.16.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Oct 2020 21:16:55 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=HJqwX2LR;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=Q4SO66+iv4ulprZbhTuLgvmNfQrq/X9LHRBymUOL+kI=; b=HJqwX2LRLDjf8Gx0ENYUUlvgPI
	ODB8TKnC9l1C/oMGJY86Z5Z3vW12uUMjUk+xy2OvNet/TuTme3lpdvD2k33PPXg9J0hnzFDWsruS9
	zj6jChqKQJBL8hUeHwODFY2PDhnlxoDXL3nra2WzpLStLeBwzpc/uaY7FtYHmvN2CP4ss6vayzO3n
	6F6MSuGngu68LqMsGiF51oxmJF3t6RZWbHBkILGxQl6MKGp3N+aW91eKwSxoorPXZkRHADEqFTMa8
	Wpqf3lcCZZHPCLf5IAiZ5NGw0Htp3vjr6RPVi9jbVq+nPwIKUB6qYQ+VpMc6GxX+J3E5NfUoVjbbk
	Akq49ZKw==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kWtwC-0006qS-UV; Mon, 26 Oct 2020 04:16:53 +0000
Date: Mon, 26 Oct 2020 04:16:52 +0000
From: Matthew Wilcox <willy@infradead.org>
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH v2 1/2] staging: kpc2000: kpc_dma:
 rearrange lines exceeding 100 columns
Message-ID: <20201026041652.GM20115@casper.infradead.org>
References: <c61a3c244bea516528e9ca4e909c30f16959c3aa.1603264617.git.mh12gx2825@gmail.com>
 <20201026040453.GC5074@my--box>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201026040453.GC5074@my--box>

On Mon, Oct 26, 2020 at 09:34:53AM +0530, Deepak R Varma wrote:
> > -		dev_dbg(&eng->pldev->dev, "Handling completed descriptor %p (acd = %p)\n", cur, cur->acd);
> > +		dev_dbg(&eng->pldev->dev, "Handling completed descriptor %p (acd = %p)\n",
> > +			cur,
> > +			cur->acd);

Why do you put 'cur' and 'cur->acd' on different lines?

> > -	rv = request_irq(eng->irq, ndd_irq_handler, IRQF_SHARED, KP_DRIVER_NAME_DMA_CONTROLLER, eng);
> > +	rv = request_irq(eng->irq,
> > +			 ndd_irq_handler,
> > +			 IRQF_SHARED,
> > +			 KP_DRIVER_NAME_DMA_CONTROLLER,
> > +			 eng);

Likewise.  I'd do:

	rv = request_irq(eng->irq, ndd_irq_handler, IRQF_SHARED,
			KP_DRIVER_NAME_DMA_CONTROLLER, eng);


