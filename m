X-GM-THRID: 6254196416995917824
X-Received: by 10.182.120.106 with SMTP id lb10mr34586925obb.24.1456257323297;
        Tue, 23 Feb 2016 11:55:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.29.53 with SMTP id a50ls2269040qga.11.gmail; Tue, 23 Feb
 2016 11:55:22 -0800 (PST)
X-Received: by 10.140.136.135 with SMTP id 129mr6362596qhi.10.1456257322795;
        Tue, 23 Feb 2016 11:55:22 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x233.google.com (mail-qg0-x233.google.com. [2607:f8b0:400d:c04::233])
        by gmr-mx.google.com with ESMTPS id y131si1931548ywc.0.2016.02.23.11.55.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 11:55:22 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::233 as permitted sender) client-ip=2607:f8b0:400d:c04::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::233 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x233.google.com with SMTP id b35so145086125qge.0
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 11:55:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=YDzFlBQ5fPrT7wut0ClZNQ1ewKXXiRC0/fw9o/8xcws=;
        b=VmMV9ffYNg0lErQUv2G0EoTmvpkb3vPNF7Cyfl1TBUbvL5hTtxIzQ5OPimrO6QkiTn
         RWJomg9n8+0mawXvwFbs4KHKV19W8DYmxMtwMyss/wPE5WGrlWBRH/w7monhrfekBdiF
         uJdw+wIufvK1i5NyIcHQPnWrNO6QG1UoudIRqeoHy1Zt8MAzEdl1822PXlBHZbyUIpkD
         MWvxk86SDrUE5qz3t5UJsQYDZ757wJAVRpxfS3HW8UztsNpqN3mH/ClsdrtYyWQSeHDg
         6OTt1/IjREP0Is1MpiAvO3QJbRLT5DegyUWET+rX6HTtzWczMsYDBCugxfrFtmD3dxX+
         ceGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=YDzFlBQ5fPrT7wut0ClZNQ1ewKXXiRC0/fw9o/8xcws=;
        b=E7xTKNfG0kqBHYSzA2oGo20/uj7xX1HZUcTrDnrD7VoqyLMKFAgGqJSsBV3Bo+YsDU
         Ld9jhI4GeE9BHKFFhoqmqjc9ES6/Tw5hxRIcqQWX2aLFjDWghyXZIlOCd+mOozbbGccv
         eSAeqgmHd2/CvSQcH4+3oXbSBa6q+b0PgCESRenoGfizxylK9s2jHQetg2/9pMP6ZwYK
         2hEua+pRdfV41e+GVs0ZiaJBpnJR9XqVAMYjY5GIn+SXhOH/YvkHxRj/Vq19vArslZk7
         P+kS5QsU0bC2kxn1UFRTqvFIJlYYg3cH9duHumuPJSUSwAnmyLtgFwWpmDjrK1/AYtbw
         bq4A==
X-Gm-Message-State: AG10YORFdgK3Q97Y7LVpqRv55gUjtAG3eyiedd/q249olGGhFU4AKswkPPAKfMUa/H9RTLKDP5BLCkTrUQturg==
MIME-Version: 1.0
X-Received: by 10.140.140.6 with SMTP id 6mr44931989qhm.29.1456257322602; Tue,
 23 Feb 2016 11:55:22 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Tue, 23 Feb 2016 11:55:22 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1602232034470.2040@localhost6.localdomain6>
References: <20160222191612.GA31592@amitoj-Inspiron-3542>
	<alpine.DEB.2.02.1602232034470.2040@localhost6.localdomain6>
Date: Wed, 24 Feb 2016 01:25:22 +0530
Message-ID: <CA+5yK5Gr21kxDR_5nwQ2wU2fKx-UjLJke2keCW-rMSwZ3WBM0Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: drivers: Remove use
 of deprecated pci API
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Feb 24, 2016 at 1:07 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
> I don't think that GFP_ATOMIC should always be used.  You need to look at
> the context and see if interrupts are turned off.  This may require some
> interprocedural analyis.  But if there is already a use of GFP_KERNEL in
> the current function, and there is no spin_lock_irqsave or
> spin_unlock_irqrestore between the call to change and the one using
> GFP_KENEL, then it is likely OK to use GFP_KERNEL.
>
> julia
>
This function, rather the whole file doesn't have GFP_KERNEL used
anywhere and there are several instances of spin_lock_irqsave.

Amitoj

