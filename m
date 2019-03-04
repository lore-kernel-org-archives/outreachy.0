X-GM-THRID: 6663863789016842240
X-Received: by 2002:a63:4e11:: with SMTP id c17mr7508765pgb.138.1551715370818;
        Mon, 04 Mar 2019 08:02:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:6e02:: with SMTP id j2ls6922729pfc.5.gmail; Mon, 04 Mar
 2019 08:02:49 -0800 (PST)
X-Google-Smtp-Source: APXvYqyH4RSjxbgRM/0ApNauvP2eR8APwpCMRtZQGp56oTtC6xyfn5C8OTkjppAOtkAGBvy1dyq+
X-Received: by 2002:a63:d155:: with SMTP id c21mr7475290pgj.113.1551715369971;
        Mon, 04 Mar 2019 08:02:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551715369; cv=none;
        d=google.com; s=arc-20160816;
        b=scHIapQ9ziNIxo67G1BaMMP9lg3W+kYc+YVIchoPqI5tZkhdInj5KVQ5/fIGwWMNej
         woR+VGGmn/zrjZNkD88B09CNTxjVTS2exg07FDLh7Ou5wxNzcbHYE5x6YNiF8nnGOcvn
         iEzwyn9FZa3mSS5RUqulQmI+B8HqV53IA2BdZ4L5CtgKAd9wn0PCfJkSMznSX43GKHn6
         1YWkBXuCMitjZj3Toxc/RC+Z21ouXyxr732WWXZMsj+fSYV6mUmPxEOjhYuW67cOpdt+
         Q41dJ4HswiOGibbwL7hr6l+woe2cdUJ6iZUMrDxcwBsjdCl4WbRReBVzTQD1WtxkDVrK
         iqHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=bMLIxKEpma65TSA9gqUfPYmpjHLfEzh3zQZzgSJVmUI=;
        b=Trz5TErfFK/4zDFKZx7YqdqCYFvOxdUjaWm30VFRKKviaEWocbmOAwEqXrJnJGwiLw
         Uq2nASlz85EHMlooFQ5G4BRlcJ2M/lkcJI3qH4dvefhJ2LVpkRoyhVCU8F2l//XejeFf
         i1MvhV7qkWA1nFg9ofRNZbtVMZoZVyTsAo72lVhS3JGptplYBI7a8AEv6l6ugkEib92F
         It4IcmVZNe/cyjQ26HctDWBjrH5ccL1MfB8sZu6wKpjcH2IziniIyho7zXi/zDcR+Wvr
         iweaXJBojjzppYdCTJMw5Sy+FR1hsZDMJLMfYpX40sAV2VfwAFuakNED4zlS/uCPhFkU
         0klg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ntqDhjjY;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::230 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com. [2607:f8b0:4864:20::230])
        by gmr-mx.google.com with ESMTPS id e71si301192pfc.1.2019.03.04.08.02.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 08:02:49 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::230 as permitted sender) client-ip=2607:f8b0:4864:20::230;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ntqDhjjY;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::230 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x230.google.com with SMTP id t206so4228490oib.3
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Mar 2019 08:02:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=bMLIxKEpma65TSA9gqUfPYmpjHLfEzh3zQZzgSJVmUI=;
        b=ntqDhjjY1uuKxgxqyozSFrI0NDlW6Gs/KvEK5lJjcNZfajcV9zjjz2HxSVztb+t4IP
         fzHrbeh4ek77nXMxTouOXd6YwOPOuuBlQUIkHSAdpk6ej+v4ZvX9TEMqX5r7koisrovf
         rxZqJWdzCTKCU0k/JJgRwNjkvouIiPzcXAPkm/egIdj+2utj+e0p/237gO+nR/KpT/F9
         KGL8IUQSO52vVspwZsTOtk/qlS6adDMEX4UFYSYGdhsxEvYbPTlvyjZMg+PZfEqGc8E4
         fPcuNiLgKRUqalh5HzV8kCNt+oRVGYqIYk/YLGtyMaFeu6gl8p645Gaf4cJxUvfSe6TJ
         gnFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=bMLIxKEpma65TSA9gqUfPYmpjHLfEzh3zQZzgSJVmUI=;
        b=VzM+DlUn/lTKH2knNI7Up7C8ChWo84bl8RZv1uEZHFers5HxkZdvRyfIR7WKk/mleK
         lXs07g5USNwUCBa0e4yVv9hIkkaypbnQJORaUlrILsGQqMapTGECnqkvoCxil9TBWB70
         RF2tqtUyENSpboMj0fq/QBjnzx9rHEw2ZbQIGeC3tGAJsa/DWF6OGErJYDNN7J/fuLyd
         qCoJipjWS/Rh+He6MpfERpVLcbrM0xnSCpeBPA7tLBBP7S2MpWmWDR9tgxZQ5ZO0/WiX
         m7btJGqxLHKWJUxZbvP3sCZ8F+ZuAUeB+G8EnF3f+BSxZVR5F7DR8SIyAvt3gRHW/PiW
         Pk4g==
X-Gm-Message-State: APjAAAU/t4jq4QpFWVYSB5gVNcTCqza+gtqISe7bvr6WI8J74fZyToI9
	tco+hGPYgIANejxnyVka0/1kVGDxHjE=
X-Received: by 2002:aca:b341:: with SMTP id c62mr11646935oif.112.1551715369544;
        Mon, 04 Mar 2019 08:02:49 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id x127sm2512895oix.25.2019.03.04.08.02.48
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 04 Mar 2019 08:02:49 -0800 (PST)
Date: Mon, 4 Mar 2019 10:02:46 -0600
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: vt6655: Fix line over 80
 characters
Message-ID: <20190304160245.GC20855@madhuleo>
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

I will check and fix it

Madhumitha


