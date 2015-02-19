X-GM-THRID: 411471708160
X-Received: by 10.152.88.40 with SMTP id bd8mr409887lab.0.1424335533059;
        Thu, 19 Feb 2015 00:45:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.198.231 with SMTP id jf7ls125660lac.92.gmail; Thu, 19 Feb
 2015 00:45:32 -0800 (PST)
X-Received: by 10.112.64.171 with SMTP id p11mr404378lbs.12.1424335532687;
        Thu, 19 Feb 2015 00:45:32 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-wi0-x22e.google.com (mail-wi0-x22e.google.com. [2a00:1450:400c:c05::22e])
        by gmr-mx.google.com with ESMTPS id by11si53322wib.1.2015.02.19.00.45.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 00:45:32 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) client-ip=2a00:1450:400c:c05::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-f174.google.com with SMTP id em10so46438368wid.1
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 00:45:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=sjnptua7qn2UwfeqoAPfGBTg/kfxwb5mL0055e3QGrg=;
        b=IwAIwsdsLRG7uDDGqjQYKy5ahq/WMQhl2gGBeCGmSom2ina/vSGA5jRlx82rg0hloM
         qaFUOwLtV3N4zILlx+UfdQXBDJWEdoQ/8oP6Ui/uUSDLJFYikFyTLmLvdLDLnQ6Kr15h
         LXBWCCUWzIezJ8rJ42MLgPF8x+BmLNdb1588fN69MSe84XXk003UCgvTOKyTO4Fd5bfW
         8zUYjk0dp3vQ4yEC/oT3wWW9LxAoq0ZKGqWUfW41bLcpMjB1/2s7Hc2gm6hAzWWD5h2H
         EbByr4N7dCDSQg2Ut6wzw2CUIEePLFTVB8H1xjHC/vaXofgz9oj/ourLg2/Ys+hPiqj0
         pnQA==
MIME-Version: 1.0
X-Received: by 10.180.85.70 with SMTP id f6mr8149346wiz.22.1424335532577; Thu,
 19 Feb 2015 00:45:32 -0800 (PST)
Received: by 10.194.13.168 with HTTP; Thu, 19 Feb 2015 00:45:32 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1502190822560.2009@localhost6.localdomain6>
References: <20150218195639.GA3189@vaishali-Ideapad-Z570>
	<alpine.DEB.2.02.1502182111570.2248@localhost6.localdomain6>
	<54E503C2.2030009@gmail.com>
	<CAK-LDbKDENPCBRB9Na9xGifkjy0nm9OV1dLJO4Hw1Op+vSvHtA@mail.gmail.com>
	<alpine.DEB.2.02.1502190822560.2009@localhost6.localdomain6>
Date: Thu, 19 Feb 2015 14:15:32 +0530
Message-ID: <CAK-LDbKSHReRPomPARxzp0Ya+-B3AJdO_W8goZ0TDEB5n0T7jw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723au: Use put_unaligned_le16
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Jes Sorensen <jes.sorensen@gmail.com>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Thu, Feb 19, 2015 at 12:54 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> Ok. I will split this patch in 2 patches also. And will make the commit log
>> short and more clear.
>
> Actually, my comment was ambiguous.  I was commenting on the fact that you
> went way over 80 characters.  I think Jes's comment was more that he
> wanted all the English text part of the commit message up at the top,
> where he would see it immediately, not buried after the semantic patch.

Yes. I agree. My line went over 80 characters. Ok. I will keep english part
first in a commit log explaining the change and then semantic patch.


> julia



-- 
Vaishali

