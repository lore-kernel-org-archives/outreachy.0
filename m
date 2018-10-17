X-GM-THRID: 6613205640541110272
X-Received: by 2002:a9d:f64:: with SMTP id 91mr20794387ott.39.1539757420465;
        Tue, 16 Oct 2018 23:23:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:3287:: with SMTP id u7ls13271941otb.4.gmail; Tue, 16 Oct
 2018 23:23:39 -0700 (PDT)
X-Google-Smtp-Source: ACcGV60OcXBlsC04Zx0uSd6oKS5e1VNlQqJniZ+g0+JQtknBxfKVNxmndmPDe+8V5VjtxMe3lELp
X-Received: by 2002:a9d:737:: with SMTP id 52mr19944643ote.11.1539757419763;
        Tue, 16 Oct 2018 23:23:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539757419; cv=none;
        d=google.com; s=arc-20160816;
        b=o/n7mnYA8j+MCC/YRkWphoFPt8qZT/YvtX4dK93c7bx+FF8RjV0oNvF6ULBphDe+Eo
         oOnbfPKzKsn2ZxIGBu4YMBl7Hyl0MbQXYk2VfPWMhVj7EORm96eby+PSOaMgggeNp34q
         cwkNcarqUAcP1fZjrru+nlXE+l6/oPa/rnnt0BzenMFwPe+bEAjzdhomWCPKFdz7ZprU
         QRuW5lR/3OMIWNlzzvG8tQlaAVjtD4z3LoZoxYtuG1QI1oTVl0kNxy3XjJhi4nMCoKjb
         uBywfbH4cBLpSgX4of0jX3MN7UTZ34GCEZJ4l5XZKnvMNkAV2+lslWr259mahpM4rtOC
         xH7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=mwVyP4s+A4FlTtCMHF2ajanPoTZsz+hqNFaCW1GQzjw=;
        b=fFwQjPOxwb/S0D9a65A4Gs7mv9ZLa1Wb7h+8g0b1MYyV1hTTVA9ms/hHnW2UHiPGCL
         eYYpaLohKwC4d2QnSvswzKQQybWl4ACcq8Dkdx8jYqkX9p4feiOX6oANggeDzF5YBhm/
         rtTk7B6Bh5wSievj/8Kz31GdcKTieqEhMZpDoFe68DaMhP8clUAMpdT7j/ruSf6v9CCC
         IdOINSat4CvFSS1soSyYZqLMleRgjT6ViKhkX77+VF3bos9Ngur5LJYf+3t2XJ6ICznO
         gmqjSfoz3sz4IKPXTldAjvDNagWqMHwmuYxK6LORXh+U6tntAM8iDelHTVfWycg2G2WR
         UoqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.108 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa06-07.prod.phx3.secureserver.net (p3plsmtpa06-07.prod.phx3.secureserver.net. [173.201.192.108])
        by gmr-mx.google.com with ESMTPS id u10si661290otc.0.2018.10.16.23.23.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Oct 2018 23:23:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.108 as permitted sender) client-ip=173.201.192.108;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.108 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-wr1-f46.google.com ([209.85.221.46])
	by :SMTPAUTH: with ESMTPSA
	id CfF3gJuW1SKzxCfF4gL1kh; Tue, 16 Oct 2018 23:23:38 -0700
Received: by mail-wr1-f46.google.com with SMTP id q7-v6so335759wrr.8
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Oct 2018 23:23:38 -0700 (PDT)
X-Gm-Message-State: ABuFfohFxGbCbDX9LT/sPQ/eY3U1M9+GsyEJumw6GclYLnaINYsKrIaF
	5kBjJBIEdTX3meRDuNW4T1TI2TjCts/ZdiRmJSk=
X-Received: by 2002:a05:6000:50:: with SMTP id k16mr14332265wrx.103.1539757417544;
 Tue, 16 Oct 2018 23:23:37 -0700 (PDT)
MIME-Version: 1.0
References: <20181017061519.GA3289@k-vBox>
In-Reply-To: <20181017061519.GA3289@k-vBox>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Wed, 17 Oct 2018 11:53:25 +0530
X-Gmail-Original-Message-ID: <CAK-LDbL8ZDj+pFhHbY_VneoS=2tF9vZ6KSHnMPh4dG_ezjfNcA@mail.gmail.com>
Message-ID: <CAK-LDbL8ZDj+pFhHbY_VneoS=2tF9vZ6KSHnMPh4dG_ezjfNcA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: gasket: Remove extra blank line
To: "M. Nakamura" <m.maya.nakamura@gmail.com>
Cc: rspringer@google.com, toddpoynor@google.com, benchan@chromium.org, 
	Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-CMAE-Envelope: MS4wfD4uwOyx2ZBWWKP5wLveJ9vTNPvKV10WCg7/KYcaqRIheaxtxZiHOGmT1b7LH6ozf63jRXeef0cK2Q1KfHyvCKx/iZsUofnAH8ZDaAJOWkKpkBGAceo6
 ncyv+uIiTSWwuW6GcTI52JASdSwDF76kn7go8iRfsK9NZiI8Uk36RoShnPNe1Q621UX6DDkDieKWRewciPvWLaRkPCYDT6GLlj8=

On Wed, Oct 17, 2018 at 11:45 AM Maya Nakamura
<m.maya.nakamura@gmail.com> wrote:
>
> Remove extra blank line. Issue found by checkpatch.pl.
>
> Signed-off-by: Maya Nakamura <m.maya.nakamura@gmail.com>

Reviewed-by: Vaishali Thakkar <vthakkar@vaishalithakkar.in>

> ---
>  drivers/staging/gasket/apex_driver.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/staging/gasket/apex_driver.c b/drivers/staging/gasket/apex_driver.c
> index 3c7a13a4798e..0578bf1ba1e9 100644
> --- a/drivers/staging/gasket/apex_driver.c
> +++ b/drivers/staging/gasket/apex_driver.c
> @@ -225,7 +225,6 @@ static struct gasket_interrupt_desc apex_interrupts[] = {
>         },
>  };
>
> -
>  /* Allows device to enter power save upon driver close(). */
>  static int allow_power_save = 1;
>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181017061519.GA3289%40k-vBox.
> For more options, visit https://groups.google.com/d/optout.

