X-GM-THRID: 6666820090157072384
X-Received: by 2002:a2e:91c4:: with SMTP id u4mr1456358ljg.29.1552241138485;
        Sun, 10 Mar 2019 11:05:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:5b42:: with SMTP id p63ls1684665ljb.0.gmail; Sun, 10 Mar
 2019 11:05:37 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzSLjK16gsP3YVpTpxVIbHgQeDcoxTpKVAaVdDogy74Q8mhTcsmZKWLVgfZTaOOf8VTKhB4
X-Received: by 2002:a2e:290:: with SMTP id y16mr1506080lje.20.1552241137707;
        Sun, 10 Mar 2019 11:05:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552241137; cv=none;
        d=google.com; s=arc-20160816;
        b=NYc66jUJp8OfU6U71C/5rvVxxmE+yHOn1yMiuw6vjgtfts4bF+5ocg3PC/Wv/0mbhF
         xqqLucJytLcxe4VRZTaRCbwut/Li7cBlXakhNMCsRnrTcjPFnDjItvYiF4gau4TtwGpA
         044fcj7IA9AmPq0gDbrM26umG6zLJJ1zgd+H10fFofeCXLfYrQx+4FzasYnCdVXaLD+D
         e2vZmS08OvMrU2w+KGgoUjols5sZggRv7fWA89P2c3CbKb8PU2TLwYbPfi6stofeJa3X
         8zQtXp6uFT9z5QAiYAXoqxK+cGWTrVPLoJnhyB8kbzqzOmpR9wOJXPnJIYKgSmTRtX2V
         Otnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=rBlSqqhQOF9X77mHr/y4f7zOxxV0dzFZGEfwyio5y94=;
        b=sdazsaYCI9gcm5xsmvQlIgf4hTPUZDVq/6Rs8q/FRtFVHxf6PoDmu881DFJDmyIE8Y
         O3enZcfPYxMLKUDnQPchldnphEKyl5B1dEvj/g57l/lqTSx//1RgOJkwocRwrHkjgu2t
         m8r7UQ4T4pHaDO7BNTHQqdeweJpvUVTE67auxPRUVXO88EpwSTEH+reZvnDAwo9XAbOa
         6fSH0KvmIC42Ruf46x7BzJF/k/IPP1ozJvyEC4GFEtd8GT2Emu3Cli4v85BR6V3kdodp
         bVidjg1p/BnO9RmF8HGoq4S5E4fipYFY8kcs0E62GIvo9JYGF0LvW/8X38eYw1BE5h1J
         XX4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id x12si133370ljb.2.2019.03.10.11.05.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Mar 2019 11:05:37 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,465,1544482800"; 
   d="scan'208";a="372705660"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Mar 2019 19:05:37 +0100
Date: Sun, 10 Mar 2019 19:05:36 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH v2 4/5] Staging: rtl8192u: Remove
 typedef for struct _RT_LINK_DETECT_T
In-Reply-To: <20190310174635.16923-5-bhanusreemahesh@gmail.com>
Message-ID: <alpine.DEB.2.21.1903101905140.3131@hadrien>
References: <20190310174635.16923-1-bhanusreemahesh@gmail.com> <20190310174635.16923-5-bhanusreemahesh@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 10 Mar 2019, Bhanusree Pola wrote:

> -Avoid typedefs for structure types to maintain kernel coding style.
> -Remove typedefs RT_LINK_DETECT_T and *PRT_LINK_DETECT_T of struct _RT_LINK_DETECT_T.
> -Change Structure name _RT_LINK_DETECT_T to rt_link_detect to maintain Linux kernel Coding Style.
> -Replace occurences of RT_LINK_DETECT_T to struct rt_link_detect.

I think you could drop the -s

>
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> index 152854fc09f8..6986b51b37c4 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> @@ -1586,7 +1586,7 @@ typedef enum {
>  } country_code_type_t;
>
>  #define RT_MAX_LD_SLOT_NUM	10
> -typedef struct _RT_LINK_DETECT_T {
> +struct rt_link_detect {
>
>  	u32				NumRecvBcnInPeriod;
>  	u32				NumRecvDataInPeriod;
> @@ -1599,7 +1599,7 @@ typedef struct _RT_LINK_DETECT_T {
>  	u32				NumTxOkInPeriod;
>  	u32				NumRxOkInPeriod;
>  	bool				bBusyTraffic;
> -} RT_LINK_DETECT_T, *PRT_LINK_DETECT_T;
> +};
>
>
>  struct ieee80211_device {
> @@ -1876,7 +1876,7 @@ struct ieee80211_device {
>  	bool FwRWRF;
>
>  	//added by amy for AP roaming
> -	RT_LINK_DETECT_T	LinkDetectInfo;
> +	struct rt_link_detect	LinkDetectInfo;
>  	//added by amy for ps
>  	struct rt_power_save_control	PowerSaveControl;
>  //}
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190310174635.16923-5-bhanusreemahesh%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

