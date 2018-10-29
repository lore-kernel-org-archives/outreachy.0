X-GM-THRID: 6617471709084647424
X-Received: by 2002:a05:660c:485:: with SMTP id a5mr2552960itk.30.1540780023445;
        Sun, 28 Oct 2018 19:27:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:58b:: with SMTP id 133-v6ls1594345itl.1.canary-gmail;
 Sun, 28 Oct 2018 19:27:02 -0700 (PDT)
X-Google-Smtp-Source: AJdET5daA4O+NxehtHP+mekWafLYNg0gsNdsLyTlQMS6lMa+v2ugxbazO+6YvY56Od3vtcrNAgOe
X-Received: by 2002:a24:2c91:: with SMTP id i139-v6mr279817iti.40.1540780022638;
        Sun, 28 Oct 2018 19:27:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540780022; cv=none;
        d=google.com; s=arc-20160816;
        b=CqPDIwUP5l7ts+eEzun8ujKcjI1DiSeRBgbDfmXQYVe8peXyqOk1m8JMIm6c/Y4P8y
         0aP2VyZO1/4iNw00qn/Y5V/fmClm5VqSTEsvQReWBz94SzWwy55YJRzgSddx3SpOwNXk
         FuucY7L/C0anM5bDB3VxNlrdW5Jfc642Yy5XTfyLV5CVheurojqY6mT8HuwEtxAxMHYl
         LuUSJQZyU4fd/ttzTZWFtpN/O9aglbwm13VCO/qnbBZf2ksRafk64Q2Bw6I8buha/WUP
         tk1SN/OkA03r+CdenjByozf66tezJB+YszBpf2Rks8xacMB9bsf5madZbheoyWoy9QFq
         38bQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=xrojTvBTJLcNnoeFRhF1jnddsYu1pTj8sPdhE/+Pa+c=;
        b=RtVR2fe8moRAmxJNJSm016TsagDeV/JRABlQfL0SrqRJKeOvsWQCnwA3VRTHkn4Zyz
         a5vrC/AzAtbplGErMiEvfXJHT4G4UyM3OH2h4/RYJBR3n7cjkS+N3E6pWP7fbmzYqhpj
         Zt2OmiqI7erlZC7JAzBstGL7UtgvkEtxF0i6/weN1psT0o/geXrLN9Hv2qhuH3oiyuba
         0B38r2uwq+i1qZyOVxOVnnRO3atJZ0wwbJ9KEQCGD4NKEkESh/qq2OmTxE+WlBJDKfy0
         OB1h6AA45NzgqVxt5hGe1Tx59sFItRJF3mKLi3sxeDgrPQA9KZOMjERi2BeY0rRipc/2
         t2rw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FqAerBed;
       spf=pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=kimbrownkd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kimbrownkd@gmail.com>
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com. [2607:f8b0:4864:20::d43])
        by gmr-mx.google.com with ESMTPS id q132-v6si618056itb.1.2018.10.28.19.27.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Oct 2018 19:27:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) client-ip=2607:f8b0:4864:20::d43;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FqAerBed;
       spf=pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=kimbrownkd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-io1-xd43.google.com with SMTP id o19-v6so4021734iod.3
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Oct 2018 19:27:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=xrojTvBTJLcNnoeFRhF1jnddsYu1pTj8sPdhE/+Pa+c=;
        b=FqAerBedeBCVw8oQpzP9rK+X0/SKYE23Y8qntewRkjeH+mcecABjTVcJiEmMrHXNV3
         rmLT751dlJfwU6m7SpYVsGvYwhwFoq7fkshGRKeQgtA92JNUW2h8h7zos9aPen3oa/ss
         Yhp8HnirsPH2Cj1DP5lNz2EQ0eaDkjUtzdQsSv1I0d5v89znuNaz5Z9ctijfkxCE7FJ3
         BsjqV0VN56K2xgF27s2PX8D0ux0q6K+JWYIe7jmUSmMLq3bRSpmfZX60pKValmclDKcF
         ft05dpp0tU0DUzzsZ7qIvySxbfmZjgovQ3QbmUF9yPkiMvsw9W7mN7W5fA4l/+gEKQMY
         SR9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=xrojTvBTJLcNnoeFRhF1jnddsYu1pTj8sPdhE/+Pa+c=;
        b=VxyqJ7rTTL3P8XrEdWMgbA4NbaklQgQKGbefthPdqs7/+mfgAl7xzvZXRRAys0iFae
         wmEE34mJ7yzP3+i1O3ieM5NSR7W8s+ZWaaVUY5RGEd5rIdsKck1oJ6sQa7ZhgS9czyeq
         0Dae/CFuFPoitD8yheA4yRG3yqbvKB+bmHD1+I2cUiFvbkj5K5i90KHeYEcbtZfzZZ3x
         DHaUP7FdDnol8QWLPLWmJLe8Hj4HAdf9UEX0Xy5M3+NLzwylG4amM60Xh50A9x5H/cYg
         urzhxfR20/9jjM4MhE0EP2dOfdFugQLQa/eTAQpsn4NrJCusfVto/+NwqlzzZJQt+nJH
         owGQ==
X-Gm-Message-State: AGRZ1gLoke9V9yI1VyRrIqQgZdJXNEm7CkY0jHGgYcoH4zEY8YfLxgFk
	UkpfDTbd+FpP510LKJODVo+s6+mQoyo=
X-Received: by 2002:a6b:928a:: with SMTP id u132-v6mr6456002iod.97.1540780022354;
        Sun, 28 Oct 2018 19:27:02 -0700 (PDT)
Return-Path: <kimbrownkd@gmail.com>
Received: from ubu-Virtual-Machine (68-188-226-58.dhcp.bycy.mi.charter.com. [68.188.226.58])
        by smtp.gmail.com with ESMTPSA id p136-v6sm5225999itc.44.2018.10.28.19.27.00
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 28 Oct 2018 19:27:01 -0700 (PDT)
Date: Sun, 28 Oct 2018 22:26:58 -0400
From: Kimberly Brown <kimbrownkd@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com,
	Arnaud Patard <arnaud.patard@rtp-net.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: xgifb: vb_setmode:
 adjust descendant indentation to right
Message-ID: <20181029022658.GA158541@ubu-Virtual-Machine>
References: <cover.1540749179.git.kimbrownkd@gmail.com>
 <a85f97b40dabc0f2a978d0928af6bba05b9724e5.1540749179.git.kimbrownkd@gmail.com>
 <alpine.DEB.2.21.1810281933180.2433@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1810281933180.2433@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Sun, Oct 28, 2018 at 07:34:50PM +0100, Julia Lawall wrote:
> 
> 
> On Sun, 28 Oct 2018, Kimberly Brown wrote:
> 
> > Adjust descendant indentation so that it is placed substantially to the
> > right. This change improves code readability and complies with the
> > Linux kernel coding style.
> >
> > Signed-off-by: Kimberly Brown <kimbrownkd@gmail.com>
> > ---
> >  drivers/staging/xgifb/vb_setmode.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
> > index 62b45a30e0f1..3782f8641bf2 100644
> > --- a/drivers/staging/xgifb/vb_setmode.c
> > +++ b/drivers/staging/xgifb/vb_setmode.c
> > @@ -654,7 +654,7 @@ static void XGI_UpdateXG21CRTC(unsigned short ModeNo,
> >  	xgifb_reg_and(pVBInfo->P3d4, 0x11, 0x7F); /* Unlock CR0~7 */
> >  	if (ModeNo == 0x2E &&
> >  	    (XGI330_RefIndex[RefreshRateTableIndex].Ext_CRT1CRTC ==
> > -						      RES640x480x60))
> > +								RES640x480x60))
> 
> The variable RefreshRateTableIndex is really long,and uses camel case,
> which is also not the kernel style.  If there is a shorter version that
> would be acceptable, then perhaps the value to the right of the == could
> be on the same line, thus solving two problems at once.

Julia,

Good point! I propose 'ref_index' to replace 'RefreshRateTableIndex'. I
chose this based on the 'RefreshRateTableIndex' assignment on line 5096:

RefreshRateTableIndex = XGI330_EModeIDTable[ModeIdIndex].REFindex;

Do you have any objections to 'ref_index'? 

Thanks!

> 
> julia
> 
> >  		index = 12;
> >  	else if (ModeNo == 0x2E &&
> >  		 (XGI330_RefIndex[RefreshRateTableIndex].Ext_CRT1CRTC ==
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/a85f97b40dabc0f2a978d0928af6bba05b9724e5.1540749179.git.kimbrownkd%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

