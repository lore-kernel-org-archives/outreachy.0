X-GM-THRID: 6203759305105080320
X-Received: by 10.66.182.162 with SMTP id ef2mr13259344pac.35.1444428840679;
        Fri, 09 Oct 2015 15:14:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.86.6 with SMTP id o6ls1508394qgd.95.gmail; Fri, 09 Oct
 2015 15:13:58 -0700 (PDT)
X-Received: by 10.140.233.142 with SMTP id e136mr13017247qhc.13.1444428838520;
        Fri, 09 Oct 2015 15:13:58 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x22b.google.com (mail-qg0-x22b.google.com. [2607:f8b0:400d:c04::22b])
        by gmr-mx.google.com with ESMTPS id j22si290701ywg.2.2015.10.09.15.13.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2015 15:13:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22b as permitted sender) client-ip=2607:f8b0:400d:c04::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22b as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qg0-x22b.google.com with SMTP id z77so81057376qge.1
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Oct 2015 15:13:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=RLA5YGaTNBFhvyOb3dM3rX2A89Me4gvK3GhALdpa/mU=;
        b=PciVRwYKm3O7QtMijURh+iChVm8dD2WVQTEIbtXNl+psnKwuiJR1gGBLl+z3n3rX+q
         s+D9cGgxoWihpbhCIyF7YuTsomMI479ixcXlYtdNn8qhm2hBgQCu87s4S7JGy72fFagc
         qLm+JCROB85n2Z+cuiQ3Zvd1dbbIj/8/24J3EJKbUYSOvn4YB8lAeB/pnNEtWH6iAYOp
         rlwAYJQ0Yf2Sv1/IZkUGwM+EP9cDeV/RDNKVr0rxUCMI31vPRcxr6+A6LtAdYx8N89NY
         vgST2qRRO3JMLHD0O8Yj2zjo75w2TEE1JEHlKc5fCdeohq6vsV0dKK5XJg5QeU3f5aR2
         jiFw==
MIME-Version: 1.0
X-Received: by 10.140.128.81 with SMTP id 78mr19523794qha.62.1444428838367;
 Fri, 09 Oct 2015 15:13:58 -0700 (PDT)
Received: by 10.140.21.38 with HTTP; Fri, 9 Oct 2015 15:13:58 -0700 (PDT)
In-Reply-To: <8361732.BvEsE9DUWK@wuerfel>
References: <20151009211427.GA29470@amitoj-Inspiron-3542>
	<8361732.BvEsE9DUWK@wuerfel>
Date: Sat, 10 Oct 2015 03:43:58 +0530
Message-ID: <CA+5yK5EQw3-0MXh-yVbio7ffgmBBkkVYmbhmiGCLN3sXyccv3g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: Replace GFP_ATOMIC
 with GFP_KERNEL
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sat, Oct 10, 2015 at 2:51 AM, Arnd Bergmann <arnd@arndb.de> wrote:
> On Saturday 10 October 2015 02:44:27 Amitoj Kaur Chawla wrote:
>> Replace GFP_ATOMIC with GFP_KERNEL since the function is calling
>> sleeping functions.
>>
>> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
>
> The sentence is missing a few words I think. The fact that the function
> calls other sleeping functions is not the reason for the change, it's
> just an indication that the change is safe. You should still explain
> what the change is good for.

Okay will do. Sending v2.

-- 
Amitoj

