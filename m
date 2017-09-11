X-GM-THRID: 6463828664038457344
X-Received: by 10.46.23.137 with SMTP id 9mr859257ljx.39.1505149433748;
        Mon, 11 Sep 2017 10:03:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.67.148 with SMTP id z20ls139494lje.0.gmail; Mon, 11 Sep
 2017 10:03:52 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb7THFC/DSiv/Amiuu5fpWhokvGaYAxgxTk2QG2JEnTExjBFnGTdv7mHfrXenZbjmTS/GM95
X-Received: by 10.46.91.21 with SMTP id p21mr456185ljb.24.1505149432366;
        Mon, 11 Sep 2017 10:03:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505149432; cv=none;
        d=google.com; s=arc-20160816;
        b=UMm8T8Eup546hUgso9RKBYfV7i8++KxSD9H/Tx595Bcw8vBhSrdKph6o3MXfFyKcMh
         mRakIKpm7bl/jPm6Eesue75cVJLjmNzJhduUfOjvhePC4HWyufYqrpyhNe/53gzmyHUC
         wmdPHpas2bV1hzbIeY07uf+1KlGu5/P+6bediq2+rfbJPA/cIu9oBXElQDLawGpS93uH
         tuf3rmjtk/UQVMBGaiB/V5Y/6I5Z1E8qpX+DOTt6oOqhbm6xhOmRIYzhGAK0FHkU3vRk
         fSlpunrtLEWEOaxp/64HIfRwCKNXzOxuVZAYVPS0Dwtg+Q0y+n0wvSN2U/0xVVFY+Mdu
         iqVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=95/rwNMBUp/by44RxFEgZlutxwgiZ5BiKZpifvW7dTg=;
        b=Re3O3GDENiBg6aKj7/rWPgKxNxNr703Ieeb48DQgwS2WY7N08z6SzMSgZiPm0HXU/M
         RtO/j8zSKTx7Jbl6XXdFojlM+PFn6CPve/CskKr7y19Mo2xZrg7gR6+BuqMPd6JPhPd4
         gmsxZwK7sZ/ggFRkSnq6Xgq3ZAS9C34behEFVLc/MLmXWFzGLdUrGjc6Ngnn5iIfXgi+
         ZxRZ69sTTab3YksL4a2zGVGySomSoJs6sGRlFY1zAFPPgQzXHSm6/xRRSvLxcAxzHRzr
         wdwMRRCy9nQszaioaBJjChdkgTCaUkauVaR0xzGl7+jpx3p0Sepe1Rt/K6P3IzznT4WT
         gQNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id a21si384544wme.2.2017.09.11.10.03.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 10:03:52 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,378,1500933600"; 
   d="scan'208";a="290550044"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Sep 2017 19:03:51 +0200
Date: Mon, 11 Sep 2017 19:03:21 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Harsha Sharma <harshasharmaiitr@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v2] staging: rtl8723bs: Change
 coding style to (foo *bar)
In-Reply-To: <6da9eaf6-c92b-4781-ad28-0ac41e84e782@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1709111902060.16190@hadrien>
References: <1504977216-12686-1-git-send-email-harshasharmaiitr@gmail.com> <20170911163810.GA3423@kroah.com> <6da9eaf6-c92b-4781-ad28-0ac41e84e782@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="----=_Part_11943_1037857854.1505148281867"

------=_Part_11943_1037857854.1505148281867
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: 8BIT



On Mon, 11 Sep 2017, Harsha Sharma wrote:

>
>
> On Monday, September 11, 2017 at 10:08:13 PM UTC+5:30, gregkh wrote:
>       On Sat, Sep 09, 2017 at 10:43:36PM +0530, Harsha Sharma wrote:
>       > This coding style (foo *bar) is more common for the kernel
>       code.
>       > Change foo* bar to foo *bar.
>       > Change foo * bar to foo *bar.
>       > Change (foo*) to (foo *).
>       >
>       > Signed-off-by: Harsha Sharma <harshash...@gmail.com>
>       > ---
>       > Change in v2:
>       > �-Updated log message and subject
>
>       Does not apply to my tree :(
>
> �
> Do I need to make any changes in this patch ?
> Thanks a lot for your time.

You need to update your staging tree to the latest one, and then try to
reapply your patch to it.  Maybe the change has already been made by
someone else.  Or maybe some line that you have changed has been changed
by someone else.

julia
------=_Part_11943_1037857854.1505148281867--

