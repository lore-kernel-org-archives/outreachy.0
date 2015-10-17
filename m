X-GM-THRID: 6205612297408217088
X-Received: by 10.129.83.10 with SMTP id h10mr18197658ywb.6.1445097950016;
        Sat, 17 Oct 2015 09:05:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.38.10 with SMTP id s10ls1868637qgs.8.gmail; Sat, 17 Oct
 2015 09:05:49 -0700 (PDT)
X-Received: by 10.31.21.194 with SMTP id 185mr17978458vkv.10.1445097949379;
        Sat, 17 Oct 2015 09:05:49 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id vy6si2470202pbc.1.2015.10.17.09.05.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Oct 2015 09:05:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 04BF51BB;
	Sat, 17 Oct 2015 16:05:48 +0000 (UTC)
Date: Sat, 17 Oct 2015 09:05:48 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/4] Staging: lustre: include: Move
 function prototypes
Message-ID: <20151017160548.GA19750@kroah.com>
References: <cover.1445067394.git.ksenija.stanojevic@gmail.com>
 <06092be207de8d5980babdcc7e8d9f1140ebd856.1445067394.git.ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <06092be207de8d5980babdcc7e8d9f1140ebd856.1445067394.git.ksenija.stanojevic@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Oct 17, 2015 at 09:58:16AM +0200, Ksenija Stanojevic wrote:
> Functions:
> struct obd_export *class_export_get(struct obd_export *exp);
> void class_export_put(struct obd_export *exp)
> are being used in macros that are converted into static inline 

Trailing whitespace :(

> functions, therefore move function prototypes to avoid build
> error.

The build error will happen in later patches, please be specific about
this, as written it sounds like there is a build error now.

> Signed-off-by: Ksenija Stanojevic<ksenija.stanojevic@gmail.com>

We need a space between the '<' character and your your name :(

Can you redo this series again please?

thanks,

greg k-h

