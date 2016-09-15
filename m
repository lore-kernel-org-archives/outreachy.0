X-GM-THRID: 6330587655423655936
X-Received: by 10.46.9.5 with SMTP id 5mr1729823ljj.0.1473959656199;
        Thu, 15 Sep 2016 10:14:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.69.7 with SMTP id s7ls337510lja.11.gmail; Thu, 15 Sep 2016
 10:14:15 -0700 (PDT)
X-Received: by 10.25.155.78 with SMTP id d75mr1728983lfe.5.1473959655695;
        Thu, 15 Sep 2016 10:14:15 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-lf0-x233.google.com (mail-lf0-x233.google.com. [2a00:1450:4010:c07::233])
        by gmr-mx.google.com with ESMTPS id c13si298753wme.3.2016.09.15.10.14.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 10:14:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:4010:c07::233 as permitted sender) client-ip=2a00:1450:4010:c07::233;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:4010:c07::233 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x233.google.com with SMTP id g62so43909013lfe.3
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 10:14:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=+l51Bhv1N5cdDSfgC6aG6V0ne2qneEODoRpL5BaMpOI=;
        b=ZJUresj3h4Sno/Iw7gPASPhAHtZQEptRoYoAkb28XMho13DLVde8mxU5YVtUGI0Z/J
         GU0VyWNKcMc0qYBqJ003VVk+rBzft0bsaCUhJegjimaIAk+lAcrRkSRQyElQGsEurn6B
         yBtmHYo9VALNJ09JrH4NA0LAgJIvKF6dvVoMgR1IEFEyE8SLJnEufgFvIVwcg3yNeGPV
         8fOuDEi7hrgQ8wNynMrg9eA4kP+hbeDmNfIwnS6hl/LlPBJsIGuxb9IVQ4rBDIFibIy2
         La4DFanr4HzVfVfFDYkyj/Q4xayeV1CKDQAjZcpqEjG0yp47U8LFahQMqmffquF8kC1r
         g3wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=+l51Bhv1N5cdDSfgC6aG6V0ne2qneEODoRpL5BaMpOI=;
        b=A5GqCZg9Exqd2UB/Kjt+2OVWNriH47JkpJ83RqklXPahd2CIebMPpT6vo4KJgE68rU
         srxSgVBxOzzdRS3iroQN9WV1Lxl8b3nDgVuF8kgiJrx0nmPdVIRpbfEQ59veNmezJEKK
         TD2aKa3FrmQyHUM0aTXhomMPxvKsVRrH8r/3xqtyNNU3Qqxr0UzJ+Bw+F/027jZCfhLq
         RDKRdDZCXJz5MrwAHCJ9kA45OBK/LBYIyaw9+cTV9y5tDiF6rVAU3CSUhNSCrDCjqie4
         Yt15RGQdntiqXgpTFhZ59EFtabAZLvNjpRmCObfCLr6dk19hu14yvM29k75NTPiJPJtx
         D4fg==
X-Gm-Message-State: AE9vXwNbjt4Gi6+271bjc9FEGv1HXR2r7+NXkdxZSdOxsLoEpS5+APpKYnpJ48kjm6BjcQrPRi4kLS6ejiLcQw==
X-Received: by 10.25.29.6 with SMTP id d6mr4023235lfd.93.1473959654946; Thu,
 15 Sep 2016 10:14:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.208.15 with HTTP; Thu, 15 Sep 2016 10:14:14 -0700 (PDT)
In-Reply-To: <CAAbeOSubG2DO2mzsudDyr2PcArn=W22JAF+20xFevff9L2SdRQ@mail.gmail.com>
References: <eb4ec0a3-54df-4a86-a7d5-85c77aea38c2@googlegroups.com>
 <20160915163855.GD30633@kroah.com> <CAAbeOSubG2DO2mzsudDyr2PcArn=W22JAF+20xFevff9L2SdRQ@mail.gmail.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Thu, 15 Sep 2016 20:14:14 +0300
Message-ID: <CAEnQRZAusM33K_=yzQS_=hxi+vJFEz2NOdmhbtyz2CSyknGwUw@mail.gmail.com>
Subject: Re: [Outreachy kernel] Doubts Regaarding the checkpatch.pl
To: Anchal Jain <anchalj109@gmail.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Thu, Sep 15, 2016 at 7:53 PM, Anchal Jain <anchalj109@gmail.com> wrote:
>
>>I'm sorry, but I can not parse this, can you rephrase it?
>
> When we run checkpatch.pl on our staging directory then it shows
> - Errors
> - Warnings
> - Checks
>
> So I want to know if we solve the check using checkpatch.pl tool then it is
> consider in our patches
> or Only those checks is consider which is solved using  cocci script because
> this script also fixes those
> checks

Can you give a real example for the CHECK? :)

