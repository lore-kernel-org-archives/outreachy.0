X-GM-THRID: 6468561252741283840
X-Received: by 10.129.124.193 with SMTP id x184mr19713266ywc.191.1506854863382;
        Sun, 01 Oct 2017 03:47:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.37.119.12 with SMTP id s12ls1397851ybc.0.gmail; Sun, 01 Oct
 2017 03:47:42 -0700 (PDT)
X-Received: by 10.129.230.3 with SMTP id u3mr20077960ywl.75.1506854862675;
        Sun, 01 Oct 2017 03:47:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506854862; cv=none;
        d=google.com; s=arc-20160816;
        b=Zc555LJ9KjrNEZ+3TPowun4ny5XsQTvvkGTNw4uyVH24JBKoCrMF+Zht2E5SW1ww8G
         g9gwNABNyqx3ROS2svaG2umPyj0tvOr89jjB0vVa2M7z43Xi05G3nDZiUdGC9zQZ8WQS
         LrAV8sq4aYdw0yfgvRkJA8TxpqN+pB+HuCxOobkgRoV/5ci7MJvdipvwWUMvARsUHEJB
         /kb2TAFk8IagpCJ+I940/aOyyNVPeUQR31PbDv5lG6GCXRmpHR0fyY2uzt46ChJH8hWm
         BCA3RnzJoaOE90zZFkfYdfAA8AF1MnVwfzVSTG0MAuO7q4IVsfpmDbgjNctNYkB2Bk8u
         SLHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=672/DtnXQ2+SOvseXZt9xG17bJGjqjvNFKZ77axzhcU=;
        b=FI4+EpZZpwX1lDFxT01Vrg09QhVkBVtDOj77IVKUKoPvOqS0rjADoSF8XbJWog08K2
         wR8KPdpOgknH7XXOZB4HgWhya1JiscBcOww+Z6YTqu/QP15H6rP7tOQLJJm7n11S7KDl
         jBpx35LbUz5NUI6QvKAdQRE8HITX9NsZigrunGHpUcbOfHwNd42zeKrXJ5c8GdaPXzZc
         KQKHANmmUuJVlYc/4XjMEHuanUXFMcWMpqNasyRjQ6fGNzyU8PeTtcr++6QiUZE6Lbx+
         RYyImTNpR+M1T1xtjrKPLftHfVlxXofprF5QVlvKC/HcFXapxnxZRmzkxsagqiWU/iHz
         +8WA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hg6ZRIDm;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c0d::244 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-qt0-x244.google.com (mail-qt0-x244.google.com. [2607:f8b0:400d:c0d::244])
        by gmr-mx.google.com with ESMTPS id q127si437998ywc.32.2017.10.01.03.47.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Oct 2017 03:47:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c0d::244 as permitted sender) client-ip=2607:f8b0:400d:c0d::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hg6ZRIDm;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c0d::244 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x244.google.com with SMTP id i50so4301169qtf.0
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Oct 2017 03:47:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=672/DtnXQ2+SOvseXZt9xG17bJGjqjvNFKZ77axzhcU=;
        b=hg6ZRIDmUDJu01HZCl/vtZmRqxG7+GmvYmSb0BNPxV+zH/vXJCN7OlLtX5rjkS1xUu
         vaj+XeBDjXOBqjWCKbsQmQ0b7ruSSPJ1s3jyHz3olpJUQvx+tuZN7vkmNCmFgx8e2jTK
         5FjSpZHfVW/Nzk54ZVD34axA3eQI1p/SEp7KNXYkifyJETxtMgOdETetTbQ65GSNB3lk
         gv1kE7qnbAGwNX5JOfwGmLPsHJmNqyfRipLvwyVyeduBIEtk9ydKFpnM+YZaxIqvqRYn
         tNIsk8bQbUPS8w6vHjwXUbZtWVGJGsoMkAbgp6/BC4ZI3h4hH1lApsOqVpVy6rvW5/L1
         aZfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=672/DtnXQ2+SOvseXZt9xG17bJGjqjvNFKZ77axzhcU=;
        b=a7Mb30IVvtt7Sb+dF/XVk4GzXImKoYkkjgkoFTh0KLhGJJRemzm/pzO17FFdGx5QiE
         Cli5C6kVT7AQF0tC2xp/owYMHwlo7ve8MEsLOpNyriA564KPp0z3qztvD2J/n9zxfZiY
         Jg3fgF0LYlcsptUKKQHTY5/ktG7kSccwPUYm8mp3YvkidqzSA5D51ecrownxfcNxTKzB
         LH7i0ioc7W6QpjQ7alnWSn1MucY3o88Ssor53eZzIH+RfMA2sVAzKlA/prD4vDeR0umC
         PUfY4Z7ov5rTLR9BEHCJ6KRuszHmacHC7ql/UJWSsIE/NpcTwzm03FeNUDijVQHq9rW8
         Dr/w==
X-Gm-Message-State: AMCzsaUhQMMlQqKSrwGSkUy4qoi29LSR+hE5mLb85K1LdG3nipNfogmd
	qaNsqSnH2QBzwV5+FWVajiR6eld1G5fLhW0tVZQ=
X-Google-Smtp-Source: AOwi7QDy3kx/zUBbKmMjqhi7/P3CuSmQJeLg29Jhdwi1Ag9jwHJKHd8fw0Nmk3vyyfVZx3VAGaSPRj9bD9wmmkyIiXk=
X-Received: by 10.200.4.169 with SMTP id s41mr13305185qtg.132.1506854862299;
 Sun, 01 Oct 2017 03:47:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.105.75 with HTTP; Sun, 1 Oct 2017 03:47:41 -0700 (PDT)
In-Reply-To: <20170929133624.GA12135@kroah.com>
References: <1506079255-127380-1-git-send-email-georgiana.chelu93@gmail.com> <20170929133624.GA12135@kroah.com>
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
Date: Sun, 1 Oct 2017 13:47:41 +0300
Message-ID: <CALta04xfmkg3+4ABi-Ts_ja613up7xLy0BZ3yuXc0kVNhw8dfA@mail.gmail.com>
Subject: Re: [PATCH] Staging: media: atomisp: Remove duplicated argument to ||
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>
Content-Type: text/plain; charset="UTF-8"

On 29 September 2017 at 16:36, Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
> On Fri, Sep 22, 2017 at 04:20:55AM -0700, Georgiana Chelu wrote:
>> get_user() copies a variable from user space to kernel space
>> put_user() copies a variable from kenel space to user space.
>>
>> Remove duplicated argument to || because consecutive calls
>> of these functions with the same arguments will have the same
>> result.
>>
>> Issue found by coccinelle script.
>>
>> Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
>> ---
>>  drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_ioctl32.c | 4 ----
>>  1 file changed, 4 deletions(-)
>>
>> diff --git a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_ioctl32.c b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_ioctl32.c
>> index 0592ac1..a27ecbe 100644
>> --- a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_ioctl32.c
>> +++ b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_ioctl32.c
>> @@ -432,8 +432,6 @@ static int get_atomisp_overlay32(struct atomisp_overlay *kp,
>>                               &up->blend_overlay_perc_u) ||
>>               get_user(kp->blend_overlay_perc_v,
>>                               &up->blend_overlay_perc_v) ||
>> -             get_user(kp->blend_overlay_perc_u,
>> -                             &up->blend_overlay_perc_u) ||
>>               get_user(kp->overlay_start_x, &up->overlay_start_y))
>>                       return -EFAULT;
>>
>
> I don't understand, you are changing the output of the code here, right?
> Why is this patch ok?

The output of the code is the same. This patch just removes the duplicate.
I know, it's hard to see it because the patch does not show the whole
if statement. The get_user() function does not change the value
of the variable from userspace. So, I thought that consecutive calls
over the same variable will have the same result.

Here is the whole if statement. The get_user is called twice for
the "blend_overlay_perc_u" and "up->blend_overlay_perc_u" variables.

if (!access_ok(VERIFY_READ, up, sizeof(struct atomisp_overlay32)) ||
get_user(frame, &up->frame) ||
get_user(kp->bg_y, &up->bg_y) ||
get_user(kp->bg_u, &up->bg_u) ||
get_user(kp->bg_v, &up->bg_v) ||
get_user(kp->blend_input_perc_y, &up->blend_input_perc_y) ||
get_user(kp->blend_input_perc_u, &up->blend_input_perc_u) ||
get_user(kp->blend_input_perc_v, &up->blend_input_perc_v) ||
get_user(kp->blend_overlay_perc_y, &up->blend_overlay_perc_y) ||
get_user(kp->blend_overlay_perc_u, &up->blend_overlay_perc_u) ||
get_user(kp->blend_overlay_perc_v, &up->blend_overlay_perc_v) ||
get_user(kp->blend_overlay_perc_u, &up->blend_overlay_perc_u) ||
get_user(kp->overlay_start_x, &up->overlay_start_y)) {...}


The reason behind the second change in this patch is the same.
The put_user() function is called twice to write the same value
into the same variable from userspace.

Thank you,
Georgiana

>
> confused,
>
> greg k-h

