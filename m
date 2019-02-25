X-GM-THRID: 6661107741495394304
X-Received: by 2002:aa7:8292:: with SMTP id s18mr6853091pfm.8.1551110289693;
        Mon, 25 Feb 2019 07:58:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:93:: with SMTP id 141ls5528742pga.1.gmail; Mon, 25 Feb
 2019 07:58:09 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZAI+OSqy+DptiKaXj/sSBwT26LANM905TaSJRZB1oYkMeCK5/vcAOyVVBWra0pQWqr/BZm
X-Received: by 2002:a62:dd16:: with SMTP id w22mr7008210pff.4.1551110289074;
        Mon, 25 Feb 2019 07:58:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551110289; cv=none;
        d=google.com; s=arc-20160816;
        b=p/WN1heg8wQBxIMCO2qZzhqd7qrzx+fl7qLNaWjddu0+bCxfBZF9OBDlA/ovwgLu1E
         yXbY0AZcP5wkkMwvN751ZHIGjvrMHrbpLgUYt9JMW8Cgba3gsrBfptoB8GnE46A/CY5W
         xnbBEOqeVryGuAtMzlfxIknU20izKM5Wg2AxYG1WBUDWj2RUN/KPKGadphwq0IaxUWQh
         taHX92k14Tj0P5jsJGKSzVO4mUeJfAyuRAdR4Do1eE3q0oBq2fXVG9zGt7Y2O1HzGMOv
         6GgQnmABn1Ckz490rpoV0b5WkFC2HSwYl8OmSR0jEjRRVTZ7iRGpVCXdHdgRgpHj6wCL
         WglA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ZyLquTzs3O2RmIZznlKssg2SnunJM5yo5sB3c48cozM=;
        b=xHXbNZo9xCvOMLX8oibqzeDKiy2X46EgFoXoYqLZsFTOSfFlaalv4Z8CCuWGbORNPN
         aDWUoq/DG74z9ACq5YpSbfDwjSMSlFCZKJstMVPPDwtN8agzrP6WZ4NqonlmCu2+ssH9
         2wHco5Cl5NH2Zfe0eBtDHPyztVoVtLQzSfecTLuIxkTjwogs49dya15jqfuZWuT60WGu
         2ZH5g8/ypYQdj3w96MYheNXN5Csqvcsmyw/w680Riwawi1L6I3REBkOrkg0khj+Na9F3
         rDKFbApw5sb+gcfxamwHlH4Mg7uTjjQj9a9KH7/b0kuAMAy5+L8jN+ZaT9GfH4OMIklx
         McxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=WlfFgnho;
       spf=pass (google.com: domain of srs0=mf0b=ra=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=mF0B=RA=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=mF0B=RA=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m189si719334pfb.0.2019.02.25.07.58.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 07:58:09 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=mf0b=ra=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=WlfFgnho;
       spf=pass (google.com: domain of srs0=mf0b=ra=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=mF0B=RA=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 467F220842;
	Mon, 25 Feb 2019 15:58:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551110288;
	bh=doFWYuhCLD4V2UfYv2JVGtF0hat9a9+7bBTz/BXnzFQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WlfFgnhodHTYCg+W84t2KAEud4jx5QKsD/TVI4sUlIatX0tdyuSTuz+Qv7ZUNxnOH
	 29zh4QzaPTB6Ha3Dcz2wsKvuDF/8LzEdcbiuhTginlW+ItEAF1w4B3s9pqUkNahLQh
	 jbeRDrzKUdocK+3/RX87OHk5SQZ0vtsiZpDBmiNE=
Date: Mon, 25 Feb 2019 16:58:06 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Matthias Brugger <matthias.bgg@gmail.com>
Cc: Bhanusree Pola <bhanusreemahesh@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2 2/2] Staging: mt7621_dma: Prefer unsigned int over
 just unsigned
Message-ID: <20190225155806.GA13948@kroah.com>
References: <20190225144932.8922-1-bhanusreemahesh@gmail.com>
 <20190225144932.8922-3-bhanusreemahesh@gmail.com>
 <2612cbd8-3632-a6f6-6b59-4b906326050e@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2612cbd8-3632-a6f6-6b59-4b906326050e@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Mon, Feb 25, 2019 at 04:02:00PM +0100, Matthias Brugger wrote:
> 
> 
> On 25/02/2019 15:49, Bhanusree Pola wrote:
> > Replace 'unsigned' with 'unsigned int' to be specific with data type.
> > Issue found with checkpatch.pl
> > 
> > Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> > ---
> >  drivers/staging/mt7621-dma/mtk-hsdma.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
> > index 20c8879d4979..7b2cdd2829a5 100644
> > --- a/drivers/staging/mt7621-dma/mtk-hsdma.c
> > +++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
> > @@ -191,7 +191,7 @@ static inline u32 mtk_hsdma_read(struct mtk_hsdam_engine *hsdma, u32 reg)
> >  }
> >  
> >  static inline void mtk_hsdma_write(struct mtk_hsdam_engine *hsdma,
> > -				   unsigned reg, u32 val)
> > +				   unsigned int reg, u32 val)
> 
> You could align to the open paranthesis as well?

No, please only one type of change per patch.

thanks,

greg k-h

