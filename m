X-GM-THRID: 6265914371751280640
X-Received: by 10.112.138.98 with SMTP id qp2mr1661856lbb.4.1458904743378;
        Fri, 25 Mar 2016 04:19:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.22.22 with SMTP id m22ls85475lfi.94.gmail; Fri, 25 Mar 2016
 04:19:02 -0700 (PDT)
X-Received: by 10.112.212.68 with SMTP id ni4mr1578672lbc.12.1458904742782;
        Fri, 25 Mar 2016 04:19:02 -0700 (PDT)
Return-Path: <sveta.orlik.code@gmail.com>
Received: from mail-lf0-x22c.google.com (mail-lf0-x22c.google.com. [2a00:1450:4010:c07::22c])
        by gmr-mx.google.com with ESMTPS id ph10si479815lbb.0.2016.03.25.04.19.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Mar 2016 04:19:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of sveta.orlik.code@gmail.com designates 2a00:1450:4010:c07::22c as permitted sender) client-ip=2a00:1450:4010:c07::22c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of sveta.orlik.code@gmail.com designates 2a00:1450:4010:c07::22c as permitted sender) smtp.mailfrom=sveta.orlik.code@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x22c.google.com with SMTP id q73so50919633lfe.2
        for <outreachy-kernel@googlegroups.com>; Fri, 25 Mar 2016 04:19:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding;
        bh=JCFSa6ecfvqWheOUlY8shegGjZTKRY62IPKD4ERl2vc=;
        b=gT9sZmHFsfdrJ1yH7lJY8n2vexUawpu6Kdnvk8CuFYKe+BMaF/GSS2YfG1u+CHMtpo
         6pRZ2iAXNUQUfVWIbvRthYstzSKwFIgTvF9iWhrAm25dY4Woq6/bEU3bX/US9ChwFzjO
         w+hguhyoM97MQzAtOKl8PbhTfKBlcv8RnelNnkAM3HOaShuUEkz7vbDnNQ2NO8sJ7cMT
         LQiLLwutjc+mf2RYalfDthh9nfJ2EhigeNvI5hFOo4mrQfG4ix/MdVyjNVrzXEkxGFUy
         k4GHA23GIS1dcDhKAsPTNqAgSN0X60/wm5CS3AvWvGfH/pzvdu5nB+X2zNV0hESB1vjB
         ANYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding;
        bh=JCFSa6ecfvqWheOUlY8shegGjZTKRY62IPKD4ERl2vc=;
        b=f1RAslia7FLB3eJ8UpGkk7s0F+vQRnZ8cqG2eMMvtZydimWrQVtgUeHD0kArcrdtB7
         to2XGDQrwPQ+ro7QAmcK83zn74sfkpoPIXhmsKFiYYWfPdNy7ghDUhMEJ51bA6QnwGaS
         K4fcrdEbRdt2YVtyy0UcATjqpR5yALabwehaH5wOlRjqXSf1jlOJh6CfD2McDHaGSt7d
         LkdTOJQ7gCdvRlu9WPk3XYglU5KxTyhrWEPRCGRLafB9/ZYauzPkz1vJ1ZO/e4iwJN1T
         anbygITb7Jj1RXszIX/wkqvpaixdaBzwuwEl/1i+t1dPMZ57hIFSumU2wiPBNLL5oyuZ
         7PHw==
X-Gm-Message-State: AD7BkJIeJ8Fi7eCgJPannAHaRV4w+44O3lrFcXPlM9ySuDDh1nDZy04uzkj8/NaGB+LsCw==
X-Received: by 10.25.152.205 with SMTP id a196mr5754713lfe.85.1458904742661;
        Fri, 25 Mar 2016 04:19:02 -0700 (PDT)
Return-Path: <sveta.orlik.code@gmail.com>
Received: from [192.168.0.77] (broadband-46-242-29-57.nationalcablenetworks.ru. [46.242.29.57])
        by smtp.gmail.com with ESMTPSA id iy8sm1872190lbc.20.2016.03.25.04.19.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1/SSLv3 cipher=OTHER);
        Fri, 25 Mar 2016 04:19:01 -0700 (PDT)
Subject: Re: [Outreachy kernel] Troubles doing Tutorial
To: outreachy-kernel@googlegroups.com
References: <56F4FFE9.6030307@gmail.com> <20160325102418.GA622@Socrates-Mint>
From: Svetlana Orlik <sveta.orlik.code@gmail.com>
Message-ID: <56F51EA4.4020100@gmail.com>
Date: Fri, 25 Mar 2016 14:19:00 +0300
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:38.0) Gecko/20100101
 Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <20160325102418.GA622@Socrates-Mint>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 25.03.2016 13:24, Eva Rachel Retuya wrote:

>> 2. Submitting a patch using mutt went OK, but when I tried `git send-email` - I got error:
>> sendmail: fatal: open /etc/postfix/main.cf: No such file or directory
>> Died at /usr/lib/git-core/git-send-email line 1292, <FIN> line 3.
>>
> 
> Most likely you will need to update your .gitconfig to point to the
> configured esmtp the same way you did for mutt. Add this to your
> .gitconfig:
> [sendemail]
>    smtpserver = /usr/bin/esmtp

It works, thanks!

--
Sveta.

