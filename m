X-GM-THRID: 6670800416333103104
X-Received: by 2002:a7b:cb54:: with SMTP id v20mr3676633wmj.0.1553269409973;
        Fri, 22 Mar 2019 08:43:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:1f86:: with SMTP id f128ls133647wmf.1.canary-gmail; Fri,
 22 Mar 2019 08:43:29 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwgOynmLkbcyLwGJfoE9uBpvS5IK4DBmXZm3Ff9tHU4+8JDho3wtESB/zYF8K1TPoB5byRl
X-Received: by 2002:a1c:808c:: with SMTP id b134mr3540712wmd.16.1553269408988;
        Fri, 22 Mar 2019 08:43:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553269408; cv=none;
        d=google.com; s=arc-20160816;
        b=ZFo8y4U/HXw7kRFighz1PXmdFeX3Z+ElWwBegK6Lb+TupyneElGVp12NL1OCcSul/R
         jF9S0LWpx810rZPM8cf2pXNsLDwmE0LB/Y/HmzZhfzVwvJ0RaS2wEioCaEzKj9nawB2q
         UDLoKk8s6oklp7ft1gq0S+855AcLrLg6Hfhu4vLGE0XrLUP0EVQCGWIWFOaR/Y2ohi66
         ZDrEEMvtS29O9ExBggDPIxE+iIZa/5Qc05sIUvBfjL2N06y49lmAUdKNX8tSw9+EGAGp
         R2Qeck8U0tidYuFU20wRxWmBoy2X9RQeEuzCkdQb6TgtVodvaDTFIGJejW3BKC+kiuBA
         sVFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=RVZM0J0bCFsbo/tna8wf5vJrFVcN94bfQUABgxDejqE=;
        b=xip5cqw4yLOZDvwXpL+QjBZCWaqVA9mEzQgjZA+SPYhnyYXMZdmpBU9fu1OtJUqxal
         crfOA09sDPniSQo9IipDB9knPu4BoMrkGEhp3Qmi1W5GOXGd47948BBahS2t/vC4mKdo
         PCwwLFHorRizYuc5wDTYY8sGWuo41CkUHK3r5V+rjjhVjceACy+Rb1f12VYcG3ejY0IQ
         YpQNiPJMb8sB4+VoQDTpAwWDFwZDR566yJvMM7CHIdSN6sKsrthcVEI/NuU6Feb4aDxH
         sB+MGXBhCEXCICRvSTp6b1ZcUlCHSmz499m0mzbaxt2Pd2FAJDk8S/zFXm66wt7EwsOn
         HEhw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id a9si417608wrp.5.2019.03.22.08.43.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Mar 2019 08:43:28 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,256,1549926000"; 
   d="scan'208";a="300419484"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Mar 2019 16:43:28 +0100
Date: Fri, 22 Mar 2019 16:43:27 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: sanjana99reddy99@gmail.com
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8188eu: core: rtw_wlan_util.c:
 Modify return type suggested by Coccinelle.
In-Reply-To: <dcd4eaa9-83e8-448e-ac97-00555572ac62@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1903221642390.14339@hadrien>
References: <20190321111222.11964-1-sanjana99reddy99@gmail.com> <20190321190102.GA30770@kroah.com> <dcd4eaa9-83e8-448e-ac97-00555572ac62@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="----=_Part_759_1784165648.1553268429913"

------=_Part_759_1784165648.1553268429913
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: 8BIT



On Fri, 22 Mar 2019, sanjana99reddy99@gmail.com wrote:

>
>
> On Friday, March 22, 2019 at 12:31:06 AM UTC+5:30, gregkh wrote:
>       On Thu, Mar 21, 2019 at 04:42:22PM +0530, Sanjana Sanikommu
>       wrote:
>       > The last two lines in the function could
>       > be compressed into one. Avoid usage of local variable.
>       > Challenge suggested by Coccinelle using ret.cocci.
>       > The below is the script for ret.cocci:
>       > @@
>       > local idexpression res;
>       > expression e;
>       > @@
>       >
>       > -res =
>       > +return
>       > � � �e;
>       > -return res;
>       >
>       > Signed-off-by: Sanjana Sanikommu <sanjana9...@gmail.com>
>       > ---
>       > �drivers/staging/rtl8188eu/core/rtw_wlan_util.c | 4 +---
>       > �1 file changed, 1 insertion(+), 3 deletions(-)
>       >
>       > diff --git a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
>       b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
>       > index 4480deef95a1..70776f8e19a6 100644
>       > --- a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
>       > +++ b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
>       > @@ -1182,10 +1182,8 @@ unsigned int update_MSC_rate(struct
>       ieee80211_ht_cap *pHT_caps)
>       > �{
>       > ���������unsigned int mask = 0;
>       > �
>       > -��������mask = (pHT_caps->mcs.rx_mask[0] << 12) |
>       > +��������return (pHT_caps->mcs.rx_mask[0] << 12) |
>       > ��������� � � � (pHT_caps->mcs.rx_mask[1] << 20);
>       > -
>       > -��������return mask;
>       > �}
>
>       Did you build this patch?
>
>       Just looking at it I can see the compiler warning that it will
>       emit...
>
>       Please always test-build your patches, otherwise it just makes
>       people
>       grumpy :)
>
>
> I apologise for what happened regarding this patch. I submitted this patch
> after
> 0 errors, 0 warnings, 0 checks i.e after post commit hooks.
> I would like to know where I went wrong. I will correct them :)

I don't know what is in your post commit hooks.  But the question is about
compilation (make), not checkpatch.

julia

>
> Sanjana�
> ���
>
>       thanks,
>
>       greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/dcd4eaa9-83e8-448e-ac97-
> 00555572ac62%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
------=_Part_759_1784165648.1553268429913--

