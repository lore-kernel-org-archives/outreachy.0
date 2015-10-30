X-GM-THRID: 6211302879745015808
X-Received: by 10.107.7.230 with SMTP id g99mr7659418ioi.17.1446217289219;
        Fri, 30 Oct 2015 08:01:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.104.209 with SMTP id a75ls965796qgf.45.gmail; Fri, 30 Oct
 2015 08:01:28 -0700 (PDT)
X-Received: by 10.31.171.12 with SMTP id u12mr6502297vke.12.1446217287447;
        Fri, 30 Oct 2015 08:01:27 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-io0-x22a.google.com (mail-io0-x22a.google.com. [2607:f8b0:4001:c06::22a])
        by gmr-mx.google.com with ESMTPS id f7si141821igc.0.2015.10.30.08.01.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 08:01:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c06::22a as permitted sender) client-ip=2607:f8b0:4001:c06::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c06::22a as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-io0-x22a.google.com with SMTP id l68so82793087iol.3
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Oct 2015 08:01:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=DSJ1rUw++iFJoXupaxeHcb2VqdBdlzL/JuZq9z0PftA=;
        b=ZdKAdIEMKDjI99KnDaMLEy+G6M03WL4tDhghQDid4+o6Ys1mBYLH8eKpXA3bJLc1h+
         8kpKNPG/h3uGxAJel2Z5FZlfXjen5RZlh/RTau/izQwj3VgnOfewuYRpIFUIOWpmYlaU
         n9AOpOJaD0tRrhTs6QsJ9gtmcXi7qFIlbJGIRw2TLLh5XWXg7U4hhKJXUCGACfL/DpXD
         ar6TG1GRo0qddBtd+31qLIBmo2ynb1psk4xBTciTN/SG7kOqri/Ky0hXGaK/6+UOWYU8
         e+9eFS8ssAWYiLXAJ6m1L3Tmu/b/LTUk/Rw0zbBjNOCx+m3+yLOdmz2E3voeNvmWl9dY
         oULQ==
MIME-Version: 1.0
X-Received: by 10.107.151.195 with SMTP id z186mr12311453iod.8.1446217287289;
 Fri, 30 Oct 2015 08:01:27 -0700 (PDT)
Received: by 10.107.149.205 with HTTP; Fri, 30 Oct 2015 08:01:27 -0700 (PDT)
In-Reply-To: <20151030071517.GB31483@sudip-pc>
References: <cover.1446181130.git.ksenija.stanojevic@gmail.com>
	<59f1545cfe6cadeeb4e23ea099df3dab1ff9e6a3.1446181130.git.ksenija.stanojevic@gmail.com>
	<20151030071517.GB31483@sudip-pc>
Date: Fri, 30 Oct 2015 08:01:27 -0700
Message-ID: <CAL7P5j+v+ovje8fnEMz046CdmDsNKXR+HUETXSYFS20mErzTRg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: comedi: ni_mio_common:
 Fix endian sparse warning
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

HI Sudip,

On Fri, Oct 30, 2015 at 12:15 AM, Sudip Mukherjee
<sudipm.mukherjee@gmail.com> wrote:
> On Thu, Oct 29, 2015 at 10:22:45PM -0700, Ksenija Stanojevic wrote:
>> Data is pointer of type void and can be used to store any type of data.
>> In function ni_ai_munge:
>> barray and array have the same 16 bit offset.
>> blarray and larray have the same 32 bit offset.
>>
>> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
>> ---
>
> Yes, it introduces build warning. You will have to do the change in such
> a way that it does not introduce any new warnings.

My idea was to place declaration of buf and barray within #ifdef PCIDMA
but in that case I have a new warning:
warning: ISO C90 forbids mixed declarations and code
[-Wdeclaration-after-statement]
   __le16 buf, *barray = data;
   ^

So, I'm not sure what to do and if it's possible to avoid introducing warnings.

Ksenija

