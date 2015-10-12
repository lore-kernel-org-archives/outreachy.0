X-GM-THRID: 6204754090721804288
X-Received: by 10.180.189.49 with SMTP id gf17mr3212441wic.6.1444675905289;
        Mon, 12 Oct 2015 11:51:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.160.13 with SMTP id j13ls534206lfe.67.gmail; Mon, 12 Oct
 2015 11:51:44 -0700 (PDT)
X-Received: by 10.112.169.34 with SMTP id ab2mr5930845lbc.23.1444675904800;
        Mon, 12 Oct 2015 11:51:44 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x236.google.com (mail-wi0-x236.google.com. [2a00:1450:400c:c05::236])
        by gmr-mx.google.com with ESMTPS id hs5si570554wib.1.2015.10.12.11.51.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 11:51:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) client-ip=2a00:1450:400c:c05::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x236.google.com with SMTP id ge5so161714437wic.0
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Oct 2015 11:51:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=swKI3fhl1s9X902i9XUS4XU96pLZmx0Fs04gaS7VBcs=;
        b=GizDPE1+B4he9cq5y4RU6UnMmh5EqXKNVnlI82j1RY9aBWT49R/qyCf12Wq3gT0qfa
         8S2V8D/Hzkb0c/QgBD6kJ2sIxUGSwv8ksxMqUt9MCJVU7wjjUUK1IQQSA1e7VsFYLXao
         XuO/db98hKnrxwzgMt5bbxf+H6qx7/3aK/RPbi7BFY5SrcabFfzvJKBh1Edum/Arv8HX
         zHtsRUevcIWvSIFoAef1nsaAd52PSNp0hysPTYjW50l7AQfR3Cc8iN3Vt1vlL3vs6Abt
         mMBq5NqNJDPI/Odda9DGuOYsA+K70rc2evDmN3qcEsYNHaO/SH1IG+ZSAOxoe324BOpL
         NEkA==
MIME-Version: 1.0
X-Received: by 10.180.102.230 with SMTP id fr6mr15037968wib.66.1444675904675;
 Mon, 12 Oct 2015 11:51:44 -0700 (PDT)
Received: by 10.27.186.66 with HTTP; Mon, 12 Oct 2015 11:51:44 -0700 (PDT)
In-Reply-To: <31296892.7kyR2l26jl@wuerfel>
References: <cover.1444670615.git.shivanib134@gmail.com>
	<aa140d8daabc374f3cc6bfc12625164e47b37acb.1444670615.git.shivanib134@gmail.com>
	<31296892.7kyR2l26jl@wuerfel>
Date: Tue, 13 Oct 2015 00:21:44 +0530
Message-ID: <CAKHNQQGS3mmm5aDbfuviH2F-5a+GgM4JG0qCwTb3e6xE_t=u2Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 2/3] Staging: wilc1000:
 host_interface: Remove useless cast
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Tue, Oct 13, 2015 at 12:19 AM, Arnd Bergmann <arnd@arndb.de> wrote:
> On Monday 12 October 2015 23:02:53 Shivani Bhardwaj wrote:
>> @@ -573,7 +573,6 @@ static s32 Handle_SetChannel(tstrWILC_WFIDrv *drvHandler,
>>
>>         s32 s32Error = 0;
>>         tstrWID strWID;
>> -       tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)drvHandler;
>>
>>         /*prepare configuration packet*/
>>         strWID.u16WIDid = (u16)WID_CURRENT_CHANNEL;
>>
>
> In the code I'm looking at, the variable is still used, just the cast
> can be removed. I haven't checked the other variables, but I'd guess
> that the same is true for them, because gcc tends to warn otherwise.
>
>         Arnd
>
Yes, Arnd. I've just removed the cast throughout the code. The
variable is still used in the code. Unused code removal is given in
other patch of same series.
Thank you
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/31296892.7kyR2l26jl%40wuerfel.
> For more options, visit https://groups.google.com/d/optout.

