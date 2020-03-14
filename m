X-GM-THRID: 6802949681377705984
X-Received: by 2002:a67:fe05:: with SMTP id l5mr11451034vsr.186.1584185304506;
        Sat, 14 Mar 2020 04:28:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:f315:: with SMTP id p21ls1643403vsf.1.gmail; Sat, 14 Mar
 2020 04:28:23 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuCMVeST57kobMcYgTAZT/qHmlqJIIfSgy3FGYIiWylbOUquaPASNu/Atn0WbbT9hcPiuAH
X-Received: by 2002:a67:6d82:: with SMTP id i124mr217803vsc.174.1584185303206;
        Sat, 14 Mar 2020 04:28:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584185303; cv=none;
        d=google.com; s=arc-20160816;
        b=PHgq2euVhMQUxTg1Y1ottV7lfPTdEf2n1k8khb1ehpb7/ROUybonze618/5baICdAO
         2TjHm/h2jZpqgRyr8Y2rYH1rX4ZQE22/D428UFJwtlpjUv+GRumK4Fk4B1Q7jaZcdw2k
         0AZVZYAuTAOtoV0Rs2eFxM1GwB7Dkm2GrSr0UJQ1EUrV2vMIQjLLw4sbVNVwwDxOah0h
         +4sgjcUDwzfH4vX51/RuJDiQPAOzJ2pii4XoB/Ub654aK8p7Ay2msk/gHiylxz1H8xyi
         5x4TaZM88SjMJdkb+lMgjE6pylbi3Qo/j5UbrDg5gVVbcAeaKbUY8ipfKGSXFCwbCnPY
         VpMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :to:from:subject:message-id:dkim-signature;
        bh=IEb+NSlMbsrypsWmkX+nuM5EY+ct1whAxHi5by7wFZk=;
        b=XVidxGP5JvLoiM5DvVcqQQQVtx74hKXZjrhLRTUZuMNmtMQQKt8ez6/l+I7xmbGn6Y
         GKLaKdCXDH+aONSlZBnxyF5TIUD6cciRahIUh8RazHr18kF3Q522VqNuVxNKUglDYVqo
         AILLeorQUwQIQwQ8cMKVqgIslv9Q/gd1LZOAR9DaCaL8pghBpUpDiPRQtov4Z7xfDYg7
         Zz5fiY8eqD/AwIWHAj1K2fYxpHR79WZK7E1VyQAY+lrPTY1g7H+w0jZh1r3bkxNtDDrR
         tcqhpjHShc5xL8yVSgWcNSp86q7/kdPfWzwT55zU+3mjY0Pg/lC17d/hGEW3uZmKV3YF
         If+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bG5aihcW;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id w4si723740vse.2.2020.03.14.04.28.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Mar 2020 04:28:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bG5aihcW;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id h11so5570178plk.7
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Mar 2020 04:28:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:date:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=IEb+NSlMbsrypsWmkX+nuM5EY+ct1whAxHi5by7wFZk=;
        b=bG5aihcWf/+r0MsUj2isrV4f3QSpFroQialqMuYStk5Nevs/PLSH6f2w49GWMx/oP6
         G2MdC00xkDVCEADr0Rjp6z5PRXrNvhCBgrvybUrvH4yVOZZh4GS9qNPsTlUlZ7B+4Fev
         9VT71bq8ZUBkWy2isWKKxhVd2GqnDj/abb8FkanwvIqVSVBlYXXPBrO3P9qaOUKvrAOV
         5x9sgvgdOlhXYH8lPEK7hfNHKkhKgf5w6dLTb/V0Ns1TIfcsJFplgHxrVOaNvSsa2pWy
         Sv/vGKqaEOmcV4kIUnJaUSZQU6+cumfyNoLy6T3rP8xyGpb9jJXOF0Y+h07gSmgKJqlO
         tNCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=IEb+NSlMbsrypsWmkX+nuM5EY+ct1whAxHi5by7wFZk=;
        b=YjZK9e2N4xNx4OhYKQT/yG3xlBIRwONFFmaMZ+as2lP/x3AP2YguDKEzX+CIn1Uz35
         QU/nxaidVWR3Plv+lWUi78IUVuKb1k+hgq5xInB051D0P4X3IBk4WRu52/GBXBx9Ve7f
         YrSe4cbaCOpNKlWmBMY6dbjjUUS6eejU8bJCwXjFWnoCuJrtAt2TSLO7gDtrk5rZbS8/
         4aLa8mk7OJ3YQR0dN4V8tAa1VV77+ZDw7964k3QtEH+Taz4SPgvkh1ccDp+EXqfbm2v3
         0VTeqqj0y3hdOKqj7DIAyY0nzFc6E+vZ8StyGADEaZdRKYf00g/oa7QWAoIV72Ezpz3+
         qi9A==
X-Gm-Message-State: ANhLgQ0sdU7nWdTySz+iIj/fhGJrSR4b/1Ngdknm6bJTeAMXeaGVqIG/
	BVBxgONunfW/CH+4CrjVuhA=
X-Received: by 2002:a17:90a:c715:: with SMTP id o21mr15127998pjt.160.1584185301961;
        Sat, 14 Mar 2020 04:28:21 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from Shreeya-Patel ([113.193.35.211])
        by smtp.googlemail.com with ESMTPSA id 8sm21886437pfp.67.2020.03.14.04.28.18
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 14 Mar 2020 04:28:21 -0700 (PDT)
Message-ID: <4deeaef8f8e0f23a9adbfd7d98840624e2994cf2.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtl8723bs: rtw_mlme:
 Remove unnecessary conditions
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: Joe Perches <joe@perches.com>, gregkh@linuxfoundation.org, 
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
 outreachy-kernel@googlegroups.com, sbrivio@redhat.com,
 daniel.baluta@gmail.com,  nramas@linux.microsoft.com, hverkuil@xs4all.nl,
 Larry.Finger@lwfinger.net
Date: Sat, 14 Mar 2020 16:58:16 +0530
In-Reply-To: <25a1aca2c993ecb70ba7cd9c9e38bce9170a98b0.camel@perches.com>
References: <20200313102912.17218-1-shreeya.patel23498@gmail.com>
	 <25a1aca2c993ecb70ba7cd9c9e38bce9170a98b0.camel@perches.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Fri, 2020-03-13 at 14:21 -0700, Joe Perches wrote:

Hi Joe,

> On Fri, 2020-03-13 at 15:59 +0530, Shreeya Patel wrote:
> > Remove unnecessary if and else conditions since both are leading to
> > the
> > initialization of "phtpriv->ampdu_enable" with the same value.
> > Also, remove the unnecessary else-if condition since it does
> > nothing.
> 
> []
> > diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c
> > b/drivers/staging/rtl8723bs/core/rtw_mlme.c
> 
> []
> > @@ -2772,16 +2772,7 @@ void rtw_update_ht_cap(struct adapter
> > *padapter, u8 *pie, uint ie_len, u8 channe
> >  
> >  	/* maybe needs check if ap supports rx ampdu. */
> >  	if (!(phtpriv->ampdu_enable) && pregistrypriv->ampdu_enable ==
> > 1) {
> > -		if (pregistrypriv->wifi_spec == 1) {
> > -			/* remove this part because testbed AP should
> > disable RX AMPDU */
> > -			/* phtpriv->ampdu_enable = false; */
> > -			phtpriv->ampdu_enable = true;
> > -		} else {
> > -			phtpriv->ampdu_enable = true;
> > -		}
> > -	} else if (pregistrypriv->ampdu_enable == 2) {
> > -		/* remove this part because testbed AP should disable
> > RX AMPDU */
> > -		/* phtpriv->ampdu_enable = true; */
> > +		phtpriv->ampdu_enable = true;
> 
> This isn't the same test.
> 
> This could be:
>  	if ((!(phtpriv->ampdu_enable) && pregistrypriv->ampdu_enable ==
> 1)) ||
> 	    pregistrypriv->ampdu_enable == 2)
> 		phtpriv->ampdu_enable = true;
> 
> Though it is probably more sensible to just set
> phtpriv->ampdu_enable without testing whether or
> not it's already set:
> 
> 	if (pregistrypriv->ampdu_enable == 1 ||
> 	    pregistrypriv->ampdu_enable == 2)
> 		phtpriv->ampdu_enable = true;

But the else-if block which I removed in v2 of this patch had nothing
in the block.
It was not assigning any value to "phtpriv->ampdu_enable". ( basically
it was empty and useless)

Now as per your suggestion if I do the change then the value of
"phtpriv->ampdu_enable" will be changed to true when we have
"pregistrypriv->ampdu_enable == 2" condition. But in real it should be
the same as it was by default coming from the start of the function.
( This is because the else-if block was empty and doing nothing )

Please let me know if I was able to make you understand my point of
view here. Also, please correct me if I am wrong.


Thanks


> 
> 


