X-GM-THRID: 6950732007035895808
X-Received: by 2002:a5d:64af:: with SMTP id m15mr2788824wrp.298.1618503484789;
        Thu, 15 Apr 2021 09:18:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:9a6:: with SMTP id w38ls3081358wmp.2.gmail; Thu, 15
 Apr 2021 09:18:03 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzkeRZJ80C+jARxFdXWLM6gMHNMNIY/MsROrQxxp+55vB22O9fu4x4dtga1XiwQb8XxRD8T
X-Received: by 2002:a1c:b342:: with SMTP id c63mr3973279wmf.162.1618503483389;
        Thu, 15 Apr 2021 09:18:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618503483; cv=none;
        d=google.com; s=arc-20160816;
        b=K5nPVr2mFL9OWG8DJyOHb+wGK+3qGjmPcX1v70a1A+EAjNdvCreTnGYvhBKZfzYLLs
         G4XUi08XolpxdPGHo2NGx5loMsKVB/wy85BqXhfu6Xr0tW35/Q/eh3pWFW0a+dvmOv/E
         lAxtwsYXETBUHGUmzRlOTgUNm7PV3XcbJkKTq5ufB+b6JUlz3Fo+6E2XLYuZlb4ZDVmR
         GOG2ukgAIJCYt0GOtUWXU5TnV9239VXkAIvgYHg5DfCwRgBewwUH0tRcuxC5+qVp5F5P
         b/Ps7VsCd59kgfmG1DjmFBBJt2Z1WYH+kn6tMgu0foUkZXhSmTAgCVBLSDOrBHU4ev/d
         TEAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=LaxTiEeChdInyG6zNNG7BsxWEQ3Thc4ruL+acShEF+8=;
        b=uifPbB/E9w61ayXwBDoQ37+yP+yi6nAzuajALG68Ov0aGqcKWgQPVpcdgXPPImG37P
         p9q/jhS6lsO4KbaIouCHHePoNhVxpmxATrlYMl0J9V2acvhaI+PaBGDBgkzEQBkn/Gw6
         JcS/nMzY9TYoeksbmsXqWT1MR/7gTMHItIPHd6t0nsYGMjXPFykMMMHUfBWqOF0Jlxcz
         hQVtC1jiNQjjrs5li5fx/DSFT/jrY+dVg09XnWk88/x810bZz1L7ZOCJAgfkFo/RnPgV
         5/JBsB8cTJ0Z2WZ5c9QsZuS6SKqx/t8brlPHVz4BJjDG6DrIRhgkHdQcHXVF1tbZVp+X
         t/fQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="uy15/WD2";
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::632 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com. [2a00:1450:4864:20::632])
        by gmr-mx.google.com with ESMTPS id a4si170438wrc.0.2021.04.15.09.18.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Apr 2021 09:18:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::632 as permitted sender) client-ip=2a00:1450:4864:20::632;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="uy15/WD2";
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::632 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x632.google.com with SMTP id e14so37686186ejz.11
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Apr 2021 09:18:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=LaxTiEeChdInyG6zNNG7BsxWEQ3Thc4ruL+acShEF+8=;
        b=uy15/WD2pvRaZX9lk69thoom1AsFh8wo2Bz49g8hbuUKyuX7S02w1Tq8HBQpi6YC5D
         a50GLO5qgFN0ERD0xdLXWuixEVGxAhSYnUnnkQBC6KGXzYKq6iVw3Tp6CWrV3y5UjCxV
         KXCUhG1eRtVtmv2FhwuID9Bn1W561PDm+5yUFWwEE0hdX3SeW2pAOEL/gUfEOw7HYq0q
         mgyW/PVv4rzHMxECfiV8BV/bcOfb0uAiiZt9buruV447q9j8MzUooHOFbKS794bISabQ
         0xVvG2ixVUnpcD6gMjcDrXcdfrGifashT1kuehgoVfT17GTnHgM38+zUNI+gobWlkyh0
         5gTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=LaxTiEeChdInyG6zNNG7BsxWEQ3Thc4ruL+acShEF+8=;
        b=n/oDamjhPAap1Q3H46cQy/NbWlxR0e1qWapNMNQTO/qOB2R0PX6fmgOpbtEjpLKGtd
         da8AwcfbpXzVVjieCdT34SFTDkcn5V2zrNonlg6uCU0QsXwMniMy9ghe1Syg7QdXAjnD
         F+qsRPGmE+/HvP/R0GQQsgZbgb18HXKZo128H7OuLzye55MyrmKdoI9tJ3NLm5X6VAr/
         i0CUAseJwPvZtLEnvHC4fJCU5wRUMtJhsvzaKHyFfy5IvLi8oglZwKYsvWNsiLSSWV5M
         RgTNahulsJUvJ/JwjOZD4G2b6zFG1nrrHwHTkQqZlA7rACEEvFDZZFKFVxUoSCIAJOKN
         y6dQ==
X-Gm-Message-State: AOAM533ld36z1lANQISbFEWKSwGTyCYYJq6omka0jcGRqqn+0xs4q1FE
	Te3DZTfVj2MB03JAp3W5c7w=
X-Received: by 2002:a17:906:fcc4:: with SMTP id qx4mr4195008ejb.42.1618503483106;
        Thu, 15 Apr 2021 09:18:03 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id pv21sm2201793ejb.109.2021.04.15.09.18.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Apr 2021 09:18:02 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Mitali Borkar <mitaliborkar810@gmail.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH v4 2/2] staging: media: zoran: add BIT() macro and align code
Date: Thu, 15 Apr 2021 18:18:01 +0200
Message-ID: <1786879.usmzhG7KoZ@linux.local>
In-Reply-To: <alpine.DEB.2.22.394.2104151540360.29064@hadrien>
References: <cover.1618342050.git.mitaliborkar810@gmail.com> <YHg70mRLN5S8mywn@kali> <alpine.DEB.2.22.394.2104151540360.29064@hadrien>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="UTF-8"

On Thursday, April 15, 2021 3:41:23 PM CEST Julia Lawall wrote:
> > > > +#define ZR36057_JMC_JPG_EXP_MODE		(0 << 29)
> > > > +#define ZR36057_JMC_JPG_CMP_MODE		BIT(29)
> > > > +#define ZR36057_JMC_MJPG_EXP_MODE		(2 << 29)
> > > > +#define ZR36057_JMC_MJPG_CMP_MODE		(3 << 29)
> > > 
> > > Same as above. Please change back ZR36057_JMC_JPG_CMP_MODE to be (1
> > > << 29). Then this 2 bit field is consistent.
> > 
> > Sir, I guess this BIT(29) was already present. I didn't changed this.
> > I will change this as you said.
> 
> It comes from this patch:
> 
> 5e195bbddabdd94b15eeb60439cece996d58b329
> 
> Probably putting it back should be a different patch in the series.
> 
> julia
>
Interesting... How do you find out which patch a specific change is in?

Thanks in advance,

Fabio




