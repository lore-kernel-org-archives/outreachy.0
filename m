X-GM-THRID: 6252872571566424064
X-Received: by 10.129.132.3 with SMTP id u3mr18552038ywf.5.1455976329054;
        Sat, 20 Feb 2016 05:52:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.74.138 with SMTP id t10ls344015obv.84.gmail; Sat, 20 Feb
 2016 05:52:07 -0800 (PST)
X-Received: by 10.182.240.137 with SMTP id wa9mr17729258obc.16.1455976327646;
        Sat, 20 Feb 2016 05:52:07 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x232.google.com (mail-qg0-x232.google.com. [2607:f8b0:400d:c04::232])
        by gmr-mx.google.com with ESMTPS id g136si926912ywb.5.2016.02.20.05.52.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 05:52:07 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::232 as permitted sender) client-ip=2607:f8b0:400d:c04::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::232 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x232.google.com with SMTP id y89so82282020qge.2
        for <outreachy-kernel@googlegroups.com>; Sat, 20 Feb 2016 05:52:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=6LpZ3Xz+hD08t3BdxaJkzdiFmFnWrOYBE0OmYK8ixuU=;
        b=0Pz6DYOJms+gC99oBOE2KXDJgBLuIh8iCspCkyOnqYwEyoVnzT4h9BV9EyVzhWa/SC
         L7+YGrZzldR+kHGQ1nR31/ZMF+ZxvNGM9rj/8Yhlj9SUwvOhiFM12QjRZE3vIyP6Td05
         iJP5wZK1sp0YuKHfl3JooycICFU2qdrOhL2iggxuEbNh6FrVYI8j0bi8h8xmd5PUoEf6
         FQK8Q35vTmWxRezXSWRoZU9J7mR4ahKWpf32s5B9iuZyqSIGPMDDBVoO7V7RLrqfAkaf
         GXaPAoeZOLHy1gKLn5kfFTlJCbyadK5Sf5V8qXANm44fodlaqoNcKaCMO7XepNyR3hWy
         6VDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=6LpZ3Xz+hD08t3BdxaJkzdiFmFnWrOYBE0OmYK8ixuU=;
        b=iCXzDZ5NysJtlUaN9PJ+p5OzDZuSsr8pX07Wfl24YX/jamxPwC8PKM8sIWuut40KGw
         o3PBLO7GDJET0AB7YCgGBDv5NKUQc26UqRaskHbtAPmRDX/dvAFNh/AjKlQkDYkG1EGM
         VUKJlb2eqSOUWHE1nmh9lP6XGkogDPJwB87r/ZEUIL+On1g5C1EWH0Oknzf9qUiRz+ZB
         PEmJpaHq1JnIj/P4RAHygK9PB1TGCJKDyuQPnxbQyosDyjQG5q0Igw4OhJVzq9FNBZHr
         Ew9KteNtEqSEU3Z4+QJcrMDobrQCBXL5ANL7NfOMlYEHZlXyquy+x+e4AIDXYQsykTSA
         BoPQ==
X-Gm-Message-State: AG10YORGIu55DBxpipX6Rer1OcwMrYMqYGGFcC6ZQwx6xHPm/w2UDW1Rq0n9uXG8FZ98S9jimoMal/AmWcQMDw==
MIME-Version: 1.0
X-Received: by 10.140.140.6 with SMTP id 6mr23595784qhm.29.1455976327472; Sat,
 20 Feb 2016 05:52:07 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Sat, 20 Feb 2016 05:52:07 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1602200839510.4083@hadrien>
References: <20160219053859.GA29087@amitoj-Inspiron-3542>
	<alpine.DEB.2.10.1602200839510.4083@hadrien>
Date: Sat, 20 Feb 2016 19:22:07 +0530
Message-ID: <CA+5yK5E1_oPJim2ZAtSYcMD7XMoYpS+wzvXcxkfRubx11Q4w2A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: Remove exceptional &
 on function name
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sat, Feb 20, 2016 at 7:13 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
> Same here.
>
> And is it really the case that there are more uses without & than with?
> Theer seem to be quite a lot of uses with, and at least the second file is
> rather small.
>
> julia

I just checked the functions. The script seems to point to only static
functions that should get the & removed.

Any reasons for that?

Amitoj

