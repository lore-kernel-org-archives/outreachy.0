X-GM-THRID: 6394683262663393280
X-Received: by 10.200.52.65 with SMTP id v1mr81732qtb.70.1488894878863;
        Tue, 07 Mar 2017 05:54:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.138.32 with SMTP id m32ls206193iod.52.gmail; Tue, 07 Mar
 2017 05:54:37 -0800 (PST)
X-Received: by 10.99.56.5 with SMTP id f5mr196895pga.75.1488894877775;
        Tue, 07 Mar 2017 05:54:37 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-io0-x243.google.com (mail-io0-x243.google.com. [2607:f8b0:4001:c06::243])
        by gmr-mx.google.com with ESMTPS id a17si2812402itd.1.2017.03.07.05.54.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 05:54:37 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2607:f8b0:4001:c06::243 as permitted sender) client-ip=2607:f8b0:4001:c06::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2607:f8b0:4001:c06::243 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x243.google.com with SMTP id f103so553563ioi.2
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 05:54:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=+YGUKRjjocC+vlDJeHOFch85P9X1HCfKBxGnkds1jTM=;
        b=vYKMLDhlSHPNewGvIw9PYRbSov5OOhESqK9S3VFAj7Ppcs3QA0wcD9TUnjAfRxju5L
         PqLJLNmLeTMo47gf0fPHFLYbOrVR8u9iMXuHX1OwAnAHUCjsVSYxb/sZWx2b7DOQlzlA
         zxC/z3QE1RAxsHM6KYvM7vZK/pScPQ06U99G+A/Twh0BMuYcVMH2gi5D1cilT1QTHXYj
         bV29nFqAyk4lY/yCPcOK9Hj/q3NvSI4HDjYTyaytUba/+h0JXP25JuVZRGqN8tr5ZhCc
         K/ep6wA/nYFOzQpjkI+RLsm+IRS4IgC7Ig+RAsOOt/wJEdJ8zRhnJLedBYnkdS7H61K4
         dhVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=+YGUKRjjocC+vlDJeHOFch85P9X1HCfKBxGnkds1jTM=;
        b=nR8SKdE/+MG+qsB4uyZZXj3xnm/V/QRwP7R2YQJk99CGEAS79dwCflixSY1YOoS7S9
         Q/gFBjFk6DEDYkDeT3GPQMx+7P5rUe38XlolX+y2iJ5v3JYNUeHzo2zxxOh+QCMjQRYv
         4I19HxjI6VUjIZLD7uRJRyU//45mSZ4wZKF0GoDm92U+8IeIv1PIA9T8RPgEGubqAeFp
         cu3So7fUULRBqL4jSdLNEc8Id3QSRxe8STBsSFzyCLjJsw15/JIjZAU7TMpl6E+mWs4M
         F/KdFd/YwIY58d1xky9XSwBsmjd4d2He4crIfK0yXmrSn0rasOuYH3Yl+1tHCLwhkZ/h
         uVaw==
X-Gm-Message-State: AMke39kC6HH4CxY9wtV9Dik6Y1pbzseEV0aSfqsNPl2QFUdV3lQGrXLeovsHYXZTlFlQxaDZdJKu1v+rZrUZPQ==
X-Received: by 10.107.9.33 with SMTP id j33mr879134ioi.211.1488894877490; Tue,
 07 Mar 2017 05:54:37 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.26.201 with HTTP; Tue, 7 Mar 2017 05:54:37 -0800 (PST)
In-Reply-To: <20170307091646.13717-1-diaconita.tamara@gmail.com>
References: <20170307091646.13717-1-diaconita.tamara@gmail.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Tue, 7 Mar 2017 15:54:37 +0200
Message-ID: <CAEnQRZDCeGYQ6L4Sx-DHfa8L4PZEb42n+4DxttGRC-RKf6HbdA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: speakup: kobjects: Rearrange
 if statement
To: Tamara Diaconita <diaconitatamara@gmail.com>
Cc: William Hubbs <w.d.hubbs@gmail.com>, Christopher Brannon <chris@the-brannons.com>, kirk@reisers.ca, 
	Samuel Thibault <samuel.thibault@ens-lyon.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	Tamara Diaconita <diaconita.tamara@gmail.com>
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 7, 2017 at 11:16 AM, Tamara Diaconita
<diaconitatamara@gmail.com> wrote:
> Fixed the checkpath.pl issue:
> CHECK: line over 80 characters.
>
> Put a part of the if statement on a new line to have less than 80
> characters.
>
> Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>

Hmm, there is no if in this patch.

> ---
>  drivers/staging/speakup/kobjects.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
> index cd8eb12..a032932 100644
> --- a/drivers/staging/speakup/kobjects.c
> +++ b/drivers/staging/speakup/kobjects.c
> @@ -106,7 +106,8 @@ static void report_char_chartab_status(int reset, int received, int used,
>   * This is called when a user changes the characters or chartab parameters.
>   */
>  static ssize_t chars_chartab_store(struct kobject *kobj,
> -                                  struct kobj_attribute *attr, const char *buf, size_t count)
> +                                  struct kobj_attribute *attr,
> +                                  const char *buf, size_t count)
>  {
>         char *cp = (char *)buf;
>         char *end = cp + count; /* the null at the end of the buffer */
> @@ -404,7 +405,8 @@ static ssize_t synth_store(struct kobject *kobj, struct kobj_attribute *attr,
>   * This is called when text is sent to the synth via the synth_direct file.
>   */
>  static ssize_t synth_direct_store(struct kobject *kobj,
> -                                 struct kobj_attribute *attr, const char *buf, size_t count)
> +                                 struct kobj_attribute *attr,
> +                                 const char *buf, size_t count)
>  {
>         u_char tmp[256];
>         int len;
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170307091646.13717-1-diaconita.tamara%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

