X-GM-THRID: 3510455238656
X-Received: by 10.180.89.194 with SMTP id bq2mr1177419wib.4.1424943915803;
        Thu, 26 Feb 2015 01:45:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.116.9 with SMTP id js9ls12124lab.69.gmail; Thu, 26 Feb
 2015 01:45:15 -0800 (PST)
X-Received: by 10.152.1.5 with SMTP id 5mr1145211lai.4.1424943915287;
        Thu, 26 Feb 2015 01:45:15 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x235.google.com (mail-wi0-x235.google.com. [2a00:1450:400c:c05::235])
        by gmr-mx.google.com with ESMTPS id ta1si1318972wic.1.2015.02.26.01.45.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 01:45:15 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) client-ip=2a00:1450:400c:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-f181.google.com with SMTP id r20so11150069wiv.2
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 01:45:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:in-reply-to:references:date:message-id:subject
         :from:to:cc:content-type;
        bh=6fbabYLbJreztz5UsJA10akBm5GR44Xzjt37vwEjTMQ=;
        b=GgANhgBCjzXGWS/n0vXHmF0MTSTZ8CQ8bL1LQwNdvSTD6K25SdzlfLtaKmk9ikOkhc
         3nnBH57Ukvd3pxDsCyVe1XDXyODsZ06kKG0fm3w25aMu1PPGQ0qLF8mh+lfOnQOEypey
         HeFQBnRvG6rYsCV2xBA0tiVBD/B9IIcc7B3AObef1uEuT3SDRMLp+1JEvfEuQS9lcgzk
         ienb1r4Ax8hVUnchM2fLx0SKacrR1uiCF5k413ofSrhYya36Q/JWEQ/5/AwZX2Pd2egU
         jF8WoHRoe5TZeaPZxz9mLxcNiJg3zOWm9TwKAm+qUNymwmvzi6hVSsfDI9CC+8zAWBjW
         FT5Q==
MIME-Version: 1.0
X-Received: by 10.181.8.103 with SMTP id dj7mr14455840wid.75.1424943915152;
 Thu, 26 Feb 2015 01:45:15 -0800 (PST)
Sender: daniel.baluta@gmail.com
Received: by 10.28.3.68 with HTTP; Thu, 26 Feb 2015 01:45:15 -0800 (PST)
In-Reply-To: <1424905944-7658-1-git-send-email-yeliztaneroglu@gmail.com>
References: <1424905944-7658-1-git-send-email-yeliztaneroglu@gmail.com>
Date: Thu, 26 Feb 2015 11:45:15 +0200
X-Google-Sender-Auth: 97IL6U-_HDo3iT8QXnBSE_wxz58
Message-ID: <CAEnQRZBdkgadE8MwpXLCA6O7xWVxVMnhm9CPHdyBZt3nDgP0HQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: fbtft: Add blank line
From: Daniel Baluta <daniel.baluta@intel.com>
To: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Thu, Feb 26, 2015 at 1:12 AM, Yeliz Taneroglu
<yeliztaneroglu@gmail.com> wrote:
> This patch fixes the checkpatch.pl warning:
> WARNING: "Missing a blank line after declarations"
>
> Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>

Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>

