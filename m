X-GM-THRID: 6951120130932736000
X-Received: by 2002:a05:6808:13d0:: with SMTP id d16mr3520461oiw.169.1618510199908;
        Thu, 15 Apr 2021 11:09:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:664f:: with SMTP id q15ls1579519otm.3.gmail; Thu, 15 Apr
 2021 11:09:59 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyopY6GrPpqQ+WQBnIrS2EzqB7nReMLeKgvaB3UO2FPBi4Y61U51t1GtyOffrRx0Tk6OY5h
X-Received: by 2002:a9d:3b89:: with SMTP id k9mr445610otc.190.1618510199186;
        Thu, 15 Apr 2021 11:09:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618510199; cv=none;
        d=google.com; s=arc-20160816;
        b=ueCZEsQByU3lsunYUvTakSmejm4kVcHBr47EKbyoNO46EHGPqKD4dfbpeZsU799PI5
         y1LmF4zoO8JE9QQX7mFCAoQGZNwj134jgFF7VROogqNWPbu/XlzHzt1jjgicUwiQcqrR
         ras1DCw3xi/iXoJPhAh6u6UDu3ToFC0iBpBVIC2wUgpUd0FJ+Fc0e2H8PcFrF+1zyLk3
         naeN++FErr3g578518S/N8yVmNNPnOauppDY291CTyptzQ/twt5OQ/+k+ZUFzhMi7zI7
         Bu5uM66Mr32IvqrpndaYKlnfGDajthkDR6HkE21dwGhCRY8VNtk9zEfdmXvQvTnWNXJ4
         iaAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=Z8o2eF8WW0GN2VLTkAq3OumygwjQqYyVi3fNlIvWwiI=;
        b=ckHvKP75tBk7+JNukEFCwihONYcdgWDJBNpETY8ICM4BEQHOUdL2yy3Eug53R13emU
         95A1v8Mp655QkPJVV5jH872qmoBtciHF77FbFA4Xt+iVN77hODk0U0N69ztT0omKMGmj
         x4YcdrEFaYvlSwKo8/3888VoxMEGGNXghpd6NSWoz99x/7QqB4SC6Iq4YER2Xtk+kYHJ
         9Js2EB4TQwhW6NzWweUsSkQL3DYxsfVr8OOY1kTrA6tDLCXeesgEE38OvupOLJJqmygM
         fgSRUFFD6H1oaqASEzBweqrWY0letK0VrjOcN3gucmMXGO8AkWwwXh7oiTsPNHSJ/0qE
         7btw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Duv85+DY;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::835 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qt1-x835.google.com (mail-qt1-x835.google.com. [2607:f8b0:4864:20::835])
        by gmr-mx.google.com with ESMTPS id 6si291950ooy.1.2021.04.15.11.09.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Apr 2021 11:09:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::835 as permitted sender) client-ip=2607:f8b0:4864:20::835;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Duv85+DY;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::835 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x835.google.com with SMTP id m16so18241088qtx.9
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Apr 2021 11:09:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=Z8o2eF8WW0GN2VLTkAq3OumygwjQqYyVi3fNlIvWwiI=;
        b=Duv85+DYznnAFwi/q+Zxi2c5YnmcJKrf+XUB68Byd2A15FYncD2i+j5jJxy6U6EdSF
         lfwKRbEJ0dZC67j0WWswopaUjbvqC7Z7C1Fx6a5BoertXUsnykzmeClaU+kyhp9CBYs8
         1I5ftmCsHx35smzynbGEP5c2TBhIrNzYR8VFsta3vGLDyTeVTay4e1QXgUHFAScGzOM8
         XHJtBYHevxCfyAhrHF4ianLU1OyetPIO50/IUupmE6i9MH6vK8d0h1GqnsCdF8l9oF4W
         ql1kY2WbAm2G6eJGeQGt39vHbfzivZIe6HY8tbe9jywU/r7ykmzmzQYh8jEIjdQGEI8V
         N14g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=Z8o2eF8WW0GN2VLTkAq3OumygwjQqYyVi3fNlIvWwiI=;
        b=Pti00rmyoL7CLJ/SmyZFjRorvju3wqjYGRjLiwnqIZolUZ4D0EnZUtRDhdc2ovffSm
         6gWjX/RMEyggevuz9i3H7iH3WE27QgZOHPi4ygxNW4rL2tXLbSkNn3mtpIJhC+MB75KZ
         EVg4cen2ixigZpEPR1S0jJYUpDQA0Z+bdeHYC8+CQ1GNC/VAavKbR3qWtXwhr3rWF6Dh
         OaEcffb+kQs75b11XbSdVPE5GgRIddyUD0/jByKYwJZ13tVJw53k99Iz21YcHwQCSYrT
         sA72IkiAvbGeo1j3HR2S9038D1qa+UMIFrYCeUI4EUTMIK8bsD8V/0Sg2F9pAfTUyih0
         zaBg==
X-Gm-Message-State: AOAM533udZHkM3erHBlR7mdJflopIq2ZK8MZidxRdXodRHJ2KAJIoJkp
	4oDCn1Wc0EbvqBMak1Qqp0r3txr9Yp9XyWWN
X-Received: by 2002:ac8:7d03:: with SMTP id g3mr4391644qtb.330.1618510198723;
        Thu, 15 Apr 2021 11:09:58 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from [192.168.100.7] ([138.204.24.234])
        by smtp.gmail.com with ESMTPSA id p21sm405918qkp.95.2021.04.15.11.09.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Apr 2021 11:09:58 -0700 (PDT)
Message-ID: <74c59fd225b7b107662ce045086cdd8560e3e08f.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: media: atomisp: pci:
 Change line break to avoid an open parenthesis at the end of the line
From: ascordeiro <alinesantanacordeiro@gmail.com>
To: Matthew Wilcox <willy@infradead.org>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Sakari Ailus
 <sakari.ailus@linux.intel.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>,  linux-media@vger.kernel.org,
 linux-staging@lists.linux.dev,  linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
Date: Thu, 15 Apr 2021 15:09:54 -0300
In-Reply-To: <20210415171409.GC2531743@casper.infradead.org>
References: <20210415170819.GA17534@focaruja>
	 <20210415171409.GC2531743@casper.infradead.org>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.0 (by Flathub.org) 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Em qui, 2021-04-15 às 18:14 +0100, Matthew Wilcox escreveu:
> On Thu, Apr 15, 2021 at 02:08:19PM -0300, Aline Santana Cordeiro
> wrote:
> > -const struct atomisp_format_bridge
> > *get_atomisp_format_bridge_from_mbus(
> > -    u32 mbus_code);
> > +const struct atomisp_format_bridge*
> > +get_atomisp_format_bridge_from_mbus(u32 mbus_code);
> 
> No, this does not match coding style.  Probably best to break the
> 80-column guideline in this instance.  Best would be to have a
> function
> and/or struct name that isn't so ridiculously long, but that would
> require some in-depth thinking.
> 

I left the type of function and its name with the parameters in
different lines, following up some examples of other files, such as
atomisp_acc.c.

But I didn't pay attention and left the pointer with the function name
instead of left it with the type of the function in v1, so Hans
suggested it to a v2, as I did.

What should I do in this case?

Thank you in advance,
Aline

> > -void atomisp_apply_css_parameters(
> > -    struct atomisp_sub_device *asd,
> > -    struct atomisp_css_params *css_param);
> > +void atomisp_apply_css_parameters(struct atomisp_sub_device *asd,
> > +                                 struct atomisp_css_params
> > *css_param);
> > +
> 
> Good.
> 



