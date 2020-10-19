X-GM-THRID: 6885024139738873856
X-Received: by 2002:aca:8c1:: with SMTP id 184mr10029046oii.137.1603070837439;
        Sun, 18 Oct 2020 18:27:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:fd17:: with SMTP id b23ls1934615oii.2.gmail; Sun, 18 Oct
 2020 18:27:16 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyEfmSPvsG5WQGVUB0yOkajQkg1ioOa6lhd8UGJ8D0B4aiH11X6UsursDm+/cmiEIi2RGgd
X-Received: by 2002:a05:6808:2:: with SMTP id u2mr9952987oic.170.1603070835971;
        Sun, 18 Oct 2020 18:27:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603070835; cv=none;
        d=google.com; s=arc-20160816;
        b=uhvKWSI6u0OYJU+Fp4vQubgzDMnBW/zOladLcPb0cGmuWhQMjWpsS54lNpdQzn6ef4
         3yjOwqYHS3gOmx56T/DH8GIIvgHXrVHcRnTLynH0DPq+PkDapmBfIrzD3thq1nJM9mEt
         aRqrRPel74kSCRJuVqsXxeQ270C4rcunFeOOj2ySCUN6PYkN6LLw1YudRvI1SwzULVh/
         0qiHVRfmFJzkP1wsyps2SgH/wHTIZttxaVPitxvNeGp+j3KuZSofIw+qNaexzrEmQ/8a
         n1HR7BAIm4/rCqeRAVg6Y7CWjbeWseKpODkm7z5TuvQ82T3o3VkBXIg6ajenhKBPykCi
         dlWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=sBxmMuYWcEEarZekBBVo6DGeGHGxLldNfboA34wGQc8=;
        b=Is6eOhkRQFGIyCviUHERu3Ebop8sOURxU3E2P6q52x0i5x5n/Z0MlfOcZtDlD9Y5OE
         heK/joDfRg257J3w/fp7QqwUVmugcIDNfGwBN/PwGjUvXzBKkSGjQcy2VU3d7zoSHhJE
         O7ZSKWgtTNpUhcGoTJ89AWZXeYHFDhBxu9Xel8K5AhdwgdxI7kW28494vRzlfbCxu0yI
         sqmd/3dS3PrIlw8XBW6O+xm6B3zDL8CpUQjVptCy1G8XlezUALcO9JAvAZxUyWprEtRp
         aN1WlfXS950GoYk0u6uIG0AxM1Ogwv4+N4KPiACWXC2PZ94n52T10OTvfVrkVIkh9oWs
         k8cA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UCxAWIw5;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id d20si736158oti.1.2020.10.18.18.27.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Oct 2020 18:27:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UCxAWIw5;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id x13so5028463pfa.9
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2020 18:27:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=sBxmMuYWcEEarZekBBVo6DGeGHGxLldNfboA34wGQc8=;
        b=UCxAWIw54uz8zDTh2LX8GrAHwn5onHYnfyXZR91qFRjg1nTOlXsenwOSiRxNr4pFqL
         znGmsl4RdAKPWuuEjZGI4IlStrbjXrt9YXq97/qUOyroLNbQukFrhOXKGChka930tc6Y
         0mFLiRQd23mnb/JMjSjt77Ih9sBGJAsJSEFpGC8Q69iw49Gk2il6rFYSmROYuOOGoct2
         P74uCRD8pve5f+25/z8nJGxLC3H8PfMVUCaeVqP0HpmDapbxPveXbfBe3YPAqybFQF1x
         kNXtIKJ9fIszvkKr/PqtVX05Q1Rp8BdpXJvqVeTy/nBFgwOFa0KnK3lpei48OXWcq5ef
         QMzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=sBxmMuYWcEEarZekBBVo6DGeGHGxLldNfboA34wGQc8=;
        b=fgIR4dUmLtElyDeDG3pUH+g2d/H4Q1yrOcsLgDOuhu3SZgQfJ/fU/65LUPa9IqzPLC
         QMoFpGfZ41LuOi0LoCVl+LIx3kv2nKe9TYlRQ7t4A+B6htpS9EkRIL79alijpTgbApdc
         gHha2K34ggL7NL9qgS1/UrUhQ9oO1Z4myKC502wmDWmx4IC7HloYklIMMclvdgfE/fQE
         It15klY5uIcthToYEE0aLW4LlsWasOInaXTWiYHAC5HWtZ5aktTMmSBaei4rbZsumdTC
         YL6JWACZzfbA2tJvxdzT9Fx29OMOZg6BplIidgsVJFoionCYkO20jaDey8sU5q8Z+Cf4
         dj0A==
X-Gm-Message-State: AOAM531ccAeg4d1Th9Qs71VK9JPjN50YKhczH15GqgHSlaGMYRIImHiS
	Uc/+GxSHefhYxZbP/a5Rz9wVvlB/o0PV2g==
X-Received: by 2002:a65:4987:: with SMTP id r7mr12113259pgs.228.1603070835336;
        Sun, 18 Oct 2020 18:27:15 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id a184sm3931604pfa.86.2020.10.18.18.27.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Oct 2020 18:27:14 -0700 (PDT)
Date: Mon, 19 Oct 2020 06:57:10 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Helen Koike <helen@koikeco.de>
Cc: Sumera Priyadarsini <sylphrenadin@gmail.com>,
	outreachy-kernel@googlegroups.com, Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: Use sysfs_emit for
 show(device *...) functions
Message-ID: <20201019012710.GA76378@ubuntu204>
References: <20201018180954.GA39024@ubuntu204>
 <CACAkLuoOgLe5pH5WsKqybZ92DcHiKM0eOCPuqm7wKMkeOC7s5Q@mail.gmail.com>
 <20201018184550.GA53720@ubuntu204>
 <CAPW4XYaGEv-LOxcR=dZ9QWwtsck3nvmkC2Jb=JMc+Q2LRrRSjg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAPW4XYaGEv-LOxcR=dZ9QWwtsck3nvmkC2Jb=JMc+Q2LRrRSjg@mail.gmail.com>

On Sun, Oct 18, 2020 at 09:21:24PM -0300, Helen Koike wrote:
> Hi Deepak,
> 
> On Sun, Oct 18, 2020 at 3:45 PM Deepak R Varma <mh12gx2825@gmail.com> wrote:
> >
> > On Mon, Oct 19, 2020 at 12:01:24AM +0530, Sumera Priyadarsini wrote:
> > > On Sun, 18 Oct, 2020, 11:40 PM Deepak R Varma, <mh12gx2825@gmail.com> wrote:
> > >
> > > > Convert snprintf calls in device show functions to sysfs_emit
> > > > for PAGE_SIZE buffer safety.
> > > > Warning generated by: scripts/coccinelle/api/device_attr_show.cocci
> > > >
> > > > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> > > > ---
> > > >  drivers/staging/comedi/comedi_fops.c | 8 ++++----
> > > >  1 file changed, 4 insertions(+), 4 deletions(-)
> > > >
> > > > diff --git a/drivers/staging/comedi/comedi_fops.c
> > > > b/drivers/staging/comedi/comedi_fops.c
> > > > index d99231c737fb..5b8ba0c84a8e 100644
> > > > --- a/drivers/staging/comedi/comedi_fops.c
> > > > +++ b/drivers/staging/comedi/comedi_fops.c
> > > > @@ -396,7 +396,7 @@ static ssize_t max_read_buffer_kb_show(struct device
> > > > *csdev,
> > > >         mutex_unlock(&dev->mutex);
> > > >
> > > >         comedi_dev_put(dev);
> > > > -       return snprintf(buf, PAGE_SIZE, "%u\n", size);
> > > > +       return sysfs_emit(buf, "%u\n", size);
> > > >  }
> > > >
> > > >  static ssize_t max_read_buffer_kb_store(struct device *csdev,
> > > > @@ -452,7 +452,7 @@ static ssize_t read_buffer_kb_show(struct device
> > > > *csdev,
> > > >         mutex_unlock(&dev->mutex);
> > > >
> > > >         comedi_dev_put(dev);
> > > > -       return snprintf(buf, PAGE_SIZE, "%u\n", size);
> > > > +       return sysfs_emit(buf, "%u\n", size);
> > > >  }
> > > >
> > > >  static ssize_t read_buffer_kb_store(struct device *csdev,
> > > > @@ -509,7 +509,7 @@ static ssize_t max_write_buffer_kb_show(struct device
> > > > *csdev,
> > > >         mutex_unlock(&dev->mutex);
> > > >
> > > >         comedi_dev_put(dev);
> > > > -       return snprintf(buf, PAGE_SIZE, "%u\n", size);
> > > > +       return sysfs_emit(buf, "%u\n", size);
> > > >  }
> > > >
> > > >  static ssize_t max_write_buffer_kb_store(struct device *csdev,
> > > > @@ -565,7 +565,7 @@ static ssize_t write_buffer_kb_show(struct device
> > > > *csdev,
> > > >         mutex_unlock(&dev->mutex);
> > > >
> > > >         comedi_dev_put(dev);
> > > > -       return snprintf(buf, PAGE_SIZE, "%u\n", size);
> > > > +       return sysfs_emit(buf, "%u\n", size);
> > > >  }
> > > >
> > > >  static ssize_t write_buffer_kb_store(struct device *csdev,
> > > > --
> > > > 2.25.1
> > > >
> > >
> > > Hi Deepak,
> > >
> > > I was just about to send a V2 for the previous patchset I sent which
> > > included this file as well. No issues since I've not sent it yet- I'll
> > > remove this file from my V2. But please give me a heads-up the next time so
> > > we are not working on the same files. :-)
> > >
> > > Thanks, and regards,
> > > Sumera
> > >
> >
> > Sure. I should have informed you. My bad.
> > I also sent in patches for the other two files as well. So you can look
> > for other issues to fix.
> 
> Nice work you are doing with the contribution period :)
> 
> I just want to second what Sumera said.
> Since Sumera had already replied in the past email thread[1] (which you also
> replied, so I guess you saw her reply there), she mentioned she would submit
> V2 with those changes.
> 
> [1] https://groups.google.com/g/outreachy-kernel/c/-VkRW5siDic/m/vGVf6Ft0AwAJ
> 
> In a community workflow, when a person sends a patch and people request
> changes, we usually wait for the original author to submit v2, even if you
> know how to fix it quickly.
> And if, for some reason, you need that change now (which wasn't the case),
> it is a good practice to ask the author if you can send v2 on their behalf.
> 
> You can expect the same from others too. I hope this helps a bit, clarifying how
> the community works :)
> 
> Keep the nice work!
> 
> Regards,
> Helen
> 

Hi Helen,
That makes perfect sense. It was my bad. I should not have modified
these files. I will remember your advise going forward.

Hi Sumera,
Once again, sorry for the overstepping. I will keep the protocol in mind
going forward.
For now, I am happy if you would like to get these patches on your name
since you started with these. Absolutely fine with me.

Thank you,
Deepak.

> >
> > Thanks.
> > Deepak.
> >
> > > --
> > > > You received this message because you are subscribed to the Google Groups
> > > > "outreachy-kernel" group.
> > > > To unsubscribe from this group and stop receiving emails from it, send an
> > > > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > To view this discussion on the web visit
> > > > https://groups.google.com/d/msgid/outreachy-kernel/20201018180954.GA39024%40ubuntu204
> > > > .
> > > >
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20201018184550.GA53720%40ubuntu204.

