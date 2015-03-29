X-GM-THRID: 10349433585664
X-Received: by 10.194.95.67 with SMTP id di3mr6886292wjb.0.1427644099878;
        Sun, 29 Mar 2015 08:48:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.163.36 with SMTP id yf4ls558297lab.43.gmail; Sun, 29 Mar
 2015 08:48:19 -0700 (PDT)
X-Received: by 10.152.23.7 with SMTP id i7mr32859laf.1.1427644099302;
        Sun, 29 Mar 2015 08:48:19 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id o3si462893wib.2.2015.03.29.08.48.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Mar 2015 08:48:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x231.google.com with SMTP id g7so72317788wib.1
        for <outreachy-kernel@googlegroups.com>; Sun, 29 Mar 2015 08:48:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=5Z6Nz5ywA6lQ4Z1tzaR1kBqjxh4JolNWkbfAkP1zBUc=;
        b=E5J0sNw+jWihMJaQdh0XUYvUbcpo4awuRzCa3AGT+76ZojeZyhse1+wuGqxSDGO2HP
         pNm3HZJ6PLhDPE5FKrADTqRGQMh1zflb/wGzRAxC0ewAtVhm0+vx1dwGXBWtwZetLrRX
         K9TJ6iuAVK/M7+SE5O1HZyfvybhIdN//pB1NrJ2O7pbmhgY6ogBY0OiSJIxlCqAEZvjM
         VotstCXgbG+awr97Gpp13od4U8ao7MUTroYmWymVCGlfMsCFiURSh9N7FBiEott7DfKV
         RZJ1BH07t7e8Nn7kv4ke6WyyZ5pjzgEIUJ4rD9sdQypTEmbcXkzruOocpeQz3lp07nQA
         IVWA==
MIME-Version: 1.0
X-Received: by 10.180.84.69 with SMTP id w5mr8693606wiy.18.1427644099198; Sun,
 29 Mar 2015 08:48:19 -0700 (PDT)
Received: by 10.28.139.211 with HTTP; Sun, 29 Mar 2015 08:48:19 -0700 (PDT)
In-Reply-To: <cover.1427642156.git.cristina.opriceana@gmail.com>
References: <cover.1427642156.git.cristina.opriceana@gmail.com>
Date: Sun, 29 Mar 2015 18:48:19 +0300
Message-ID: <CAEnQRZA1rc+r8Lq51GAfW0Omt-QbBMp4P+KitW7a=gFcE4ettA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/7] Staging: iio: Remove explicit NULL comparison
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Cristina Opriceana <cristina.opriceana@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sun, Mar 29, 2015 at 6:19 PM, Cristina Opriceana
<cristina.opriceana@gmail.com> wrote:
> This patchet removes explicit NULL comparison from the iio drivers.
>
> Cristina Opriceana (7):
>   Staging: iio: Simplify NULL comparison
>   Staging: iio: Remove explicit NULL comparison
>   Staging: iio: Remove explicit NULL comparison
>   Staging: iio: Remove explicit NULL comparison
>   Staging: iio: Remove explicit NULL comparison
>   Staging: iio: Remove explicit NULL comparison
>   Staging: iio: Remove explicit NULL comparison

Here you need to add a specific tag for each commit message.

e.g staging: iio: iio_simple_dummy: Simplify NULL comparison

thanks,
Daniel.

