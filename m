X-GM-THRID: 6663863789016842240
X-Received: by 2002:a24:6f15:: with SMTP id x21mr149258itb.2.1551720230336;
        Mon, 04 Mar 2019 09:23:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:5a0a:: with SMTP id v10ls10897ita.2.gmail; Mon, 04 Mar
 2019 09:23:49 -0800 (PST)
X-Google-Smtp-Source: APXvYqztEOMYurn0fSSAdadKz2ETEGuqocEmcOhasYg9ketPH9MxmVH6Eb9CQX8jl32lLbSMKHOt
X-Received: by 2002:a24:78cb:: with SMTP id p194mr121245itc.7.1551720229533;
        Mon, 04 Mar 2019 09:23:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551720229; cv=none;
        d=google.com; s=arc-20160816;
        b=UA9Vc0ai8BBQDrPFSWHzEf5Fq7vqCwBRKOLqGn33VKvJbPsrnhUiaMRAGrf+osOlLd
         geSNzMZRixjGXkO5aE5ozbWRNCNlW3fvweYWbIisjhfuC5ooEyLRimuQLNVTMYJN0evE
         7B62tXhKSDGgrQ0hCmGcv44hCUWWN/G/E8vkaK3VTwLMil62gzs9CsLTwIfg1IR1yw2E
         DxxXUN361tqF6cwB5rTUQSXeEem39UPHtuQyhREU2Wf2KhYDHZVuDueBMIU/sWGCk6Ac
         9xkMadA5s+2j3Y9bGy0ecq5BpxhcbSXWlwQUeK9JoVPX6cX1X9+EdH+NFC4RNqTcAzC2
         buBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=H6Qliv9lmQdZkuVLqFvuhRG5EBaOf15AxDXX2rpNO6I=;
        b=t+i+B21ZSOxJrdVs2BMt+9F52hKgvgn01AYiHcF7ro6cM0hVkIcYf3UIwFZG7sJ8cw
         N3kAbdJh50g5G/wViglZbFwo1fVDvRCzsoqfyMZpH1/XOucfmqjASX7d0tcAP3QY37yj
         uZAro7SHqqb2ZxAX37ASkt/k1e1ndOSOHe5Plw4GwKZwE9OAjcOXYK9J/wo9cHzR3cSj
         XCrksbcrJ+mla2DC+3Xyv8ypmw2hBDOzyIyrqyZiRAYUaQzcfjZzIDeNjDNJg6zey3tj
         rJOMoU6Yh+fk3di1Cu1A1826LVnEkFt9IZMnGmRHcZNydyHi9nHElvPhGfMTbY49sO07
         fqqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tFNM0RI3;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::231 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com. [2607:f8b0:4864:20::231])
        by gmr-mx.google.com with ESMTPS id v63si390333iof.0.2019.03.04.09.23.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 09:23:49 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::231 as permitted sender) client-ip=2607:f8b0:4864:20::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tFNM0RI3;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::231 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x231.google.com with SMTP id j10so4447361oij.13
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Mar 2019 09:23:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=H6Qliv9lmQdZkuVLqFvuhRG5EBaOf15AxDXX2rpNO6I=;
        b=tFNM0RI3s+cHDL5xbtlwtxYHJp+K9fgALUTC/ilA+4KgsKeOFZyU4i8rHb3++z27y3
         lIZ7awsmMk0VyYPiSzXQxfCaiLlKUNv3Ha1SPyVsOjZ1xHrLKkHHW/VprBkarltMb7oR
         Uv4XK4GpSKUq3grZA+8lvrOytWKCXLD6UV7h19yGgPYRs8CFVZL6r38dUG9W9EgDXFcB
         ERHsG6HDhtQOTPoghl+GHUyZD0TzoiWPgphJsc0UcELUVVCJpjs1qYIFlD9PlD00zqhF
         lGf/MHD+XWtrpkPdx4WPsSKMnIvGdqc+HhZXtTcOv4CnRvwZvLiFcJsfy5FfBhZLyqIW
         TfiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=H6Qliv9lmQdZkuVLqFvuhRG5EBaOf15AxDXX2rpNO6I=;
        b=fCHF6zpF04PWm1as9QQ8G2dUrgOaELDsTJtGxk3WLBa3fenTDuYVeCkS0RLF7fw4ha
         00e9RP8h6rad27YIgQvfCKXQWKGbiN+f6HK9IqahV3XTPNnHmESg84ksA501iXSoLHS5
         y+81mm7vJqXH0WxbvsGsSovW/EY03+KQ9EIzuYeMfjnUN5zSWdD+qU/tfXuRTFL1FQ4s
         TT1lMy0tqy0TmwaQI/hMw5ZQcmbJEpBx4wWRmJB3O9NbReL2jBAjU6+lv5OsJkykCwVA
         NfUxxCe4tbgPImWcpPiu0bCYzFdPyRUmi+QrQ4Xrb06phXLneQOZLg/ZJ5JCOj0xtNBF
         u8iw==
X-Gm-Message-State: AHQUAuYz3j6xN1nPi4sp5vrpMT1WjNLEKWB0a+XFA1dq8omNYlTpvHFm
	nU1TTDA5IUEPZOaJOBaO5+g=
X-Received: by 2002:aca:3209:: with SMTP id y9mr12943327oiy.145.1551720229015;
        Mon, 04 Mar 2019 09:23:49 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id q1sm2642195oth.42.2019.03.04.09.23.48
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 04 Mar 2019 09:23:48 -0800 (PST)
Date: Mon, 4 Mar 2019 11:23:46 -0600
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: vt6655: Fix line over 80
 characters
Message-ID: <20190304172344.GA22591@madhuleo>
References: <20190304011949.17148-1-madhumithabiw@gmail.com>
 <alpine.DEB.2.21.1903040842080.2559@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1903040842080.2559@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Mon, Mar 04, 2019 at 08:42:54AM +0100, Julia Lawall wrote:
> 
> 
> On Sun, 3 Mar 2019, Madhumitha Prabakaran wrote:
> 
> > Fix the warning issued by checkpatch.pl
> > WARNING: line over 80 characters
> >
> > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > ---
> >  drivers/staging/vt6655/card.h | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/vt6655/card.h b/drivers/staging/vt6655/card.h
> > index d71022aa3f86..6bbbbe1314d5 100644
> > --- a/drivers/staging/vt6655/card.h
> > +++ b/drivers/staging/vt6655/card.h
> > @@ -44,7 +44,8 @@ struct vnt_private;
> >  void CARDvSetRSPINF(struct vnt_private *priv, u8 bb_type);
> >  void CARDvUpdateBasicTopRate(struct vnt_private *priv);
> >  bool CARDbIsOFDMinBasicRate(struct vnt_private *priv);
> > -void CARDvSetLoopbackMode(struct vnt_private *priv, unsigned short wLoopbackMode);
> > +void CARDvSetLoopbackMode(struct vnt_private *priv,
> > +			  unsigned short wLoopbackMode);
> 
> I have the impression that this function is actually never used.  Maybe
> you can try to get rid of it.
> 
> julia
> 
> >  bool CARDbSoftwareReset(struct vnt_private *priv);
> >  void CARDvSetFirstNextTBTT(struct vnt_private *priv,
> >  			   unsigned short wBeaconInterval);
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190304011949.17148-1-madhumithabiw%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903040842080.2559%40hadrien.
> For more options, visit https://groups.google.com/d/optout.

None of the function declarations in card.h is used with itself. But the CARDvSetLoopbackMode function is used in card.c. Whether we can remove it, considering the fact that it is used in card.c or not. I'm not sure regarding it. 

thanks,
madhumitha


