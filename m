X-GM-THRID: 6254552091181711360
X-Received: by 10.182.79.134 with SMTP id j6mr33621985obx.4.1456255531753;
        Tue, 23 Feb 2016 11:25:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.103.102 with SMTP id fv6ls971140igb.43.gmail; Tue, 23 Feb
 2016 11:25:31 -0800 (PST)
X-Received: by 10.98.71.209 with SMTP id p78mr33177685pfi.13.1456255531409;
        Tue, 23 Feb 2016 11:25:31 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x236.google.com (mail-qg0-x236.google.com. [2607:f8b0:400d:c04::236])
        by gmr-mx.google.com with ESMTPS id l85si1545069ywb.2.2016.02.23.11.25.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 11:25:31 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::236 as permitted sender) client-ip=2607:f8b0:400d:c04::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::236 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x236.google.com with SMTP id b35so144352441qge.0
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 11:25:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=P1htRLzUsvDUMiVBRmY6+rvACEotWb5pCqgXF/w9Jdo=;
        b=QzUbPYP0gP/v2C53BFk5Qi57h4O23axgb3KqQLFn9aojKdIRPG2CgkEE3gayuanBJT
         C3YwAMGpeENQruAsQcBzc69Fz+pWllLsfOBjI9qp0PPTxstiLd9APm16+alOaiwThMOj
         q69RIi0FJ70mk3soVSGCjUxq3zeOSnOhpSg/QeZ3lSn1XiWXWMNVrGd2/Sb1MZofV9zB
         3K6chTdOeO6sYkfxFLGtcx4aECqIkiFUl0zAVmUjcSRP9K8+JE3FKgMuDZMQYeBGlJq/
         tiUjrtQGTcJlO4e7LToEulPKaZUAaSnLQ3yC7dEbLMSuNA5Ch19TbSc625ntyfDMaCIm
         r/BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=P1htRLzUsvDUMiVBRmY6+rvACEotWb5pCqgXF/w9Jdo=;
        b=VepBIoyHwlrQ28n+9tGoDuXnl99IOXKMR9zwEhsyNEQlpKC1T+nVYXX3KdMAZ+D7Zv
         YWaJlUJPIf2nlH1GR0J0lLOmU6irt8Am3MjMp6+Y2mkddH9GDs5ntB1svP/UZNKzU/Rl
         xIWwiKtpTZYuFRmshf+GzPvmG0OM3jjLR+WDKtiNsxrKnK3TuBRNmHKEL1JgnChOYsNu
         riYWFnPhEmQ9gPfzf2TFtediqAM5vTBi+ZJ0+s1GeQmJ29ETBHgACp9RpCw1Ctsu6BkX
         ZQHolZca+BVkoQUIBFA0OHBRpZ9FssZJQK13wWEmiFMHmdj3cqbZHoF20f+5wQG+NA57
         VLAA==
X-Gm-Message-State: AG10YOSn6IhUvHYT7TMxxEQ1/p2H8ZsqgkgghviWYhrkoE7ePvAdUYh8gB2CbizUU8FtMhFtmrk5cXqdT80oSQ==
MIME-Version: 1.0
X-Received: by 10.140.239.66 with SMTP id k63mr46626491qhc.11.1456255531169;
 Tue, 23 Feb 2016 11:25:31 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Tue, 23 Feb 2016 11:25:31 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1602232021560.2040@localhost6.localdomain6>
References: <20160223181623.GA20782@amitoj-Inspiron-3542>
	<alpine.DEB.2.02.1602231950320.2040@localhost6.localdomain6>
	<CA+5yK5HbDKJoRZYOa0PuJjAOuQt68yVM-=_aGR=C7im=E5Vo3g@mail.gmail.com>
	<alpine.DEB.2.02.1602232000530.2040@localhost6.localdomain6>
	<CA+5yK5FFL0JV8t+XjOh-CsGj2EdngD7e-GKrYN24ZH99bn1KVg@mail.gmail.com>
	<alpine.DEB.2.02.1602232021560.2040@localhost6.localdomain6>
Date: Wed, 24 Feb 2016 00:55:31 +0530
Message-ID: <CA+5yK5F+1_fweJuz7Z1ER3-phvyWZckLpU7vjjwV_zZ+aM4dwA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: adc: Use
 devm_ioremap_resource() instead of of_iomap()
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Feb 24, 2016 at 12:52 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> >
>> > The link for the two patches doesn't work for me.  Do you have the commit
>> > ids?
>> Commit ids c3f0dd38996d5f4e7c681099ba18cc1587155edb and
>> b5f3b75d9d3b5526d973fc0bfee5680bdc6acf2a
>
> OK, thanks.  I don't remember if you had a semantic patch for this.  Maybe
> you could see how often the issue occurs elsewhere in the kernel.
>
> julia

I don't as of now since I just found this after your comments on the
other patch.
I was, indeed, thinking of writing one if this patch is accepted.

Amitoj

