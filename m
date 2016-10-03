X-GM-THRID: 6337009316705337344
X-Received: by 10.28.167.216 with SMTP id q207mr540266wme.4.1475496955947;
        Mon, 03 Oct 2016 05:15:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.1.134 with SMTP id f6ls840922lji.32.gmail; Mon, 03 Oct 2016
 05:15:55 -0700 (PDT)
X-Received: by 10.25.141.68 with SMTP id p65mr1270133lfd.24.1475496955159;
        Mon, 03 Oct 2016 05:15:55 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id c13si1078066wme.3.2016.10.03.05.15.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Oct 2016 05:15:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id f193so9808042wmg.2
        for <outreachy-kernel@googlegroups.com>; Mon, 03 Oct 2016 05:15:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=BvgPUuYnjh9N2dzpAZGGIjelr7ic8DaoV09g3KjyRDc=;
        b=hQRZFIdRAPizouvYdPi7Km/FncPYAz/BfwEDel55yao7LmuFqSsaJUWtsvGZGn4E05
         6saJ7pElE5LNIaR8XSSWK7N2mg7zs4dP/ssYq8WKL/JD3OiQzFtArZqhT+y5aQcC7XED
         7LEOD+yC2KVFqJ2yKcN/9qzQspDlYTf6IpZN3vvXKsIa3FiTpuOP/yu6KEyLU5qjteD/
         loSdhdE5v/1Z1Hw4NCARVjjGpWh5D+wB5qBmrXnle/WHCUNrs/A6jZ/e/IOfPO1t0GCu
         RiT05zEDzf3JSeSim41Lcy5amMY0yuXwWu5MaMzkc7jlsdWsNme6ardOXcDQwtdSLA6H
         YF/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=BvgPUuYnjh9N2dzpAZGGIjelr7ic8DaoV09g3KjyRDc=;
        b=Hr6Js6dbeJ0TqqcA4u/7+VGFrUdqT8Zif0hccppUlEJPMAof6mqX0otahnDG0/rfCZ
         /0E2uZ5TgxZKsjhY/O5HfJYvCoKRUqVioOHTBtFS0gtiePOlvtR4saEditNsnFbveWwT
         cJAO5erGMwHmJ+WjbYUwJTBG5Rp8tWoBfnxlxbm5LBXk+e4VpjQhzjnVAJvOw/hV9dNN
         AimLohZPcpgdNUokxw+U5bHRz9eJBwdFHDy2wFAzhrN2nvhkhQhiEosFJtjWDEN7TKUS
         R44JfGoH4eetve8nGOdUATBKKjdRjWWWf4wjos3qwP6IB6xZD52Te8f/gG08jKYmJrdL
         /v5g==
X-Gm-Message-State: AA6/9RnJmLKSt4zcXqloxjVeiThGqpy8JrBOcR7xeh0NSUu9fc5J8ojZVruiCMU89Uu5QA==
X-Received: by 10.194.216.233 with SMTP id ot9mr16791921wjc.166.1475496954927;
        Mon, 03 Oct 2016 05:15:54 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([109.166.128.3])
        by smtp.gmail.com with ESMTPSA id jn7sm34102529wjb.5.2016.10.03.05.15.54
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 03 Oct 2016 05:15:54 -0700 (PDT)
Date: Mon, 3 Oct 2016 15:15:51 +0300
From: Muraru Mihaela <mihaela.muraru21@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: sm750fb: make array char const
Message-ID: <20161003121551.GB5761@domino-MS-16Y1>
References: <20161002231234.GA16439@domino-MS-16Y1>
 <alpine.DEB.2.10.1610030720210.3142@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1610030720210.3142@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Oct 03, 2016 at 07:24:43AM +0200, Julia Lawall wrote:
> 
> 
> On Mon, 3 Oct 2016, Muraru Mihaela wrote:
> 
> > This patch fixes a chechpatch.pl warning in file sm750.c
> > WARNING: static const char * array should probably be static
> > const char * const,by adding a missing const.
> >
> > Signed-off-by: Muraru Mihaela <mihaela.muraru21@gmail.com>
> > ---
> >  drivers/staging/sm750fb/sm750.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
> > index 7d90e25..90b6c64 100644
> > --- a/drivers/staging/sm750fb/sm750.c
> > +++ b/drivers/staging/sm750fb/sm750.c
> > @@ -32,7 +32,7 @@
> >  static int g_hwcursor = 1;
> >  static int g_noaccel;
> >  static int g_nomtrr;
> > -static const char *g_fbmode[] = {NULL, NULL};
> > +static const char * const g_fbmode[] = {NULL, NULL};
> 
> Does this compile?  It seems suspicious to have an array that contains
> only NULL NULL that is never updated.  One would always know that both
> entries are NULL, so there would be no need to look in the array.
> 
> In practice, there seem to be some updates to the array elements in the
> code.
> 
> julia


 Sorry my mistake,I looked through the file and it is clearly not a good
 solving , I made a read only array, that I want to be update.

 thanks,

 mihaela
> >  static const char *g_def_fbmode = "800x600-16@60";
> >  static char *g_settings;
> >  static int g_dualview;
> > --
> > 2.7.4
> >
> >

