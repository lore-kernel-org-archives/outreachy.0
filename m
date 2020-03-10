X-GM-THRID: 6802335278632534016
X-Received: by 2002:a2e:9205:: with SMTP id k5mr10407790ljg.133.1583824576867;
        Tue, 10 Mar 2020 00:16:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:211:: with SMTP id y17ls2230200ljn.10.gmail; Tue,
 10 Mar 2020 00:16:15 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtRWKW9YVopRzwFgTASB5eFG0U5mLyBPlq1U06K7jglJPsmYpmhxx9uXNB4PNR2SPtWiMEu
X-Received: by 2002:a2e:920d:: with SMTP id k13mr10428239ljg.13.1583824575241;
        Tue, 10 Mar 2020 00:16:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583824575; cv=none;
        d=google.com; s=arc-20160816;
        b=B/XXMi+5YbakATLzVfWSfpv1E8yY+iAgE06004n7PVKjn07zxromB98YaFyralvqTC
         JZTQijBbKxMIcWQ7KPSaHSiedSKuDCCRVP2o0F1Xfc+rxfUgrv8NjauA3g7gT3ucxTKw
         h1xhUOqkC7kf+ZTbJTw1WvRzB3wFM3sOejnkm7i9oY5bd7o5cRNSGI8pqesgkLHI2aMT
         KubzhpuHDKsi9jPwaDJlAvRbKvQe3zkIZAisTWTT4lNOLfolxCkJhFXEtegt6aaALwrD
         865eQwolikWLmciv48+Rc9nQJ7r1qowcDYTV5qt73KRrx5wlk+nB56zH4gRBhc2Z8hQO
         23jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=0dPpeqtcADhPB8k9FsOEd0dRNIN6XC9OwsXIFFzMf0U=;
        b=G8xWJGn0hDRp+mk/wWkrdlNB6XitDsxKpPHwq2F+aJmfJxOoE4ijsIMc/VmxLsCZcK
         sUT39N3/al43mrwtvz1njBNHNvfHCIwtf7lb/GwXHjn8OWpU6tcDjvf1HSX/9YbhGBVH
         APd7GRmqvjKJvYEasvv6IpXuCQmdyE/zJj0ENcbh6jibqxpe9J0SGHOrQ+sR8qOn/cOJ
         U+PiOrrplofhPN7WBk7a7afTYksK8V+uHMzKFyjNCsvlX0WzGflZhaIPHswiNAP/HMgP
         bBkLc+2ImHs6SjDrSbku0d8o/SpUjprRKH9xeSL5N10Y3e2LY9n00WQYWdpgFDJPucRr
         zlAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id r20si359042ljp.5.2020.03.10.00.16.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 00:16:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,535,1574118000"; 
   d="scan'208";a="439590613"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Mar 2020 08:15:51 +0100
Date: Tue, 10 Mar 2020 08:15:51 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Kaaira Gupta <kgupta@es.iitr.ac.in>
cc: Ian Abbott <abbotti@mev.co.uk>, 
    H Hartley Sweeten <hsweeten@visionengravers.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Forest Bond <forest@alittletooquiet.net>, 
    =?ISO-8859-15?Q?J=E9r=F4me_Pouiller?= <jerome.pouiller@silabs.com>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/7] Cover letter
In-Reply-To: <20200309221449.GA5032@kaaira-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.21.2003100809240.2455@hadrien>
References: <20200309221449.GA5032@kaaira-HP-Pavilion-Notebook>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Tue, 10 Mar 2020, Kaaira Gupta wrote:

> This patch set aims at improving the code style in a few drivers in
> staging. They have been found using sparse, coccinelle, and
> checkpatch.pl.

A cover letter should have a more informative subject.  It's obvious that
it is a cover letter from the number of the patch being 0.

The description suggests that there is no connection between the drivers
or the changes being performed.  If that is the case, then there is no
need to make a series.

The cover letter should contain a complete diffstat of the changes made.

You should be able to find some examples on lkml.org.

julia

>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200309221449.GA5032%40kaaira-HP-Pavilion-Notebook.
>

