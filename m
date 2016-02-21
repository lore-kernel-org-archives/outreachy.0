X-GM-THRID: 6253586316286492672
X-Received: by 10.182.120.106 with SMTP id lb10mr21225901obb.24.1456027014427;
        Sat, 20 Feb 2016 19:56:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.23.52 with SMTP id 49ls835282qgo.79.gmail; Sat, 20 Feb
 2016 19:56:53 -0800 (PST)
X-Received: by 10.13.204.85 with SMTP id o82mr21323722ywd.51.1456027013662;
        Sat, 20 Feb 2016 19:56:53 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x235.google.com (mail-qg0-x235.google.com. [2607:f8b0:400d:c04::235])
        by gmr-mx.google.com with ESMTPS id y131si1155887ywc.0.2016.02.20.19.56.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 19:56:53 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::235 as permitted sender) client-ip=2607:f8b0:400d:c04::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::235 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x235.google.com with SMTP id b35so90097850qge.0
        for <outreachy-kernel@googlegroups.com>; Sat, 20 Feb 2016 19:56:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=Zlpju9Q1zQBEkLksqrCNstSFw9CSH13404jIOVf8VGc=;
        b=gAmTn+4wtmQXFZkoMYxCbNriM4HkgPuRORXRZhJnOsbBkw27eAwjSXqcO7Z1VVmNzO
         f8za0HueoKSGjAM7S07qF9tNkdEp/9YJNDyWXYF3x7A2kzWxjsHBJub5WQryWCFFNUcG
         AL/fWO2PSffBDDDnhz2dpV8mc2uHC/bLegtmOJu12MGll6ig+blUF0+XpCfkct+MUniI
         cycXCrMeOKuQ4TY7vMewKsfI9QdhuPif11GleIXV//FyPs0PWC2a0g7phgGy1RNg19rZ
         rqMWRYB5CbaIbmijEj6tQJ1bK3Qbuu3OWgD8Pf4SCENI27K6cPgkDX0Ak1t4ErRPnhNr
         Xe6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=Zlpju9Q1zQBEkLksqrCNstSFw9CSH13404jIOVf8VGc=;
        b=PjIAnJsSgZLYddL+blIyXWHtamYGIEI9Q7UvZObFS5O0Re8VEBnAovUfM/njvDm6yw
         07YxLdjcWoaOLBN48OiazM1AOwgtuhUBHbvREijCPzcSB4XjorxtF3RcX+vfSfP8kS9K
         s5jpsYgm3rRKlVWSoizyWzyL+2AdhxUk6NOcFQteaphv1Jy2/RZhgxmmeZlrcPbQ19V+
         dNZRFtdxLAL3vtO/DPf0vMZIED8nGzxOOB0Q7ISXBnJYJca/pIxryq0AiJsrTUz1QhtL
         6VsWNCp4Dre+eBfoiS66M+8FfFrv3iOs7iVnKorV9cmvyHlLDUBzmBzefgDghMnp8fvL
         OA8g==
X-Gm-Message-State: AG10YOQgrU+DjmpvKZZ53UelrG2xJuN2vMIv/oW0UTztXpvroMNGKFXA8HhBoO9gL66vypiQZRMmqY6e2XPGxw==
MIME-Version: 1.0
X-Received: by 10.140.95.117 with SMTP id h108mr26134328qge.65.1456027013455;
 Sat, 20 Feb 2016 19:56:53 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Sat, 20 Feb 2016 19:56:53 -0800 (PST)
In-Reply-To: <20160221034844.GA3899@d830.WORKGROUP>
References: <20160221034844.GA3899@d830.WORKGROUP>
Date: Sun, 21 Feb 2016 09:26:53 +0530
Message-ID: <CA+5yK5HSsqUaAUHxFEum3CrMws+qsavSA64fs2m+s=Ka_Db2zQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] Please use the tasks page
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Alison Schofield <amsfield22@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sun, Feb 21, 2016 at 9:18 AM, Alison Schofield <amsfield22@gmail.com> wrote:
> Remember to do this:
>>> *Before* you start on a task, please claim that task through this page:
>>>  http://kernelnewbies.org/OutreachyTasks
>

Thanks for the reminder. It completely escaped my mind.

> Tejun...We need more of your tasks!

We certainly do :)

Amitoj

