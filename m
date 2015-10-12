X-GM-THRID: 6204433488482926592
X-Received: by 10.112.130.41 with SMTP id ob9mr5807885lbb.17.1444669592311;
        Mon, 12 Oct 2015 10:06:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.81.197 with SMTP id c5ls879070wiy.33.canary; Mon, 12 Oct
 2015 10:06:31 -0700 (PDT)
X-Received: by 10.180.9.104 with SMTP id y8mr3123960wia.7.1444669591885;
        Mon, 12 Oct 2015 10:06:31 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id i8si379340wib.1.2015.10.12.10.06.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 10:06:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22d.google.com with SMTP id q12so29435892wie.1
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Oct 2015 10:06:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=E5kIDCYjkJxeRJXuX2V4aDfmkX+FXaPUrvF52KU4Ycs=;
        b=sRWiBXg5c+BLAV3fMaqMcsxa7p0lyb6605mtyhyJRg4PxrpTx09rNP7gDeOwz4FMKt
         YcWjgwJ4FWU79GqzCB8268F8DpCWr4qpjuNIz2tzzC1Wt/68GmE7KdCBh8pY1V0OU0YT
         s8hO1Eoilg0ZCfqIKRCBJm/NHnU7KKIK1dYJt5/nkX3HHzOrU+RX1QwBh37GqOmhWLZa
         Zk+Fxk1tQJyc3EHoiMYoH9tMi28KCLPZy4mAeHhEsODUzH0Nn0tB1mTuP7v7EOAQBZPr
         qx4WdGErgqAGkbJBV9J+YWE/RVGlaRQ91HWXzuaUeJ3LQrTh0olNj/KvJrH3rT4dkXy/
         44FA==
MIME-Version: 1.0
X-Received: by 10.194.236.200 with SMTP id uw8mr30315208wjc.126.1444669591761;
 Mon, 12 Oct 2015 10:06:31 -0700 (PDT)
Received: by 10.194.165.102 with HTTP; Mon, 12 Oct 2015 10:06:31 -0700 (PDT)
In-Reply-To: <b207f5e7ff3d9f88a7093429fe6b8e84cd43c911.1444581984.git.shivanib134@gmail.com>
References: <cover.1444581984.git.shivanib134@gmail.com>
	<b207f5e7ff3d9f88a7093429fe6b8e84cd43c911.1444581984.git.shivanib134@gmail.com>
Date: Mon, 12 Oct 2015 20:06:31 +0300
Message-ID: <CAEnQRZA9tCQU5+FwtA1PX77wQ8ecUsto81QioxwwB8jksHGRTA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 1/2] Staging: vt6655: mac: Remove
 character limit warning
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sun, Oct 11, 2015 at 7:51 PM, Shivani Bhardwaj <shivanib134@gmail.com> wrote:
> Break the lines with over 80 characters into sensible chunks of data.
> Fixes the chackpacth warning: line over 80 characters
>
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>

With this patch you introduce new checkpatch.pl errors. Please
run ./scripts/checkpatch.pl --strict 0001-your-patch.patch, before
sending patch for review.

I'm looking at this type of error:

CHECK: Alignment should match open parenthesis
#82: FILE: drivers/staging/vt6655/mac.c:606:
+void MACvSetCurrRx1DescAddr(void __iomem *dwIoBase,
+                               unsigned long dwCurrDescAddr)



thanks,
Daniel.

