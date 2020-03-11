X-GM-THRID: 6802949681377705984
X-Received: by 2002:a7b:cb17:: with SMTP id u23mr544165wmj.12.1583958403952;
        Wed, 11 Mar 2020 13:26:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:a98b:: with SMTP id s133ls991909wme.3.gmail; Wed, 11 Mar
 2020 13:26:42 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuc8PLNEGwnKAVKgYWpWlA+0Ece4NFStsjE8MmN9RsaR7LZA5f5S8aqc7DCzs0F9yzI926f
X-Received: by 2002:a1c:7f86:: with SMTP id a128mr477174wmd.185.1583958402504;
        Wed, 11 Mar 2020 13:26:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583958402; cv=none;
        d=google.com; s=arc-20160816;
        b=kLbrZZF05qc6KGnOYZvM29zyV7CQsGIPUTIL/k0GQF/Nzupa8gaYHIA3/BDPkAIDh7
         HLWGpjATCPYxATb0TntC9R3MYb/2hMppdeLwu8CAMktaScG0zMcJz+pZ4v3gBcuQlf8E
         3CvmNP0SKKq7Q8bBdZ8p1wdakyj7wqYx4nteAvsggdIA+U6szuyMENS/b6EJEtjRNwFS
         umMNQX59CWqvJXOvb/Rsj8nT75TEuTIHKNj5+mK0qZVHQWfPTf6/wWlqaC6/RNYx1wwD
         6xpudvlILilI9A+axCvdy9eHTFEwNRq+BrpnQFKRcNTBERHuKlDLg0KWHkiAagO7rNL5
         VTkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=mSCMhPajF6uOXBODMYxInmmi1XqEHAU6GKYZjmS9sYc=;
        b=w92iC2zPKufLb2H2SWiBG5cXyfRcvNt3gD/LYXk4N//qNibJ0YAsUMOYkYsqYiAWsl
         AoXOGWrKaZNKb7GbkOh4l6tlvS7ae/3V810zt2dRKb2PJAixBHnXdsytQ7+WTs65fcM8
         JUTXBh//2cqwPgVYzoQiYgGqeWt858C9yVL0fnYOkTBdfryU/nSbbpssuTCbMAJ8thmO
         2+rkU36B97DUq7IWzRTlC+sQpHiT/Bv2NP6SHwxjTZ5CZX2ffyGU2E0FnOSwerEwX/MZ
         8ZHLx5+qpmRPxcQmQUHh86TDm5hqhFBNposQ8fK6Cd1Qfnm37oyWEFwOBaucW8/PAChn
         M/Bw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l17si198509wmg.0.2020.03.11.13.26.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2020 13:26:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,542,1574118000"; 
   d="scan'208";a="439903000"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Mar 2020 21:26:42 +0100
Date: Wed, 11 Mar 2020 21:26:42 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Deepak Varma <mh12gx2825@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723bs: rtw_mlme: Remove
 unnecessary conditions
In-Reply-To: <92b5d69a-d4e6-480d-82ef-3a01b893fbd0@googlegroups.com>
Message-ID: <alpine.DEB.2.21.2003112125030.6093@hadrien>
References: <20200311135859.5626-1-shreeya.patel23498@gmail.com> <92b5d69a-d4e6-480d-82ef-3a01b893fbd0@googlegroups.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1587113772-1583958402=:6093"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1587113772-1583958402=:6093
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Wed, 11 Mar 2020, Deepak Varma wrote:

>
>
> On Wednesday, 11 March 2020 19:29:13 UTC+5:30, Shreeya Patel wrote:
>       Remove unnecessary if and else conditions since both are leading
>       to the
>       initialization of "phtpriv->ampdu_enable" with the same value.
>
>       Signed-off-by: Shreeya Patel <shreeya....@gmail.com>
>       ---
>        drivers/staging/rtl8723bs/core/rtw_mlme.c | 10 +++-------
>        1 file changed, 3 insertions(+), 7 deletions(-)
>
>       diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c
>       b/drivers/staging/rtl8723bs/core/rtw_mlme.c
>       index 71fcb466019a..48e9faf27321 100644
>       --- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
>       +++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
>       @@ -2772,13 +2772,9 @@ void rtw_update_ht_cap(struct adapter
>       *padapter, u8 *pie, uint ie_len, u8 channe
>        
>                /* maybe needs check if ap supports rx ampdu. */
>                if (!(phtpriv->ampdu_enable) &&
>       pregistrypriv->ampdu_enable == 1) {
>       -                if (pregistrypriv->wifi_spec == 1) {
>       -                        /* remove this part because testbed AP
>       should disable RX AMPDU */
>       -                        /* phtpriv->ampdu_enable = false; */
>       -                        phtpriv->ampdu_enable = true;
>       -                } else {
>       -                        phtpriv->ampdu_enable = true;
>       -                }
>       +                /* remove this part because testbed AP should
>       disable RX AMPDU */
>       +                /* phtpriv->ampdu_enable = false; */
>       +                phtpriv->ampdu_enable = true;
>                } else if (pregistrypriv->ampdu_enable == 2) {
>                        /* remove this part because testbed AP should
>       disable RX AMPDU */
>                        /* phtpriv->ampdu_enable = true; */
>       --
>       2.17.1
>
>  Juia, can you comment if the 2 commented lines [with '+' sign now] may also
> be removed to further simplify the code?

I feel uneasy about the whole change, without having more knowledge of the
device.  Someone already suggested that the code should be removed, but it
seems they didn't do it.  Maybe they didn't do it for a reason...

On the other hand, if the "if" is useless, the comments don't seem useful
either, since they applied to only one of the branches.

julia

>
> Deepak.
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/92b5d69a-d4e6-480d-82ef-
> 3a01b893fbd0%40googlegroups.com.
>
>
--8323329-1587113772-1583958402=:6093--

