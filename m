X-GM-THRID: 6758464167600979968
X-Received: by 2002:a63:5a5c:: with SMTP id k28mr508790pgm.183.1573607552274;
        Tue, 12 Nov 2019 17:12:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:b042:: with SMTP id z2ls89266pgo.16.gmail; Tue, 12 Nov
 2019 17:12:31 -0800 (PST)
X-Google-Smtp-Source: APXvYqzE46vN6J35R8mEw38XYPHkY9+Kg3V3W2LoBU5mSCvtq3tE+yRkSWBKXEKP6HNx2shK/UMn
X-Received: by 2002:a63:5c4a:: with SMTP id n10mr589839pgm.120.1573607551062;
        Tue, 12 Nov 2019 17:12:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573607551; cv=none;
        d=google.com; s=arc-20160816;
        b=Ry3GVEXB2nT1Gs6gVUVDrG+UWLJNNkC09ufU75Ob92l66uh1Pk4HZPU6mY+XtnlaxS
         hmDgkSqz/avWJqSci5JU7+5Drz6tyuipBXAesRvFW5pIzr6wjfCMo3Nvot9iEII1YI67
         m0hT/XrWmFJDsZyYsr5cwF3L/U/XyKTNhgC5Ev0puEjTbDNfnKtAu9h6Cld54fOewr0R
         q0RHiJL4VbHmdWvC5pvoC9X6VA2U1CbVAYJKbynilfcNhTzuR01XfQucx+5Xg+2hgojl
         Hqckd29oqriOWbTpdIPh5OCTbcs9BG0mm/kZ3KeIk8sOeKHlMI3p6rtqslIEF69njICO
         ci2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=DML7y3ZgeawbCghKl2/U9gcID5bkzvxXQZvoeM1CZYk=;
        b=UrG64qzNQIt4Gc09m2PM/QHiSRRpL2YHVCS2K40kFXCEaVMCYdIHOFpHLrYYvzUSGf
         VWA7pIxhTzHh+1DUN+HHmAFUqqB01mSNFOl4MyzNOsK0BYgyW+1WI4hkqeeajd1yxYtj
         UWM6MgTJFxKcitdUjo4XaP5rfXwJaSJt2WIfiGLU22OaplrHdYcqGLj1VMGgAP+IhS3J
         lnR2c5CZTCidj/pPrQQY3Ky4zFwzS+jB9GK7Xr08lQEU4wc23Vgx0B/QHHK9+wx9YG7/
         C+lpsop+qo/t4b3jJ/DQvuiXovFQcKIE+AVs+vIbUDCt+IMpd+zEjkW4FMpzAVb9NhTR
         IxkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=joNac9DA;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::c41 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-yw1-xc41.google.com (mail-yw1-xc41.google.com. [2607:f8b0:4864:20::c41])
        by gmr-mx.google.com with ESMTPS id s4si172467pji.1.2019.11.12.17.12.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Nov 2019 17:12:31 -0800 (PST)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::c41 as permitted sender) client-ip=2607:f8b0:4864:20::c41;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=joNac9DA;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::c41 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-yw1-xc41.google.com with SMTP id z67so145951ywb.9
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Nov 2019 17:12:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to;
        bh=DML7y3ZgeawbCghKl2/U9gcID5bkzvxXQZvoeM1CZYk=;
        b=joNac9DApN0htbfASeTvQ+Ie9Ozq1A6iOn4xXW9Cj0ebnLmzKXvH9BUtqi5z2ViadC
         TfRJ4MpWgNw3/ZL/mlclWCy3dV6/oGgk9V9L3wKf6+jhtV7jQ8S4pLwLJFvsFQVNRLUV
         8WOCWrJFXSPlcjQQOaFBcjMwQ5ozHyZR12NstjBCqASlFRrfk4NcfOrVZfP6lQCM4Axy
         WtnyHgHw1N/+q+pPFWvW9Q68o1QM7gRfYvdQgfcKuK44CHLDFFrkhpwRSs+7ZZbYR/KP
         HRt9GHYAu2hEE6G3DxHaN4WIq3fClIyoCV2InYXgeaGIvVRA8J3eYsDQQZWjwvM+1xhM
         GDiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to;
        bh=DML7y3ZgeawbCghKl2/U9gcID5bkzvxXQZvoeM1CZYk=;
        b=rpQ7tqdAIzhKjpKedw8yAbw2i8dm+9mmaOyjwgneK7tcpSiI2aKlHEmEg4OH59f7xo
         fgkx+TsCQ7rNFd7SH1i5UYIyikKkzXO6DK6ZutmOQoh80ayQZ6TcUJz6zQR03swh2Fm8
         CDt4EkERMeJtnu+lzFZByZIjbv5Qt7nq451Omvj63CmiypwHQ0S9BJdUkRFzb/8QFrn7
         xug+Zb3T6e5iw4njIgaq7KL4Ju5nZP5JtN8gb+nynYgqzIAR7BrqSkkY5jh6LjbS0CEE
         rZl2O6JWnWMr5amlMuoKZtIZ01ZSjNVTxh7PawpHEbfw4oOZr0VFk8omlDaiLOJHBuns
         Kq/g==
X-Gm-Message-State: APjAAAWLCM+cE726JRrhWMCSKYbWlbjsh6gg9n7h1DyOe3Z5Me0xWGKW
	TTteBVmnDj4q2IM7FBEsyvc=
X-Received: by 2002:a0d:c207:: with SMTP id e7mr594797ywd.101.1573607550217;
        Tue, 12 Nov 2019 17:12:30 -0800 (PST)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com ([196.247.56.44])
        by smtp.gmail.com with ESMTPSA id t15sm290269ywf.69.2019.11.12.17.12.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Nov 2019 17:12:29 -0800 (PST)
Date: Tue, 12 Nov 2019 20:12:26 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH 7/9] staging: rtl8723bs: Fix
 incorrect type in argument warnings
Message-ID: <20191113011226.fw5ohzpchgizhpen@gmail.com>
Mail-Followup-To: Greg KH <gregkh@linuxfoundation.org>,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
References: <cover.1573577309.git.jarias.linux@gmail.com>
 <637726782ce6c6ed3d68b5e595481857916bbc56.1573577309.git.jarias.linux@gmail.com>
 <20191112203343.GA1833645@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191112203343.GA1833645@kroah.com>

On Tue, Nov 12, 2019 at 09:33:43PM +0100, Greg KH wrote:
> On Tue, Nov 12, 2019 at 11:55:27AM -0500, Javier F. Arias wrote:
> > Fix incorrect type in declarations to solve the 'incorrect
> > type in argument 3' warnings in the rtw_get_ie function calls.
> > Issue found by Sparse.
> > 
> > Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
> > ---
> >  drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> > index db6528a01229..bb63295e8d4e 100644
> > --- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> > +++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> > @@ -83,7 +83,7 @@ static char *translate_scan(struct adapter *padapter,
> >  {
> >  	struct iw_event iwe;
> >  	u16 cap;
> > -	u32 ht_ielen = 0;
> > +	sint ht_ielen = 0;
> 
> sint?  Ick, try fixing up the function call itself please.
> 
> thanks,
> 
> greg k-h

Hello Greg,

I found that rtw_get_ie is called 62 times and the passed argument
can be declared as sint, uint, u32, u8 and probably a couple more.
I'll drop this patch for now and check more carefully if this fix
would require more changes, as changing the argument type wouldn't
solve the warning described in the commit.

> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191112203343.GA1833645%40kroah.com.

