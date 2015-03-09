X-GM-THRID: 7343575138304
X-Received: by 10.112.142.1 with SMTP id rs1mr2291407lbb.19.1425935286747;
        Mon, 09 Mar 2015 14:08:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.37.194 with SMTP id a2ls327336lak.88.gmail; Mon, 09 Mar
 2015 14:08:05 -0700 (PDT)
X-Received: by 10.112.40.81 with SMTP id v17mr344612lbk.5.1425935285106;
        Mon, 09 Mar 2015 14:08:05 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wg0-x22b.google.com (mail-wg0-x22b.google.com. [2a00:1450:400c:c00::22b])
        by gmr-mx.google.com with ESMTPS id sf8si41925wic.2.2015.03.09.14.08.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2015 14:08:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c00::22b as permitted sender) client-ip=2a00:1450:400c:c00::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c00::22b as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wggy19 with SMTP id y19so11250854wgg.9
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2015 14:08:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=2OE9u6WM9f3LbO0wydTyh/tBkfz7ACtz05ZLRWbTr5Q=;
        b=UPAdwP8rPHpiUo39mqpazUtg0QLC7J9Nqm53AAYc1R7nnQ+zFVg8jMPaTTZee2V2RY
         OnTelBbhZ96fJnDOUlR5SRInkT3LTKTF1S0Aoo0txH1N6bnyty9r8uCNSkcNmnnj1QON
         ZdpedcTDWOb1WafK/wBjkCS70og1xWdue3ZsECFSl6veelIwxcRMsw9n2fyuP3Wn3SN6
         wMOm7fA62QfePs38Gy0Dh213WN0u8lkQhL3HGMEB3E8FPaihEMWbCYdrCo29Z9v/mebT
         3FGyxJG8r6nDCdzpb9UcS5QTmsSie22dYLQbRdWooxvhYNhKfVgIks0VLCN0y5BAf+ia
         v2QQ==
MIME-Version: 1.0
X-Received: by 10.194.6.228 with SMTP id e4mr60781459wja.63.1425935284984;
 Mon, 09 Mar 2015 14:08:04 -0700 (PDT)
Received: by 10.28.3.68 with HTTP; Mon, 9 Mar 2015 14:08:04 -0700 (PDT)
In-Reply-To: <1425935009-17328-1-git-send-email-ciorneiioana@gmail.com>
References: <1425935009-17328-1-git-send-email-ciorneiioana@gmail.com>
Date: Mon, 9 Mar 2015 23:08:04 +0200
Message-ID: <CAEnQRZDHP9rx3+ukO-LeHyLUVnkzRMO6W7eYDcRp8F8UU=dqDw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: i2o_scsi: Fix label indentation
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Mon, Mar 9, 2015 at 11:03 PM, Ioana Ciornei <ciorneiioana@gmail.com> wrote:
> This patch fixes the checkpatch.pl warning:
>
> WARNING: labels should not be indented
>
> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> ---
>  drivers/staging/i2o/i2o_scsi.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/i2o/i2o_scsi.c b/drivers/staging/i2o/i2o_scsi.c
> index 1b11dcb..2ecd706 100644
> --- a/drivers/staging/i2o/i2o_scsi.c
> +++ b/drivers/staging/i2o/i2o_scsi.c
> @@ -680,11 +680,11 @@ static int i2o_scsi_queuecommand_lck(struct scsi_cmnd *SCpnt,
>
>         return 0;
>
> -      nomem:
> +nomem:
>         rc = -ENOMEM;
>         i2o_msg_nop(c, msg);
>
> -      exit:
> +exit:
>         return rc;
>  }

Hi Ioana,

We should avoid making patches for i2o directory since it is scheduled
for removal.

Also check [1] for a list of directories that should be avoided.

thanks,
Daniel.

[1]http://kernelnewbies.org/FirstKernelPatch#head-4fba782a39cd1f78e2ce58b08ed1cb83bf178896

