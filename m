X-GM-THRID: 6888933426501517312
X-Received: by 2002:a5d:91c7:: with SMTP id k7mr2506520ior.74.1603958987021;
        Thu, 29 Oct 2020 01:09:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6638:138a:: with SMTP id w10ls257907jad.11.gmail; Thu,
 29 Oct 2020 01:09:45 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJytazqA3JMimK6KRO/2h5etvxeNoP0G6pAuvcvnErorZsECRViKGMuR+5TTROgkaGtp3iqx
X-Received: by 2002:a02:84c3:: with SMTP id f61mr2644009jai.8.1603958985587;
        Thu, 29 Oct 2020 01:09:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603958985; cv=none;
        d=google.com; s=arc-20160816;
        b=b3YJ51MCBH1n2Gbjj1Es0qgZgtKstnbLqtVegKJp6q1bko2LuSfeOCJrHgaSngAwWL
         p6UwMsJKa4mPcKNkrSfjXhPgfEU2vZiJFHmg1R0gen69rOW52GFf6eEDlstd9B8JpBzw
         iAi1ZPaBEaOk+Qd+F+40W38eVjMKnXsneOTJ+5kg74t1Y8m7rGN/lboNeS3yOHtM6/ws
         UDNaDf1kuKXi6McO39Nh09CbL0Eqemk/kFaCl9Qe+qyqHrZ8IrPon12CrIBSoeWjgvf0
         ViB9oIpzlQfZHhI580+J7AqMXddHGk65ERoU7FA7JwtDIih/KNMHqq40WKXUK7RiO0YU
         WCsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=cu7KMr5DRYJk6VfGT92W0k/BnWZ85udNrHJuRe5VlBs=;
        b=x63zAFTdvJPvjGKPjezQTlvhaeRvVEIQxaBitYaWUEJip8nbHAPqJhrVER0ZlApl3W
         wfJQZbuz2uJ5jxmTT8OHTo7LCD8/IRyV24tSDSguWQOkTR6C+74eBnXJbUvL4PtIn3BL
         ZBRY5MJ9OQ+3+xYcUP4FEERwrDhDQhC1DON9q6CckiLH48ybv0mfpZYmTKm1sghinkCF
         m6hKq3w0QXiaDQ0OrcfO3/qBigwUSdHik/I8tHkF+lpeyjRh4oFyvUq8CRkYA0HyPjO0
         degC8UYu3WBlbcrkbXZurJapeMHvYNjjQ28mfuGDsTiO+JBp5N4BhQJohTgyJZOtgMgt
         jVvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=olPfnrwT;
       spf=pass (google.com: domain of mdejesusfilho@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=mdejesusfilho@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mdejesusfilho@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id i8si130260ioo.0.2020.10.29.01.09.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Oct 2020 01:09:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of mdejesusfilho@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=olPfnrwT;
       spf=pass (google.com: domain of mdejesusfilho@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=mdejesusfilho@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id e7so1670733pfn.12
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2020 01:09:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=cu7KMr5DRYJk6VfGT92W0k/BnWZ85udNrHJuRe5VlBs=;
        b=olPfnrwTAeD6m2j6nIpH1Y3cHbqVbDvAkqxp2Y29F8iW3SzlDVKQbHcC98V6YgYdvM
         VLDto3urm1owibmbjgDJwiXc2SvPTVdjNadP858yIonQMQIf4qsmZYyNSvm9571ruwHD
         i+VZZ35VCttMWD7yd1vS9RZ6jNzpfFE+cp0S1teFYvpCssK84UzDTOUMmnr3xr5fUmol
         CUJFIHF30M+ZTwBPjmCJnicTlTxoDaJwTdGQn+VB7vT7BcE9FIfcp3SlkksyI1LHRF98
         f4k+1swtjSXG81xSPACMquZUfzYLQp5AONtF6ArSDWLrlda6RF30ZMpRQl9FW954G7RS
         Cuqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=cu7KMr5DRYJk6VfGT92W0k/BnWZ85udNrHJuRe5VlBs=;
        b=VGT4zQbnin+H+4y223ChAyFPedgKBPag+50JSLQBpUMowrPhHo7OaAUVwTLXLH8FbU
         t4txq3fodJsz+8RppevpsP9E686OcI1y9eU0kqG2EVIBq4b1Lfys09D9Sda8W2Mlt9YR
         tKCSX2IUOgtNhpxIVeL76I2pYvYoolsoZNfYkn08ABupQh8ep1/mehV4Ho33SiB4MccZ
         gmcyxNcp33HaMBb7aXQtHpRp+vQv8Tnni7OJkkzukxXc5xlkQeJ7YV2SfkuHMIpPzEul
         GbPRPg6O96q0zw3ebtESJqBAj7uuh5LyDLzaWhurETGUJj4U1J+oahXU3KyF8kgrM5BJ
         +7mw==
X-Gm-Message-State: AOAM530oMLLEhAg2wnCQHzZatYFu4NZHQnbhhiE1D/NRdfb8G6IglsUC
	7QImnsuYspLoieJmnvAjbmYXebGiHNE3yzdH
X-Received: by 2002:a17:90a:6b0a:: with SMTP id v10mr3133402pjj.141.1603958984997;
        Thu, 29 Oct 2020 01:09:44 -0700 (PDT)
Return-Path: <mdejesusfilho@gmail.com>
Received: from localhost ([2601:643:282:4810:aed1:b8ff:fe8c:bd73])
        by smtp.gmail.com with ESMTPSA id s11sm2091612pjm.4.2020.10.29.01.09.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2020 01:09:44 -0700 (PDT)
Date: Thu, 29 Oct 2020 01:09:24 -0700
From: Marcos Antonio de Jesus Filho <mdejesusfilho@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Forest Bond <forest@alittletooquiet.net>,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: vt6655: Remove useless else
Message-ID: <20201029080924.GA2011@Zangetsu>
References: <20201029065958.GA5259@Zangetsu>
 <20201029070723.GA3063205@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201029070723.GA3063205@kroah.com>

On Thu, Oct 29, 2020 at 08:07:23AM +0100, Greg Kroah-Hartman wrote:
> On Wed, Oct 28, 2020 at 11:59:58PM -0700, Marcos Antonio de Jesus Filho wrote:
> > The else statement is not useful due to the presence of a return
> > statement on the if block. Remove the else statement and adjust the
> > indentation of the code. Reported by checkpatch.
> > 
> > Signed-off-by: Marcos Antonio de Jesus Filho <mdejesusfilho@gmail.com>
> > ---
> >  drivers/staging/vt6655/rxtx.c | 36 +++++++++++++++++------------------
> >  1 file changed, 18 insertions(+), 18 deletions(-)
> > 
> > diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
> > index 477d19314634..978efe81077a 100644
> > --- a/drivers/staging/vt6655/rxtx.c
> > +++ b/drivers/staging/vt6655/rxtx.c
> > @@ -519,28 +519,28 @@ s_uFillDataHead(
> >  										wCurrentRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
> >  			buf->time_stamp_off = vnt_time_stamp_off(pDevice, wCurrentRate);
> >  			return buf->duration;
> > -		} else {
> > -			struct vnt_tx_datahead_ab *buf = pTxDataHead;
> > -			/* Get SignalField, ServiceField & Length */
> > -			vnt_get_phy_field(pDevice, cbFrameLength, wCurrentRate,
> > -					  byPktType, &buf->ab);
> > +		}
> >  
> > -			if (is_pspoll) {
> > -				__le16 dur = cpu_to_le16(pDevice->current_aid | BIT(14) | BIT(15));
> > +		struct vnt_tx_datahead_ab *buf = pTxDataHead;
> > +		/* Get SignalField, ServiceField & Length */
> > +		vnt_get_phy_field(pDevice, cbFrameLength, wCurrentRate,
> > +				  byPktType, &buf->ab);
> >  
> > -				buf->duration = dur;
> > -			} else {
> > -				/* Get Duration and TimeStampOff */
> > -				buf->duration =
> > -					cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A, cbFrameLength, byPktType,
> > -									    wCurrentRate, bNeedAck, uFragIdx,
> > -									    cbLastFragmentSize, uMACfragNum,
> > -									    byFBOption));
> > -			}
> > +		if (is_pspoll) {
> > +			__le16 dur = cpu_to_le16(pDevice->current_aid | BIT(14) | BIT(15));
> >  
> > -			buf->time_stamp_off = vnt_time_stamp_off(pDevice, wCurrentRate);
> > -			return buf->duration;
> > +			buf->duration = dur;
> > +		} else {
> > +			/* Get Duration and TimeStampOff */
> > +			buf->duration =
> > +				cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A, cbFrameLength, byPktType,
> > +								    wCurrentRate, bNeedAck, uFragIdx,
> > +								    cbLastFragmentSize, uMACfragNum,
> > +								    byFBOption));
> >  		}
> > +
> > +		buf->time_stamp_off = vnt_time_stamp_off(pDevice, wCurrentRate);
> > +		return buf->duration;
> >  	} else {
> 
> You do the same thing here, right?  Shouldn't this else be dropped?

Definitely. I did not do it because we are instructed to solve one 'Warning' at time. I was going to do it in another patch.
Should I edit this patch and fix it now?
 
> 
> thanks,
> 
> greg k-h

