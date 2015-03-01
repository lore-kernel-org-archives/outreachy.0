X-GM-THRID: 4118330474496
X-Received: by 10.194.239.41 with SMTP id vp9mr3050803wjc.5.1425198060761;
        Sun, 01 Mar 2015 00:21:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.246.11 with SMTP id xs11ls337935lac.54.gmail; Sun, 01 Mar
 2015 00:21:00 -0800 (PST)
X-Received: by 10.112.199.69 with SMTP id ji5mr3050663lbc.0.1425198060260;
        Sun, 01 Mar 2015 00:21:00 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id el6si431784wib.2.2015.03.01.00.21.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 00:21:00 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by wiwh11 with SMTP id h11so8462680wiw.3
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 00:21:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:in-reply-to:references:date:message-id:subject
         :from:to:cc:content-type;
        bh=b3shhvnIsoZTtPFyEXSQ5oHk6dN0jHBjKYzS8XsoL5E=;
        b=eZQUjRFXpVwBD7kPaFy2jl0HFVyMAe5xEtAMMCEEqHUvDx5BS+PAiVAz+2S38Got/V
         K3ZIyXo73J4MV3Ua72aVGCx6IadxN0v4S9LTZjlzkb5AFVWSYrw/oOpprQeZe98OCpd9
         YqTUquPMQMhSqaxnWIWYVu8wJNxU+ToTQ7RAiDjWny5+fH9ER9R9E5nHklavd04vUWk+
         2Fs2DJ6srLSTbzjRLGXQo7c6/54dTPrPm2RhJXUwLxbycxuw2hf6JsCSQUFQmhGBtCUf
         +jd2niyUfluUlDp5xLgoyl9Oj1LnHRsbNwYnkXWxDyrzul2DlAKqa/BWJM9DnACfsvx5
         BBVw==
MIME-Version: 1.0
X-Received: by 10.194.94.1 with SMTP id cy1mr44895205wjb.127.1425198060160;
 Sun, 01 Mar 2015 00:21:00 -0800 (PST)
Sender: daniel.baluta@gmail.com
Received: by 10.28.3.68 with HTTP; Sun, 1 Mar 2015 00:21:00 -0800 (PST)
In-Reply-To: <1425132832-4664-1-git-send-email-dilekuzulmez@gmail.com>
References: <1425132832-4664-1-git-send-email-dilekuzulmez@gmail.com>
Date: Sun, 1 Mar 2015 10:21:00 +0200
X-Google-Sender-Auth: rJVbmxQ4_0iQMgM6iK9jE87BNjg
Message-ID: <CAEnQRZBq9EThbps6Ef2wGVbDbKmfn4=oA4nR4MR9AU=VPXbeHw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: Remove space after
 the name of that function
From: Daniel Baluta <daniel.baluta@intel.com>
To: Dilek Uzulmez <dilekuzulmez@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sat, Feb 28, 2015 at 4:13 PM, Dilek Uzulmez <dilekuzulmez@gmail.com> wrote:
> Fix checkpatch.pl issues with "space prohibited between function name
> and open parenthesis" in lporc_echo.c

Better say:

Staging: lustre: Remove space after function name.

Daniel.

