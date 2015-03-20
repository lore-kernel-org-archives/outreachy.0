X-GM-THRID: 9114401898496
X-Received: by 10.112.9.65 with SMTP id x1mr13033279lba.16.1426841722437;
        Fri, 20 Mar 2015 01:55:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.9.134 with SMTP id z6ls299633wia.48.canary; Fri, 20 Mar
 2015 01:55:22 -0700 (PDT)
X-Received: by 10.180.211.199 with SMTP id ne7mr406013wic.5.1426841722118;
        Fri, 20 Mar 2015 01:55:22 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id sf8si303799wic.2.2015.03.20.01.55.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Mar 2015 01:55:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x229.google.com with SMTP id dy8so11292116wib.0
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Mar 2015 01:55:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=lGncrdrGpHIEx2VZ/mU3TmDbRBI+j+68ez7w5QBnOJ0=;
        b=UV8TaGAVtgYpZnRr91ohxCCs/XHR5a85ldkLZ1vAdvikVm5y+F1YLA7Iu1kMff0UIN
         0n+R2/gboZbGPswKgfVYnDCftFurXLl20JqIKRCxqv136vdPwc2PLKT/ajcxQjlGDl20
         uYGHFZIRd/RXVg56bwYCh6boCmTgv9w3YtiHD8YrUCdUPs44ay55xyLajU5FlGS6rCWl
         tZt7Crg64DnbtY5KZ3ZZDbSUW8N4iJvzhwDNb+JoK24g5HpcWG5ygCzaTK7rcJshoFi8
         ZXpUv0XbJg4zoqydbQWqGPxtN4OvPVH71cNsDHJxVDHr67y3tOT81FzB38lPbaAzOCJ9
         vTxA==
MIME-Version: 1.0
X-Received: by 10.194.87.100 with SMTP id w4mr154856186wjz.65.1426841722021;
 Fri, 20 Mar 2015 01:55:22 -0700 (PDT)
Received: by 10.28.139.211 with HTTP; Fri, 20 Mar 2015 01:55:21 -0700 (PDT)
In-Reply-To: <1426771356-19448-1-git-send-email-darshanapadmadas@gmail.com>
References: <1426771356-19448-1-git-send-email-darshanapadmadas@gmail.com>
Date: Fri, 20 Mar 2015 10:55:21 +0200
Message-ID: <CAEnQRZDDn=nwGBH1YxCPHjeH4Pn5Jv32J_rKGkNzWTxGdmyryg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: iio: Documentation: Fix
 resource leak in function dump_channels
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Darshana Padmadas <darshanapadmadas@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Thu, Mar 19, 2015 at 3:22 PM, Darshana Padmadas
<darshanapadmadas@gmail.com> wrote:
> This patch fixes the following error reported by cppcheck tool:
> [drivers/staging/iio/Documentation/lsiio.c:59]: (error) Resource leak: dp
>
> The closedir function closes the file descriptor dp which was previously
> opened by calling opendir and eliminated the cppcheck error.
>

This is a nice fix!

lsiio was recently moved from staging to tools/iio. I think it's better to
rebase your patch on top of Jonathan's iio tree [1] (togreg branch).

.. and have this patch merged via linux-iio.

Daniel.

[1] https://git.kernel.org/cgit/linux/kernel/git/jic23/iio.git/

