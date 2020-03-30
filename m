X-GM-THRID: 6809468497850007552
X-Received: by 2002:a9d:469d:: with SMTP id z29mr10886588ote.320.1585607168149;
        Mon, 30 Mar 2020 15:26:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:c38f:: with SMTP id t137ls8019322oif.6.gmail; Mon, 30
 Mar 2020 15:26:07 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsH5COfUQxAmDzkgrnegPJTDiXPCnS0/J0Oeu630PS6jb1Ce6naAfqq+4PL0sclisHUQH+z
X-Received: by 2002:aca:b7c1:: with SMTP id h184mr200221oif.77.1585607167047;
        Mon, 30 Mar 2020 15:26:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585607167; cv=none;
        d=google.com; s=arc-20160816;
        b=NUi/OvRuDIk3jguXkykf4ZlBkjt2Mz509Gy0t28Z4r14YfT9uNBkWmKr1wwZT0ZAvk
         S7WbH8FBWdPUL/kQgWU+TMZagegvQrCV97VhUTV+++ME6rbt5g2S3Z1EFWIDkwIACUoY
         ZRp+7HQalw1NLMYHaJ/k3UKAWPnczT/EyJW5+U5DxumcNCx9KdThYHnr+il9hl5ixkBZ
         +mrCWKm8CLy1s1V4yGRuAejqSQr4WUuPrpNi5sKj2UvcrAg6V7Z94Bxpx+v+XL2FPZec
         IfHsPkBMByAhQdPogA4booU5+T4DPvsB3PI9Afq2Z0FUe2zXl1L4EdSskWZIyRbfcdO+
         dTgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=s+MoJHMSmcTUpq3uJxnfw8RVUGWalt2lStS+Ah7bIw8=;
        b=L/3r1OpEge+DlofopiH1ljiaBRdvBbq0nTnbHknuirNR1LhvtT8X5eqhCKLMOGFpS+
         wPi/e8N/mB6D9G8KgPc3+LN47cnuuDPVf8n+KABX5Pk1Vq3SbKP8WTS6I9Z3vJ/beGi4
         OCp7ezgUrnPDoHjvUt0fzs2JAPbYxZLj/Umta6oPUvKUn9Av6WyED1cmTQjVRszCVZiH
         XyPAcY3zjxxkeMiTjm77Jcn0UwoRwu+AprXDmLgTarApG7t6ohuUWcCMAQFJ2xn6bPWM
         KTPMho/QOPUbPJHBqY9OwHBw8hTQVZOKPTm45lYlSC1L284ZxM1owz+SUnAvNelU2dY9
         tekw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ycc1KEIO;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbwyatt4@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id k23si311161ooa.0.2020.03.30.15.26.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 15:26:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ycc1KEIO;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id e1so7314044plt.9
        for <outreachy-kernel@googlegroups.com>; Mon, 30 Mar 2020 15:26:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=s+MoJHMSmcTUpq3uJxnfw8RVUGWalt2lStS+Ah7bIw8=;
        b=Ycc1KEIOagcHVpqjoqTdfsL8SXZV1i++qn05Rgy8VdmDp72xVkhS8K1vnLdiF6MQc0
         LovPWxqrUa8uOtPkhubC5G1/vHnyQgfh1cBs6LjDI96nKCBeQFfiBefGa8f7U2rvOmLp
         ZIwmTYa3aPwoL47kaUKGGZg+NyJqNd38Fn0GTuWgY1G5XevW7LmlR7EuUCI9Szc91BzI
         VS7XbAMruSlBt5pELkjNUuSF6lRdHCsM8oRvhlOUysXOf1FdwrXeJA/6wtvo5LUVNRM0
         2swl6ETvnTFp0mSnOPaXBFG9pN2iewLiDZutUQn/Uuang/YFqkEpUA47goeAmwJTnqR7
         oopw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=s+MoJHMSmcTUpq3uJxnfw8RVUGWalt2lStS+Ah7bIw8=;
        b=QD1FZdnrlBIkA1MCbgrAAzyi6ix4b5t2TF7mTd5TS5YisBncoK2XnIO1AAj7gFP7lr
         m/UGB6lrNEVvOjEHuyusEfuCKvuuynz/zmrwfpti8wcSFlOv5KxtB3dkJAlMLPWciOK/
         stPn2Qq2nVbvBWAX6zSYY55JmmewdlnI2KOVUgIp36K0L+E5csaYlDgHJBG7IiH7Yy71
         T2RoQfsn8DcotF/iIHTTq1/U4qg5RB7t6yIg6gFeikQ1lAqqOuByvG5GJrzW/JgR4ARv
         z3dbinSyqfkWK5mYL0SwmOR5r3m7BlakdtwWLOJUcXgPAA/23r5CAMp8PntGjqVpW3wO
         Ullg==
X-Gm-Message-State: ANhLgQ1DSAM+kXa5+UBSuYCFe9Oyv6T4/+SnHd6zezOFra7zlouaz0Mf
	5+oS41MpaOmwllaC7DzwPEU=
X-Received: by 2002:a17:902:aa97:: with SMTP id d23mr14477810plr.244.1585607166274;
        Mon, 30 Mar 2020 15:26:06 -0700 (PDT)
Return-Path: <jbwyatt4@gmail.com>
Received: from OptiPlexFedora ([47.144.161.84])
        by smtp.gmail.com with ESMTPSA id c201sm11015633pfc.73.2020.03.30.15.26.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2020 15:26:05 -0700 (PDT)
Message-ID: <61bb6678d48557895671488357a62680d0ae655f.camel@gmail.com>
Subject: Re: [PATCH v6] staging: vt6656: add error code handling to unused
 variable
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: Stefano Brivio <sbrivio@redhat.com>
Cc: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@inria.fr>,
  Forest Bond <forest@alittletooquiet.net>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Quentin Deslandes
 <quentin.deslandes@itdev.co.uk>, Colin Ian King <colin.king@canonical.com>,
 Malcolm Priestley <tvboxspy@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Date: Mon, 30 Mar 2020 15:26:04 -0700
In-Reply-To: <20200331000143.7c8f98c0@elisabeth>
References: <20200330214613.31078-1-jbwyatt4@gmail.com>
	 <20200331000143.7c8f98c0@elisabeth>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Tue, 2020-03-31 at 00:01 +0200, Stefano Brivio wrote:
> On Mon, 30 Mar 2020 14:46:13 -0700
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
> > v6: Forgot to add all the v5 code to commit.
> > 
> > v5: Remove Suggested-by: Julia Lawall above seperator line.
> > 	Remove break; statement in switch block.
> > 	break; removal checked by both gcc compile and checkpatch.
> > 	Suggested by Stefano Brivio <sbrivio@redhat.com>
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
> > index dc3ab10eb630..c947e8188384 100644
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
> >  	}
> > +	if (ret)
> > +		return ret;
> 
> Hmm, sorry, I haven't been clear enough I guess.
> 
> This is what you're doing:
> 
> if rf_type is not in that list:
> - set some bits in a register
> - did it fail? return
> - did it fail? return
> ...
> 
> if rf_type is in that list:
> - set some bits in a register
> - did it fail? return
> - set some other bits
> - did it fail? return
> ...
> 
> Now, the "set some other bits" part is already selected depending on
> rf_type. There's no need to check 'ret' otherwise, so you can move
> the
> return just after setting 'ret', in the switch case.
> 

Thank you for pointing that out Stefano. That would be a serious issue
with logic.

Just to be sure. Are you looking for this?

switch (priv->rf_type) {
case RF_AL2230:
case RF_AL2230S:
case RF_AIROHA7230:
case RF_VT3226:
case RF_VT3226D0:
case RF_VT3342A0:
	ret = vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
				  (SOFTPWRCTL_SWPE2 | 
				  SOFTPWRCTL_SWPE3));
	if (ret)
		return ret;
}

> With a check, because you don't want to return if ret == 0.
> 

What do you mean exactly by this?

The new code should only return a 0 at the end of the function with the
vnt_mac_reg_bits_off call.



