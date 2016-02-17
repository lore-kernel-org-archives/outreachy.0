X-GM-THRID: 6252116177284235264
X-Received: by 10.13.234.77 with SMTP id t74mr1379949ywe.12.1455715599374;
        Wed, 17 Feb 2016 05:26:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.34.208 with SMTP id l74ls4316595qgl.47.gmail; Wed, 17 Feb
 2016 05:26:38 -0800 (PST)
X-Received: by 10.13.227.133 with SMTP id m127mr1298119ywe.1.1455715598613;
        Wed, 17 Feb 2016 05:26:38 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qk0-x232.google.com (mail-qk0-x232.google.com. [2607:f8b0:400d:c09::232])
        by gmr-mx.google.com with ESMTPS id v197si64242ywa.1.2016.02.17.05.26.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 05:26:38 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::232 as permitted sender) client-ip=2607:f8b0:400d:c09::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::232 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x232.google.com with SMTP id s5so5619383qkd.0
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Feb 2016 05:26:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=cse5u9/ZhLx5198VaulUkc0slhwpPcrI55yulAYE9Lg=;
        b=zGA1nQumCwKZy4VvN1D2/EseVRvtHkqll52sGfV0wdM5HaqgbBRm6g62B+xeUQiTMi
         +u7m/ADHrStNKOHRZ/VQP5/xL5zkA+AZcihadplub24fWrm974iPsYevVZOo9febYFHY
         kqYRbkT0ksXYX43JUti6fa3AAzxl5KiCvm3HRVwj7++bx0P2YuOg/fjYO3map7Lm0COc
         QB7PTl9Pl8takXrBoizSI/Q3HWxU5fWU99Zj6BzZMq+TRdm5aVlmomD342OR3SnrEfVi
         Snb5F95q6mlwZC1G8/ikGBjoxoVGL6m4EW3MHZpxEFOno1cilwT8ZNmxqCYZxgcuLtFp
         zfYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=cse5u9/ZhLx5198VaulUkc0slhwpPcrI55yulAYE9Lg=;
        b=PRD/3rz/yXdOhPOCSKv1+Y0Z/RFH9u4+oB9Ruuy4fPeb4uqkIMVgcqsRIg2aw9WiSs
         0ETPA1qtOAUlVslSVLfxTZ04TDnYgB0Pj/RWQrEmKyD+fzD0591CBDh6bsYkl6m+Jdi1
         czbKGWwkhs2M1t2W7RRgjUwEFy/8zB1M1eGXuUkQAtm4+CmCe6Fi/4yUP+8oIZIYVKnz
         gOZr5UdvuAn1ql8bkuriw5gGcNR0dY/aJMZV/Tsy9zRdOuV0yuS3lZ/7i/d8JfnxivGO
         sJgtikQoZtlqvaewE5tGh2xg+4R+STqk2dAvUssRSjIdGbSr5DNXFzcSi1wDYxbPsOU9
         2lOw==
X-Gm-Message-State: AG10YORApdNXDW62qLZmKVlStGuOY6o3MXKrtfDgg6jlz+PLIN3IqTR3vfnPaALMdgt2n6diSCfzSWJGhBf0rw==
MIME-Version: 1.0
X-Received: by 10.55.198.129 with SMTP id s1mr1815772qkl.18.1455715598456;
 Wed, 17 Feb 2016 05:26:38 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Wed, 17 Feb 2016 05:26:38 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1602170819320.2685@hadrien>
References: <20160217124204.GA30394@amitoj-Inspiron-3542>
	<2870007.s5VBRruket@wuerfel>
	<CA+5yK5GyQ_zqLEVvVLh1YDT2w9Xp6VukA=Bu_CT+conNojXvJQ@mail.gmail.com>
	<3731725.Uhb0JIDMJg@wuerfel>
	<alpine.DEB.2.10.1602170819320.2685@hadrien>
Date: Wed, 17 Feb 2016 18:56:38 +0530
Message-ID: <CA+5yK5E0wBwPVfY3zqC9iQ9HbmyGD9pQKvTsAORC1CO2O2oBHQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3] staging: wilc1000: Return correct
 error codes
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Arnd Bergmann <arnd@arndb.de>, outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Feb 17, 2016 at 6:50 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> Amitoj, you can also write another script to see how many calls propagate
> the error.  You will miss them with the above, because they don't have the
> register_netdev call directly in the if test.  Maybe there are far more
> that propagate than that follow the above pattern.
>
> julia
>
Oh okay will do. I just wrote the above one quickly to find cases. I
can write a better one to check for all possible cases of
register_netdev and what is returned on failure.

Amitoj

