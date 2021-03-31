X-GM-THRID: 6945912104921595904
X-Received: by 2002:a19:860b:: with SMTP id i11mr3144865lfd.330.1617221846163;
        Wed, 31 Mar 2021 13:17:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8915:: with SMTP id d21ls738556lji.1.gmail; Wed, 31 Mar
 2021 13:17:24 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzBRKCv/RF8tZfcWvTDLpdJAaQoFajc9TKUSOd0m6s86A0M0JfGfSNmjQb3+Z6L9IMhzDP0
X-Received: by 2002:a2e:b011:: with SMTP id y17mr3214080ljk.390.1617221844189;
        Wed, 31 Mar 2021 13:17:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617221844; cv=none;
        d=google.com; s=arc-20160816;
        b=YS9b5+1IltfpwV86iCqLGAkY2F2vh4T2D+N0LASQpv5C8+UBRnuMWUocprcUcU1nxS
         VSYDiN7cFIeZGh2ylGrFYPaft2+4Vn05eIabctP9JQTxQYSgZZHll75b10TNWS7tmXev
         00g95F+5T7kn5L6mtTKCdOuQsxEwR+ITtLMFm1Lk4XU4cPck6TKA1rUI8NfLEpI/rUY/
         SzJXJrffk8bpJuEmItJNz9FztBVMP27HizVRH3nmKRPeCAWZ9FHiTittmyW/ZmuGCnDb
         YcAg+BuNtI2AOaR+pw3CLwTJ7L99ZRvru/qFHRLNytEkw1mvD8T5uNfw9n8akhznIDKI
         zDrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=H2MbmQndHihiX+znB/OI8iOaRJH2xTulbhS1KiZkQyU=;
        b=CX205piZ8r/AXmdFD0XJStrGeBqb7Ui6kxy7H7cvJ/9tE1LyNDCsR2aQyaOazlneM1
         szvAqhu3ZdchP/3yCc+whPvAmLHWFsdigTMqLr8wA9iYHpHMLNdJ+tjaRWUm4+XXCmID
         C6ItshpexrLI/iwAYU0AweFhJYNyGRADouTuDo/fdYnJHea6djV4DMX/oORboQc0pJcD
         MG6Gge+xe3NONbbDAdH/vvosuubKvp2z+BneOwiV+xXacF1vADDbiFI4DVmyc0TNNDem
         MvvUQoX6b+cH3SXeCYM8VdepkDddZcin9cfMRveb+LI/JFA746LFE5SpjDtpsyIWFtYB
         QKZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p18si371488lji.8.2021.03.31.13.17.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Mar 2021 13:17:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3ASC6Gq6Dx/0pOM+TlHei9sceALOonbusQ8zAX?=
 =?us-ascii?q?/mp2TgFYddHdqtC2kJ0gpGLJoRsyeFVlo9CPP6GcXWjRnKQf3aA9NaqvNTOGhE?=
 =?us-ascii?q?KGII1u5oPpwXnBNkTFh4hg/Ih6dawWMrHNJH17l9u/wCTQKadY/PCj8Lq0wdvY?=
 =?us-ascii?q?1WtnVwtwa6pthj0JcTqzN01tWU17AoAkH4CX/cpNq36Yf24LB/7LfEUte8jmi5?=
 =?us-ascii?q?n1mIn9YRgAbiRXlDWmqT+z8rb1H1y5834lMw9n+rsp/WjbnwGR3MzK2c2T8RPE?=
 =?us-ascii?q?0n+W0pI+orTc4+FeD8+BgNV9EFjRozuvDb4OZ5Sy+Bg+quey70s2gMDByi1QR/?=
 =?us-ascii?q?hb2jf6dmWtqRvi3GDboVQTwk6n7XXdvWHuuqXCNVUHIvsEoYpYdxfDgnBQ3+1U?=
 =?us-ascii?q?4eZx03uerIcSJRjdhiiV3amtazha0kC9pWMrkeAVj3E3a/p6VINs?=
X-IronPort-AV: E=Sophos;i="5.81,293,1610406000"; 
   d="scan'208";a="500982150"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 31 Mar 2021 22:17:23 +0200
Date: Wed, 31 Mar 2021 22:17:23 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Deborah Brouwer <deborahbrouwer3563@gmail.com>
cc: gregkh@linuxfoundation.org, ross.schm.dev@gmail.com, marcocesati@gmail.com, 
    fabioaiuto83@gmail.com, dan.carpenter@oracle.com, phil@philpotter.co.uk, 
    amarjargal16@gmail.com, linux-staging@lists.linux.dev, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: rtl8723bs: core: fix
 repeated word warning
In-Reply-To: <14c1a1f1f0a34fb821d47ddab6e7e63800ec2736.1617221075.git.deborahbrouwer3563@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2103312215430.3008@hadrien>
References: <cover.1617221075.git.deborahbrouwer3563@gmail.com> <14c1a1f1f0a34fb821d47ddab6e7e63800ec2736.1617221075.git.deborahbrouwer3563@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 31 Mar 2021, Deborah Brouwer wrote:

> Fix checkpatch warning:
> WARNING: Possible repeated word: 'very'

This is a simple but clear example of how "Fix" doesn't help one
understand the patch.  In reading the log message, one would probably
assume that you removed the repetition, but actually you added a comma.
So it would be better to explain what you did and why.  It's good to
acknowledge checkpatch, but the text of the warning message is not that
useful.

julia

>
> Signed-off-by: Deborah Brouwer <deborahbrouwer3563@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_xmit.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
> index 2daf5c461a4d..3878caf0b56c 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
> @@ -1700,7 +1700,7 @@ Calling context:
>  If we turn on USE_RXTHREAD, then, no need for critical section.
>  Otherwise, we must use _enter/_exit critical to protect free_xmit_queue...
>
> -Must be very very cautious...
> +Must be very, very cautious...
>
>  */
>  struct xmit_frame *rtw_alloc_xmitframe(struct xmit_priv *pxmitpriv)/* _queue *pfree_xmit_queue) */
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/14c1a1f1f0a34fb821d47ddab6e7e63800ec2736.1617221075.git.deborahbrouwer3563%40gmail.com.
>

