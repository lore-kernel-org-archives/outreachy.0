X-GM-THRID: 6205612297408217088
X-Received: by 10.66.123.74 with SMTP id ly10mr15554296pab.41.1445066203437;
        Sat, 17 Oct 2015 00:16:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.40.134 with SMTP id x6ls898116obk.40.gmail; Sat, 17 Oct
 2015 00:16:43 -0700 (PDT)
X-Received: by 10.182.28.100 with SMTP id a4mr16291480obh.20.1445066203136;
        Sat, 17 Oct 2015 00:16:43 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id zg1si2450007pbb.2.2015.10.17.00.16.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Oct 2015 00:16:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id AED4E9D;
	Sat, 17 Oct 2015 07:16:42 +0000 (UTC)
Date: Sat, 17 Oct 2015 00:16:42 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Ksenija =?utf-8?Q?Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/4] Staging: lustre: include: Move
 function prototypes
Message-ID: <20151017071642.GA27949@kroah.com>
References: <cover.1444856328.git.ksenija.stanojevic@gmail.com>
 <06092be207de8d5980babdcc7e8d9f1140ebd856.1444856328.git.ksenija.stanojevic@gmail.com>
 <20151017052453.GA19124@kroah.com>
 <CAL7P5jLo4S91AsoYSt3FgQT1qDYwcG=43iH1R2chopjQC0gwug@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAL7P5jLo4S91AsoYSt3FgQT1qDYwcG=43iH1R2chopjQC0gwug@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Oct 17, 2015 at 09:09:19AM +0200, Ksenija Stanojević wrote:
> Hi,
> 
> On Sat, Oct 17, 2015 at 7:24 AM, Greg KH <gregkh@linuxfoundation.org> wrote:
> > On Wed, Oct 14, 2015 at 11:06:28PM +0200, Ksenija Stanojevic wrote:
> >> Function prototypes need to be declared before functions are being
> >> used.
> >
> > They do?  What problem is this patch fixing, I don't see the error...
> 
> These functions:
> 
> +struct obd_export *class_export_get(struct obd_export *exp);
> +void class_export_put(struct obd_export *exp)
> 
>  are used in macros that I changed into static inline
> functions. So if I don't move them, there will be warning: implicit
> declaration...

Ah, then you needed to say that, please be more specific, I dropped this
patch, and then the later ones failed horribly.

Please fix up and resend the series.

thanks,

greg k-h

