X-GM-THRID: 6253849436134309888
X-Received: by 10.28.172.194 with SMTP id v185mr1115212wme.5.1456145919309;
        Mon, 22 Feb 2016 04:58:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.12.149 with SMTP id 143ls403570wmm.46.gmail; Mon, 22 Feb
 2016 04:58:38 -0800 (PST)
X-Received: by 10.28.48.88 with SMTP id w85mr1108046wmw.5.1456145918636;
        Mon, 22 Feb 2016 04:58:38 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wm0-x22a.google.com (mail-wm0-x22a.google.com. [2a00:1450:400c:c09::22a])
        by gmr-mx.google.com with ESMTPS id h73si761083wme.0.2016.02.22.04.58.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 04:58:38 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::22a as permitted sender) client-ip=2a00:1450:400c:c09::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::22a as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22a.google.com with SMTP id g62so161005041wme.0
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 04:58:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=QeV8yHZ+QW/svHEi5ZPC1EbNn7mPEBphDNLosehTYbA=;
        b=ybIdL9aFarqo8ZDHhZAcMJAZmbRxYQfJ6I24aFEv3tjxLDrGnFa94FVUL6pg98aKFM
         be6/L4ORWqlilrxOagOnNCAJ8q9s2JZGkCLH1hgn7i0WQVgvHBKS+e37+JsfcHx/OiJM
         Krd900LvwrtQTJ7+X09XVV4oCy9mkHN5O5sVp67w7Vdifm95Fi6nRFk/hvHVud1DJmZu
         CU7pCMh3cmU0TAMh8wNNh0eih+nJfFHKnRMayrmU3XUVzNQ/i2qXlSjhytKq0qVLrvql
         O6rY+Al/xV1slqVSU/lbq2OupRLqD7F1762fwY3+iAOzw3ND4vyk0pmordRrsPjurh1U
         lmhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=QeV8yHZ+QW/svHEi5ZPC1EbNn7mPEBphDNLosehTYbA=;
        b=cah8zNgylyk4OXrkYl/UltIGS7KcWt1UcYMvYhoY8Seiay0Ok3EMs2/lrH8F2w7GRl
         IJg0ZHkSdkFMyUyi+7V2UcvX53zAAv43vkjltHYz3/PObIzJXM0c+whW973InPjvZkD3
         qDl5ZSFmxIgIm4TQP4yA3fk4Ksdkls8GHYG9aaRCttpo4bY3VC6vjjgXYBpRNhYqIQhK
         TKdXg8q887yqC3RBkzFhx0jtgSGes6VfQK2T6qVTCXqgHukuUDFhvWLYSUenVbJHRMq9
         BQo8xBqiUKbxAa3k1chXbA2flkWyEwq3n/t3Q9E5ToRi/I/DTyDlmhJdOFfupdkPOpBh
         Fk0Q==
X-Gm-Message-State: AG10YORIlQZfBGWoY8q/5u+VBPU3/dGI/Kb7uxAugr4TRhwP6EfIEwF2E0+ixwWt5j/OLmMdufruUR+y6snuBw==
MIME-Version: 1.0
X-Received: by 10.194.2.202 with SMTP id 10mr31399983wjw.94.1456145918513;
 Mon, 22 Feb 2016 04:58:38 -0800 (PST)
Received: by 10.194.222.165 with HTTP; Mon, 22 Feb 2016 04:58:38 -0800 (PST)
In-Reply-To: <20160221205018.GA6525@Karyakshetra>
References: <20160221205018.GA6525@Karyakshetra>
Date: Mon, 22 Feb 2016 14:58:38 +0200
Message-ID: <CAEnQRZB-LevSujcZxMhDDwxi7+tZyGXmgpmxPLEc989AT+132g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: Drop else after return
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sun, Feb 21, 2016 at 10:50 PM, Bhaktipriya Shridhar
<bhaktipriya96@gmail.com> wrote:
> Remove unnecessary else when there is a return statement in the
> corresponding if block.
>
> The following Coccinelle patch used:
>
> @@
> expression e2;
> statement s1;
> @@
> if(e2) { ... return ...; }
> -else
>          s1
>
> @@
> expression e1;
> @@
> if (e1) { ... return ...; }
> -else{
>         ...
> -}
>
> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
> ---
>  drivers/staging/rtl8712/xmit_linux.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8712/xmit_linux.c b/drivers/staging/rtl8712/xmit_linux.c
> index f8866d7..adb51f0 100644
> --- a/drivers/staging/rtl8712/xmit_linux.c
> +++ b/drivers/staging/rtl8712/xmit_linux.c
> @@ -72,8 +72,7 @@ sint r8712_endofpktfile(struct pkt_file *pfile)
>  {
>         if (pfile->pkt_len == 0)

Here we could just return pfile->pkt_len == 0;

