X-GM-THRID: 6254092556531924992
X-Received: by 10.140.181.198 with SMTP id c189mr819qha.24.1456144855207;
        Mon, 22 Feb 2016 04:40:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.28.34 with SMTP id 31ls191825qgy.28.gmail; Mon, 22 Feb
 2016 04:40:54 -0800 (PST)
X-Received: by 10.140.240.129 with SMTP id l123mr22056qhc.8.1456144854574;
        Mon, 22 Feb 2016 04:40:54 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qk0-x233.google.com (mail-qk0-x233.google.com. [2607:f8b0:400d:c09::233])
        by gmr-mx.google.com with ESMTPS id w126si1263566ywe.6.2016.02.22.04.40.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 04:40:54 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::233 as permitted sender) client-ip=2607:f8b0:400d:c09::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::233 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x233.google.com with SMTP id s68so54645018qkh.3
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 04:40:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=CKP3pwPbLBdDfp09l+oSwtGHsgr+pKFdRe4q5MVt4tY=;
        b=bvcs4RmR+CM9PkacSiyAvjJgbLhBP1wsRNjOsqdduNqkMDXA4eF1SrLeP5FOpEKRH2
         6bAQ7zPeOv0X70Et/dqbE8i5K2Ljgh971Rlto7U0M7HJIyD3CqG+3db5WMRbJ8WI3SPz
         1rYnsHify9dp6p4lvTNL8v+hHVks4CkTA/nIJVtGeVCz4VBtjNonC4ld1tocS5MmijxV
         Gp+YU/sSzjudGfubxZqg7TLANuLYPs+AXezdTlR3UcxLQZWtD0ARxjx9qDutVFXx+Ynr
         Al7f+G+SjQQHZ3eSRV1soPRGXJpjWOXNM21QAjAxgi1Wd5lHD5ZOPiJMBqA+XlLhriS2
         hfjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=CKP3pwPbLBdDfp09l+oSwtGHsgr+pKFdRe4q5MVt4tY=;
        b=WnXXK437xu2M2J5AM4WXAq/JAqHbLTyLToL37EzH8+43Z837TjPTFl73QHt1xRZItg
         lUWiP+PTbRFsK2XxdBpa5xI2iNhooUfr7as50aPDN8Ldspg7eUtNOZunu5k0RLTgyq4W
         MSFj6qIEa7Q72ebT77/bPWbn2jG5eFY1BKt98r8OOeQk84ElbvXJYRhVlkU9M0ruwB05
         JY83BvkJf7hZCNZu3/OZCmfqvIFI3d8Trr30Pu6hS/ooasnDO5ma3McAR3rztJbvKO5F
         xM9DXB/ZQO7d31TkrCTaGmC93rJIyprvdRCT5v2TP5ES7v+5NHuMsqw3EWUAQ/Df36pg
         kMNQ==
X-Gm-Message-State: AG10YOQiTx/xB3zhQHTqIdG6O+oa8PnMWpbaX4oS6vtzc9nEdJwHQ9eGjo2rIzfYDCzJ8mNFUSYdpKcYpvh30A==
MIME-Version: 1.0
X-Received: by 10.55.198.129 with SMTP id s1mr33466138qkl.18.1456144854406;
 Mon, 22 Feb 2016 04:40:54 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Mon, 22 Feb 2016 04:40:54 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1602220735470.2532@hadrien>
References: <20160222123259.GA24119@amitoj-Inspiron-3542>
	<alpine.DEB.2.10.1602220735470.2532@hadrien>
Date: Mon, 22 Feb 2016 18:10:54 +0530
Message-ID: <CA+5yK5E1mFFcR6a4BKBa7Rq1UmpRUumiAiy7Wv53TD=Qe+PjdA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: obdclass: Replace
 simple_strtoul with kstrtoul
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Mon, Feb 22, 2016 at 6:06 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>>
>> -     tmp = simple_strtoul(dummy, &end, 0);
>> +     err = kstrtoul(dummy, 0, &tmp);
>
> This doesn't look correct.  end is not being initialized any more.
>
> julia
>
Any other way I should go about it? Or I'll have to drop this?

Amitoj

