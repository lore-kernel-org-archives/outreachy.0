X-GM-THRID: 6391984177458184192
X-Received: by 10.107.17.163 with SMTP id 35mr825480ior.98.1488290348245;
        Tue, 28 Feb 2017 05:59:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.8.69 with SMTP id 63ls1245388oty.0.gmail; Tue, 28 Feb 2017
 05:59:07 -0800 (PST)
X-Received: by 10.200.53.25 with SMTP id y25mr700662qtb.45.1488290347853;
        Tue, 28 Feb 2017 05:59:07 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-oi0-x22f.google.com (mail-oi0-x22f.google.com. [2607:f8b0:4003:c06::22f])
        by gmr-mx.google.com with ESMTPS id z191si300739itc.0.2017.02.28.05.59.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 05:59:07 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:4003:c06::22f as permitted sender) client-ip=2607:f8b0:4003:c06::22f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:4003:c06::22f as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-oi0-x22f.google.com with SMTP id m124so5993204oig.1
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Feb 2017 05:59:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=ztggcfONyyUEwxAueuiFyYxNicjlnWwb29mYxKg9se0=;
        b=kVeWmG9kWBntoFOcFz+k3aPfTNljPfBl8WON3xamxlEnmj3/hhHCZNXEqiSF0a9IsQ
         NKejZDMNfd4jbj579M9gUrWUa1iHSICIAw4AgrtW6pD28ZYLJ3ZIqCzH14WnrA1bgoBO
         aTPgSpWjRB6eIegbOq9uxCBXBxJJeK8bFuO81d0qbPOWm4/gMfv7+W5RHxMCftxFcez6
         VLpofT9KTE0GBafYaJzKahRITWwX4Y8i9h4kP22xFuUAFh8FuVeBZ0eZ4M6vmkXT7L9D
         NbJNy/f/fB1F6HIHhcoVaIqGpW5jzvBgbBxbskcnX1usynQAEaecUswnBve69eIk969f
         NFOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=ztggcfONyyUEwxAueuiFyYxNicjlnWwb29mYxKg9se0=;
        b=cyTxVkKVy2zFgttSClmEYmflWiHa8fuedMWMJmKrxEYH7S1f9WMNPITHTiD17MauRY
         xsxdcz9I8P3/9tamRC04+FFLAoTD3obS9aM3R2ouYbRnO/0Ld5HOBFIYH9mEF0nllXUQ
         XQ8hqoMfsvImj0XsjYzAwq0lJpzlgkrzUFVhCbHeVwbnK6cxZv2ki8736n8l1BeJdJsF
         CivHLmvygXttAh05oQMmZNWdkymXeoAD+6i0TKl5oZGPyF26AsbC0zRlYFwi+VSy0CP4
         RqXlXuXaKBlsP6CS8wC48IJV7JTXQ1znFeCxzqrIZzIEOsRihxP4UZHwuAIx4+iDhMBf
         VYxw==
X-Gm-Message-State: AMke39l4Khq+6L3X12MUfDuLlSWrKJ/caAqVi7FII9OSgFalhwtc2/V2ZDE7zdNoxIQxHOeaW8ZCfwQFCrpkhg==
X-Received: by 10.202.239.2 with SMTP id n2mr1315892oih.157.1488290347557;
 Tue, 28 Feb 2017 05:59:07 -0800 (PST)
MIME-Version: 1.0
Received: by 10.182.107.100 with HTTP; Tue, 28 Feb 2017 05:59:07 -0800 (PST)
In-Reply-To: <465dc1ff-b520-4ad1-862f-0fa268803f06@googlegroups.com>
References: <97a8b35a-3899-436b-8455-6fdd5d3a6ccd@googlegroups.com> <465dc1ff-b520-4ad1-862f-0fa268803f06@googlegroups.com>
From: Vaishali Thakkar <vthakkar1994@gmail.com>
Date: Tue, 28 Feb 2017 19:29:07 +0530
Message-ID: <CAK-LDbJfpCyW3j3w9e=jGz3w6=oeaAxotA6gB82gYFZ6grfw1A@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: Problem with coccinelle.
To: Varsha Rao <rvarsha016@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 28, 2017 at 7:23 PM, Varsha Rao <rvarsha016@gmail.com> wrote:
>  Hello,
>
>   I tried spatch command again with few other files and it ran successfully.
> (with the same ret.cocci file I sent)
>
>   spatch --sp-file ret.cocci --no-includes
> ~/git/kernels/staging/drivers/staging/sm750fb/ddk750_chip.c > ret.out
>   init_defs_builtins: /usr/lib64/coccinelle/standard.h
>   HANDLING:
> /home/euri/git/kernels/staging/drivers/staging/sm750fb/ddk750_chip.c
>   diff =
>
>    output of ret.out
>
>    ---
> /home/varsha/git/kernels/staging/drivers/staging/sm750fb/ddk750_chip.c
> +++ /tmp/cocci-output-3058-919028-ddk750_chip.c
> @@ -397,13 +397,11 @@ unsigned int sm750_format_pll_reg(struct
>       * register. On returning a 32 bit number, the value can be
>       * applied to any PLL in the calling function.
>       */
> -    reg = PLL_CTRL_POWER |
> +    return PLL_CTRL_POWER |
>  #ifndef VALIDATION_CHIP
>          ((POD << PLL_CTRL_POD_SHIFT) & PLL_CTRL_POD_MASK) |
>  #endif
>          ((OD << PLL_CTRL_OD_SHIFT) & PLL_CTRL_OD_MASK) |
>          ((N << PLL_CTRL_N_SHIFT) & PLL_CTRL_N_MASK) |
>          ((M << PLL_CTRL_M_SHIFT) & PLL_CTRL_M_MASK);
> -
> -    return reg;
>  }
>
>
>    But nothing with dim2_sysfs.c file and even ret.out file is empty. But no
> errors this time.

If there is no parsing error then problem with your coccinelle script seems to
be solved. The file ret.out can be empty if there is no such case
where coccinelle
can apply the rule.

>   spatch --sp-file ret.cocci --no-includes
> ~/git/kernels/staging/drivers/staging/most/hdm-dim2/dim2_sysfs.c  > ret.out
>   init_defs_builtins: /usr/lib64/coccinelle/standard.h
>   HANDLING:
> /home/euri/git/kernels/staging/drivers/staging/most/hdm-dim2/dim2_sysfs.c
>
>   Does coccinelle need driver to be compiled as a module? As hdm_dim2 driver
> is not but sm750fb driver is compiled as a module. Does coccinelle require
> executable file to work?
>
>   Thanks,
>   Varsha
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/465dc1ff-b520-4ad1-862f-0fa268803f06%40googlegroups.com.
>
> For more options, visit https://groups.google.com/d/optout.



-- 
Vaishali
http://vaishalithakkar.in/

