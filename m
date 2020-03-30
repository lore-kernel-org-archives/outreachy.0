X-GM-THRID: 6807884729429262336
X-Received: by 2002:a5d:6104:: with SMTP id v4mr15250177wrt.213.1585565306074;
        Mon, 30 Mar 2020 03:48:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:4e07:: with SMTP id g7ls379435wmh.0.canary-gmail; Mon,
 30 Mar 2020 03:48:24 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsBPlU7xEKCO10sTORuVkAHfpj8HmKDxiaoCw2mdmSxn/veL/6t3HPbbKSE8uYQS6Fm5MCk
X-Received: by 2002:a1c:5a54:: with SMTP id o81mr473200wmb.61.1585565304523;
        Mon, 30 Mar 2020 03:48:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585565304; cv=none;
        d=google.com; s=arc-20160816;
        b=uK0pRzDUek3Namm2HB8vd/1yDcAViOpVFbPUa6bN4Zj0v/wh9kT7VN7yTZh3VjfDDv
         b2uTugjesJMrMPG59oIiIzo1htCOiKnxgXKdH0ZqmMQA2i6ldWqXyb8VO2drPsETjB6D
         lSutO8MPels8un8yb8v12WvKuDq5uqA3eb4wPbgJi0/bAmraU3s8+qPnVUiRDULAvAqn
         as/bi9pZXFVZnXZc7DtNPI6ee/GqjLt7AGyIWygHAbWDzlC68281rcSaly4gF5naeFpq
         zxRmAXEmAbvzimlEoHLBZv840MTq28mAQbKy+TCz5CccVIDNgWl5aCU4ts0BgzJsQtev
         QA9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=HsVbXMq9TXLQF+w5u5VGhEWNh80nlS1Qa4ORaRcOT5U=;
        b=tgqXmeOVxV+83gl3MByIwx2bAnZ2AbrRLNc15VfMRzPVAHIK/0wr32NxjkIficVc1Q
         5CbNW4hVAIx2Wh133jXXQ3pazLmCOkLgZva9dJMBgd3vO7YkNy2Mx6OQkSJc868IH2pw
         Q12ubdJQKfFcIYqEUc/+3nVxPrragkO/+TcXXvX6hA1u3kx+4IwLfMAuo/rVR4eSZIWH
         r9aG+m0KIBJ5rdlpwZ9VZUI5CxQAul6NsAQNhnsqFFe7iXFDngWqVSSddbu76kdUPe5U
         ns8WKMANuUczIHFLnTuzyTkXqPb5DAe0AkwAiWRf1EHIeCOsCHEjquAIhNoclVJWIkUF
         7AEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=J2LYqKGJ;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id i22si931538wml.0.2020.03.30.03.48.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 03:48:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=J2LYqKGJ;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x442.google.com with SMTP id d5so21057114wrn.2
        for <outreachy-kernel@googlegroups.com>; Mon, 30 Mar 2020 03:48:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=HsVbXMq9TXLQF+w5u5VGhEWNh80nlS1Qa4ORaRcOT5U=;
        b=J2LYqKGJiweNKwnAM2WqbXjTBUJ0zdN2k5MSePDDIgzkrF79uEv3IK+7zImYYGuCjA
         /tHCLgXWU3y7hgW5kF0z8W0aGdz83zTXsu/u/rskKcqEYg8pk0qJGumkgaNM8Fskj3JS
         dSSm3GsCpcWrAUJKgQb9HBBZJ0AIDazfUUSlq8uMU8Os5Xp1SGxtSRLcewzqVtOO38Jb
         wUNR4xnpq57eJp0etJvnB34psdVhkTyKBimv7N1M+gMvVdUVAgUP9zm6l7TQ+o/3kLpR
         Z86GkUv5T5BVBFnKM1qPwfUeurqA5ScmWxKGehHzkxGi0SuM1pU9hUoh3hyLp6qVZ9V7
         DK1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=HsVbXMq9TXLQF+w5u5VGhEWNh80nlS1Qa4ORaRcOT5U=;
        b=rOxHS6p4NlDC2mG5DJxfuBGm2P0ovW+c09+Yz5uISBuQ1zfSm/TGMVCy2jyIdq/rQW
         v5A5PhkUfelVzuZ4p4CG1u03ZVXL5xSsxRbxz4gPAm8NdW3tKNiXlXutZmuASwQQvvAT
         1BCfrM4oRBZrvW1btM27Wu5WFBVZfNpdNE1rak3G9gXxvb1wNDqamriP/PuyEpd5fRcl
         kkNqdP0lb6vc1cPc5LBT6UM9DiDF8vC4iJMshibVLD3Oo6zPuTsFYVVT5J6nV5UFJI7u
         QHM+N5kYr4Y8LqlHwigV7BTR1KhcA4ea6mQCVU8kNprFYzMjtjEKIkMKE+oY7LMhfXlZ
         ufdQ==
X-Gm-Message-State: ANhLgQ25Iyktj6QVzVNpXyl+hF1rj2Dcd+WI4NFbhtdwsqo7BR1OG84w
	MhpzuyBR3sM9afp0GoJNAk810OEqviU=
X-Received: by 2002:a5d:4cc2:: with SMTP id c2mr14641058wrt.398.1585565304213;
        Mon, 30 Mar 2020 03:48:24 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from debian ([197.34.98.112])
        by smtp.gmail.com with ESMTPSA id h81sm22773325wme.42.2020.03.30.03.48.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2020 03:48:23 -0700 (PDT)
Message-ID: <415066fb503764a528fa5cf4d681c5cd25065d24.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 1/7] Staging: kpc2000: kpc_dma:
 Remove comparison to NULL.
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Stefano Brivio <sbrivio@redhat.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	outreachy-kernel@googlegroups.com
Date: Mon, 30 Mar 2020 06:48:21 -0400
In-Reply-To: <20200330030346.6420ddc6@elisabeth>
References: <cover.1585143581.git.jane.pnx9@gmail.com>
	 <f344afba0a8bb0413941a63678688435f04a96b4.1585143581.git.jane.pnx9@gmail.com>
	 <20200330030346.6420ddc6@elisabeth>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Mon, 2020-03-30 at 03:04 +0200, Stefano Brivio wrote:
> On Wed, 25 Mar 2020 10:26:36 -0400
> Sam Muhammed <jane.pnx9@gmail.com> wrote:
> 
> > Comparison to NULL been used across the driver,
> > remove them and use (!var) instead.
> > 
> > Checkpatch.pl: CHECK:
> > Comparison to NULL could be written "!desc"... etc
> > 
> > Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> > ---
> > Changes in v2:
> > - None.
> > 
> >  drivers/staging/kpc2000/kpc_dma/dma.c            |  2 +-
> >  drivers/staging/kpc2000/kpc_dma/fileops.c        | 12 ++++++------
> >  drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h |  4 ++--
> >  3 files changed, 9 insertions(+), 9 deletions(-)
> > 
> > diff --git a/drivers/staging/kpc2000/kpc_dma/dma.c b/drivers/staging/kpc2000/kpc_dma/dma.c
> > index 51a4dd534a0d..4bfbc717bc07 100644
> > --- a/drivers/staging/kpc2000/kpc_dma/dma.c
> > +++ b/drivers/staging/kpc2000/kpc_dma/dma.c
> > @@ -236,7 +236,7 @@ int  count_descriptors_available(struct kpc_dma_device *eng)
> >  	struct kpc_dma_descriptor *cur = eng->desc_next;
> > 
> >  	while (cur != eng->desc_completed) {
> > -		BUG_ON(cur == NULL);
> > +		BUG_ON(!cur);
> >  		count++;
> >  		cur = cur->Next;
> >  	}
> > diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
> > index 40525540dde6..5eb6c5f24feb 100644
> > --- a/drivers/staging/kpc2000/kpc_dma/fileops.c
> > +++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
> > @@ -124,7 +124,7 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
> >  		pcnt = count_parts_for_sge(sg);
> >  		for (p = 0 ; p < pcnt ; p++) {
> >  			// Fill out the descriptor
> > -			BUG_ON(desc == NULL);
> > +			BUG_ON(!desc);
> >  			clear_desc(desc);
> >  			if (p != pcnt-1) {
> >  				desc->DescByteCount = 0x80000;
> > @@ -203,11 +203,11 @@ void  transfer_complete_cb(struct aio_cb_data *acd, size_t xfr_count, u32 flags)
> >  {
> >  	unsigned int i;
> > 
> > -	BUG_ON(acd == NULL);
> > -	BUG_ON(acd->user_pages == NULL);
> > -	BUG_ON(acd->sgt.sgl == NULL);
> > -	BUG_ON(acd->ldev == NULL);
> > -	BUG_ON(acd->ldev->pldev == NULL);
> > +	BUG_ON(!acd);
> > +	BUG_ON(!acd->user_pages);
> > +	BUG_ON(!acd->sgt.sgl);
> > +	BUG_ON(!acd->ldev);
> > +	BUG_ON(!acd->ldev->pldev);
> 
> I've seen some tool reporting this (perhaps Coccinelle?): with
> x == NULL, BUG_ON(!x) causes a kernel panic just like dereferencing x.
> So the first statement in e.g.:
> 
> 	BUG_ON(!acd);
> 	BUG_ON(!acd->user_pages);
> 
> is redundant. This change wouldn't be related to this patch, though.
> 
Please correct me if i got this wrong:

Does it mean that explicitly stating BUG_ON(!x) case to cause a kernel
panic is not necessary since its already being dereferenced, and
dereferencing it is stated to cause a kernel panic already?

Thank You,

Sam



