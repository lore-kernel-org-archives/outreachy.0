X-GM-THRID: 6526240605789487104
X-Received: by 10.237.53.243 with SMTP id d48mr14261485qte.33.1519841895567;
        Wed, 28 Feb 2018 10:18:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.237.60.99 with SMTP id u32ls2892180qte.11.gmail; Wed, 28 Feb
 2018 10:18:14 -0800 (PST)
X-Google-Smtp-Source: AG47ELtQHHPHd5t9NWkUkz7uEd05Utl9pBf9D//XuVvIkWmhnRkdDkWDLPHVYTq2kHRpYsfJ+wOG
X-Received: by 10.200.44.187 with SMTP id 56mr1463797qtw.10.1519841894234;
        Wed, 28 Feb 2018 10:18:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519841894; cv=none;
        d=google.com; s=arc-20160816;
        b=huWzyZXOaJUqrlXVj0oYVcDLaVCczGPJInnoIYAnMVGr2lgX8z4JXHdc53eYwNtP/s
         43AJX1/Fn3mVhaPIhiy8/NK0l+03ah1fl42d0M3c+HBRwJulLHzKQ5QBgKOUskBbB3ct
         ULPcGtZ8ThYW8FyxuAFIdIw9z14e9ww3CljLwIjV7mqUlgs0LXZ7UMIysdKFzXivMdXJ
         UAFr6f9S9TWzoRuGaFbU1f/zko1bxPCtZNGWFALuxKWICKxWlKFxVUHG0M2QSPgZwOga
         7zZ5mzdM6FSQi0BKxGIUI6ep89BVFmzVAueuz1ARr1bwroy8PmWxT3zDosEbe06878Eb
         YyYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=jnedIa3hNS5KwJGzNWZnfcuNN3unWrgbBUjFt4DDs9Q=;
        b=jbd3Mzr44sCuFJuCKhOYnnOJIjTTTkeUhnVmxasN2DDL0vOP2x66QAdhI3a59uwD9g
         iP3SfIyS5Lg7XRk0VmepJXLCqc7DapYoET0BWLp98NFL3vGze7KQFXflLATQHMBM0Dsk
         kpWQNr+YRMHOHFQWMN4KLwljWWIgHpzfRhynBAWoxhoIP0axd4n/SL+KYLK6wRMNdrFv
         UMu9/mW6t6/t83CD/YpEGiIzBrZRlsBz4Yog/Lq5+dz5HaZ2Ut+Figcu2t7hVtamgtzF
         wPs2mg3s3UrtIoJn53/1Q5k0+jvGCYwUopSeukEZPQKDTBk5Q5RCW7pcVNmZyMtTCDop
         5EOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jxcT0Tu8;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c05::22d as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <santhameena13@gmail.com>
Received: from mail-pg0-x22d.google.com (mail-pg0-x22d.google.com. [2607:f8b0:400e:c05::22d])
        by gmr-mx.google.com with ESMTPS id f40si133089qta.5.2018.02.28.10.18.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Feb 2018 10:18:14 -0800 (PST)
Received-SPF: pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c05::22d as permitted sender) client-ip=2607:f8b0:400e:c05::22d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jxcT0Tu8;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c05::22d as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x22d.google.com with SMTP id y26so1252896pgv.4
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Feb 2018 10:18:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=jnedIa3hNS5KwJGzNWZnfcuNN3unWrgbBUjFt4DDs9Q=;
        b=jxcT0Tu8KD7KFzhyroHXI6x0LQhuoEL+DWyRU9fN6ouWblr+wP1AG7wSq118+4uasK
         tJPjXLXobQBGCttrvs26lTYYkAg5LiPNOgmgkavc46fFNCKny8p9yrdwNR0yMKGR6sfV
         XDNaa9UbdaDomkXtBn+RfqylK/tsjNE5H8JOchLUPuQR88y+JTSVOILF7d5jlzqNWaYy
         KQr/84a22S5owIMOmOepymj+5g3/VJvqKqb1byIWb7rGkRYLlD5jeqTen+PcIuVdvOrM
         fO1tZfvJVNNK7xTV0PU4nJix4E98yZIJ/h7qpPF9Qv73ItnaoUpsrR72VHRCrFfEXtrM
         aW1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=jnedIa3hNS5KwJGzNWZnfcuNN3unWrgbBUjFt4DDs9Q=;
        b=gML3rom6tZ7u8kMT55b2GjVcGhp7b7nZWQ2fc7gHtG1t96go+ZPz9oBi6WyvgMP8o1
         /Uy/Qv8NZ9guQuazMXbMGUFmD6xGg+9uNvhOLmJa3Pxa/2GHqBqat9wWaxupVi7Bmxay
         m/G61DPeLKuDN0f8HF1eE0tR2RXx6e4a85vb12kZs8AptYxxWZgWuD0NVUWL5Y/bc2e/
         zhU09jMpn3My+Ef7AnukXJfb+6ouGO4R7qegH/vMx4o9BHkFZeRAKG7jAg8N4vUNnsuN
         keaoTA04JevjIp44FtL70hTtH6cvc7+91AWX9jjXogbu5tLb6a0kSW2deeXO4QnjHJOJ
         zBtQ==
X-Gm-Message-State: APf1xPCs/5bFHtCbwifsjANy1YtpUCO9sJ2LLqd3MURT+noOkOxYzx1b
	x6gV87p/QLHHTzO4aWfv9lHv/A==
X-Received: by 10.98.61.73 with SMTP id k70mr18738434pfa.10.1519841893703;
        Wed, 28 Feb 2018 10:18:13 -0800 (PST)
Return-Path: <santhameena13@gmail.com>
Received: from ubuntu (ResNet-23-249.resnet.ucsb.edu. [169.231.23.249])
        by smtp.gmail.com with ESMTPSA id f190sm5934477pfb.158.2018.02.28.10.18.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Feb 2018 10:18:12 -0800 (PST)
Date: Wed, 28 Feb 2018 10:17:47 -0800
From: Santha Meena Ramamoorthy <santhameena13@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] staging: rtl8192e: use struct
 pointer to get the size of the struct
Message-ID: <20180228181747.GA17434@ubuntu>
References: <1519508793-11537-1-git-send-email-santhameena13@gmail.com>
 <alpine.DEB.2.20.1802251012080.4584@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1802251012080.4584@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Feb 25, 2018 at 10:12:38AM +0100, Julia Lawall wrote:
> 
> 
> On Sat, 24 Feb 2018, Santha Meena Ramamoorthy wrote:
> 
> > Use pointer to the structure to get the size of the structure in order
> > to conform to the Linux kernel coding style. Issue found using
> > checkpatch.
> >
> > Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
> 
> Acked-by: Julia Lawall <julia.lawall@lip6.fr>
> 
> > ---
> > Change in v2:
> >  - Use single line when the number of characters is less than 80
> > Change in v3:
> >  - Improve the subject line and the commit message
> > No code change since v2
> 
> Actually, the most recent change description should come first.
> 
> julia

Sorry, I'll remember that :)
> 
> >  drivers/staging/rtl8192e/rtllib_wx.c | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8192e/rtllib_wx.c b/drivers/staging/rtl8192e/rtllib_wx.c
> > index 03fbff0..74d4d2d 100644
> > --- a/drivers/staging/rtl8192e/rtllib_wx.c
> > +++ b/drivers/staging/rtl8192e/rtllib_wx.c
> > @@ -371,8 +371,7 @@ int rtllib_wx_set_encode(struct rtllib_device *ieee,
> >  		struct lib80211_crypt_data *new_crypt;
> >
> >  		/* take WEP into use */
> > -		new_crypt = kzalloc(sizeof(struct lib80211_crypt_data),
> > -				    GFP_KERNEL);
> > +		new_crypt = kzalloc(sizeof(*new_crypt), GFP_KERNEL);
> >  		if (new_crypt == NULL)
> >  			return -ENOMEM;
> >  		new_crypt->ops = lib80211_get_crypto_ops("R-WEP");
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1519508793-11537-1-git-send-email-santhameena13%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

