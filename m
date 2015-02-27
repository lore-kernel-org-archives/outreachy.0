X-GM-THRID: 4353845886976
X-Received: by 10.68.192.10 with SMTP id hc10mr12229954pbc.4.1425031620217;
        Fri, 27 Feb 2015 02:07:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.102.101 with SMTP id fn5ls200156obb.85.gmail; Fri, 27 Feb
 2015 02:07:00 -0800 (PST)
X-Received: by 10.182.80.7 with SMTP id n7mr11935514obx.10.1425031620001;
        Fri, 27 Feb 2015 02:07:00 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-qg0-x22b.google.com (mail-qg0-x22b.google.com. [2607:f8b0:400d:c04::22b])
        by gmr-mx.google.com with ESMTPS id kt5si429272qcb.3.2015.02.27.02.06.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 02:06:59 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2607:f8b0:400d:c04::22b as permitted sender) client-ip=2607:f8b0:400d:c04::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2607:f8b0:400d:c04::22b as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-f43.google.com with SMTP id i50so13285200qgf.2
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 02:06:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=2MLQYBTdF2VuL6RLqn4OpRCFy8TzZRQehloNMZiT5AY=;
        b=nK+a0iRjnsGZt56DB9EPrFIYMLmU+k4kgKMj1Y+q/QieU6ZqnVLG/M0XUGQySI1ByN
         6MiAcAolPIO9J3k+MyUGPPjnwiBfLtOPkl0qFBqQ+cGY33e+sU1qDqiW9seBkHZa7HGo
         P96IdOQHWzCb+Gcg65jkFh01PT768UqT10pUjRfEIReUNndEb5TZC4qnQhkb2TdxT6MZ
         wMcLzA57z3uv9SfLHphhjQEOf67fLEM1UXgJE8YG247qLQBeEW2Uzh7JUxgY1jmJf0SW
         HCMretUORBI4GP1tHPyiblO6+u1IQeBO4+wa/ULbRX/MybNMUgZtDwF+bFEuBzoVIC+7
         aiOg==
MIME-Version: 1.0
X-Received: by 10.140.21.232 with SMTP id 95mr26053626qgl.29.1425031619874;
 Fri, 27 Feb 2015 02:06:59 -0800 (PST)
Received: by 10.96.174.74 with HTTP; Fri, 27 Feb 2015 02:06:59 -0800 (PST)
In-Reply-To: <1425031249-6736-1-git-send-email-yeliztaneroglu@gmail.com>
References: <1425031249-6736-1-git-send-email-yeliztaneroglu@gmail.com>
Date: Fri, 27 Feb 2015 12:06:59 +0200
Message-ID: <CAEnQRZDL71hDd+nEZsHG_Y+=bX7FBUcYv5=7o5-PDYru60KcZg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: vt6655: Fix do not use C99 // comments
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Fri, Feb 27, 2015 at 12:00 PM, Yeliz Taneroglu
<yeliztaneroglu@gmail.com> wrote:
> Fix checkpatch.pl issues with do not use C99 //
> comments in key.h
>
> Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>

Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>

