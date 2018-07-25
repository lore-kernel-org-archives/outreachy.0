X-GM-THRID: 6582055999297814528
X-Received: by 2002:a50:c9c7:: with SMTP id c7-v6mr534034edi.0.1532511874699;
        Wed, 25 Jul 2018 02:44:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:f281:: with SMTP id f1-v6ls2636128edm.6.gmail; Wed, 25
 Jul 2018 02:44:33 -0700 (PDT)
X-Google-Smtp-Source: AAOMgpcABu1mdUf9zzt8YWI8Eui2V3Xe2rbXIVk7X7LQL8pX+Ja+rcrpmke+YZGEBKgXlk3KkatW
X-Received: by 2002:a50:fb85:: with SMTP id e5-v6mr6457649edq.1.1532511873883;
        Wed, 25 Jul 2018 02:44:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1532511873; cv=none;
        d=google.com; s=arc-20160816;
        b=yiYmS2+w+0ouP/jDv//TyDRLofrUWtFUrjTjPtKYTelGVn9jPBcO9xRajEhSW8OC6q
         K8o+W6c6eFm+0UZR4h/Qn+dOd2Bt/g7fof4ZUHwnIvtstjykA+I048qlBjvojiaKRbQ/
         9eYlHjG0bJb8+rVuWnB1HVdIQLiQiQxo9NzE+KS+vaZUcAr+h2QKrikQDUt1zThbo+uW
         PmctklQRz5qYKm7sGyLmCO2xe+5VzqtI1QjAmBz3aBvH4lRqDaQMNxgtpho13gEPAqWS
         Y1JyUz8NxrK04vD72/bDlTEzKAFiM76Eq+VOSYzrBdnW24hGbWljrhQnciAexSeIcmHM
         mRjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=4OhLiCkFgu+dKDU4pvKa6EXw+wjcMaQC4LJh1W40z3k=;
        b=UxdDMZ1hs5X6C0ROFhvF+l95/Ms8UB+DvwKypNefuZp7ylfVfAIk4KWodg8LQjpxgE
         c4xsV0lSJlp0jc7k7v0G/MTrGxjwqlMQRTm4v6bPaZQNTWc1Ma5pg7FDJsTfjb6GPpzg
         K3kN5NYx0OSCZxWg8iORN23qOjLvaYDVLuKDOyy+YNtY/lz04flezRjO9SMk11R8OXbs
         jFXEAf2eZCrUtglgim85tZRxJa38al2T1ch5zO4nqGIac6Lm0QsAmc1xcDLsue4bCMZQ
         7pP7wTvgGJQfT3qB7MnXNbLdtSVdhVPYJeZ2z5590RcVQKK03WT6zMG8eAa0l+96nnjX
         HgzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id a26-v6si617228edn.2.2018.07.25.02.44.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Jul 2018 02:44:33 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.51,400,1526335200"; 
   d="scan'208";a="340223823"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Jul 2018 11:44:33 +0200
Date: Wed, 25 Jul 2018 11:44:28 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: sekhar.916@gmail.com
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] read ADC value in kernel space
In-Reply-To: <5dde3470-f3b7-4bed-bbe9-eeab765b1f05@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1807251142100.3539@hadrien>
References: <5dde3470-f3b7-4bed-bbe9-eeab765b1f05@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 24 Jul 2018, sekhar.916@gmail.com wrote:

> Hi ,I am using I.MX6UL based board, i have to read from ADC channel 1 and
> have to take some decision. So we have to do it in some other driver, so are
> there any lernel specific functions for ADC. We dont need sysfs interface as
> it makes our process slow

Hi,

I think it would be better to contact the kernelnewbies mailing list.
This mailing list is just for people who want to apply for the Outreachy
internship program, and it is only really active during the application
period.

https://lists.kernelnewbies.org/mailman/listinfo/kernelnewbies

julia

>
> Thanks and Regards,
> Chandrasekhar
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/5dde3470-f3b7-4bed-bbe9-
> eeab765b1f05%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>

