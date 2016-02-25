X-GM-THRID: 6255098629488377856
X-Received: by 10.182.27.101 with SMTP id s5mr39543656obg.35.1456384546647;
        Wed, 24 Feb 2016 23:15:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.18.194 with SMTP id 60ls176782qgf.81.gmail; Wed, 24 Feb
 2016 23:15:45 -0800 (PST)
X-Received: by 10.140.101.242 with SMTP id u105mr12711666qge.12.1456384545954;
        Wed, 24 Feb 2016 23:15:45 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x234.google.com (mail-qg0-x234.google.com. [2607:f8b0:400d:c04::234])
        by gmr-mx.google.com with ESMTPS id q187si428543ywf.4.2016.02.24.23.15.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 23:15:45 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::234 as permitted sender) client-ip=2607:f8b0:400d:c04::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::234 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x234.google.com with SMTP id b35so33808986qge.0
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Feb 2016 23:15:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=brxEynUqd5YsZVFx284ClnBtyfyMJBPorSD1CB5lzy8=;
        b=eJksFOYt390fH+TlwRPdN7GIPOG5t3UIMxhDWxoPdq2sAx1T8m/yJXlyxpsOyoZZ5W
         dx6yxkthzqzYPSHwTPl7YaRA3gIsJz4dui34km1bHwa6NOCIVgngAZH4vxehIQVCdCNR
         SwAZVVtiTtjkavww6nj0Fe8s4OwIrVt3odQucMoGx5RempkvZkLa1W36aURqBxyjh9wt
         CTNFuSZQ+cNyIg6H5HQQ9yBqgnY8V29o+b+EXYIdNbOG96XNPPYT+oIsTEiSypFERc3w
         x2i1fsHdkPpdbwVoaXv3C0UGuPHbAEId5RjfftYnujeViIs3ff8zjPUJ/baxJt6/wvA8
         WwIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=brxEynUqd5YsZVFx284ClnBtyfyMJBPorSD1CB5lzy8=;
        b=cFHk4FOx+wO2XRTXi6JlsJ4oK77Td6i0Vo2EX9Sd0qiiwOhA6IBrJeQiAB8TQ713T+
         4rTSxRXK4d+sUYptRqX0b47dJD40es+NMzwqmVqbF1VwU+YmkUQ/xGEA4Rn/P+ZxSKHe
         HvrrwBJF/rYNS5C6+B38p+lomXcQ7VWL2F3RRtj0+bZI1x62wv/jRfwG+qS3Jqqaybr2
         1qfbtFRpilP0hZckTjlJSeFwgJCyIITxX7CIbRCkMlUkAB8azVFbR6AksD1rvLfxrzeg
         xvrCjTlYa+/8xE8hwAZ4Y1y9j3/wYFply6CCXh1C56TRJKD9gLSYjMznGp36OJQZhaFb
         9eQQ==
X-Gm-Message-State: AG10YOSTvlXhlUPVPV78I5aK1NEGyKN5RF74XKQV4EOoYCkCe0zdNUoEhas+YlHibEWck0T2xf0jl8O03vjxig==
MIME-Version: 1.0
X-Received: by 10.140.140.6 with SMTP id 6mr55368344qhm.29.1456384545693; Wed,
 24 Feb 2016 23:15:45 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Wed, 24 Feb 2016 23:15:45 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1602250808410.2048@localhost6.localdomain6>
References: <cover.1456377485.git.amitoj1606@gmail.com>
	<alpine.DEB.2.02.1602250808410.2048@localhost6.localdomain6>
Date: Thu, 25 Feb 2016 12:45:45 +0530
Message-ID: <CA+5yK5H48eiia_r67=o+-Asimo2_eS4otKSEHBmNcdnxbqNTYw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/6] staging: Remove unnecessary *_set_drvdata()
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Thu, Feb 25, 2016 at 12:39 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>> Unnecessary [platform|pci|spi|dev]_set_drvdata() have been removed
>> since the driver core clears the driver data to NULL after device
>> release or on probe failure. There is no need to manually clear the
>> device driver data to NULL.
>
> In principle, your semantic patch should check whether the call is in the
> position of a device release or a probe failure.  In practice though, it
> seems hard to imagine why this code would be in any place other than these
> cases.
>
> julia

Okay, I'll modify the patch, other than that, should I resend the
series with the modified patch?

Or just use the modified one for future cases?

Amitoj

