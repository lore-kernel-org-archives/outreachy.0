X-GM-THRID: 6883028084998537216
X-Received: by 2002:a17:90b:3109:: with SMTP id gc9mr546214pjb.74.1602606202781;
        Tue, 13 Oct 2020 09:23:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:714a:: with SMTP id g10ls158910pjs.2.canary-gmail;
 Tue, 13 Oct 2020 09:23:21 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwWzDrm4wNXOiRfiX7wvQUQcRQF8DPIhqajeYR/l5yMrar7SxRLSbPdQAV5k8F3nDtMmPk/
X-Received: by 2002:a17:902:c254:b029:d4:c2d4:15f with SMTP id 20-20020a170902c254b02900d4c2d4015fmr313496plg.18.1602606201090;
        Tue, 13 Oct 2020 09:23:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602606201; cv=none;
        d=google.com; s=arc-20160816;
        b=iFRdKUYG2OArE7FhOvuysY5UTD0HHa2yYul7AuymOw9cgL/Ptc7Xh/9lrMYQJVz3vo
         P3VE9w1P6ETf9sCPQL1sMLq0D7l9HZmNUTfwilJfoV0p7hFONh+LVkQ724rp1hm2iD4J
         Ctnpayni8AdxW4ZcimmZSaXBeo5qcJEcL3HkoCaG9BJrcDhxKe3PY9fHFdL+Rsg4X9Eb
         7T9ipbl4MgiZs4P1dCosVqGf8S6hMpQ+LH/I8ZjxQrJDxlkbP23LLgNoGCY9j9ify2Sx
         LjHjFOiJyiLklCM9m8Ks13fDYvt9k+1D/e5padRVP0hqn+ACteM9hS6VXlgYWEWwS3M0
         sQiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=bOn7PgfkVwN+dbAnI0Ggu/PH3oovIH0HFxly3V7643g=;
        b=o/Is51S2Rp5AFcoml7qfDv5b0YXMBn2aBW+qncPTpkSkk29FU5fzY6citQkKayN7HM
         26rRSRFxJigCS694zY5vP8BQzqKH95xSsy9F0ugCQGTsEcNDWmLa2D2MeCNyjUQfeuz2
         J+r0IGd/808TkLSN6D3HCX/mxJfE0WtRY5WMS3Mf8MP263LV23sCijLB9tTxrqcZ6UJ/
         WxV7I6F2q7ZuVYv53Cn281wqwJDTg5HjPUeTmmaEMYojp8/czfmV82vLbIb8oGxjqxuc
         tfbI8UAXHafxQMym2O5ruyfxP6hsqkwc+6pY1xdQhuNN9MBHXdBIF6vFCm4i2fPQrLdn
         0l2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ph0OBuzS;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id z15si27241plo.4.2020.10.13.09.23.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Oct 2020 09:23:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ph0OBuzS;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1041.google.com with SMTP id gm14so155399pjb.2
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2020 09:23:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=bOn7PgfkVwN+dbAnI0Ggu/PH3oovIH0HFxly3V7643g=;
        b=ph0OBuzSNF7SRiZWfNMxRtJ5uuVNvVSeeKrP3NvjKKz03+nuZAI8MiQQKYBL6ItAf6
         wur8whs0NFKElWF7Z4QxJnw2FE7IbI1iE8Lvs1pjiHjPIszVGWaq26nBPwVL9ne75kVN
         kFjADg81SQexcKYetM1w+AGwXV/ERZ1BH8dP+Xv5HLrOCenfAc718IUqpeQe+6zvIU1W
         Fi6PcTxDoyzd/40BNeisQ5stZ1d2NMyLyvntEmLiNV83b/YsKgZt5grpfD+c50ivzQVY
         sMotnakrtklmHPKVqNT6lyNzApIE/nxMPzEubWj4hHg7bVYhpIe8h07AR56n1jAiveQJ
         2EKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=bOn7PgfkVwN+dbAnI0Ggu/PH3oovIH0HFxly3V7643g=;
        b=kumMDDphs2KPP3PYoOYt1nwskd2Gudi3Bg3y4an30T0WiaIlgDHy6HrLWqw6OUhJSz
         Z26MLjscOpv62S1z5g8KNcxDkw9Ncv+ittj6dAjmpZmFhd329jB6RSjF06uWprQbJE4Q
         HlVLL+qwIJwYGqRSPtIpFSE8R73+ToaIvuD5b4PHbBMrv6YrHAqg1ZZmb+VmEg9sOZ1A
         qcdy978T6MlhSAzxTJYru5F1YuF0aIX12j4rO9aii898b1muYMLB9iYDRy1ISwYlVF8y
         EPOYPX3qX3/PplZkXYTucmmPtq2Wa1H+TV2niPmRhTz23IXuzouF0VwLcv+bsz32L9TT
         Gxxw==
X-Gm-Message-State: AOAM531ZLDfbZUcYyYzZtLRgrGnRQnI20poXeLfq3wRUV7M2d0fYFmO3
	/gFpZG/aXCSuQdTFudFsgIr13/d6wLecNQ==
X-Received: by 2002:a17:902:ee0b:b029:d3:c8dc:6db8 with SMTP id z11-20020a170902ee0bb02900d3c8dc6db8mr268748plb.55.1602606200764;
        Tue, 13 Oct 2020 09:23:20 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id e21sm64597pgi.91.2020.10.13.09.23.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Oct 2020 09:23:20 -0700 (PDT)
Date: Tue, 13 Oct 2020 21:53:12 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Helen Koike <helen@koikeco.de>
Cc: outreachy-kernel@googlegroups.com,
	Steve Longerbeam <slongerbeam@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>
Subject: Re: [Outreachy kernel] [PATCH v3 2/2] staging: media: imx: remove
 unnecessary variable use
Message-ID: <20201013162312.GA45051@ubuntu204>
References: <f484d024b14104cff4f54bad3da52151847a0b28.1602601012.git.mh12gx2825@gmail.com>
 <77d7f86b1cdccd1882fd331042812cd750be1320.1602601012.git.mh12gx2825@gmail.com>
 <88d6ec98-9c7d-707f-9571-26118aa70e58@koikeco.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <88d6ec98-9c7d-707f-9571-26118aa70e58@koikeco.de>

On Tue, Oct 13, 2020 at 12:48:10PM -0300, Helen Koike wrote:
> Hello,
> 
> On 10/13/20 12:04 PM, Deepak R Varma wrote:
> > Use of variable vc_num is unnecessary here as it is used only once.
> > Instead, the value can directly be used in place of the variable. 
> > 
> > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> 
> As mentioned by Vaishali in the previous version, if you found this
> through checkpatch.pl, please, mention it here.
> 
> You can even copy the warning you are fixing:
> 
> Example: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=e4d7efbb91efc3040e3f1c645571c1769095ae79
> 
> This is nice, because you are giving credit to the tool, and also let
> others know how you found it, and maybe other people can check too.
> Please let us know if you have any doubts :)
> 
> Regards,
> Helen
> 

Hello,
This was not flagged by checkpatch, this is my observation. However 
patch 1/2 was outcome of checkpatch warning. I will update and 
resend the patch set.

Thank you.
Deepak.

> > 
> > ---
> > 
> > Changes since v2:
> >    - Implement feedback from Vaishali to simply the patch log message.
> > 
> > Changes since v1:
> >    - None.
> > 
> >  drivers/staging/media/imx/imx-media-csi.c | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> > 
> > diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
> > index 9320e3974d86..db77fef07654 100644
> > --- a/drivers/staging/media/imx/imx-media-csi.c
> > +++ b/drivers/staging/media/imx/imx-media-csi.c
> > @@ -1123,7 +1123,6 @@ static int csi_link_validate(struct v4l2_subdev *sd,
> >  	priv->upstream_ep = upstream_ep;
> >  	is_csi2 = !is_parallel_bus(&upstream_ep);
> >  	if (is_csi2) {
> > -		int vc_num = 0;
> >  		/*
> >  		 * NOTE! It seems the virtual channels from the mipi csi-2
> >  		 * receiver are used only for routing by the video mux's,
> > @@ -1131,7 +1130,7 @@ static int csi_link_validate(struct v4l2_subdev *sd,
> >  		 * enters the CSI's however, they are treated internally
> >  		 * in the IPU as virtual channel 0.
> >  		 */
> > -		ipu_csi_set_mipi_datatype(priv->csi, vc_num,
> > +		ipu_csi_set_mipi_datatype(priv->csi, 0,
> >  					  &priv->format_mbus[CSI_SINK_PAD]);
> >  	}
> >  
> > 

