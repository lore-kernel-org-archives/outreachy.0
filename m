X-GM-THRID: 6465584009265020928
X-Received: by 10.31.168.11 with SMTP id r11mr1411378vke.33.1506653929171;
        Thu, 28 Sep 2017 19:58:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.176.1.168 with SMTP id 37ls1961335ual.12.gmail; Thu, 28 Sep
 2017 19:58:48 -0700 (PDT)
X-Received: by 10.176.6.8 with SMTP id f8mr1566147uaf.19.1506653928306;
        Thu, 28 Sep 2017 19:58:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506653928; cv=none;
        d=google.com; s=arc-20160816;
        b=NM+ooVAV5XmVPoW34n+WLNygpmadxX3toKMziE6sZCIIwsdOKNw/DTakASjI1t7/Eo
         AACmMR22PBgz9tSFW45mwYnoy+X0NlnPJ3R3wmI4OBZ7n3Ime4YxMZFESTxVrAkzznki
         4D9Wbav847XBbsMPDdiNa+6p3xbCQ4Zpl6JNGUGeyavgqDGKMDqn3aRQff/GY1oAQT4h
         A1gxg5BW+NkHMeeaxsPq3641aV+dZWXqYB1yhb6g0XWZ5uHqKApAN3cY3dwCeUZ+amB0
         i+8d2v8YzZ0ZXHCTkV1y5ukUBwzAFYGp0iLFGdjCMoJfNu8y5vxh1FLAZ0UM17s1lrTH
         cGcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=rTSt0MilBR0IcRmXG2Fb30Ks4OgTWj7IBBe0DNvPQYs=;
        b=p9Kgt+Ayce9LMaYpjQ+TK7EyElJknWxRCCay0sg4s5J77+6XBJ8q3yZzIA0WZNVIk3
         ljMjMfxqZ9s9bFrP6FH3vn8h6a0eLugOHh/GYloDhEzR7dGXoGXmzm3NTA3h02VwDYdW
         C2VAGn+5OdavQSkRI28GmeluunlQ0Uo30hMZSqO+pbe5zT1auoq3jZ+GR5+cVTAt+bjI
         QD4RLvY2VKoh15MzDQIkcD1pthWa2MgD0kMxv7+EHD7KhElHY3ZOnjnPThekGCwPFDg3
         ZsWGyx2+T4ekrd7IxFOWM35DNYa0F4JVI/W9SSJd3Xmc+nSuoZYPgP17SGuXwD87Xi4N
         8UHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=u0wpMLrb;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c05::235 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-vk0-x235.google.com (mail-vk0-x235.google.com. [2607:f8b0:400c:c05::235])
        by gmr-mx.google.com with ESMTPS id q64si221169vkg.3.2017.09.28.19.58.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 19:58:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c05::235 as permitted sender) client-ip=2607:f8b0:400c:c05::235;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=u0wpMLrb;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c05::235 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x235.google.com with SMTP id g68so18717vki.8
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Sep 2017 19:58:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=rTSt0MilBR0IcRmXG2Fb30Ks4OgTWj7IBBe0DNvPQYs=;
        b=u0wpMLrb8YXj9TcGrjD7xvq169RVNG+4s5mj1i2hnoNNNtbbvIWbh7K7YqQQhR9QuF
         wg1UNeuEunaXtFcfpdVQA1LMSjkN8uTvI7pjAjxUcIQe0LsluE9tpxZM61C06mZWmX79
         9ljJNVAPKgdnZfKiDn/AcyIerbebQY4HfzvudHX/+mvwTyWySSMFPDcFxIXjuGa7mePQ
         s5yLIoQxZNSYhxpmBXuhox4ZJSXloqSeEHXNEKoc7Wk4WXzbi+JilsaGgjm+njCoSi90
         teSEyk8bhETLrpnpHUwsvqcMHNcsWwzPYxxLQrBgnES30G8azVh0wxe9pV2t29gx6T68
         I6Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=rTSt0MilBR0IcRmXG2Fb30Ks4OgTWj7IBBe0DNvPQYs=;
        b=g53mJ0Paik9eSFvkUTtzFqLQNjIcM1ypr7QvzPSvQQay2/2SCn4JzyyW6XAqcrMVg/
         cNUiapjfHi9ByGREu3c32UUpZULFpte09fs1Z0X9qaH1G4shaHSJrdl3DMfKWhLrzHXU
         y8Ob6KToZV0ZhTZ6kzJFHS6WADnEYTa9Q6ANdEk0YlwATOsetDZxlYF/j+/1olIa3tSP
         LtEWGxPnbOqMKVX+yBkeBymzTunQS+ZiZTIQmQ9nYHcRmNf1Pi5jhaJ7ieqhh9nA1Kmx
         F2EdqZltzyZHT29D5FGCSJQd74A72My8G0P7/wByhDE+rK60GZCFs6Yh1URpwlNTkaiJ
         TBfg==
X-Gm-Message-State: AHPjjUgPCj+axpu5CfgKT3nTdd8UDbouJgqgcGvEz8NQRKdlV4eU8jMI
	z5Fcpc9VfPky9/ZJNa/uqGZOYjTJ/Xv6xJiOkMA=
X-Google-Smtp-Source: AOwi7QDFK6ai8SjY0YqjLsTImBcpPC70iqkeQ1DKzVqiI0Z/QAxO7eS2+455GaOFlnTJOMcM0ZyVPVpO1zycm7WaQgk=
X-Received: by 10.31.208.196 with SMTP id h187mr3449077vkg.61.1506653928004;
 Thu, 28 Sep 2017 19:58:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.2.149 with HTTP; Thu, 28 Sep 2017 19:58:47 -0700 (PDT)
In-Reply-To: <20170918093717.GC9461@kroah.com>
References: <1505389062-8222-1-git-send-email-aastha.gupta4104@gmail.com> <20170918093717.GC9461@kroah.com>
From: Aastha Gupta <aastha.gupta4104@gmail.com>
Date: Fri, 29 Sep 2017 08:28:47 +0530
Message-ID: <CAHXiS5-+iaRLJXSMXgPWDGxBYR065S-wCRM07ghxhwNqkdm+yw@mail.gmail.com>
Subject: Re: [RESEND PATCH] staging: lustre: fix incorrect multi-line comment style
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, Oleg Drokin <oleg.drokin@intel.com>, 
	Andreas Dilger <andreas.dilger@intel.com>, James Simmons <jsimmons@infradead.org>
Content-Type: text/plain; charset="UTF-8"

On Mon, Sep 18, 2017 at 3:07 PM, Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
> On Thu, Sep 14, 2017 at 05:07:42PM +0530, Aastha Gupta wrote:
>> This patch fixes the checkpatch.pl warning:
>>
>> WARNING: block comments use a trailing */ on a separate line
>>
>> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
>> ---
>>  .../staging/lustre/lustre/include/lustre_errno.h   | 51 ++++++++++++++--------
>>  1 file changed, 34 insertions(+), 17 deletions(-)
>
> Why was this a "RESEND"?  What required that?
>
> Always put that information below the --- line.
>
> Please fix this up and resend it, with that type of information, and a
> new "version" of the patch.
>
> thanks,
>
> greg k-h

This was by mistake. Please ignore this patch.
I will send this patch again properly.

Aastha

