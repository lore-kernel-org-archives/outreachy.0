X-GM-THRID: 6809468497850007552
X-Received: by 2002:a6b:3112:: with SMTP id j18mr13089318ioa.127.1585611145310;
        Mon, 30 Mar 2020 16:32:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:dcca:: with SMTP id b10ls5971569ilr.9.gmail; Mon, 30 Mar
 2020 16:32:24 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsPJXkALcwy9misSZLRsu3rvl+thcAZ89v0xInRcntM46AIK/zay22Bg9Htb2qo49d5GEYi
X-Received: by 2002:a05:6e02:10d0:: with SMTP id s16mr7713698ilj.30.1585611144103;
        Mon, 30 Mar 2020 16:32:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585611144; cv=none;
        d=google.com; s=arc-20160816;
        b=BaMV3+tu4qXYF0C2KIPtGYoqmSkH/75NTGcoSqtMMc8e5ucrZKoCskE1TJ04DWgLxx
         2UdoYWmr1x4NvUsjCanNkMwDzN9ZxGur5Ae0X44GNU5sF04vB17UkmpeAd4PKLn222bc
         6TeuRL6JwH3lZEawJn5bTXiEHGVpAOEuLHOXifVktlffBBCkhdkHOEAHMFCx9qH51vXT
         fjXoliOaP67ItTjFZHjlPMN2fimHK7yPdjFzFg0cD3rpboLXDgvE9JSkIxXT3JFVtjy7
         SZY798YEN1og9nguWrfHh+ymc528jSZMxoNtYhH12S6IYbGphyextQn5a9LJ6onZew83
         +zTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=YmXm/3/ySoSCBdXTqKuN6yVAH5JMGZyG+4nCFBPekZ4=;
        b=j0XXzZlZlbXq0V2kwZxwA3lnxBANgGkVOlEPhIA//jPP6SE6a0ski9pEGhT55DZHJ6
         QejYTveLoQ5HlzxQfpsu47CFHMrDhEX+xZbYnZdc+WeBKGkRUgGBBVJoN1CHTqI9GYdP
         SMNHCmJhNIL1D/0waWKChs0T0EPyreL3RlRPesHim25AVnXKIyyv4anYwF1uxTvLcWAV
         da7R/e2NEVKeCzg+nGEwQYLWgWbtp0NETChGzW2Ycoc0BowYmY6RBwZc5N0OZ7YEGFs9
         wbwwiLoRHGFYrHV91D6z9lHdPNlbW19JjaSwJYcST6eJacQp6xDhMYJKap2kDYTx2j9N
         dyHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=q3CWQRj7;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbwyatt4@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id k88si950836ilg.1.2020.03.30.16.32.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 16:32:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=q3CWQRj7;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id d24so3550069pll.8
        for <outreachy-kernel@googlegroups.com>; Mon, 30 Mar 2020 16:32:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=YmXm/3/ySoSCBdXTqKuN6yVAH5JMGZyG+4nCFBPekZ4=;
        b=q3CWQRj70zrECqtoVIaTOe9sA36DTH/LGFpudFW5IX+5PnRdFac9wnVrcA7JGuE7nP
         8weINSeAB/jP5eihsW7Qv19Fkr/Eh0iR56JjkJ6SGKLFpUv6VKYu45d2fiuZ9jt3FV1s
         OS8cdNPbJzOOu4KQpg/vuVUI3Z+ehIazsEnmzw6FknP45MBj0E7XBCUTimH7NVk6WmBV
         22gkhmg/GWoo0CYb9fRu2vf6j2+kuuZtL+abU2dNCapI2hkoCNC47SZ+IfRhKS5xBeS2
         W5NrfzK0KWKis7g/69eSkhqKjqcxjnjuD+V0vjTlPAC69lnwK32Kgbx4kXlJdarHMMYS
         RQLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=YmXm/3/ySoSCBdXTqKuN6yVAH5JMGZyG+4nCFBPekZ4=;
        b=OeMpA75J7bLnPY00y7iOf9zvvpak1AY6xxT40c0LKC2YZv0g+wHRhOck45b0RCUa0q
         gc3WUL9THJ4RhSuyijMg/8M1D3T52hp0K8UnwEcoMd2+RXSSc9w1Qve8F9NYOhoAHEgV
         7nvSr6GgSnS+Fdotq5SwmiSu0UZVBmlrPNeO3DZCeSq9cTw5DjrZikec12hWmS9Xhx15
         bDw1ich/idbyRmq3siKaBF4fAOy56bt6n7GzmOKUn5/ceEIYV8Pe4OTFOwo9hI6RXr+S
         qay1x9JAkJhpF4hCm7ViFCi5PhhLUSZuOqOJfSS2dCqtJc0c8nxaUO6hMHBxzJdRghpH
         Z4ZA==
X-Gm-Message-State: AGi0PuYScoUEJLx555Z4u2Lkl+2s6T6f+FAWcC89rtem28nUtqr/mnRi
	G2OGohv5TddgrAdR8NwlWgg=
X-Received: by 2002:a17:90a:a414:: with SMTP id y20mr600264pjp.124.1585611143430;
        Mon, 30 Mar 2020 16:32:23 -0700 (PDT)
Return-Path: <jbwyatt4@gmail.com>
Received: from OptiPlexFedora ([47.144.161.84])
        by smtp.gmail.com with ESMTPSA id v42sm10510446pgn.6.2020.03.30.16.32.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2020 16:32:22 -0700 (PDT)
Message-ID: <098d00e455dbc4ad5500d797b62d472160d065a5.camel@gmail.com>
Subject: Re: [PATCH v7] staging: vt6656: add error code handling to unused
 variable
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: Stefano Brivio <sbrivio@redhat.com>
Cc: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@inria.fr>,
  Forest Bond <forest@alittletooquiet.net>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Quentin Deslandes
 <quentin.deslandes@itdev.co.uk>, Colin Ian King <colin.king@canonical.com>,
 Malcolm Priestley <tvboxspy@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Date: Mon, 30 Mar 2020 16:32:21 -0700
In-Reply-To: <20200331004213.1c319d94@elisabeth>
References: <20200330223718.33885-1-jbwyatt4@gmail.com>
	 <20200331004213.1c319d94@elisabeth>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Tue, 2020-03-31 at 00:42 +0200, Stefano Brivio wrote:
> On Mon, 30 Mar 2020 15:37:18 -0700
> "John B. Wyatt IV" <jbwyatt4@gmail.com> wrote:
> 
> > Add error code handling to unused 'ret' variable that was never
> > used.
> > Return an error code from functions called within
> > vnt_radio_power_on.
> > 
> > Issue reported by coccinelle (coccicheck).
> > 
> > Suggested-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
> > Suggested-by: Stefano Brivio <sbrivio@redhat.com>
> > Reviewed-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
> > Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
> > ---
> > v7: Move an if check.
> >     Suggested by Stefano Brivio <sbrivio@redhat.com>
> > 
> > v6: Forgot to add all the v5 code to commit.
> > 
> > v5: Remove Suggested-by: Julia Lawall above seperator line.
> >     Remove break; statement in switch block.
> >     break; removal checked by both gcc compile and checkpatch.
> >     Suggested by Stefano Brivio <sbrivio@redhat.com>
> > 
> > v4: Move Suggested-by: Julia Lawall above seperator line.
> >     Add Reviewed-by tag as requested by Quentin Deslandes.
> > 
> > v3: Forgot to add v2 code changes to commit.
> > 
> > v2: Replace goto statements with return.
> >     Remove last if check because it was unneeded.
> >     Suggested-by: Julia Lawall <julia.lawall@inria.fr>
> > 
> >  drivers/staging/vt6656/card.c | 20 ++++++++++++--------
> >  1 file changed, 12 insertions(+), 8 deletions(-)
> > 
> > diff --git a/drivers/staging/vt6656/card.c
> > b/drivers/staging/vt6656/card.c
> > index dc3ab10eb630..df12c73097e0 100644
> > --- a/drivers/staging/vt6656/card.c
> > +++ b/drivers/staging/vt6656/card.c
> > @@ -723,9 +723,13 @@ int vnt_radio_power_on(struct vnt_private
> > *priv)
> >  {
> >  	int ret = 0;
> >  
> > -	vnt_exit_deep_sleep(priv);
> > +	ret = vnt_exit_deep_sleep(priv);
> > +	if (ret)
> > +		return ret;
> >  
> > -	vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
> > +	ret = vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
> > +	if (ret)
> > +		return ret;
> >  
> >  	switch (priv->rf_type) {
> >  	case RF_AL2230:
> > @@ -734,14 +738,14 @@ int vnt_radio_power_on(struct vnt_private
> > *priv)
> >  	case RF_VT3226:
> >  	case RF_VT3226D0:
> >  	case RF_VT3342A0:
> > -		vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
> > -				    (SOFTPWRCTL_SWPE2 |
> > SOFTPWRCTL_SWPE3));
> > -		break;
> > +		ret = vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
> > +					  (SOFTPWRCTL_SWPE2 | 
> > +					  SOFTPWRCTL_SWPE3));
> 
> Grrr, sorry, almost there, I didn't notice this: SOFTPWRCTL_SWPE3
> needs
> to be aligned *after* the open (useless) parenthesis:
> 
> 					  (SOFTPWRCTL_SWPE2 | 
> 					   SOFTPWRCTL_SWPE3));
> 
> because it's another operand of the | operation surrounded by ().
> Doesn't checkpatch warn?
> 
> The rest looks good to me.
> 

I had to switch from a VM to native and forget to put the git hook in
this repo clone.

Still, after I did, checkpatch complained about trailing white space
after SOFTPWRCTL_SWPE2 |, but not the alignment issue. Fixing the
alignment issue produced no warnings either. :(


