X-GM-THRID: 75436654592
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,bead06cd7830e23e
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.80.35 with SMTP id o3mr153183wix.0.1424335411081;
        Thu, 19 Feb 2015 00:43:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.7.208 with SMTP id l16ls118148laa.66.gmail; Thu, 19 Feb
 2015 00:43:29 -0800 (PST)
X-Received: by 10.112.77.101 with SMTP id r5mr420560lbw.4.1424335409643;
        Thu, 19 Feb 2015 00:43:29 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-we0-f171.google.com (mail-we0-f171.google.com. [74.125.82.171])
        by gmr-mx.google.com with ESMTPS id o3si4111603wib.2.2015.02.19.00.43.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 00:43:29 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 74.125.82.171 as permitted sender) client-ip=74.125.82.171;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 74.125.82.171 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-f171.google.com with SMTP id k48so5912868wev.0
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 00:43:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=hyyBXQvrG1WWiG094RtZqRtUucV8N6N8twZqX3tQlBo=;
        b=0tFVEbVc+YjIahFAiyDcD4WYtXnXXKvIWlTA58nTD9g7fEuiRcEF4VzFaVkT062W+T
         g1NOQ/VfNm3LyC3RQbgEiKH0sUJRgWMVWZCLg0+5rbIlVHwus9pOlwbhodurX0tFBUih
         ZpMafAoEyDhgNTaC94IaXaDcsrW3uPfzRD2ddDVDxbJPzUQqEDZEwOvtRgdJNGswifcj
         guymHGkhZkX1Gh9Zc1v4kAwGPaKefOb9vsReClfIZb8NO6vtJpgDW26VV6ruHSGlKFrN
         DJhTtJ2MAqVvt4rhzbQZQzwQMjuhIKX3CO63FrjRcCjha7D+HE9Qhl5oCb+Z61Vc7qKE
         zC0A==
MIME-Version: 1.0
X-Received: by 10.194.77.99 with SMTP id r3mr6635541wjw.149.1424335409536;
 Thu, 19 Feb 2015 00:43:29 -0800 (PST)
Received: by 10.194.13.168 with HTTP; Thu, 19 Feb 2015 00:43:29 -0800 (PST)
In-Reply-To: <8353755.unKOhaQ6P4@wuerfel>
References: <20150217044257.GA3424@vaishali-Ideapad-Z570>
	<54E512AD.4040303@gmail.com>
	<CAK-LDbLMqPrkKyVuu8TX6jx4xXZom7J-R9gvR0Hi+NOBBFJyTw@mail.gmail.com>
	<8353755.unKOhaQ6P4@wuerfel>
Date: Thu, 19 Feb 2015 14:13:29 +0530
Message-ID: <CAK-LDbKy8zE9kz_48Ja8wtX6G+xhDZvr4KxpXnQG9H=tw+L5Zg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Use put_unaligned_le16
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel@googlegroups.com, Jes Sorensen <jes.sorensen@gmail.com>
Content-Type: text/plain; charset=UTF-8

On Thu, Feb 19, 2015 at 1:58 PM, Arnd Bergmann <arnd@arndb.de> wrote:
> On Thursday 19 February 2015 08:35:46 Vaishali Thakkar wrote:
>> On Feb 19, 2015 4:01 AM, "Jes Sorensen" <jes.sorensen@gmail.com> wrote:
>> >
>> > The key is to make the changes in two commits. In general you can post
>> > them as part of a multi-commit patch set if you are fixing something in
>> > a large number of places, or changing an API etc. For more independent
>> > changes like these, posting them individually is preferred.
>> >
>> > I hope this makes more sense.
>>
>> Yes. Ok. I will send this patch as a series of patches. One for
>> put_unaligned_le16 function and other one for removing use of variable.
>
> There are lots of ways for splitting a patch series, and usually doing
> a multiple smaller changes is better than combining them, but there is a
> limit. In this case you have four changes that could be done separately:
>
> a) use put_unaligned_le16 in rtl8188eu
> b) remove tim_bitmap_le variable in rtl8188eu
> c) use put_unaligned_le16 in rtl8723au
> d) remove tim_bitmap_le variable in rtl8723au
>
> What Jes and I were saying is that you should do a) combined with b) as
> one patch, and c) with d) as a second patch, but send them as a series,
> not a) and c) combined as one patch followed by b) and d) as you understood.

Oh. ok. Actually there is one misunderstanding here. I already sent 2 separate
patches. First one combining a) and b) and second one combining c) and d).
But after Jes's comment what I thought that he wants me to send 2 patch-series
with 4 different patches where [ a) and b) ]goes for 1st patch-series
and [c) and d) ]
goes for 2nd patch-series. But thanks for clearing this.

I will send a patch-series[ 2 patches- one patch for rtl8188eu and
second for  rtl8723au]
as you explained.

> There are other times when it makes sense to combine things differently,
> e.g. when you do the exact same one-line change in 50 drivers, you should
> not send 50 patches but rather group them by maintainers and send one
> patch per recipient, or even a large combined patch.
>
>         Arnd



-- 
Vaishali

