X-GM-THRID: 6811040563999014912
X-Received: by 2002:a7b:c010:: with SMTP id c16mr1042487wmb.73.1586245689312;
        Tue, 07 Apr 2020 00:48:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:4101:: with SMTP id j1ls1959679wmi.2.canary-gmail;
 Tue, 07 Apr 2020 00:48:07 -0700 (PDT)
X-Google-Smtp-Source: APiQypLJSMc4srOp8KLp+guG1Oz5F+bOAyaC6nPjKdwQX0okvUINUx2CW2cccTmCwRh6aNpWj0mf
X-Received: by 2002:a1c:e284:: with SMTP id z126mr1058546wmg.32.1586245687805;
        Tue, 07 Apr 2020 00:48:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586245687; cv=none;
        d=google.com; s=arc-20160816;
        b=eItRjx1d825JhjDuaJl6Fzs8g9rJdYm5hd0dIKfyzo9DYOnrayHkzj7gl7/mtL83mT
         3+Ickw6IbG1yYV282xzDi8qYybdk4kcO2+KebDgsWMvtH055gmMS8GJuC9tiJuVYY7vc
         6QANlYuomuU5XMdBb+WPfx/PHvCKgGEJGNtW/Pf9MocVCw3bUSkOu6McUeQc0WHk+jvv
         kEv10/gICPFtcs3H0N2bezbjYw+P3fh12tU9ZIJ7JVi8l4WADS3kBl6WmNyMKxpURAfQ
         ucvImVb2xVWIi0vW6OXxn+d6EGTrS7dZuouPzFJc+jh0x+F6diYrDwKEjxmR1IhFVGYS
         MU1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:to:from:subject:message-id:dkim-signature;
        bh=mf2D3RNyMEzBH/2MLl7qCuAKwXBvBIaidrTKuzRqnj8=;
        b=cOGJOt1GurJxSGS55bcOL9uH8tJTdxCdWqc9DL4XlYnkkdp+TSJ6OMKTfRdnpzFTvI
         cajYEIZa7vNHGLHhHLRjt7DWv103uryg03ZANWWB+MmlrdE1V8kqky3uqUVQpdz3w0fY
         m5rwTD+qnoKCcTuPAgmLnaSr7yfNrZIdnSGP7c2pIiFX9PXrLndEoZGNidYjTzmNg7Sq
         s3SB97heyloe4J8OKTixTwgAtAJrLcL7WqYbi++Ogoe1Hg0gWXAMYM3L5JZeHxncZSpj
         a3LuD9Bo76MgAIAUtRAKFerGNrfH2LjI7QjFj69kvw6MIWo4S+dnTB9krFMj/Tc9wMkV
         V52g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Wm2KlYKU;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id u25si116977wmm.3.2020.04.07.00.48.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Apr 2020 00:48:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Wm2KlYKU;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x441.google.com with SMTP id p10so2668822wrt.6
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Apr 2020 00:48:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=mf2D3RNyMEzBH/2MLl7qCuAKwXBvBIaidrTKuzRqnj8=;
        b=Wm2KlYKUlBIzxYOi3rq6lXS1aEl5kJg7FYRGkXJhcw2Na2BSE3Td2ip525HdsJaQMi
         bZ5aWMtQTyQtHkvfmo6XGEvWhfWOFOaIsMUVHmv72UqtkH925GFED6JnPHcKFtZhegEs
         sAi0tTYN6FhYLRI2x+IlNSEu9YsZ8ffzN2Op9YKnFTQP6YS7QE87HU3/+truJ+rv+aYY
         9nynZqG80AWX1XeJ2TbYG7n/5I+jGkBDfhIQ79XSJ5rKLD6Px8/RSyUDNbqruzm03GXL
         fIP8/AfQc99D6KMH5huDFxeL80WWrUD4xzmbsiYXi4BZgYY2axi5sBCOzwkW5SDm2h2j
         DEpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=mf2D3RNyMEzBH/2MLl7qCuAKwXBvBIaidrTKuzRqnj8=;
        b=qanzQID4eh2B3ImNMk6ACkA5sl8voF98huTtjEsJSMIDK5qO/YrZfX436Nc2pbv4by
         22qrt/iuWiMrkDcliu6gsGGtACg1Dio6afspa2c+lp5WDj4MYZpKp4w+Z3s9BND7TPPn
         zuXAzYQBUylrjsda9V9HzKvqOGSTpA8433DyaDL7uTzcU/9R/K5inoce++zbwrbbmsPx
         CMLoxvLGaSTM+2TbsTEqMQFd8aTYxmvsSywMPak+qm27Z1XZt3lgu4V6TXRdbFnHjcy3
         r7T/LHOLWYMjhAvBdgww0ag5CXerDJSeOTo0q3s5rcPWO6fOu2Kkoc8e0k0N6TSfdNBe
         aNYg==
X-Gm-Message-State: AGi0PubcsY+hd2I16EDCO8pd7kzXfDgCYbZCmBYrwEa738yfyRu4+1We
	zShd/TdpzMlGk74xFPyk0bTsWDjloCE=
X-Received: by 2002:a05:6000:143:: with SMTP id r3mr1198237wrx.279.1586245687575;
        Tue, 07 Apr 2020 00:48:07 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from debian ([197.34.214.63])
        by smtp.gmail.com with ESMTPSA id v7sm29870292wrs.96.2020.04.07.00.48.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Apr 2020 00:48:06 -0700 (PDT)
Message-ID: <fbd90100d26c549bee00c5b42007dcb85e01f0ac.camel@gmail.com>
Subject: Re: [Outreachy kernel] Re: Outreachy reminder - final application
 deadline
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Vaishali Thakkar <vthakkar@vaishalithakkar.in>, Outreachy
	 <outreachy-kernel@googlegroups.com>
Date: Tue, 07 Apr 2020 03:48:05 -0400
In-Reply-To: <CAK-LDbKyOLzU6YDbT0TcxxOsdKEQHVwm1NzTiirnrEF6zHaEqA@mail.gmail.com>
References: 
	<CAK-LDb+6_rhwHUWRKL5FkiHZqRRz7vhMRJVsiP=r+sL5i1OG_g@mail.gmail.com>
	 <CAK-LDbKyOLzU6YDbT0TcxxOsdKEQHVwm1NzTiirnrEF6zHaEqA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Fri, 2020-04-03 at 06:17 +0530, Vaishali Thakkar wrote:
> On Thu, Apr 2, 2020 at 2:45 PM Vaishali Thakkar
> <vthakkar@vaishalithakkar.in> wrote:
> >
> > Greeting Outreachy applicants,
> >
> > Thank you for all your contributions in the Linux Kernel. This is a
> > reminder for you all that Outreachy's final application deadline is
> > approaching on April 7, 2020 - 4pm UTC.
> >
> > Now is the time to record all your contributions and apply for the
> > projects you're interested in. We would advise you to at least apply
> > for 2 projects of your choice. And please do not wait to apply on the
> > day of a deadline. You can always add more contributions until the
> > deadline. Don't forget to add links to your patches while recording
> > contributions on the website.
> 
> Also, I forgot to add it here but as it says in the welcome message
> please do not forget to add your project preferences in the
> 'community-specific questions' section of the application, if you have
> applied for more than one project.
> 
> Thanks!
> 
> > If you have any query, feel free to contact me and project mentors. We
> > wish you all the best for your applications.
> >

Another important question and i'm looking forward for an answer please
how can we DELETE a contribution??

Sam
> > Have a nice day!
> >
> >
> > Helen Koike and Vaishali Thakkar
> > Outreachy Linux Kernel Co-coordinator
> 



