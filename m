X-GM-THRID: 6758464167600979968
X-Received: by 2002:a9d:ea3:: with SMTP id 32mr223551otj.65.1573604574409;
        Tue, 12 Nov 2019 16:22:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:c394:: with SMTP id t142ls203306oif.0.gmail; Tue, 12 Nov
 2019 16:22:53 -0800 (PST)
X-Google-Smtp-Source: APXvYqyEmqnWWyAtBh+B8RKF6lWCzK33iESagWH716QAVEl1KJXrmTwBiEouRKvSf770fXIIrj7r
X-Received: by 2002:aca:f0c1:: with SMTP id o184mr220322oih.2.1573604573255;
        Tue, 12 Nov 2019 16:22:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573604573; cv=none;
        d=google.com; s=arc-20160816;
        b=za24EJItOFnigPI556WIFeMQ4EwTqGNyf0k4+rtOYxTnjtaJISnwokh9TeGapg3UdI
         A4MFqlYI6XoOO1nNYd9ZsS3vgqs195LueAY3oFCxE/CtpbIuxtk2mXHn9xzlGbVNEons
         sY5EQGOsJW7Mw5JWTvrfh+Bmt3COgvztqbXODpbsS8646PrKk1kR52qvy52QYeNnojIq
         ltjA4Mue0BbK7TuQQvWpwsNL+mgyDVKHJxC43Owd3C7d+v/wuAGbSd9aC0Xq6yi8pXsV
         RFhDG9v5w7SAg4gywY8gjq3pY/SetM/D77u9Ud5YeGjbLM+PklMBcI36wh93jCio2NmQ
         Hjuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=uoHLiIOTAvogZLXBSvSivaMAQZVUp11N48xeT9xKFAA=;
        b=KqgAxzxLYD3XaKspScE79dRXpvKjm5o3N0GTcRhRY05uaeVIUOhP9tLCKZld2DaIPG
         dXgBt32c4eo/+NfGG7uX9NQFeehLbCn8EL6znmyEL6rK2uLCr2t5BTfybt/tNWmihW33
         STfdJyMmSSRdc9IB805cEPeIV1m58j8JXswMzZO9ZCUSFb4BbOyb3zpAn0tdixMXwgxC
         1sXgwOXFbLFiiwkxddITkV0IibnXzru9DlPsusW3mBiqL2MscX67q6Sq0atRvZet7WAZ
         etuY3Q+3hwwDiE4dftHCK3URM0o4EKeUJ4Djbt+jO4h+BeH2b+8okxfeu3Oo16GHI16Q
         ObFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EwCXlilA;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::b44 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-yb1-xb44.google.com (mail-yb1-xb44.google.com. [2607:f8b0:4864:20::b44])
        by gmr-mx.google.com with ESMTPS id m7si15797oim.3.2019.11.12.16.22.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Nov 2019 16:22:53 -0800 (PST)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::b44 as permitted sender) client-ip=2607:f8b0:4864:20::b44;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EwCXlilA;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::b44 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-yb1-xb44.google.com with SMTP id q7so266066ybk.4
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Nov 2019 16:22:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to;
        bh=uoHLiIOTAvogZLXBSvSivaMAQZVUp11N48xeT9xKFAA=;
        b=EwCXlilAXQiZt2NJehm8cfebO0K98eji/w6iFgqsA/yjgo8IpeJYsx59KZmazUD3rk
         7rD45eB6UgEddYjXrM2EMvsWgwKhHC5wIetNQkZycmdKiNxn9cdQLGuigpCfiyoCbior
         dIOeisgA8iVjTuAUaOOL5sLpivHUanRWGezLwM4DO+P5TOJCve4WRrzwu29KVx7n5497
         NAVojv+6Z2YiqIlm66G9gSYt/QqRLc0uTSr9j0K4iRcSIWDAKYuAMo/l4sX4H8qDGBt2
         1IDQsmL+0lj42ZaQdwOkTMOmqedUIkkWRDrbYkRUgXjKh7gZctFNhqTl/SGklm5Ruyrm
         loyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to;
        bh=uoHLiIOTAvogZLXBSvSivaMAQZVUp11N48xeT9xKFAA=;
        b=IEciyQJMqBUX0Yk+ugDXnLHXS9Iv9PDcrFlpMDCLP7fuscf6HUOHJhOoYpYCLho8fJ
         vUAViUiucb+b095c5kaDurGJWFmyQtH9zVZ34/bqa1pSHMci09YMCWcZbr2GsrCJ35rS
         fo9ffPmsqyJMcOKKQdFkzKf0gSe/aCI7qRX9T7vctNJxbFoDac3mAClNBqNu6tnfInAL
         wmirgsDV+Y0Sz/LPBH9Mfs1/1gkeF1S1XB6ubKhWMmcY4S5mu5/8Z4NzZPCufv8nYzzV
         ztVhYv/aQVpVsDplfNNTSBrtFWjKKUy+UvCjq8yhGTx0iVzZ8W2xOIfF+UNWNA5kazkH
         TIWg==
X-Gm-Message-State: APjAAAUF0e7bHgBNyzSMPdeLKnLG8kR2WaUebo/fSZS2reSixwoBrJND
	F/7CCLdTdsvAMejKo04YNuu2qrJFrWgYDg==
X-Received: by 2002:a25:7909:: with SMTP id u9mr548476ybc.327.1573604572770;
        Tue, 12 Nov 2019 16:22:52 -0800 (PST)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com ([196.247.56.44])
        by smtp.gmail.com with ESMTPSA id r33sm134916ywa.83.2019.11.12.16.22.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Nov 2019 16:22:52 -0800 (PST)
Date: Tue, 12 Nov 2019 19:22:48 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH 5/9] staging: rtl8723bs: Add
 necessary braces
Message-ID: <20191113002248.u4cwx7bwjenpzwbj@gmail.com>
Mail-Followup-To: Greg KH <gregkh@linuxfoundation.org>,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
References: <cover.1573577309.git.jarias.linux@gmail.com>
 <9653d1c5ea7ebd7b4137edea4f5eef74ea65703b.1573577309.git.jarias.linux@gmail.com>
 <20191112230405.GA1904763@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191112230405.GA1904763@kroah.com>

Hello Greg,

The unbalanced braces were fixed in the patch #6. I thought that
given that Checkpatch detects them as different issues I could only
change single lines and fix the unbalanced ones in the next patch.

I'll edit the patches then.

On Wed, Nov 13, 2019 at 12:04:05AM +0100, Greg KH wrote:
> On Tue, Nov 12, 2019 at 11:54:32AM -0500, Javier F. Arias wrote:
> > This patchset adds braces when they should be used on all arms of
> > the statement.
> > Issue found by Checkpatch.
> > 
> > Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
> > ---
> >  drivers/staging/rtl8723bs/core/rtw_xmit.c | 31 +++++++++++++++--------
> >  1 file changed, 20 insertions(+), 11 deletions(-)
> > 
> > diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
> > index fdb585ff5925..42bd5d8362fa 100644
> > --- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
> > +++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
> > @@ -370,8 +370,9 @@ static void update_attrib_vcs_info(struct adapter *padapter, struct xmit_frame *
> >  	/* 		Other fragments are protected by previous fragment. */
> >  	/* 		So we only need to check the length of first fragment. */
> >  	if (pmlmeext->cur_wireless_mode < WIRELESS_11_24N  || padapter->registrypriv.wifi_spec) {
> > -		if (sz > padapter->registrypriv.rts_thresh)
> > +		if (sz > padapter->registrypriv.rts_thresh) {
> >  			pattrib->vcs_mode = RTS_CTS;
> > +		}
> >  		else {
> 
> The } should be on the same line as the "else {"
> 
> thanks,
> 
> greg k-h
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191112230405.GA1904763%40kroah.com.

