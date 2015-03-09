X-GM-THRID: 7260793208832
X-Received: by 10.112.35.135 with SMTP id h7mr3869055lbj.23.1425906657446;
        Mon, 09 Mar 2015 06:10:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.20.19 with SMTP id j19ls539679wie.19.gmail; Mon, 09 Mar
 2015 06:10:57 -0700 (PDT)
X-Received: by 10.194.63.208 with SMTP id i16mr3941747wjs.2.1425906657104;
        Mon, 09 Mar 2015 06:10:57 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-we0-x22e.google.com (mail-we0-x22e.google.com. [2a00:1450:400c:c03::22e])
        by gmr-mx.google.com with ESMTPS id o3si802177wib.2.2015.03.09.06.10.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2015 06:10:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c03::22e as permitted sender) client-ip=2a00:1450:400c:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c03::22e as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22e.google.com with SMTP id q59so17503201wes.9
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2015 06:10:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=T3808QNIcQv7E/VwPpfba17lvsyyUVYSr4ncXgs99fo=;
        b=k83Ffm6wF08UywucmbR9SO2PY4aJE1Bt3A0HTSkq2tgs5STQlh3RLjEnzrml7S3tHM
         5o7i5YgKCnzZQ45/TS+rDmq5Z3Ul6D3SNZPoUhKTcaqYHT5ZXPXeifIaR2TmuYNJFfUf
         WF7ylwb7lWNqxddoTzq1CiZhKDSlYDn5WgCGClwZ5AX98QyT5lq7MaKfbtOvAqKbdo2o
         uFA8F5sFTWLjBixF0CY10yqRqirOPfrhFmo737BgOK7iymxcrldS9nz1l6uIEu2upiF/
         BNCom7S/dx4F//PqKEEa63ikw5O7vk1XWTLNki9aeQIcCkSgroF/b/VYuVO3RzhC4MFY
         fgDQ==
MIME-Version: 1.0
X-Received: by 10.180.91.111 with SMTP id cd15mr14596551wib.75.1425906657010;
 Mon, 09 Mar 2015 06:10:57 -0700 (PDT)
Received: by 10.28.3.68 with HTTP; Mon, 9 Mar 2015 06:10:56 -0700 (PDT)
In-Reply-To: <1425906256-31780-1-git-send-email-ciorneiioana@gmail.com>
References: <1425906256-31780-1-git-send-email-ciorneiioana@gmail.com>
Date: Mon, 9 Mar 2015 15:10:56 +0200
Message-ID: <CAEnQRZBycngrivXv9jMQdVji7Lpf9gnAgBaQVmgjn0kRFPQw2Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] drivers: staging: rtl8188eu: core:
 rtw_security: Misspelled word
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Mon, Mar 9, 2015 at 3:04 PM, Ioana Ciornei <ciorneiioana@gmail.com> wrote:
> This patch fixes the checkpatch.pl warning:
>
> WARNING: 'halfs' may be misspelled - perhaps 'halves'?
>
> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>

Hi,

Commit subject should contain a verb :).

In this case:

drivers: staging: rtl8188eu: core: rtw_security: Fix misspelled word

