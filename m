X-GM-THRID: 6950399749246681088
X-Received: by 2002:a17:902:d507:b029:ea:ac65:b98e with SMTP id b7-20020a170902d507b02900eaac65b98emr22336339plg.56.1618335810420;
        Tue, 13 Apr 2021 10:43:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:bc47:: with SMTP id t7ls5486751plz.3.gmail; Tue, 13
 Apr 2021 10:43:29 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwPUs8RZb5QzJmI6W+TEJchmt7uBXw91Yn6ZtDBcEo10rJTE2bYNpBgRfvYVqRQhkUtLeLF
X-Received: by 2002:a17:902:c410:b029:eb:279:f53b with SMTP id k16-20020a170902c410b02900eb0279f53bmr11096596plk.33.1618335809156;
        Tue, 13 Apr 2021 10:43:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618335809; cv=none;
        d=google.com; s=arc-20160816;
        b=DiT0A/nxUJ7saOa5YfZVXusb+iBBL9RaEhETfrzyjJjbbUngBgahwiOyBUup2bHQmz
         ktNsN0EF3BN3uFM0focTjmfnU2bFh0naELtyAnruACbWXlTSW+6sIOfxOWiWkY2GKwfR
         MFoMx20mvf73WpMr/+9yM0WOJkSBFNAhnJfeicIHNxLUqYIFkC6rwu4C+IhUwxmcrp1E
         +JloRVb5pzbw4I6ohKgfwwyEumcylOnr829pM5PALrzPYLcF48ASkHLvEom9xl7vtY7o
         XBeSEJIX1aSUl/I5YtMU6wzTyagRMGgWTZfpR7kzbCbuZm2+anGy6+HfpSoG2BxdWJ/8
         dg7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=ELHNXyJKc24kzc5VgmcyesQ750B538drv6uIdtvW1gk=;
        b=uI+YewiHU7JeEngRmgz6vTQtPi1TERpjtfPwMs90flPdcZcZT4u9hEDIvxYee5J63R
         XA4/KO+baVyDTsz5MBF+lQUnfJaCOqn53bw/R+sXc4ykZkYD571yLYWVlS/xUG+VXa5V
         vGdLmsAtFn3ysVsAhaOZEM/JKBsjYbzw3svMmFSIrRqufSnw7RXpPHA5UceiwldT8Uuh
         bl2IiS5s68L3sAr8YIWbx7EsANI23pmHF8niUfU81/T9vdKE/znnN2GpsVFZe01DHdiP
         CAijEZ2mOOkObwYG4bdm80U6HWdqVei3g2Lk9VFYvlBwYziyTtd7EUBLO/YUBD5gLQv3
         BVSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.35 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0035.hostedemail.com. [216.40.44.35])
        by gmr-mx.google.com with ESMTPS id ci2si233932pjb.2.2021.04.13.10.43.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 10:43:28 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.35 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.35;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.35 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from omf09.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay01.hostedemail.com (Postfix) with ESMTP id 0065F100E7B46;
	Tue, 13 Apr 2021 17:43:27 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by omf09.hostedemail.com (Postfix) with ESMTPA id 87B871E04D8;
	Tue, 13 Apr 2021 17:43:25 +0000 (UTC)
Message-ID: <84b4db0f2c82adbd82e2b93f5b1511730cb0678e.camel@perches.com>
Subject: Re: [PATCH] staging: media: tegra-vde: Align line break to match
 with the open parenthesis in file trace.h
From: Joe Perches <joe@perches.com>
To: Dwaipayan Ray <dwaipayanray1@gmail.com>, Thierry Reding
	 <thierry.reding@gmail.com>
Cc: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>, Andy Whitcroft
 <apw@canonical.com>, Lukas Bulwahn <lukas.bulwahn@gmail.com>, Dmitry
 Osipenko <digetx@gmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jonathan Hunter
 <jonathanh@nvidia.com>,  linux-media@vger.kernel.org,
 linux-staging@lists.linux.dev, linux-kernel <linux-kernel@vger.kernel.org>,
 outreachy-kernel@googlegroups.com
Date: Tue, 13 Apr 2021 10:43:24 -0700
In-Reply-To: <CABJPP5AEtg+615Q2d-d9aZf=CE7EFPKEbc7tr=gKo_H-XL+M5Q@mail.gmail.com>
References: <20210412222040.GA13659@focaruja>
	 <YHW5Fwl55c7NJAeo@orome.fritz.box>
	 <CABJPP5AEtg+615Q2d-d9aZf=CE7EFPKEbc7tr=gKo_H-XL+M5Q@mail.gmail.com>
Content-Type: text/plain; charset="ISO-8859-1"
User-Agent: Evolution 3.38.1-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=1.60
X-Stat-Signature: 9aydssrki5wx43zq6s8qzajxi8wuht6h
X-Rspamd-Server: rspamout05
X-Rspamd-Queue-Id: 87B871E04D8
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX1/QF9YzwubwiFOs9EBwe/ADGp4cP1fI5cc=
X-HE-Tag: 1618335805-903163

On Tue, 2021-04-13 at 21:35 +0530, Dwaipayan Ray wrote:
> On Tue, Apr 13, 2021 at 8:59 PM Thierry Reding <thierry.reding@gmail.com> wrote:
> > 
> > On Mon, Apr 12, 2021 at 07:20:40PM -0300, Aline Santana Cordeiro wrote:
> > > Align line break to match with the open parenthesis.
> > > Issue detected by checkpatch.pl.
> > > It consequently solved a few end lines with a '(',
> > > issue also detected by checkpatch.pl
> > > 
> > > Signed-off-by: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
> > > ---
> > > �drivers/staging/media/tegra-vde/trace.h | 111 ++++++++++++++------------------
> > > �1 file changed, 50 insertions(+), 61 deletions(-)
> > 
> > Ugh... I'd say this is one case where checkpatch.pl really shouldn't be
> > complaining since this isn't a function call or declaration. It's more
> > like a code snippet written with macros, so I don't think the same rules
> > should apply.
> > 
> > Adding checkpatch folks (hence quoting in full): is there anything we
> > can do about this without too much effort? Or should we just accept this
> > the way it is?
> > 
> 
> While it may be possible to add exceptions for trace headers on the
> alignment rules, I don't know how many more such exceptions we will
> end up adding. Such fine grained checks might be unnecessarily complex.
> So I think we should just accept the way it is for now.
> 
> Joe might have a different opinion?

Tracing uses a different style.

Maybe just suppress various messages for complete code blocks
of DECLARE_EVENT_CLASS, DEFINE_EVENT, and TRACE_EVENT



