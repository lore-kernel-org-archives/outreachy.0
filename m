X-GM-THRID: 6339053517033963520
X-Received: by 10.129.56.2 with SMTP id f2mr1648355ywa.97.1476363121457;
        Thu, 13 Oct 2016 05:52:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.37.90 with SMTP id j26ls5292275otd.24.gmail; Thu, 13 Oct
 2016 05:52:01 -0700 (PDT)
X-Received: by 10.237.38.231 with SMTP id q94mr1733193qtd.21.1476363121118;
        Thu, 13 Oct 2016 05:52:01 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-vk0-x243.google.com (mail-vk0-x243.google.com. [2607:f8b0:400c:c05::243])
        by gmr-mx.google.com with ESMTPS id p131si2179741vkf.1.2016.10.13.05.52.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Oct 2016 05:52:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) client-ip=2607:f8b0:400c:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x243.google.com with SMTP id 130so994033vkg.2
        for <outreachy-kernel@googlegroups.com>; Thu, 13 Oct 2016 05:52:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=seslI3lfZQXY0+IMAIYe4ntLMVIOEYbEIeWSPpw4oDc=;
        b=XIw1FxLrK43oG6V1z7GgPRVcvEkBJDCHUGq1aIqHJrKKolDEOI4uu6Ap+Bn+Kue/Ao
         SJO0dNz27RTl//B7newVMhyswsEYo3SdboyfkgWgIJDk9zT51tUSuFRSMQuSkIE/2tWJ
         Nu6HNdLocXMXIXZ/qRIPm1bJR4MrX0ggZwAaOgbC7yHee7dGdZ5kFSgtgyPJw3BDwiW8
         VW905HrRhgyqEnaEnUoc748CZqNuiuOolgutERp1DsYe/9rRhVY24Y7GCtp86kQmTPBW
         BJ9hd7eXHL6+S3SlE0v7F1MJBGkoKSO407qI8pht0jspr5DEfrLn4v5/C0v/z9MlNr4H
         HUFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=seslI3lfZQXY0+IMAIYe4ntLMVIOEYbEIeWSPpw4oDc=;
        b=SR/q+WZ5XcodB5OsAoND4nDwCWAfD3KWBC2pfx0eQ3Yb/bvB8tR4fC5bIa5y7PoPmV
         x/DBCD7sVq5N4DWpI2x31F94VFIKmmRTNhlVw7qDuJ1zwJcPvB2Czr7JyXECW4ffdKMv
         TkQsOwf1C0dYWv7R2V/BeE2rsMRPj4GIVrsFo2Ii/1wQ5Lb5bx7bC+YOBsAYsdroMVhn
         iOuh8IWnZ1Upf3/e8h95HZujw1IK0UPbK2S8rAEztQdQBbdjp0Lit62xMrFqXpWzKpEJ
         QRllOaXsGvIKMwCl7WQmvgHzbnjTi+55RYW1v9LBjUHDzzWbfDLQSCm8qDUGphX7/shR
         SDVg==
X-Gm-Message-State: AA6/9RnKKnGA5Ix9KF5mRQ7xk2QRHCJLYZUcG8BVIL7TpvBnCfqZMC1SxRQdltMj+s5ecOGQYNlfnhRogTeb0g==
X-Received: by 10.31.1.212 with SMTP id 203mr3574413vkb.99.1476363120874; Thu,
 13 Oct 2016 05:52:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.31.108.84 with HTTP; Thu, 13 Oct 2016 05:52:00 -0700 (PDT)
In-Reply-To: <a2bc99d4-a161-429c-a7d6-4e9ba3a8b33b@googlegroups.com>
References: <20161008112506.GA12694@euri> <alpine.DEB.2.10.1610081940270.3259@hadrien>
 <a1961e47-6b73-4943-aac5-f2b5593bfc32@googlegroups.com> <d15336f4-5027-4b19-b3fd-52f4fac150c0@googlegroups.com>
 <alpine.DEB.2.10.1610091553500.5891@hadrien> <fd933dbe-c8ef-4f38-ae1c-7f75a8bab6c7@googlegroups.com>
 <alpine.DEB.2.10.1610112221080.3192@hadrien> <5a2e45cf-903e-41c4-91d8-37d45aea9ce7@googlegroups.com>
 <alpine.DEB.2.10.1610120710390.3282@hadrien> <21e853d5-b5bb-4b00-b1b5-7ec1a38145f6@googlegroups.com>
 <alpine.DEB.2.10.1610131418560.3086@hadrien> <a2bc99d4-a161-429c-a7d6-4e9ba3a8b33b@googlegroups.com>
From: Vaishali Thakkar <vthakkar1994@gmail.com>
Date: Thu, 13 Oct 2016 18:22:00 +0530
Message-ID: <CAK-LDbKjk7cshDw+o2=DhRnpkK8rBeT=xBrLc7-uiRAXgG28-g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6655: Replace BBvClearFOE
 by bbvclearfoe
To: Varsha Rao <rvarsha016@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, forest@alittletooquiet.net, 
	Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 13, 2016 at 6:07 PM, Varsha Rao <rvarsha016@gmail.com> wrote:
>
>> I think this is what you sent before, and that the macro is never used?
>
>
>      Yes, this is the same.
>>
>>
>> I have the impression that what you did wrong is to just remove
>> BBvClearFOE(dwIoBase) and not the entire macro definition (both lines).
>>
>
>      I made a mistake there but my question remains the same like how to
> find in what file a macro is stored if it cannot be found by grep or gcc -dN
> -E?

What Julia is trying to say, is you are supposed to remove the whole definition,
not just a single line. Which means that you need to remove these 2 lines
[which is the Macro definition] :

#define bbvclearfoe(dwIoBase)                                \
         BBbWriteEmbedded(dwIoBase, 0xB1, 0)

This can be easily seen by git grep. But Git grep shows just the first
line of the
definition. If this is the 2nd time you are sending a patch for the same issue
then the patch should come out as a v2.

Also, I think there are some other macro(s) in the same file which are not used.
They should go away as well.

On a side note, you are supposed to send the replies of mails in a
plain text as well.

> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/a2bc99d4-a161-429c-a7d6-4e9ba3a8b33b%40googlegroups.com.
>
> For more options, visit https://groups.google.com/d/optout.



-- 
Vaishali
http://vaishalithakkar.in/

