X-GM-THRID: 8221215424512
X-Received: by 10.112.125.67 with SMTP id mo3mr7283477lbb.6.1426498132809;
        Mon, 16 Mar 2015 02:28:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.8.193 with SMTP id t1ls556147wia.30.canary; Mon, 16 Mar
 2015 02:28:52 -0700 (PDT)
X-Received: by 10.180.13.195 with SMTP id j3mr12194741wic.2.1426498132508;
        Mon, 16 Mar 2015 02:28:52 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x233.google.com (mail-wi0-x233.google.com. [2a00:1450:400c:c05::233])
        by gmr-mx.google.com with ESMTPS id cl5si629193wib.3.2015.03.16.02.28.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 02:28:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) client-ip=2a00:1450:400c:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x233.google.com with SMTP id j2so37682432wif.1
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Mar 2015 02:28:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=lNr5w9LYrq8NyabeOf7vQlir6JVGOIuVVKgrHtFs8Yg=;
        b=d7DCk+XLOylHhlHsegQWjTIj0zw/pbR34fJ3WYJ7Q5s/WmJGoEQ+yZ/wuSarw8RPtR
         Rm8M+P+3eP6EJccDMTx9KkPLeKNlh2SBaWt67Ol9K9U2KVfyG48Gd2ccStNPJxKUTzFg
         tL0tkE3yuFK/Vl6SqNJNaFcE4UMFJQADe59l3AJbl+hnZNutcLYrks/4AO1X6IkOaEMt
         dxX0klikS1HwJb+ejWDtoR7sqV+JzZvvgI0rp6k2wHelNFLshEbhYtAShi6VN53Imgpk
         vVfz/KKrhvfUut7F4TRRrF1i2kbA/yc8XLdifOiQel8PQn0EFGBwLEnDITznTF6Ifx6s
         AEKA==
MIME-Version: 1.0
X-Received: by 10.194.61.161 with SMTP id q1mr123487785wjr.132.1426498132441;
 Mon, 16 Mar 2015 02:28:52 -0700 (PDT)
Received: by 10.28.139.211 with HTTP; Mon, 16 Mar 2015 02:28:52 -0700 (PDT)
In-Reply-To: <8eee2f6737de63aa989b3d2254c7b11bdc75dbaf.1426353884.git.cristina.opriceana@gmail.com>
References: <cover.1426353884.git.cristina.opriceana@gmail.com>
	<8eee2f6737de63aa989b3d2254c7b11bdc75dbaf.1426353884.git.cristina.opriceana@gmail.com>
Date: Mon, 16 Mar 2015 11:28:52 +0200
Message-ID: <CAEnQRZAu5vOyt82SPitwAxQz5tEZmR=7iSCFnPghxHFPwWM9ng@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 6/6] Staging: iio: Use braces on all
 arms of if statement
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Cristina Opriceana <cristina.opriceana@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sat, Mar 14, 2015 at 8:54 PM, Cristina Opriceana
<cristina.opriceana@gmail.com> wrote:
> Add braces to improve consistency when using if statements.
> Found by checkpatch.pl:
> "CHECK: braces {} should be used on all arms of this statement".
>
> Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>

Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>

