X-GM-THRID: 6395922242043117568
X-Received: by 10.99.114.70 with SMTP id c6mr9016599pgn.17.1489167342121;
        Fri, 10 Mar 2017 09:35:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.85.151 with SMTP id e145ls58763itb.4.gmail; Fri, 10 Mar
 2017 09:35:41 -0800 (PST)
X-Received: by 10.99.188.2 with SMTP id q2mr9830929pge.36.1489167340967;
        Fri, 10 Mar 2017 09:35:40 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-yw0-x241.google.com (mail-yw0-x241.google.com. [2607:f8b0:4002:c05::241])
        by gmr-mx.google.com with ESMTPS id r198si1386597ywe.4.2017.03.10.09.35.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 09:35:40 -0800 (PST)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::241 as permitted sender) client-ip=2607:f8b0:4002:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::241 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x241.google.com with SMTP id p77so4047510ywg.0
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 09:35:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=zvaxmq8q9ln2HtcBibMilDNlo3RCM/2XgBd986rL9/A=;
        b=dsuYak6Oe40XOLWsiYYTZw3Hv/3p35JKkQaaENCiNVo2eHSJe8edhXF7c/HK35I8+D
         ohdBCtBXfvHXnUvUeBr2IIE6cNO8tRCjuuHPzzXXNGDCy9ZlaqHSGpBr/I5ySxI5MbIn
         R5F5KpwnilRTZReT8y9BXhgjtz+6fH7wxPYTpLnDrwPnOLAKtTBntMu3LgTauFk4Igjj
         fYHtEqch7y2rIyc8l/s2KYJe23P9lxMNsQ6WuEVgtjZF0axWHAUgL24i7GDQku4T7hZj
         RoBUGSsNGbfzrsly0ke/Sq9rgg+xGM4WfcFFcQ35hfs6FsPNVrLGiJDlNLNA/eEPe3SC
         xhcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=zvaxmq8q9ln2HtcBibMilDNlo3RCM/2XgBd986rL9/A=;
        b=o5VAaqmElTToLYyWI6Me4TcGxFQx2CcF0AFe9M+cBI+hAM9haw5/mS1oFpOytMGTrB
         Ru2McguQQEMH053yqmuWtEX35Btu1y2GUyeiDDWVQzSgmDDScJ+su9oH8IZYH9oROSBK
         P0oM8Em6cyjMqEX9nDs7BDNIrZHJS/C101/Qz7URzpLWJzsXAIxhgHCMWOyBClsqmyKr
         5UovMhNXo5mKjse+lxV/hkQH0RdK8b35NsMlZplQ7u6CZKPcdaFezPGKLnnvA48m7wbJ
         CUJSOv44Fxr/UyO313Hewl5B1dQ/EftJsxtyrYyx3d4YpAUBKzVXR2wfYUlCtZ/tnWvJ
         Xq4Q==
X-Gm-Message-State: AMke39nffWQz9TgIQeBFwVoP9G5pitrcgk5bKOTla8YcUETxFrcHzji2y5ffij2krK3VkcwDVlAe/yPDhFXkxQ==
X-Received: by 10.129.123.213 with SMTP id w204mr8641143ywc.267.1489167340672;
 Fri, 10 Mar 2017 09:35:40 -0800 (PST)
MIME-Version: 1.0
Received: by 10.37.173.10 with HTTP; Fri, 10 Mar 2017 09:35:00 -0800 (PST)
In-Reply-To: <alpine.DEB.2.20.1703101826170.3356@hadrien>
References: <CAKG5xWiq5T9fgTpnb2vtCwFv4HrBnyBBtYGTpp1_zUS5k-Gq_g@mail.gmail.com>
 <alpine.DEB.2.20.1703101826170.3356@hadrien>
From: sayli karnik <karniksayli1995@gmail.com>
Date: Fri, 10 Mar 2017 23:05:00 +0530
Message-ID: <CAKG5xWiM9k_5dhtK5_1A=JRatEar3=FuYCpFf9Q81iPszb0A5w@mail.gmail.com>
Subject: Re: [Outreachy kernel] Doubt regarding use of a function
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8

On Fri, Mar 10, 2017 at 10:56 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Fri, 10 Mar 2017, sayli karnik wrote:
>
>> ieee80211 has the following function which to me does nothing-
>> void ieee80211_tkip_null(void)
>> {
>>      printk("============>%s()\n", __func__);

This printk is commented..forgot the '//' before it

>>      return;
>> }
>>
>> Before its function call there is this comment-
>> /* These function were added to load crypte module autoly */
>>          ieee80211_tkip_null();
>>
>> Is this function needed in the driver? If not, can I send in a patch
>> removing it?
>
> Are there any maintainers associated with the file?  They would know
> better.  I can't see that the function is doing anything useful.
>
maintainer.pl just displays Greg.

> julia
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.1703101826170.3356%40hadrien.
> For more options, visit https://groups.google.com/d/optout.

