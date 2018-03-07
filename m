X-GM-THRID: 6530108592701308928
X-Received: by 10.25.233.93 with SMTP id g90mr1512389lfh.16.1520412430537;
        Wed, 07 Mar 2018 00:47:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:cf:: with SMTP id 198-v6ls123725lfa.16.gmail; Wed, 07
 Mar 2018 00:47:09 -0800 (PST)
X-Google-Smtp-Source: AG47ELt19Hi5Sva8s60XOcXsnh0OrvZJyPp3kpe8MJ52wepkHon3RTCSx1JlmbZqE229w9FAzpx+
X-Received: by 10.25.199.80 with SMTP id x77mr1581401lff.14.1520412429087;
        Wed, 07 Mar 2018 00:47:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520412429; cv=none;
        d=google.com; s=arc-20160816;
        b=b1RTbUg6cQ/y9BJSoiSws5Gfj3n6x+d/7awXlltnVkOa3rWbswW+zECj2YKTEIhPqM
         6IvN7u6juoX8qhqTHmW+KzrItj8+xcGt2edJ7s+TQQak/pm4F7rfQs8udod4gRRhhnMS
         aZrmVdivhz7e/o/ltzXJTi548cbqpesxJhRGIz+cIcJBn5gQLyHaGMTV0d3zhSiwugX9
         CYChqOoRLL7xVxlEKVaKDzYAWc0BOHPjtk7v57qtiQOwrV4duJVVRIaokYp1K28sfcWa
         okpnhcYaPZxOFoHdGthypG5Nfve5B3KXW/+5ZqNWixWhZ6sS9ex58Xc05nWyUIuyrm1L
         XZmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:arc-authentication-results;
        bh=g1sArqNjCV1BXlg/YNcsxOTL59yWXdscLn+gKqjaH1M=;
        b=ujpoI51IgrGoFkDmuR2C7fJ8B5a1ps5lbn2ecTeMWPWluPo4bfrlfoppKy4pI3grpB
         Gbnh9ZgsAFIw2DpnMZjZ8IX5LU4UA2ZF5f7jYO+Ijab1Py0aWEsRXiFMAhypck7i/oH4
         TGjSiN9WykWLjdMSuJED5rhudPI4Sr/39RvqWZNIs+7z2N2lZ6ifGuzst6t/31CScDXc
         K0a5rV5LCr5BiaWdQeaMRITlNrU2CP+atYskbMaJK8Wc9qwu0rTdtSUGNMgm7qkauHR+
         rkJSbrOn9ixmtWjQ4QIaSuBjly8lThIGH0KTkZlXsgzrw/8beTYpo3PcBs1T1jj2n+QJ
         d44g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 209.85.215.68 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-lf0-f68.google.com (mail-lf0-f68.google.com. [209.85.215.68])
        by gmr-mx.google.com with ESMTPS id s12si686173lje.3.2018.03.07.00.47.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Mar 2018 00:47:08 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 209.85.215.68 as permitted sender) client-ip=209.85.215.68;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 209.85.215.68 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com
Received: by mail-lf0-f68.google.com with SMTP id i80-v6so2047652lfg.5
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Mar 2018 00:47:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=g1sArqNjCV1BXlg/YNcsxOTL59yWXdscLn+gKqjaH1M=;
        b=OBmjVONqWLWy9tShgXTR8RUYZ4X+4Kcbiosq7FN58NnSnD/e5J5dqrKIFYTeZ02rxw
         slsFKtbPgHsvJpUQJiOuz7F2SSifFQmiIfhGkWfhbZxqgWECL1YDEK0M8T3tB4PdCxh6
         RZR02Y6Hy1UdvzCTSrhunLBRxOYjxJbVt9e+mIt8Ql75KKyu98OfHn+HR5MxwBQq/9cB
         ysOlv0P6J5xmm1k4+S28vjSWf3yFsrrEpUuSfJYO6lK0+QQUsIlhehQ2K5baCWn/dNCt
         xgu/wP1KJW7InSfKsJdcPzM18bzLVUcdXyQlHmJwu2lrGb9vjj79WCiO+Pn4vWcSddV3
         ONlQ==
X-Gm-Message-State: AElRT7F4v1wgh+vwrIrIztcX+D5BOU9DOI8r/Xt6OmD7qfRNxTOj7FuJ
	PbXzWQEI01UMqv0THK6EejGCvGRa
X-Received: by 10.25.205.76 with SMTP id d73mr14603866lfg.12.1520412428517;
        Wed, 07 Mar 2018 00:47:08 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-lf0-f54.google.com (mail-lf0-f54.google.com. [209.85.215.54])
        by smtp.gmail.com with ESMTPSA id p9sm3605781lfh.92.2018.03.07.00.47.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Mar 2018 00:47:08 -0800 (PST)
Received: by mail-lf0-f54.google.com with SMTP id 70-v6so2050686lfw.2
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Mar 2018 00:47:08 -0800 (PST)
X-Received: by 10.46.48.10 with SMTP id w10mr14691972ljw.76.1520412428082;
 Wed, 07 Mar 2018 00:47:08 -0800 (PST)
MIME-Version: 1.0
Received: by 10.46.129.212 with HTTP; Wed, 7 Mar 2018 00:47:07 -0800 (PST)
In-Reply-To: <1520409350-61347-1-git-send-email-santhameena13@gmail.com>
References: <1520409350-61347-1-git-send-email-santhameena13@gmail.com>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Wed, 7 Mar 2018 14:17:07 +0530
X-Gmail-Original-Message-ID: <CAK-LDbJFFV5OQkertrmC6HjO_KQoZOm_T+0XNoAx=v-_Zi-enw@mail.gmail.com>
Message-ID: <CAK-LDbJFFV5OQkertrmC6HjO_KQoZOm_T+0XNoAx=v-_Zi-enw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8188eu: fix typo in comment
To: Santha Meena Ramamoorthy <santhameena13@gmail.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, Mar 7, 2018 at 1:25 PM, Santha Meena Ramamoorthy
<santhameena13@gmail.com> wrote:
> Fix typo in the words 'transmitted' and 'failure' in the comment. Issue
> found using checkpatch.
>
> Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>

Reviewed-by: Vaishali Thakkar <vthakkar@vaishalithakkar.in>

> ---
>  drivers/staging/rtl8188eu/core/rtw_mlme.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
> index bf0ccd3..8d49e30 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
> @@ -897,7 +897,7 @@ static struct sta_info *rtw_joinbss_update_stainfo(struct adapter *padapter, str
>                  * Commented by Albert 2012/07/21
>                  * When doing the WPS, the wps_ie_len won't equal to 0
>                  * And the Wi-Fi driver shouldn't allow the data
> -                * packet to be tramsmitted.
> +                * packet to be transmitted.
>                  */
>                 if (padapter->securitypriv.wps_ie_len != 0) {
>                         psta->ieee8021x_blocked = true;
> @@ -1371,7 +1371,7 @@ void _rtw_join_timeout_handler (struct timer_list *t)
>  }
>
>  /*
> - * rtw_scan_timeout_handler - Timeout/Faliure handler for CMD SiteSurvey
> + * rtw_scan_timeout_handler - Timeout/Failure handler for CMD SiteSurvey
>   * @adapter: pointer to struct adapter structure
>   */
>  void rtw_scan_timeout_handler (struct timer_list *t)
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1520409350-61347-1-git-send-email-santhameena13%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

