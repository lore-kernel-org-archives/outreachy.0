X-GM-THRID: 10414332051456
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,14f284b32a4ff3e1
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.71.227 with SMTP id y3mr5152856wju.3.1427751558734;
        Mon, 30 Mar 2015 14:39:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.88.50 with SMTP id bd18ls651112lab.108.gmail; Mon, 30 Mar
 2015 14:39:18 -0700 (PDT)
X-Received: by 10.152.19.67 with SMTP id c3mr7627581lae.7.1427751558184;
        Mon, 30 Mar 2015 14:39:18 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x22a.google.com (mail-wi0-x22a.google.com. [2a00:1450:400c:c05::22a])
        by gmr-mx.google.com with ESMTPS id c8si890142wiw.1.2015.03.30.14.39.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2015 14:39:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) client-ip=2a00:1450:400c:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22a.google.com with SMTP id ne17so1557097wic.0
        for <outreachy-kernel@googlegroups.com>; Mon, 30 Mar 2015 14:39:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=LLAU3s6yhiUHicLoYMZuh07rzzsXLbnoNFsmnY7FkoU=;
        b=acTToV708auVdkVLbbApAxt1dnU1lndRGtYcVBUKUBF2GsVJ6IKQNJLmD2s1qzdY7f
         gm3nrtZfVj6pEyv/k8dnSnNIUSDujjn50GXkh6MwDKXF7NJNqopZIVCUvkQHH01RRTEc
         dJFZAaCANvB1j0MG5lb4lrXrdDqoMyqaUhLOVwkB9M0U22rLgrkESVxx1aILZPKFLjQF
         GfWFJWhDe3z3020Bqr5RQ/VpSnFP7LNmiCumUCm4WGYQOS+tT4eFJqeJ/ZowG1jhLyj+
         EWofaRd67ScFND+30MIE0MV5QPOBz2dM3Lme2wBZ00bXJHiH7V5pr5lTiPvUXqr51vSf
         QBnw==
X-Received: by 10.194.78.144 with SMTP id b16mr66410636wjx.18.1427751558089;
        Mon, 30 Mar 2015 14:39:18 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.215.66])
        by mx.google.com with ESMTPSA id m9sm18035771wiz.24.2015.03.30.14.39.16
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 30 Mar 2015 14:39:17 -0700 (PDT)
Date: Mon, 30 Mar 2015 23:39:14 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: Ksenija =?utf-8?Q?Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Some general questions
Message-ID: <20150330213914.GA2531@waves>
References: <20150330184007.GA2862@waves>
 <CAL7P5jJy92+U3dgcVOzNS0OZZZFn=5pv-aHPwEDYiR+iSJ31-w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAL7P5jJy92+U3dgcVOzNS0OZZZFn=5pv-aHPwEDYiR+iSJ31-w@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Mar 30, 2015 at 08:55:06PM +0200, Ksenija Stanojević wrote:
> On Mon, Mar 30, 2015 at 8:40 PM, Aya Mahfouz
> <mahfouz.saif.elyazal@gmail.com> wrote:
> > Hello Everyone,
> >
> > I had a couple of questions lingering in my head for quite some time
> > now. I'm reading lots of articles but I'm interested in people sharing
> > their experiences as answers to the following questions:
> >
> > Is it possible to setup a simple cloud-based compile farm? Are there
> > guides or projects that would help with that? My question comes after
> > seeing Fengguang Wu's kbuild testing farm reports.
> >
> > From experience, how do you usually debug new drivers? What tools do you
> > use?
> 
> I used nm tool and addr2line.
> 
Nice! I did not try addr2line before...
> >What do you think of tools like kgdb and kdb? What do you do for
> > example if testing a driver freezes the computer it is running
> > on.
> >
> I rebooted it by force, by pressing power button.
> 
Yeah... This is what I do in most cases. If I'm lucky enough, I switch
quickly to another screen and log in as root then kill the process...

> Ksenija
> 
> > Thanks,
> >
> > --
> > Kind Regards,
> > Aya Saif El-yazal Mahfouz
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150330184007.GA2862%40waves.
> > For more options, visit https://groups.google.com/d/optout.

-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

