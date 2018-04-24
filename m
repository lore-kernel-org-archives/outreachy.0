X-GM-THRID: 6547994617189498880
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 2002:a19:9b09:: with SMTP id d9-v6mr1131537lfe.20.1524577693813;
        Tue, 24 Apr 2018 06:48:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.135.129 with SMTP id n1ls2200988lji.0.gmail; Tue, 24 Apr
 2018 06:48:12 -0700 (PDT)
X-Google-Smtp-Source: AIpwx4/m1Wn1KzDsFXvqOSHYLMwrShwRkWtfGQtTcopFclHCh15TpVAQvOBYIS0/siGXuMRc6OdX
X-Received: by 10.46.22.71 with SMTP id 7mr1557456ljw.30.1524577692634;
        Tue, 24 Apr 2018 06:48:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1524577692; cv=none;
        d=google.com; s=arc-20160816;
        b=ZV5f0uL/HaNW0E3W7ySScKR+COYd0nIZU1ppTBkLgoEqc6/1SWhk3NROO+/BIQjQRW
         YyhWobjxxGVqlu+vYpCr+2jLakvgvjx2++DGFayt2fvQN4RcqOmB1dsqGgH7b12KTH4u
         ueVNNTjJzAtfliih7A1EJSCoYIgrS6upPaREYvb6FyJF5UeK3bfq0SnvnZXZ1dvBO1QT
         jI8oxGwrMLZL11cntingF/pvgz5yh31B/CHuJjPYLupXU8r055cyOBHVrFmlt3wMYvQf
         o3H+C6aED5BohWQOTCMD3g7bzC7dDabbyrJ5h7Y9ZrKH2I+5tmVFvjQNvysEOjWtJ9Pb
         63HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=9eYJmTQOKKMYT0Inov3Bw48j6Xch1mB33x3J1bG/E9c=;
        b=JaDffHeBOzHqgcKxdKoPqlpDvbjbooDtgPdHPC3K3nkmANW8VWiOXxOfFmsQlf+1o+
         vAGaQaeVaHv8NkGd/3XRZtfafu6eRtQPIZ+wGK7xJAGrXEvxBHJipRKPzivzRAUPJ3sd
         GzefFxDm34WHAgrdUIgU2TABHMrbSLwBhsLqhXxFiWTiExethAV9uSELTE9mhbpeE2yZ
         +maCu2LVh9vFXpWBOK8hyYXI8Vwvv1lEdcAbhPi/MZeIGs7hDAgJNIuj1+w9ZP/vXnNL
         0vCgKZZ9PeEjroonc672MYYWIEl37DOQqIXed9N0SNBd7cBp4CpEFRALtIGpHxw4DaUZ
         60ZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id j3-v6si326847lfb.1.2018.04.24.06.48.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Apr 2018 06:48:12 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.49,323,1520895600"; 
   d="scan'208";a="324273539"
Received: from static-wan-bl3-194-82.rev.webside.pt (HELO [172.16.1.149]) ([62.28.194.82])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Apr 2018 15:48:10 +0200
Date: Tue, 24 Apr 2018 14:48:10 +0100 (WEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: yatripatel.169@gmail.com
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Prepare for next Outreachy round
In-Reply-To: <da3b1a39-4299-4726-9f87-bd65d0940bf5@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1804241445550.2490@hadrien>
References: <da3b1a39-4299-4726-9f87-bd65d0940bf5@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-334348570-1524577690=:2490"

--8323329-334348570-1524577690=:2490
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Tue, 24 Apr 2018, yatripatel.169@gmail.com wrote:

> Hello,
>
> I'm Yatri and I wish to contribute in open source and other organisations
> before the next round of Outreachy. Can you please guide me through the
> projects in which I can contribute keeping in mind that I know Java, C++/C,
> HTML/CSS, and have a good hands onon Android app development.

If you like you are welcome to follow the Linux kernel tutorial on the
Linux kernel outreachy page:

https://kernelnewbies.org/Outreachyfirstpatch

You can work on drivers in the staging/drivers directory and submit the
patches to the people indicated by the get_maintainers comment (this is
described in the tutorial).  It will be good practice to get ready for
next time.  But the list is only open for mentoring during the application
period.

julia

>
> Thank you,
> Yatri Patel
>  
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/da3b1a39-4299-4726-9f87-
> bd65d0940bf5%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-334348570-1524577690=:2490--

