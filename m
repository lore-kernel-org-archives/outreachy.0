X-GM-THRID: 6662711106976350208
X-Received: by 2002:a1c:7e45:: with SMTP id z66mr61601wmc.12.1551296727930;
        Wed, 27 Feb 2019 11:45:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:6c01:: with SMTP id h1ls121907wmc.13.gmail; Wed, 27 Feb
 2019 11:45:27 -0800 (PST)
X-Google-Smtp-Source: AHgI3IaPEGbmuvCsEWhvxbutfz3OOX1QHHFX7e8djtNUeXI0rH5/kU1/t3uYKI7wkGMe9DCrj3HO
X-Received: by 2002:a1c:9c93:: with SMTP id f141mr61366wme.10.1551296727159;
        Wed, 27 Feb 2019 11:45:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551296727; cv=none;
        d=google.com; s=arc-20160816;
        b=ofSIsMiry/+uRlFTKOy0pjhhbDO4kEKXgVNF212xqysp/K2T47ITicKiIUfEB1Mj6n
         M5QD2tXYoE3FKr4gV3O80kP3zL9G7or8svW3UbLgM6jasiZhHDF53JYuhPJRxDEGxPb+
         iJ4Vmnxcu9NCOmsnDITE/Z5wLU68CTUzHbRtJriQ4TGZZ6aECKgVirqhy4xZr2ysQJwR
         lsMv3KuNRvdXZVp9J4dmfPWEZmypY/TPpd8SmRVcxXBq1D+Wy6fXvF71OxAS5wFeaGP6
         38wV6O9k5Ax0Iy5ffPdLTT+Wtn7bE/v/qLggOOmq/i68N5hXUmrYH7WszSY32/3l7feQ
         le5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=0AMIocPeOKbqubeuDDo++T2Nxgm/PTum+3mN9Wjgqdw=;
        b=Pdv0rHpf85BDRwq/5h4wWbIJU7DqiIaW315gNLg6yNz/8J4iHmJSgaSmHFofqt1aDa
         tvktlIt628lYE2Z85J6QkRdZ5Ew8dFFbb1/wDP4rvkXhu5ruC0GmVHhbGT5eW+TqoQYb
         NKiLPtQ0vZ+uoKuyXLSThKV7dooFIKwNxyfROTY8m6Zn+VDw/cssBt1y9PuQbhVZ+Ex4
         tLKQgOq9q6bGibv7+u/A9vcl0FEQVfywNpm+ULWvDmbSa7IfFJcSwaASAqetjeLsDj30
         0BpxXEC9iDASh2ESzQCtZhbOVZc4nmionjSTxZMlx0t8hzEvYQuC9tHFK+A6H0fITy73
         AxKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id m1si881993wrj.4.2019.02.27.11.45.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Feb 2019 11:45:27 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,420,1544482800"; 
   d="scan'208";a="371203650"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Feb 2019 20:45:26 +0100
Date: Wed, 27 Feb 2019 20:45:26 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumthia Prabakaran <madhumithabiw@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, forest@alittletooquiet.net, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: vt6655: Alignment of
 static function declaration
In-Reply-To: <20190227163950.GA22354@madhuleo>
Message-ID: <alpine.DEB.2.21.1902272044480.2561@hadrien>
References: <20190227160148.21914-1-madhumithabiw@gmail.com> <20190227162834.GC23972@kroah.com> <20190227163950.GA22354@madhuleo>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 27 Feb 2019, Madhumthia Prabakaran wrote:

> On Wed, Feb 27, 2019 at 05:28:34PM +0100, Greg KH wrote:
> > On Wed, Feb 27, 2019 at 10:01:48AM -0600, Madhumitha Prabakaran wrote:
> > > Align function arguments and function return type to improve
> > > readability.
> > >
> > > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > > ---
> > > Changes in v3
> > > - Included driver name in subject line.
> > >
> > > Changes in v2
> > > - Improved alignment of function declaration
> > > - Modified subject line and commit log
> > > ---
> > >  drivers/staging/vt6655/card.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
> > > index 229137f29690..8d0182f5725c 100644
> > > --- a/drivers/staging/vt6655/card.c
> > > +++ b/drivers/staging/vt6655/card.c
> > > @@ -62,7 +62,7 @@ static const unsigned short cwRXBCNTSFOff[MAX_RATE] = {
> > >
> > >  static void s_vCalculateOFDMRParameter(unsigned char byRate, u8 bb_type,
> > >  				       unsigned char *pbyTxRate,
> > > -				       unsigned char *pbyRsvTime)
> > > +				       unsigned char *pbyRsvTime);
> >
> > The patch does not do what your changelog text says it is doing :(
>
> I want to ensure whether you mean 'git diff' is not same as it is stated in commit log. I think, i didn't reset the commited patch and just edited the subject line. Please correct me, if I'm wrong

The issue is that the effect of your patch is to add a semicolon.  But I
suspect that the semicolon was there in the original code.  You removed it
at some point, and then added it back.

julia

>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190227163950.GA22354%40madhuleo.
> For more options, visit https://groups.google.com/d/optout.
>

