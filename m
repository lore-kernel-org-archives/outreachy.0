X-GM-THRID: 6885024139738873856
X-Received: by 2002:a63:5f53:: with SMTP id t80mr12250541pgb.62.1603066898485;
        Sun, 18 Oct 2020 17:21:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:b114:: with SMTP id q20ls3768765plr.5.gmail; Sun, 18
 Oct 2020 17:21:37 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz1p2C2easojNVbe6Ozl+fy8VODfc/tU5qYh5cjeizXzY+gyxSlVb02sX3w/4Zp66p6kZMK
X-Received: by 2002:a17:902:23:b029:d5:b88a:c782 with SMTP id 32-20020a1709020023b02900d5b88ac782mr14685217pla.5.1603066896910;
        Sun, 18 Oct 2020 17:21:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603066896; cv=none;
        d=google.com; s=arc-20160816;
        b=RQJ2qEeB0Ha3SCX8n0D97UAWG4nHKW8Q9X3hF7w4ERQhjMYI/yDN/Dz+6s7Rf1U80K
         cbZKk/FYGjkDH0OC0Q+Huh8AzvryrgCpFONE6TrJmYJn2c09Y3hBPDSFQXNzYGahQfAX
         I/2rIkCSxWOJWVA8CcGU3T8C/0lM6doDWrZZ1IPCYqzTFKpwK7cSyjh7Q5NWRLIuDS7f
         WM3pG0D5e/mS4hQIxnh5jpoXdln/oN32vQxJbI4ZMVewwy0+RD3JhJcKKc4jZX1/bHza
         NUhOMTX1VV1FZjqhSB2o+ZezZh2SA/95DjAzwQckVtdrKk6S1gOkljpNzuXkF9ICJ2nD
         yxlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=wssVRN9L3MNipAzjgS1Gnc7h3r15U6VJ4ujwDuPFxbc=;
        b=CtHtCCpTnJfqxQZDFzUlsUSpWcUghtDGCUh6T2EMy9bOL+CkVJNWXrsKU+xAhyS5M1
         LgrrmR7z5ItVcS7ox1bNB6DRqA8R4Jm18akgx0s8Gy79HOZQds2B7q5nEqSt1qYGEJST
         S0VkKb6/iLzWQN0ce6pn57I1WY25QcwadGVtX1fPVEhnD6zgYAk2DVSw5GXskCP5jdwv
         Y547bZw77cTYi96NJykjunGTRqYWqVf9deqsCCw+rczQl6CZQ6owWlQFHoJ8deqE4/KJ
         ANoJP+ydi6L5z7FX1Sq3N3A25Hdd50gU68thZLb8h4p71LyZkAAPOozfiMQ/pmJ/MlmA
         SoaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of helen.fornazier@gmail.com designates 209.85.166.196 as permitted sender) smtp.mailfrom=helen.fornazier@gmail.com
Return-Path: <helen.fornazier@gmail.com>
Received: from mail-il1-f196.google.com (mail-il1-f196.google.com. [209.85.166.196])
        by gmr-mx.google.com with ESMTPS id c6si534163pjo.0.2020.10.18.17.21.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Oct 2020 17:21:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of helen.fornazier@gmail.com designates 209.85.166.196 as permitted sender) client-ip=209.85.166.196;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of helen.fornazier@gmail.com designates 209.85.166.196 as permitted sender) smtp.mailfrom=helen.fornazier@gmail.com
Received: by mail-il1-f196.google.com with SMTP id p9so8797154ilr.1
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2020 17:21:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wssVRN9L3MNipAzjgS1Gnc7h3r15U6VJ4ujwDuPFxbc=;
        b=XXNe8OQXZwkWdwJKspujxBOpJscVr6paxbaTr8OHvrB77Pl/v3VuNZjKnOBlKFXHZq
         lvkw0boQxBwegYCc5nAURDlCoyvajXPPOVD9RJVHYiTTN9TsvB2n/BI0hN51AB6EdZdL
         dwJJN7ugloLl1NfUr0ujataks9ZnOHf42bwunsp3CIfnV8Wv15v61x0beG+ziaqGpiP3
         MpXCCDn1XAXWeidKzbUJX7Egcut+Md55RhRQKfUYmcxGMGMFwfi7X2iN6uoEoKScJ/2+
         1MMIhDXxtyjnnMcJbLxrgRVm9uDae8MetPZx2Z8/ye4/aIzkMweuV94Kj0l/mKfhmpL/
         RhrQ==
X-Gm-Message-State: AOAM532WTLMpyvMJEz5GqytciMndlIs979BdNyANDS4uMNu8zz+mtX5z
	+/95gvmBhuLwWuT4TB9eMDZF0D31orY7qQ==
X-Received: by 2002:a92:1bd6:: with SMTP id f83mr9145668ill.195.1603066895979;
        Sun, 18 Oct 2020 17:21:35 -0700 (PDT)
Return-Path: <helen.fornazier@gmail.com>
Received: from mail-il1-f174.google.com (mail-il1-f174.google.com. [209.85.166.174])
        by smtp.gmail.com with ESMTPSA id u20sm495494ilj.5.2020.10.18.17.21.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Oct 2020 17:21:35 -0700 (PDT)
Received: by mail-il1-f174.google.com with SMTP id j13so8766032ilc.4
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2020 17:21:35 -0700 (PDT)
X-Received: by 2002:a05:6e02:e85:: with SMTP id t5mr8909768ilj.217.1603066895117;
 Sun, 18 Oct 2020 17:21:35 -0700 (PDT)
MIME-Version: 1.0
References: <20201018180954.GA39024@ubuntu204> <CACAkLuoOgLe5pH5WsKqybZ92DcHiKM0eOCPuqm7wKMkeOC7s5Q@mail.gmail.com>
 <20201018184550.GA53720@ubuntu204>
In-Reply-To: <20201018184550.GA53720@ubuntu204>
From: Helen Koike <helen@koikeco.de>
Date: Sun, 18 Oct 2020 21:21:24 -0300
X-Gmail-Original-Message-ID: <CAPW4XYaGEv-LOxcR=dZ9QWwtsck3nvmkC2Jb=JMc+Q2LRrRSjg@mail.gmail.com>
Message-ID: <CAPW4XYaGEv-LOxcR=dZ9QWwtsck3nvmkC2Jb=JMc+Q2LRrRSjg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: Use sysfs_emit for
 show(device *...) functions
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: Sumera Priyadarsini <sylphrenadin@gmail.com>, outreachy-kernel@googlegroups.com, 
	Ian Abbott <abbotti@mev.co.uk>, H Hartley Sweeten <hsweeten@visionengravers.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"

Hi Deepak,

On Sun, Oct 18, 2020 at 3:45 PM Deepak R Varma <mh12gx2825@gmail.com> wrote:
>
> On Mon, Oct 19, 2020 at 12:01:24AM +0530, Sumera Priyadarsini wrote:
> > On Sun, 18 Oct, 2020, 11:40 PM Deepak R Varma, <mh12gx2825@gmail.com> wrote:
> >
> > > Convert snprintf calls in device show functions to sysfs_emit
> > > for PAGE_SIZE buffer safety.
> > > Warning generated by: scripts/coccinelle/api/device_attr_show.cocci
> > >
> > > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> > > ---
> > >  drivers/staging/comedi/comedi_fops.c | 8 ++++----
> > >  1 file changed, 4 insertions(+), 4 deletions(-)
> > >
> > > diff --git a/drivers/staging/comedi/comedi_fops.c
> > > b/drivers/staging/comedi/comedi_fops.c
> > > index d99231c737fb..5b8ba0c84a8e 100644
> > > --- a/drivers/staging/comedi/comedi_fops.c
> > > +++ b/drivers/staging/comedi/comedi_fops.c
> > > @@ -396,7 +396,7 @@ static ssize_t max_read_buffer_kb_show(struct device
> > > *csdev,
> > >         mutex_unlock(&dev->mutex);
> > >
> > >         comedi_dev_put(dev);
> > > -       return snprintf(buf, PAGE_SIZE, "%u\n", size);
> > > +       return sysfs_emit(buf, "%u\n", size);
> > >  }
> > >
> > >  static ssize_t max_read_buffer_kb_store(struct device *csdev,
> > > @@ -452,7 +452,7 @@ static ssize_t read_buffer_kb_show(struct device
> > > *csdev,
> > >         mutex_unlock(&dev->mutex);
> > >
> > >         comedi_dev_put(dev);
> > > -       return snprintf(buf, PAGE_SIZE, "%u\n", size);
> > > +       return sysfs_emit(buf, "%u\n", size);
> > >  }
> > >
> > >  static ssize_t read_buffer_kb_store(struct device *csdev,
> > > @@ -509,7 +509,7 @@ static ssize_t max_write_buffer_kb_show(struct device
> > > *csdev,
> > >         mutex_unlock(&dev->mutex);
> > >
> > >         comedi_dev_put(dev);
> > > -       return snprintf(buf, PAGE_SIZE, "%u\n", size);
> > > +       return sysfs_emit(buf, "%u\n", size);
> > >  }
> > >
> > >  static ssize_t max_write_buffer_kb_store(struct device *csdev,
> > > @@ -565,7 +565,7 @@ static ssize_t write_buffer_kb_show(struct device
> > > *csdev,
> > >         mutex_unlock(&dev->mutex);
> > >
> > >         comedi_dev_put(dev);
> > > -       return snprintf(buf, PAGE_SIZE, "%u\n", size);
> > > +       return sysfs_emit(buf, "%u\n", size);
> > >  }
> > >
> > >  static ssize_t write_buffer_kb_store(struct device *csdev,
> > > --
> > > 2.25.1
> > >
> >
> > Hi Deepak,
> >
> > I was just about to send a V2 for the previous patchset I sent which
> > included this file as well. No issues since I've not sent it yet- I'll
> > remove this file from my V2. But please give me a heads-up the next time so
> > we are not working on the same files. :-)
> >
> > Thanks, and regards,
> > Sumera
> >
>
> Sure. I should have informed you. My bad.
> I also sent in patches for the other two files as well. So you can look
> for other issues to fix.

Nice work you are doing with the contribution period :)

I just want to second what Sumera said.
Since Sumera had already replied in the past email thread[1] (which you also
replied, so I guess you saw her reply there), she mentioned she would submit
V2 with those changes.

[1] https://groups.google.com/g/outreachy-kernel/c/-VkRW5siDic/m/vGVf6Ft0AwAJ

In a community workflow, when a person sends a patch and people request
changes, we usually wait for the original author to submit v2, even if you
know how to fix it quickly.
And if, for some reason, you need that change now (which wasn't the case),
it is a good practice to ask the author if you can send v2 on their behalf.

You can expect the same from others too. I hope this helps a bit, clarifying how
the community works :)

Keep the nice work!

Regards,
Helen

>
> Thanks.
> Deepak.
>
> > --
> > > You received this message because you are subscribed to the Google Groups
> > > "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an
> > > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To view this discussion on the web visit
> > > https://groups.google.com/d/msgid/outreachy-kernel/20201018180954.GA39024%40ubuntu204
> > > .
> > >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20201018184550.GA53720%40ubuntu204.

