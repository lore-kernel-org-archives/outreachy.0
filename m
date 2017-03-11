X-GM-THRID: 6396276836280565760
X-Received: by 10.25.145.17 with SMTP id t17mr3647320lfd.23.1489250795067;
        Sat, 11 Mar 2017 08:46:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.32.203 with SMTP id g72ls17878lji.0.gmail; Sat, 11 Mar 2017
 08:46:34 -0800 (PST)
X-Received: by 10.46.77.69 with SMTP id a66mr4346612ljb.11.1489250794471;
        Sat, 11 Mar 2017 08:46:34 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-lf0-x244.google.com (mail-lf0-x244.google.com. [2a00:1450:4010:c07::244])
        by gmr-mx.google.com with ESMTPS id b186si243105wme.1.2017.03.11.08.46.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 08:46:34 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) client-ip=2a00:1450:4010:c07::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x244.google.com with SMTP id g70so8899993lfh.3
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 08:46:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=sDFr6g04MZvmjAy6NzHX0zlKlPrcOyvbo27Bm1jLY+0=;
        b=OVvlT7kUffftLRH4Ko5cG1Lov8Dw/xUuhFUvq0lMTzGuzB73PlRmx2vkDL1ShWukRO
         MH6yBwbX0m8E2oD+6Io4SW/LohgweKzWnsOkJqIYlqLWbov1RlhVAGpyuIHkJ9ZkzXAV
         Io3EaIbZHMbaisR/yQL2fPQ72slKIQcBVNpK+HgtvAv2oRtrsyLcWRY4us5jrJK94xVJ
         pnZMyY3q9uX/Eh9pEpPtPJbnRvONSeVAJoGLXcKA0Z/x9FW272zihUG6sswyQCZPbqpU
         oUKw/QOO7ILEm6Xj20Wwi+3iRe8HMOi698uPl/QLLN824SRAHoBeRvgcuRf0SNh6aeEe
         zWMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=sDFr6g04MZvmjAy6NzHX0zlKlPrcOyvbo27Bm1jLY+0=;
        b=qAymXYcWExKUTKBOqxvgyWdaMyb1v8LxkKomm3dC55bGBgi5I46356rC0FqjF362+q
         PMrcuGNyG11pTXMr2rVT/K2z4VLwKK9Pq31LgufSxV7sH8RvlQOOFpWe/92Kr3KPufOV
         PRQUlK1NkLotWCD1y4TKkChLiHDB1fg/sNR5wjwRQDg/CQ7RGogSyjzOkAU3UWolSMa1
         ckNTyitJgkzf3IDjPBNPEmgcqMaUH+0qxC3J1GaBe5kf1X4V8lYfODr6V+KhNHDM72UB
         FBJFQZvnLEK59nQr+9A+SZy+qes8QQzTkkygwgRX2CJm+G1k9HzM+uXbLShKbiGO1aTk
         +7wg==
X-Gm-Message-State: AMke39l36heBW4xsrszanSRMUF5qqs6HPfXlqFmuqOjaS6+Su8Erni02bn35EcJh8dXdaUVUIf89h2AUQ7GoIw==
X-Received: by 10.25.235.77 with SMTP id j74mr6239933lfh.60.1489250794133;
 Sat, 11 Mar 2017 08:46:34 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.15.39 with HTTP; Sat, 11 Mar 2017 08:46:33 -0800 (PST)
In-Reply-To: <alpine.DEB.2.20.1703111725060.3127@hadrien>
References: <20170311162045.GA21103@singhal-Inspiron-5558> <alpine.DEB.2.20.1703111725060.3127@hadrien>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Sat, 11 Mar 2017 22:16:33 +0530
Message-ID: <CALrZqyMFOVzDNWABBP2oTN5q7_H7vABWFb5LBt96teurvNQVVg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192u: Remove typedef phy_ofdm_rx_status_rxsc_sgien_exintfflag
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org, 
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sat, Mar 11, 2017 at 9:56 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sat, 11 Mar 2017, simran singhal wrote:
>
>> Remove typdef phy_ofdm_rx_status_rxsc_sgien_exintfflag and replace its uses
>> in the code.
>>
>> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
>> ---
>>  drivers/staging/rtl8192u/r8192U.h      | 4 ++--
>>  drivers/staging/rtl8192u/r8192U_core.c | 4 ++--
>>  2 files changed, 4 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/staging/rtl8192u/r8192U.h b/drivers/staging/rtl8192u/r8192U.h
>> index a7ba8f3..cd3e922 100644
>> --- a/drivers/staging/rtl8192u/r8192U.h
>> +++ b/drivers/staging/rtl8192u/r8192U.h
>> @@ -793,12 +793,12 @@ typedef struct _phy_cck_rx_status_report_819xusb {
>>  } phy_sts_cck_819xusb_t;
>>
>>
>> -typedef struct _phy_ofdm_rx_status_rxsc_sgien_exintfflag {
>> +struct _phy_ofdm_rx_status_rxsc_sgien_exintfflag {
>
> You should drop the _ at the beginning of the name.  The _ suggests that
> he name is a hidden thing, because one was intended to use the typedef.
> The is not the case any more, so it would be better to drop the _.
>
> The name of the structure seems to be sort of a concatenation of the names
> of the fields.  If you can think of a better name based on how the
> structure is used, that could be good to.
>
Juila, I think changing the name of the structure is not a good idea as other
structures are also given on the basis of concatenation of the names
of the fields.
So, it will break the consistency.

And I will resend this patch with droping "_" at the beginning.


> julia
>
>>       u8                      reserved:4;
>>       u8                      rxsc:2;
>>       u8                      sgi_en:1;
>>       u8                      ex_intf_flag:1;
>> -} phy_ofdm_rx_status_rxsc_sgien_exintfflag;
>> +};
>>
>>  typedef enum _RT_CUSTOMER_ID {
>>       RT_CID_DEFAULT = 0,
>> diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
>> index 13239f4..0d830f6 100644
>> --- a/drivers/staging/rtl8192u/r8192U_core.c
>> +++ b/drivers/staging/rtl8192u/r8192U_core.c
>> @@ -4242,7 +4242,7 @@ static void rtl8192_query_rxphystatus(struct r8192_priv *priv,
>>  {
>>       phy_sts_ofdm_819xusb_t *pofdm_buf;
>>       phy_sts_cck_819xusb_t   *pcck_buf;
>> -     phy_ofdm_rx_status_rxsc_sgien_exintfflag *prxsc;
>> +     struct _phy_ofdm_rx_status_rxsc_sgien_exintfflag *prxsc;
>>       u8      *prxpkt;
>>       u8      i, max_spatial_stream, tmp_rxsnr, tmp_rxevm, rxsc_sgien_exflg;
>>       s8      rx_pwr[4], rx_pwr_all = 0;
>> @@ -4432,7 +4432,7 @@ static void rtl8192_query_rxphystatus(struct r8192_priv *priv,
>>
>>               /* record rx statistics for debug */
>>               rxsc_sgien_exflg = pofdm_buf->rxsc_sgien_exflg;
>> -             prxsc = (phy_ofdm_rx_status_rxsc_sgien_exintfflag *)
>> +             prxsc = (struct _phy_ofdm_rx_status_rxsc_sgien_exintfflag *)
>>                       &rxsc_sgien_exflg;
>>               if (pdrvinfo->BW)       /* 40M channel */
>>                       priv->stats.received_bwtype[1 + prxsc->rxsc]++;
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170311162045.GA21103%40singhal-Inspiron-5558.
>> For more options, visit https://groups.google.com/d/optout.
>>

