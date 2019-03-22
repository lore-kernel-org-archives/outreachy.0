X-GM-THRID: 6670775463760101376
X-Received: by 2002:a25:21c3:: with SMTP id h186mr6595607ybh.95.1553237181337;
        Thu, 21 Mar 2019 23:46:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:4f56:: with SMTP id d83ls2568333ybb.4.gmail; Thu, 21 Mar
 2019 23:46:20 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzZ6g6FSD68Y4PMPA6I/5rcJ7VMurc1GrwIqAUR2RGWvPP3k+AVfHM5kTzgrETONBBDKAxk
X-Received: by 2002:a25:dd04:: with SMTP id u4mr6668358ybg.203.1553237180349;
        Thu, 21 Mar 2019 23:46:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553237180; cv=none;
        d=google.com; s=arc-20160816;
        b=IIxCRulRjBLlFjl2Whgmt2gQi1Sfy9x6BO2RRkimPsyOckvBOGl+RQfGXMjI2eSRCx
         RFZK/NHWgSX2eXbWSBSOAiDwnA71pX7YIuXV+0J89VA5BNWowL04iwM4uQOxYK3m/86Z
         q4J7JFVMLLCXkA7+vbHsQBeBDYlaCEHoan/EmCZZhAwp7sNUAQ0J54aLa5sEUEgsEYSe
         cmwrJfL8FCTOA2RK7/yqG8qTkELfNGJ7uHKTLZaZ71/72Z5dGewN669ixquJRiB/UKm1
         jPO5kWiUcrE82a3YYuer3CwCfDMLkUWg1tELBK3qS5ehZq0rJoSEgAuVdBb+EXdRDEb2
         /ScA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2qyFlka33AGuhIgwiBcmQ/FwhPDz6eA3YbbSWRAy3MQ=;
        b=f23TOZhIRBT7GY7AUox+czVPa5fD01O4eTah7coDf/Y8gEQbUC4+p6PTDtxXWEVQ7a
         flYAM516ksVkodpMkTXj0lc6UK2wCK/1O6yI3HzsqnURrb6pjXgeJlwNWx3i0vjbVJ7K
         nKL/LHLusArGlzl0BcQnesMhCzBQ9c7+HO/zTv2WZEvs5nbXwCV8dcIuTrItziOIUCRR
         3+PZhynR+o/5vOBaHLEK6GWb5Y49ek8b9/d0xxsMaDoVPRdfKFxvx33H5D+u5Tm5CYIY
         RZrtAvvWcivffJFZKhkO5wzKPffoAwjlN2IV9YmoUybbKiuV33hjfflvSPJx2RskCF+X
         LLCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="hK96Mu9/";
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id d186si456398ywa.1.2019.03.21.23.46.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 23:46:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="hK96Mu9/";
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x344.google.com with SMTP id q24so1056281otk.0
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 23:46:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2qyFlka33AGuhIgwiBcmQ/FwhPDz6eA3YbbSWRAy3MQ=;
        b=hK96Mu9/O80NCKrs+M6w1SgKtwCMspPPoS3EtwuFerR3KI6ADvUVtxKsXZSb7OdtvC
         3n/rZr3BuLxyMacsLZXlLSkrHkYksG/R40TUNMXhhoTGoRGZus33eGQCuxBpqbnsUoBc
         a2AtJDxG6C+dZv0N+khW8c1D6/FrvzOyffl3ZBtynbCUyiYO5IW4tUFdPP83eC3/ROYw
         k2FoXrpdeIUEf5WU7gmrF1dwO5f5rzmblzXYukypE8JmJV9srFdgjq6kXMBn85qC3hZg
         4klfiTMLHwR1gycBCFhwRVfgGOVXm2zM6M57IrznXmn48BVDyvOXpcTjTqVQBM/cdrCv
         VXbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2qyFlka33AGuhIgwiBcmQ/FwhPDz6eA3YbbSWRAy3MQ=;
        b=RwfMIxrvzBEt8DZMkp51gsTYsS79XDkzzQp5QMUqCkzPD5fYirRZwkSIbIvLKITgsD
         5h40vH9Cgt/+5UMeN+Vj0AqKX+wIlY41O3/ahp9zuOr+BEos3O9RBt2480MWAMtvZ1BW
         grc69qMaanQ39WroChvqjT2irmd8anl65gnG8UeN8boXYb3VYXyPohc6UeBtO16O87Nx
         GigWth6fpfB5wu1PqFtc8Ozh6MhTs6c3geA52EKskmsPERPhS6aQL/ezgrsLOotJQ2Oy
         ts2HSep4igJwp80QUZ7WxGWsprGbOdeH0/mlwE967aYqwIeh/s6QiTacdy6LBV6tFVnw
         czhg==
X-Gm-Message-State: APjAAAXDSkP1Nf4GzFLceiyAh921qhg/VGwcMYvmbYXLrTWT7n3LR7Ny
	fdVu3IOVwdAH1strDHv1q/vi18jfdFe25nHHivg=
X-Received: by 2002:a9d:6e0a:: with SMTP id e10mr5142092otr.281.1553237179882;
 Thu, 21 Mar 2019 23:46:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190321093527.8167-1-bhanusreemahesh@gmail.com> <alpine.DEB.2.21.1903220739080.2621@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903220739080.2621@hadrien>
From: Bhanusree Mahesh <bhanusreemahesh@gmail.com>
Date: Fri, 22 Mar 2019 12:15:46 +0530
Message-ID: <CAB0Mk-M_SnCiiXeR5kqfwyqjgBS5uO8uJq+wFgEV7Qyca2ej0g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: Use !x in place of
 NULL comparision
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Mauro Carvalho Chehab <mchehab@kernel.org>
Content-Type: text/plain; charset="UTF-8"

On Fri, 22 Mar 2019 at 12:10, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>
> On Thu, 21 Mar 2019, Bhanusree Pola wrote:
>
> > Test for NULL as !x instead of NULL comparisions for
> > functions that return NULL on failure.
> > Issue found using coccinelle
> > Semantic patch used to solve the problem is as follows
> >
> > // <smpl>
> > @@
> > expression x;
> > statement S;
> > @@
> >
> > x = (\(kmalloc\|devm_kzalloc\|kmalloc_array\|devm_ioremap\|
> > usb_alloc_urb\|alloc_netdev\|dev_alloc_skb\)(...));
> >
> > -if(x==NULL)
> > +if(!x)
>
> This may have been accepted already, in which case don't worry about it,
> but the semantic patch is not correct.  You need to use the S metavariable
> that you declared.  Coccinelle paterns should be complete syntactic units,
> so an if needs at least a then branch.

ok. I understand that. I'll take care of it.

Bhanusree
>
> julia
>
> > // </smpl>
> >
> > Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> > ---
> >  drivers/staging/media/zoran/zoran_driver.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/staging/media/zoran/zoran_driver.c
> > index 04f88f9d6bb4..0a99e16e5bd5 100644
> > --- a/drivers/staging/media/zoran/zoran_driver.c
> > +++ b/drivers/staging/media/zoran/zoran_driver.c
> > @@ -332,7 +332,7 @@ static int jpg_fbuffer_alloc(struct zoran_fh *fh)
> >
> >               if (fh->buffers.need_contiguous) {
> >                       mem = kmalloc(fh->buffers.buffer_size, GFP_KERNEL);
> > -                     if (mem == NULL) {
> > +                     if (!mem) {
> >                               dprintk(1,
> >                                       KERN_ERR
> >                                       "%s: %s - kmalloc failed for buffer %d\n",
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190321093527.8167-1-bhanusreemahesh%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903220739080.2621%40hadrien.
> For more options, visit https://groups.google.com/d/optout.

