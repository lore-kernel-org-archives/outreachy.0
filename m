X-GM-THRID: 6204433488482926592
X-Received: by 10.112.54.197 with SMTP id l5mr5828927lbp.21.1444671069837;
        Mon, 12 Oct 2015 10:31:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.142.3 with SMTP id q3ls89432lfd.64.gmail; Mon, 12 Oct 2015
 10:31:09 -0700 (PDT)
X-Received: by 10.112.16.229 with SMTP id j5mr1170116lbd.6.1444671069335;
        Mon, 12 Oct 2015 10:31:09 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x22c.google.com (mail-wi0-x22c.google.com. [2a00:1450:400c:c05::22c])
        by gmr-mx.google.com with ESMTPS id c7si531822wiy.3.2015.10.12.10.31.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 10:31:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) client-ip=2a00:1450:400c:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22c.google.com with SMTP id gb1so157746831wic.1
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Oct 2015 10:31:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=GI3sd5rG0d0gv9ETSvdmG80PFWo0DS45PIk3QV9SVxw=;
        b=NZo7k/biJbj2O1tkDik0+S7A7GzcXFPg3byO4QS+Dm8Xgn/mXpf8S9PN4lKeeDpA2t
         ADqFDyav8MAafCw9fn03NmL4oHdKEj3eFnhMPMwC9SxwY4XSaCakeoC0/mzxPi1i4g6I
         QD7VdL86Bw5XBIsDrKpFMpNo6z9jJfCZIM/95XGx5G6VPAEufxtzlr6/ZCWSfYiDc5TM
         Mka6xlF/Vys4mQY2RK9k9BX65NAzr751EwmMqqIdkr4sjR2mM9Tl19wYAQ4EcoaKxbsy
         kZ93KgsxXLcCrLyYv0QitR4rtyanTUFYts6Uyn4kAI9Svf+8kocmLmSwyGrlLsA3P3F+
         N4xw==
MIME-Version: 1.0
X-Received: by 10.180.102.230 with SMTP id fr6mr14733114wib.66.1444671069217;
 Mon, 12 Oct 2015 10:31:09 -0700 (PDT)
Received: by 10.27.186.66 with HTTP; Mon, 12 Oct 2015 10:31:09 -0700 (PDT)
In-Reply-To: <CAEnQRZA9tCQU5+FwtA1PX77wQ8ecUsto81QioxwwB8jksHGRTA@mail.gmail.com>
References: <cover.1444581984.git.shivanib134@gmail.com>
	<b207f5e7ff3d9f88a7093429fe6b8e84cd43c911.1444581984.git.shivanib134@gmail.com>
	<CAEnQRZA9tCQU5+FwtA1PX77wQ8ecUsto81QioxwwB8jksHGRTA@mail.gmail.com>
Date: Mon, 12 Oct 2015 23:01:09 +0530
Message-ID: <CAKHNQQHz4bbXv1Q6HAHzMy5rCJA-7Pt9Ww=6vwe+FioFZqykhA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 1/2] Staging: vt6655: mac: Remove
 character limit warning
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Daniel Baluta <daniel.baluta@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Mon, Oct 12, 2015 at 10:36 PM, Daniel Baluta <daniel.baluta@gmail.com> wrote:
> On Sun, Oct 11, 2015 at 7:51 PM, Shivani Bhardwaj <shivanib134@gmail.com> wrote:
>> Break the lines with over 80 characters into sensible chunks of data.
>> Fixes the chackpacth warning: line over 80 characters
>>
>> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>
> With this patch you introduce new checkpatch.pl errors. Please
> run ./scripts/checkpatch.pl --strict 0001-your-patch.patch, before
> sending patch for review.
>
> I'm looking at this type of error:
>
> CHECK: Alignment should match open parenthesis
> #82: FILE: drivers/staging/vt6655/mac.c:606:
> +void MACvSetCurrRx1DescAddr(void __iomem *dwIoBase,
> +                               unsigned long dwCurrDescAddr)
>
>
>
> thanks,
> Daniel.
I'll take care next time. Thanks, Daniel.

