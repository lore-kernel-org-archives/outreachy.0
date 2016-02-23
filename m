X-GM-THRID: 6254479074591244288
X-Received: by 10.140.136.135 with SMTP id 129mr4742098qhi.10.1456234689363;
        Tue, 23 Feb 2016 05:38:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.33.134 with SMTP id j6ls2334122qgj.88.gmail; Tue, 23 Feb
 2016 05:38:08 -0800 (PST)
X-Received: by 10.13.202.79 with SMTP id m76mr31598806ywd.10.1456234688869;
        Tue, 23 Feb 2016 05:38:08 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x233.google.com (mail-qg0-x233.google.com. [2607:f8b0:400d:c04::233])
        by gmr-mx.google.com with ESMTPS id i133si1714016ywe.7.2016.02.23.05.38.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 05:38:08 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::233 as permitted sender) client-ip=2607:f8b0:400d:c04::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::233 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x233.google.com with SMTP id b35so135673460qge.0
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 05:38:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=EKU701DybEDhEdlRhQad9kY8m2NLk9w8aZPp/IypLqU=;
        b=CWEWWJlHZvGK+8X/wfIJD0DaiGGJNQsN/LErs4jqedFsKo7aXMC0fHIJRKEjeTTlrj
         RuHpfO2TCvoQHMYGeA4Eexqi6fsANUlVqDWJ57Vzv+eEQb8wfuy5dq03wnK000VXoidE
         ViEhx6ePoSx1Md+TCiyjY2BL1cT8Qq8JdE+XW6TLWO+kmP2emeQlXeZWmFEXiWtfFhKk
         OIgjoz6OH00Ha64ZnoqrgA8G6X6YVosJfTBtxkEXdmBR/lAff/caeixTcX+YHM+NM0m3
         avephQoldFDKOM5EjhcH6C+eSwJ1IYlFKTZcH6SuBBZBI9QI4QHAQN0Al9PgVML2PKD1
         TzTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=EKU701DybEDhEdlRhQad9kY8m2NLk9w8aZPp/IypLqU=;
        b=Ce92HxSGlHx4lnpvaw7pQQutwE0mXtg+8eiRexxg3lg4RJwS38hRJQngi++i+R2Ea+
         4tM57M1kzHZCGVWc3C5TWXTqOWtIb7KKPqBGk/7IWmQfqcoCGQ8L2npRALGg+Q0gCy33
         KYw8xNuT2w/y3iqzBomyHcUGJYYw2kqe8ncN0iK35+DvwQvCrLzGrQUoBdHNKUJAXfAZ
         scPhGIvksehy7BDFOOQIaXL/fcF0zaDtiXx/EQjIUaVUdxp6+NGRG3vOs9SYhRNIk96W
         6KEfxEso7o3MkrdxUv6Mdr+It4t/xjIrHvRLuKYgYcV1OdUK0Qgfn7IrKStW8BOu5uCe
         jPLQ==
X-Gm-Message-State: AG10YOStTavMnVU2Iqjfe4xWgT43EHiRDwuFb7Go1UROgYTsT8tbPuOwFZm+8fzvetoSI27/rDmoHoEvJR3TpQ==
MIME-Version: 1.0
X-Received: by 10.140.95.117 with SMTP id h108mr41265895qge.65.1456234688654;
 Tue, 23 Feb 2016 05:38:08 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Tue, 23 Feb 2016 05:38:08 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1602231435060.2168@localhost6.localdomain6>
References: <20160223133302.GA3944@amitoj-Inspiron-3542>
	<alpine.DEB.2.02.1602231435060.2168@localhost6.localdomain6>
Date: Tue, 23 Feb 2016 19:08:08 +0530
Message-ID: <CA+5yK5Ey6zJzef7jzbgsUk2TYYZ_+AdJ8Suk7L6PKYGepzwHRw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: libcfs: use swap() in cfs_hash_bd_order()
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 23, 2016 at 7:06 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>>
>>       rc = cfs_hash_bd_compare(bd1, bd2);
>> -     if (rc == 0) {
>> +     if (!rc)
>
> This seems like a completely different issue than the use of swap.
>
> julia
>
I thought it would be okay to clean up the entire if-else block in the
same patch and not just the else condition.

If you prefer me sticking to only the swap cleanup, I'll do that.

Amitoj

