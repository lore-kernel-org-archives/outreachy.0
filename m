X-GM-THRID: 6809468497850007552
X-Received: by 2002:a25:780b:: with SMTP id t11mr23185656ybc.45.1585604842262;
        Mon, 30 Mar 2020 14:47:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:aa0c:: with SMTP id s12ls6411858ybi.6.gmail; Mon, 30 Mar
 2020 14:47:20 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsHCGjhYNMNUAPPxLP6MMeFQs6CqoeiPFMBEuHraQCtYc1BLuZVxReLIgm384w0A3a3uPbI
X-Received: by 2002:a25:2d66:: with SMTP id s38mr2419881ybe.8.1585604840894;
        Mon, 30 Mar 2020 14:47:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585604840; cv=none;
        d=google.com; s=arc-20160816;
        b=ss0gUWCVf48cKNlwE+QvLGf63w4GLK+mGMvXhzndUdfvF27SkCDNtsSsE3SErlXVLb
         PTM6eEHp0+NAu72D4pTDAmR7rwmLKsFhKMalDVfj8fvcQFnpIyXDevu0nh+W3yWjPPB8
         eNiL2xcxYq26I44VzcJ6iOJB8NcNKM3DO9yzQhuLkcenJiW0UUnwBAEv0k1tyB9XlNoo
         nvmVeuHGNL6FlDlH0qNrOED+75muQgNx3wQphvdhD1AU34p1I05ilNKAEZRbZ+LKecds
         Fj84n2IfxsigcLDiTjNlIV3w2coKZl1MJ2g2lK6N68qPlmNdw56n7Jt24Rf/B9e4seuP
         Kb9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=en1IQMIc1TSs5b2IKh+4WaDfSDdVceKaSf3PzbyQVGk=;
        b=PvdqKXYMWHIwsZ5egA9Yac/VUwHvq6QZT/0xyOPJ9VsHoeAny3zyRbDRSkm5Wc7k6p
         2bW6nS51ewFOWfcHy/igRWPBh0MSsm/RcJQGrnaTrRt/nVxdKfXVTmaV/l2wlF9D0vfh
         pLRx+iKW1Zonmlmqoe+THEFvhn9B0whdWASneVKPfiEcz8vx49+COYD7PvvTrWniTiaz
         1qNbmidtYFUg+/DCT6TewoR5dRhvpg5prDBSkNwxRCQVVsu/SdJ7NceBL6Vk2e/eecRL
         zv4pgE4Fmv7QCPmaYlmF4qmsWJgSdIgxmbXE1u9VKT0VKpetEYcQEH4NQ3rPHzNWngaV
         Vj4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QYDZvqgy;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbwyatt4@gmail.com>
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id e14si1009543ybp.0.2020.03.30.14.47.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 14:47:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QYDZvqgy;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1043.google.com with SMTP id g9so189059pjp.0
        for <outreachy-kernel@googlegroups.com>; Mon, 30 Mar 2020 14:47:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=en1IQMIc1TSs5b2IKh+4WaDfSDdVceKaSf3PzbyQVGk=;
        b=QYDZvqgySdojAuttsMOyUaM59cNDeHhD6pD5L2vS9lo2vYP742n43Ujw1Tg+IkNjSW
         pRH+VgRK6qCCyDXUQZfye0Snj/Eno6WQWXm8dbkZY9LhTvj02sxEljw63gM0iXhtxi+l
         C8Shy3SisPiKds6rbsVtHoEV87N7zXc6nWlmIW7Snyj2FpD1wLdSxn0mmi2ljNGj67ZX
         MloEciRVc7nOmgCrZMBlXk4uHqIi4qf3GUCKDCOSdxHWDUsM71CBa8XKycF+QN7mwCS8
         KiZaxuR4dT10NUHZD1KeUELRQdKmStLqECScfOAkEu6mXbBWY5Ad+IEmJdSP81M7RrW5
         xspw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=en1IQMIc1TSs5b2IKh+4WaDfSDdVceKaSf3PzbyQVGk=;
        b=BcchTVdQkzJcDPB7ki4Fja3Bt8BjGgGeo8wrWdyWwNTVBnFKgwyi6P8roUdasbhkZF
         Er8IFZv56PQVlvVJbYr4UntW5c46LiUAiQlmDn+9mBafJbZRjpHSlOwPn6mAHVquvHtH
         XHef4cgyUGgfSI0GHEE7C5yio1SDno7st6cid4pVLjDS6pBEpvoQrwKascVZxA6QXup2
         CarpQDFKeLzIM05MiXeNgKTDM8DAVTtAalIVYDJ2j1oHgDfe7l8zLmEhKpiGY91grXIv
         kjePPgp2QD91CfDRHNrJTPA8GnEvYo3NKyCDuR/kpt56is1eR0Ou+pfxp8SYEfbOJ3qF
         btlA==
X-Gm-Message-State: AGi0Pua7M+vHbaWEbsDeHNbVI6p5aYorMosRFNshf+uvcfqpBcoc0KFl
	t9152j8wakbLvMSbePHh2Oyd9USf0VlCpQ==
X-Received: by 2002:a17:90b:8c4:: with SMTP id ds4mr212979pjb.44.1585604840076;
        Mon, 30 Mar 2020 14:47:20 -0700 (PDT)
Return-Path: <jbwyatt4@gmail.com>
Received: from OptiPlexFedora ([47.144.161.84])
        by smtp.gmail.com with ESMTPSA id z12sm11387743pfj.144.2020.03.30.14.47.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2020 14:47:19 -0700 (PDT)
Message-ID: <5d2cda14795500ae6cc862b98907a7210688269f.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v5] staging: vt6656: add error code
 handling to unused variable
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: Stefano Brivio <sbrivio@redhat.com>
Cc: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@inria.fr>,
  Forest Bond <forest@alittletooquiet.net>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Quentin Deslandes
 <quentin.deslandes@itdev.co.uk>, Colin Ian King <colin.king@canonical.com>,
 Malcolm Priestley <tvboxspy@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Date: Mon, 30 Mar 2020 14:47:18 -0700
In-Reply-To: <20200330230634.3b905158@elisabeth>
References: <20200330184517.33074-1-jbwyatt4@gmail.com>
	 <20200330230634.3b905158@elisabeth>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Mon, 2020-03-30 at 23:06 +0200, Stefano Brivio wrote:
> On Mon, 30 Mar 2020 11:45:17 -0700
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
> > v5: Remove Suggested-by: Julia Lawall above seperator line.
> >     Remove break; statement in switch block.
> >     break; removal checked by both gcc compile and checkpatch.
> > 
> > [...]
> > 
> > @@ -734,14 +738,15 @@ int vnt_radio_power_on(struct vnt_private
> > *priv)
> >  	case RF_VT3226:
> >  	case RF_VT3226D0:
> >  	case RF_VT3342A0:
> > -		vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
> > -				    (SOFTPWRCTL_SWPE2 |
> > SOFTPWRCTL_SWPE3));
> > +		ret = vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
> > +					  (SOFTPWRCTL_SWPE2 | 
> > +					  SOFTPWRCTL_SWPE3));
> >  		break;
> >  	}
> > +	if (ret)
> > +		return ret;
> 
> Did you send the wrong version perhaps?
> 

Yes. My apologies. Please see v6.


