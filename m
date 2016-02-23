X-GM-THRID: 6254064858167246848
X-Received: by 10.129.85.68 with SMTP id j65mr31944203ywb.57.1456198999776;
        Mon, 22 Feb 2016 19:43:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.134.161 with SMTP id q33ls998077ioi.13.gmail; Mon, 22 Feb
 2016 19:43:19 -0800 (PST)
X-Received: by 10.66.150.68 with SMTP id ug4mr29747503pab.33.1456198999227;
        Mon, 22 Feb 2016 19:43:19 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-oi0-x22c.google.com (mail-oi0-x22c.google.com. [2607:f8b0:4003:c06::22c])
        by gmr-mx.google.com with ESMTPS id nt4si1156488igb.2.2016.02.22.19.43.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 19:43:19 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:4003:c06::22c as permitted sender) client-ip=2607:f8b0:4003:c06::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:4003:c06::22c as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-oi0-x22c.google.com with SMTP id w5so69854684oie.3
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 19:43:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=nl5Fk1Q2zkLHJwEu1C8d+IfTnKwxqnxufRJD/egD2pk=;
        b=B8swkzVyrNUONzWsJqrOx2gCu4c8R9j+N3JY0XLFfCa4fxLXb8M8Q7SRAnKzYiACCG
         EYSAB0axLJY0MjZ2mCQjI663MZVQDflamZAAmdY4GnHBSMsQOLbv+3eBVDOH/xqWRHY1
         2BwP7a7+bd91DGmqda7U61Ya0qNCxWhu08+yA1mcwk6VCRHX8Xy7iId9FqSjxeJUroGR
         a9qIsSzky/nfG+Ys3ZHZr2NDtq1wJf6PP8FWepYp1H/8BoHWTcwTSn49Cb79CZxYjHFx
         9INfLXr1cF2M3wCB/ZHg7boRzfQ1KMn/1R9ng0M7e0ZUIGCifKTEhYMp1WeGUQzPRtHe
         qX7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=nl5Fk1Q2zkLHJwEu1C8d+IfTnKwxqnxufRJD/egD2pk=;
        b=As8lZ9RfNbJAee3OB7d9Hig0a6P6GEjcarQ/kQhvlaauliPkaxrj1uaSScRG0XOvOt
         rZbycpkEecKI6xfJC04RYZluixdadC7gra8q/CRi2o3eM9WPFXUV00y/HZb2LFbuSv7r
         DW2yh5x4PKgspKifD3PSoZzG2r6JkeT6V2w84AdzJWgXoT4rN5WpzhGVR0CFqu+4XYKS
         33EL6Tb6F8GIf/r1oCw096B/TLeIzqrC1WvE+OgNMbRGbhcIFZ43+NHAgynW7Huz/sJE
         beCXZoxyd5qkpuemGBORUOAZkW3o+zmojlvsF8BFWP45e3kKwL4E7+Gr6yGgTeaUqq/B
         4PeA==
X-Gm-Message-State: AG10YOT77SlULF0vWrGNltXMdVMbkRcvwknba+Ob6a+EmKIjMsG4OqRqTJXmt+zqFGC+38vuei5f22RJ53wohQ==
MIME-Version: 1.0
X-Received: by 10.202.196.208 with SMTP id u199mr24382195oif.71.1456198999083;
 Mon, 22 Feb 2016 19:43:19 -0800 (PST)
Received: by 10.157.40.238 with HTTP; Mon, 22 Feb 2016 19:43:19 -0800 (PST)
In-Reply-To: <20160222211057.GA5849@kroah.com>
References: <cover.1456136671.git.bhumirks@gmail.com>
	<ae653a4fe839af60c62a545477d803c8b0866968.1456136671.git.bhumirks@gmail.com>
	<20160222211057.GA5849@kroah.com>
Date: Tue, 23 Feb 2016 09:13:19 +0530
Message-ID: <CAOH+1jEEG8QGW9kZby=DRTYV5iXcy1xdFxegKcsTU1VbvBmhOw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 4/5] Staging: lustre: Use min_t or
 max_t instead of ternary operator
From: Bhumika Goyal <bhumirks@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 23, 2016 at 2:40 AM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Mon, Feb 22, 2016 at 04:15:33PM +0530, Bhumika Goyal wrote:
>> Replace ternary operators with macros min_t/max_t as they are
>> shorter and thus increases code readability. Macro min_t return the minimum
>> and min_t returns maximum of the two compared values.
>> Made a semantic patch for changes:
>>
>> @@
>> type T;
>> T x;
>> T y;
>> @@
>> (
>> - x < y ? x : y
>> + min_t(T,x,y)
>> |
>> - x > y ? x : y
>> + max_t(T,x,y)
>> )
>
> If they are the same type, why can't you just use min() and max()?  The
> call to min_t() and max_t() seem a bit of an overkill as they do an
> explicit cast for when the types of the two variables are not the same
> type.
>
> So I'd prefer this patch to just be min() and max() if at all possible.
>
> thanks,
>
> greg k-h

Ok I got the point, I will use min() and max() and send a v2 for all
the patches.
Thanks
Bhumika

