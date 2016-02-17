X-GM-THRID: 6252116177284235264
X-Received: by 10.66.163.4 with SMTP id ye4mr1326414pab.23.1455715086197;
        Wed, 17 Feb 2016 05:18:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.104.74 with SMTP id z68ls3832014qge.36.gmail; Wed, 17 Feb
 2016 05:18:05 -0800 (PST)
X-Received: by 10.13.192.134 with SMTP id b128mr1318038ywd.43.1455715085619;
        Wed, 17 Feb 2016 05:18:05 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x232.google.com (mail-qg0-x232.google.com. [2607:f8b0:400d:c04::232])
        by gmr-mx.google.com with ESMTPS id v197si62902ywa.1.2016.02.17.05.18.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 05:18:05 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::232 as permitted sender) client-ip=2607:f8b0:400d:c04::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::232 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x232.google.com with SMTP id b35so11063358qge.0
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Feb 2016 05:18:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=0hXs/WHPFqIAs5RSQ/ShAS/x3asjI7cHDeV4OwtrXP8=;
        b=lwj4pQAUn+LgCi2uiQVnF5oytsk6d5SMYiynagKrfSub+f2SBTHwJGJt078ae4r5zw
         fG7J6YGWdiuydLxRS2ImF992Rb6hQyd7V99+ohXM+0Z2KaCcIbnZSfTlkrg2jlcQKs9Q
         2n3FIbWBvZRpRzkhEesfHLzzdDcK04v+XX43dttwK0NQyaglBy5EMcyjdzG+ESWjZbID
         HqMCN1zijg2U6QGifRSn24RuECVrAywGRySCL+PNJENyS4s6LYjMeSqvUPw9hcZpn74+
         nRInU6BZkLEQzltCwSHL8bK7e+r+Zj0ILc3R3QyGZ3EzQCeshAucbkac/LDt45HVb3PE
         O43A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=0hXs/WHPFqIAs5RSQ/ShAS/x3asjI7cHDeV4OwtrXP8=;
        b=DSlrljik77Y0QQYjx0eHRTZfnfdUrCCrrC/FgC+aPmrXWuQSaHpSaWWq+noPXhBtSb
         G1DYtM/szsAtU1HEGSZfRKvVdgyOSnSHPHZLpgaI1Mkc/Suur35ToU/hwEn+Vv9FcFMe
         LC99AKVYOzrCyVl5c6coVSqEhwXEwAvEvRpFK3LWXU1yFo9ZJszrym6nUVZ7U6Y/9YWw
         pzB32RDeJm14nH7caLPOLlgBIVACYdxK+BEFRmn7zJztHy2B8eZzSiSdQdniCgfoPkOx
         zLPCHlcaPwITC/RDMmmV5zcIhiAd7J/wYNBMkQOxtgBE0Uo4UMeTPsF2ezKsbuCZ3I7G
         B2TQ==
X-Gm-Message-State: AG10YOSeMZgI3QKNRlRKYlcNWtkoicnLVIOYQX36j05ir2068jcjH6n5I0xFI+muY01vJYWvQJfZjIMXfpoUWA==
MIME-Version: 1.0
X-Received: by 10.140.93.166 with SMTP id d35mr1708431qge.29.1455715085465;
 Wed, 17 Feb 2016 05:18:05 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Wed, 17 Feb 2016 05:18:05 -0800 (PST)
In-Reply-To: <3731725.Uhb0JIDMJg@wuerfel>
References: <20160217124204.GA30394@amitoj-Inspiron-3542>
	<2870007.s5VBRruket@wuerfel>
	<CA+5yK5GyQ_zqLEVvVLh1YDT2w9Xp6VukA=Bu_CT+conNojXvJQ@mail.gmail.com>
	<3731725.Uhb0JIDMJg@wuerfel>
Date: Wed, 17 Feb 2016 18:48:05 +0530
Message-ID: <CA+5yK5EnWAZbvJxE5pCNGhC9ae15ABNB=coppZayV-x=Nc4iQg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3] staging: wilc1000: Return correct
 error codes
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Feb 17, 2016 at 6:46 PM, Arnd Bergmann <arnd@arndb.de> wrote:

> Yes, I think it's better: The reason for register_netdev failing is
> almost certainly not that the device is not there, so -ENODEV is
> a bit misleading.
>
>         Arnd

Okay. Will redo and send v4.

Thanks for the feedback,

Amitoj

