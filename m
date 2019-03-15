X-GM-THRID: 6668560476445605888
X-Received: by 2002:a0c:c3c1:: with SMTP id p1mr1761805qvi.14.1552655691827;
        Fri, 15 Mar 2019 06:14:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:58c4:: with SMTP id m187ls4029050qkb.7.gmail; Fri, 15
 Mar 2019 06:14:50 -0700 (PDT)
X-Received: by 2002:a37:7604:: with SMTP id r4mr1763857qkc.27.1552655690946;
        Fri, 15 Mar 2019 06:14:50 -0700 (PDT)
Received: by 2002:a37:470d:0:0:0:0:0 with SMTP id u13msqka;
        Fri, 15 Mar 2019 03:28:22 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyBmAy9OOOvQ1vGRGIwTXCgUr9o4oWeTX/GoUNVx3DVwdyjt6ycFz2D01mtVsX5k4wnEcjP
X-Received: by 2002:a1c:7503:: with SMTP id o3mr165392wmc.9.1552645702052;
        Fri, 15 Mar 2019 03:28:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552645702; cv=none;
        d=google.com; s=arc-20160816;
        b=aaV+HRnAovVMHWgdc6SEanbgPBl2+Qpw9VHg6rdtp0HZS5B6xup9MOc5bpBR9DcC+j
         2nNrak7hAPyhdT+AORKVY2xm8a4X2IX+s9fi+sL+PQm04h9zORTu0DCW4zT7juaOJ0Eb
         SNlpxQASwC6NfLIOT03BRkbPhs+qxahqh/79QDm8FNI5ab1LirRPe02FXK1aEr4hkPnf
         dPIgOpRAXCs1gWZiu13cKM4HSh5A8/NIQVOklaGLrnDlCLp9UAMyJgihEKoEqYxUhkP7
         FucXPVnWkdTLElqaNvryQtBa9v2u6u4cFItWdlU6WWVx/9Ztt91XObTWhwfUs45P+NzQ
         rjcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=jY3RwvuIjRre+DSCvtDWFvT9acnwov1r2jvYyuuqvUI=;
        b=hhIswLXNXtmrTlH6gNTMkw481w2TgjmB1N5rBZ0pfbtCyXSJ27GZczdBMIFJSTR9W0
         2esa4mgP2KjZaWajiyrtYYyPqlF+zOAHok7imwibdBmivz2ZlA57uHpG1kjSexfx3EbS
         KR5mRRA/MQemagS2epDxYiKYuweNWv4DJ29qFTKPn2XFdZOqOIi7XtlRQZQ56vF0yr4D
         Kcs00tkOf1n3P2zEjfp6QsilhVovmvcr5L1n+q60N3uR7KEfa04UFi9BMCRci3YuWjJ4
         ncrgqgluGOBTEMNtzabd0M/l9nhozbdD9KHpbZ3PC3+mPrXVrtI3EBvLqtC+LhU6UpHW
         9xyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y192si51413wmd.1.2019.03.15.03.28.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Mar 2019 03:28:22 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,481,1544482800"; 
   d="scan'208";a="299359813"
Received: from amphi-dhcp48.cnam.fr ([163.173.88.48])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Mar 2019 11:28:21 +0100
Date: Fri, 15 Mar 2019 11:28:17 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
cc: gregkh@linuxfoundation.org, sudipm.mukherjee@gmail.com, 
    teddy.wang@siliconmotion.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: Remove unnecessary
 function
In-Reply-To: <20190315102007.26612-1-nishka.dasgupta@yahoo.com>
Message-ID: <alpine.DEB.2.20.1903151127460.10610@hadrien>
References: <20190315102007.26612-1-nishka.dasgupta@yahoo.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 15 Mar 2019, 'Nishka Dasgupta' via outreachy-kernel wrote:

> Remove function sii164ResetChip() as comment above it said "below
> function is not necessary".

I think that this is not the best justification for removing something.
Is the function ever called in the kernel?  If not, it should go.

julia

>
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
> ---
>  drivers/staging/sm750fb/ddk750_sii164.c | 13 -------------
>  drivers/staging/sm750fb/ddk750_sii164.h |  1 -
>  2 files changed, 14 deletions(-)
>
> diff --git a/drivers/staging/sm750fb/ddk750_sii164.c b/drivers/staging/sm750fb/ddk750_sii164.c
> index c8e856c13912..8884ef927893 100644
> --- a/drivers/staging/sm750fb/ddk750_sii164.c
> +++ b/drivers/staging/sm750fb/ddk750_sii164.c
> @@ -237,21 +237,8 @@ long sii164InitChip(unsigned char edge_select,
>  	return -1;
>  }
>
> -/* below sii164 function is not necessary */
> -
>  #ifdef SII164_FULL_FUNCTIONS
>
> -/*
> - *  sii164ResetChip
> - *      This function resets the DVI Controller Chip.
> - */
> -void sii164ResetChip(void)
> -{
> -	/* Power down */
> -	sii164SetPower(0);
> -	sii164SetPower(1);
> -}
> -
>  /*
>   * sii164GetChipString
>   *      This function returns a char string name of the current DVI Controller chip.
> diff --git a/drivers/staging/sm750fb/ddk750_sii164.h b/drivers/staging/sm750fb/ddk750_sii164.h
> index 862e7bf27353..1f7b5f9c1885 100644
> --- a/drivers/staging/sm750fb/ddk750_sii164.h
> +++ b/drivers/staging/sm750fb/ddk750_sii164.h
> @@ -28,7 +28,6 @@ unsigned short sii164GetVendorID(void);
>  unsigned short sii164GetDeviceID(void);
>
>  #ifdef SII164_FULL_FUNCTIONS
> -void sii164ResetChip(void);
>  char *sii164GetChipString(void);
>  void sii164SetPower(unsigned char powerUp);
>  void sii164EnableHotPlugDetection(unsigned char enableHotPlug);
> --
> 2.19.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190315102007.26612-1-nishka.dasgupta%40yahoo.com.
> For more options, visit https://groups.google.com/d/optout.
>

