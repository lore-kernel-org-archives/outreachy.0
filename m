X-GM-THRID: 6607744026526351360
X-Received: by 2002:a1c:9906:: with SMTP id b6-v6mr1130951wme.1.1538485636766;
        Tue, 02 Oct 2018 06:07:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:a05:: with SMTP id 5-v6ls281285wmk.17.canary-gmail; Tue,
 02 Oct 2018 06:07:15 -0700 (PDT)
X-Google-Smtp-Source: ACcGV6040kLZua3uyzOgdY5zZSZtT6jCXtN1iFazLmCELIBwiolQwYSsYNPAGUllb6RV2tspCMWe
X-Received: by 2002:a1c:7704:: with SMTP id t4-v6mr2092409wmi.3.1538485635851;
        Tue, 02 Oct 2018 06:07:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538485635; cv=none;
        d=google.com; s=arc-20160816;
        b=wT0TEOMnd5BKyZMfbNQ54KBAEhggCCpUT97z4RgoWR69+IUHQoc4Oii0nmIqr1iOFX
         a+HIwxrODSXKa4s230bN9vf1a1Kv2DTcTEdW7lkM4fMy6lUZPXV+CHQd0F64DiT51Rjd
         Ux7DJXGNGWuOCi9pMjfAaZqYp+SWmDnS1/wm4F77Vy5T2MWtwKcsIe0CFAXteA3k62OY
         mPq5kq3dyz1YTd+FQuUCMnrdtynFp1ny9VNYR9RgQE5nJtApgQL6T1y4TEeKtCIKH2jR
         /mUZyAGLDr94iPyr8FRWzAcZDhlbN9Y+jyVekCxg6Z41HMiOvhhPe1cevX7E8mDOxJEW
         iZSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=Z/17S/AmtVG6rHOrswDTB+yeck2Maocsdo9AuNr50QI=;
        b=T8CXu+PtkLvgO+2hUHccMZcXn3JB3Dg0Owqk9+VwQfMjZL9O0XK6CFVUf/dcfYjYHQ
         c2NEZ5Gv9T95mTVdPYI1752ENH7zshFhigMtoD9Db+9tgDFVNVZYhiyoTbi2RgKxUGH1
         TxqAKfxK7Ggwx3+MfHdgqRkJvM11zYC2b++YSAlYv5WNJgw7zsbT4ZtJ3Af/jdL68Z0i
         wIILBuTZniyhwo7u9ZP6Z8ITcaewkJln5LAYQgRuVd2dIh9dfDDMeqtAOLZNZzBqLiwI
         dxjOP+a8YYiE5GgTya66lFQ7+VylBmR4FmRsx5pT7eS6uCFFvB00tvl4cE2zYxKr9kPI
         QMIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id z21-v6si566257wmi.2.2018.10.02.06.07.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Oct 2018 06:07:15 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,332,1534802400"; 
   d="scan'208";a="280674400"
Received: from wifi-inria-87-123.paris.inria.fr (HELO hadrien.local) ([128.93.87.123])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Oct 2018 15:07:15 +0200
Date: Tue, 2 Oct 2018 15:07:14 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Mamta Shukla <mamtashukla555@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rts5208: Replace udelay()
 with usleep_range()
In-Reply-To: <20181002130124.GA27163@armorer>
Message-ID: <alpine.DEB.2.20.1810021505480.3460@hadrien>
References: <20181002130124.GA27163@armorer>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 2 Oct 2018, Mamta Shukla wrote:

>     udelay(unsigned long usec) replaced with usleep_range(unsigned long
>     min, unsigned long max) to prevent trigger by interrupt in specified
>     duration.Also provides better scheduling,power management for drivers.

Thanks for the patch.  A few picky comments.  In English, it is more
readable to put some space after punctuation.  It is also not necessary to
indent the log message.

Also, it would be good to explain how you chose the upper limit.

julia


>
>     Issue found with checkpatch.pl
>
> Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
> ---
>  drivers/staging/rts5208/ms.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rts5208/ms.c b/drivers/staging/rts5208/ms.c
> index f53adf1..6654cdd 100644
> --- a/drivers/staging/rts5208/ms.c
> +++ b/drivers/staging/rts5208/ms.c
> @@ -3245,7 +3245,7 @@ static int ms_write_multiple_pages(struct rtsx_chip *chip, u16 old_blk,
>  			return STATUS_FAIL;
>  		}
>
> -		udelay(30);
> +		usleep_range(30, 60);
>
>  		rtsx_init_cmd(chip);
>
> @@ -4167,7 +4167,7 @@ int mg_set_ICV(struct scsi_cmnd *srb, struct rtsx_chip *chip)
>
>  #ifdef MG_SET_ICV_SLOW
>  	for (i = 0; i < 2; i++) {
> -		udelay(50);
> +		usleep_range(50, 100);
>
>  		rtsx_init_cmd(chip);
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181002130124.GA27163%40armorer.
> For more options, visit https://groups.google.com/d/optout.
>

