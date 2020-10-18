X-GM-THRID: 6885024139738873856
X-Received: by 2002:a17:90b:1b47:: with SMTP id nv7mr14192757pjb.101.1603046756686;
        Sun, 18 Oct 2020 11:45:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:fe0d:: with SMTP id g13ls3546947plj.10.gmail; Sun,
 18 Oct 2020 11:45:55 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzkqenwkDYHeadiZ7S+PAIDa7qulP8qqPNXCqtnphtPTR42c+YWh2XPi+oeNK1eXOb8ddaf
X-Received: by 2002:a17:90a:f0d7:: with SMTP id fa23mr14222620pjb.108.1603046754982;
        Sun, 18 Oct 2020 11:45:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603046754; cv=none;
        d=google.com; s=arc-20160816;
        b=os354gmCtJ15jBf79gqJ5It22rqGCvOTTW0cDL3NvZ7sedgQRJi5QFAGRKFNOa0+Lk
         2KVha9VYvczrGTCnmkSbODzJ6TV6++JDq3TmYSaP0o7wr8ajhxwdUx8BDRS+/vicPZY3
         BaizMRqsXovoV3dITycIRVqQDcaqYGAsdZNIiz+W4yu/pA/rhP2mAOna10gEa83DhgMT
         LTq8uYM0+GDhCXKr/lOZo6G459Ia/uppeMtQ4TUnddb2ubT7NZ837TgB261tiMLX5mO4
         ooZmWG7aftX3Z+gbGjOf2CyJjdsiK5X++3LmrS5Unq7kZVeQrXcj120sl7z/NbgpH78+
         c+Hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=h+AC0W0gyccdwv8zrJgsAoV+Twg/U7Ln7QC3wNIBpYo=;
        b=sM9EjKGJB6hgZUWI7hsG3LAkKuroNFuCP0tsacLCGrtC9LEnE7AuSupxxsop5CAMXk
         srOTM0NrrNZV2gZTmYq6gWf4PEu1ifVzss54nb5ROW+wuoGkmAmVvaiYg5Ux4tS5t3u6
         NC7Sq7fXyLNqTKQhvldyYYwiBrUGwpKGQm7oB4b7bgItxIh33a44cVKaIu1K8a5Umbxg
         D+h9VG3Su2sM9wMEGbrMFMVwfGuPzm5c2zzsWL6p+uEW9aOAoLbroE7IfmZHxKTEWxsk
         2CbV/oQqmEGsAoQLje+0jdySF5T+DivIhTIrDAPIJ3gX/Xoh/tlNuu7SiKbxN7ArTJ8a
         PgkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EbEefaqJ;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id u192si480912pfc.6.2020.10.18.11.45.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Oct 2020 11:45:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EbEefaqJ;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1044.google.com with SMTP id az3so4094802pjb.4
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2020 11:45:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=h+AC0W0gyccdwv8zrJgsAoV+Twg/U7Ln7QC3wNIBpYo=;
        b=EbEefaqJS46YZLFnXcRYDfSUlMuY9tXJcb2YIC8kXrBacd2h90a2yy+U+1xD26KWBX
         xWjEET9+17jpKnlsOcTgnFNigAtqMU5x6FBbBHBoIZfI4WjQMXlsnSkAc8JEn2aq/N3r
         2qH7Q6Zs9cDNaYMWvoJghcuuSeualZSJf43R7uAcAx4p5pWpXR6RE/SyR65HGYAg0vl5
         3FoK1M8zxTjY0fGl7Mx2YZJienK1GyIVqSBjMWOmxhRp2CY0RKu6DkkdkPUt72CFtHPj
         IxR4XdFGhTLZAkDb1NZeb95s0cqTo/yAxRmwQl03jMhOnDJzX8x3l6HJseaK4Bwn3B2r
         x24Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=h+AC0W0gyccdwv8zrJgsAoV+Twg/U7Ln7QC3wNIBpYo=;
        b=ZFhpLxXV8NzC6PTv47cBlmrJZGr/gdfSJSlri4z+N1vTQzbn7idA3JijXiKnsbgC6A
         eCB8EqSFW7LKDGsJDlUQUp7hNtGILIEJSG3g5ial+dTZv6SfupGv/W9r0EhsIx2KQpOJ
         MauT4YY9zje1cApML+028MPzSMMO/KMiOeiSTZtfeh7FR1N8dgKrlVvFr6xAM/bvK8qp
         1ps1/zhl1SqT90/KxiUZjKLWqbaeLXdL5iX2Rh0qbaVHcTQqpdMA+io7WzzfuES4w0oa
         GVurxdrQt7fCcQBfCIhmzin516allPdrhxo8m8gP1Fjhq9UEv7ZRWQFhBG2Wagq30jsp
         fWcg==
X-Gm-Message-State: AOAM533L3P7s7vws0G3g/T832sAAtMGw6dECRqb1B7ETOoVRsJBdb8OQ
	9RsYSLmIR+WkhW2uGhy5D9tqXxmMvzWAxg==
X-Received: by 2002:a17:90a:f30e:: with SMTP id ca14mr13652722pjb.79.1603046754712;
        Sun, 18 Oct 2020 11:45:54 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id n19sm9164092pfu.24.2020.10.18.11.45.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Oct 2020 11:45:54 -0700 (PDT)
Date: Mon, 19 Oct 2020 00:15:50 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Sumera Priyadarsini <sylphrenadin@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: Use sysfs_emit for
 show(device *...) functions
Message-ID: <20201018184550.GA53720@ubuntu204>
References: <20201018180954.GA39024@ubuntu204>
 <CACAkLuoOgLe5pH5WsKqybZ92DcHiKM0eOCPuqm7wKMkeOC7s5Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CACAkLuoOgLe5pH5WsKqybZ92DcHiKM0eOCPuqm7wKMkeOC7s5Q@mail.gmail.com>

On Mon, Oct 19, 2020 at 12:01:24AM +0530, Sumera Priyadarsini wrote:
> On Sun, 18 Oct, 2020, 11:40 PM Deepak R Varma, <mh12gx2825@gmail.com> wrote:
> 
> > Convert snprintf calls in device show functions to sysfs_emit
> > for PAGE_SIZE buffer safety.
> > Warning generated by: scripts/coccinelle/api/device_attr_show.cocci
> >
> > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> > ---
> >  drivers/staging/comedi/comedi_fops.c | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/staging/comedi/comedi_fops.c
> > b/drivers/staging/comedi/comedi_fops.c
> > index d99231c737fb..5b8ba0c84a8e 100644
> > --- a/drivers/staging/comedi/comedi_fops.c
> > +++ b/drivers/staging/comedi/comedi_fops.c
> > @@ -396,7 +396,7 @@ static ssize_t max_read_buffer_kb_show(struct device
> > *csdev,
> >         mutex_unlock(&dev->mutex);
> >
> >         comedi_dev_put(dev);
> > -       return snprintf(buf, PAGE_SIZE, "%u\n", size);
> > +       return sysfs_emit(buf, "%u\n", size);
> >  }
> >
> >  static ssize_t max_read_buffer_kb_store(struct device *csdev,
> > @@ -452,7 +452,7 @@ static ssize_t read_buffer_kb_show(struct device
> > *csdev,
> >         mutex_unlock(&dev->mutex);
> >
> >         comedi_dev_put(dev);
> > -       return snprintf(buf, PAGE_SIZE, "%u\n", size);
> > +       return sysfs_emit(buf, "%u\n", size);
> >  }
> >
> >  static ssize_t read_buffer_kb_store(struct device *csdev,
> > @@ -509,7 +509,7 @@ static ssize_t max_write_buffer_kb_show(struct device
> > *csdev,
> >         mutex_unlock(&dev->mutex);
> >
> >         comedi_dev_put(dev);
> > -       return snprintf(buf, PAGE_SIZE, "%u\n", size);
> > +       return sysfs_emit(buf, "%u\n", size);
> >  }
> >
> >  static ssize_t max_write_buffer_kb_store(struct device *csdev,
> > @@ -565,7 +565,7 @@ static ssize_t write_buffer_kb_show(struct device
> > *csdev,
> >         mutex_unlock(&dev->mutex);
> >
> >         comedi_dev_put(dev);
> > -       return snprintf(buf, PAGE_SIZE, "%u\n", size);
> > +       return sysfs_emit(buf, "%u\n", size);
> >  }
> >
> >  static ssize_t write_buffer_kb_store(struct device *csdev,
> > --
> > 2.25.1
> >
> 
> Hi Deepak,
> 
> I was just about to send a V2 for the previous patchset I sent which
> included this file as well. No issues since I've not sent it yet- I'll
> remove this file from my V2. But please give me a heads-up the next time so
> we are not working on the same files. :-)
> 
> Thanks, and regards,
> Sumera
> 

Sure. I should have informed you. My bad.
I also sent in patches for the other two files as well. So you can look
for other issues to fix.

Thanks.
Deepak.

> -- 
> > You received this message because you are subscribed to the Google Groups
> > "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an
> > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit
> > https://groups.google.com/d/msgid/outreachy-kernel/20201018180954.GA39024%40ubuntu204
> > .
> >

