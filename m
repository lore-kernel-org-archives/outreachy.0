X-GM-THRID: 6671642851007266816
X-Received: by 2002:a2e:5bcc:: with SMTP id m73mr7363230lje.100.1553368290563;
        Sat, 23 Mar 2019 12:11:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:5085:: with SMTP id f5ls1202259lfm.13.gmail; Sat, 23 Mar
 2019 12:11:29 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyhu4eZyMvKeARt4vTG1yffwSn6E5BZHaiaWE0C9DlLvHy8zdBHTi27Wd23XJK6c6o/5cSw
X-Received: by 2002:ac2:5a01:: with SMTP id q1mr4876829lfn.147.1553368289857;
        Sat, 23 Mar 2019 12:11:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553368289; cv=none;
        d=google.com; s=arc-20160816;
        b=Dfp9n3eqjxamBTLDq9jsXL0oz7sTI6XbtkL5d6U+BYkatv7EpbxcxdG+ENnEhllEg/
         Viv7XNWxZ0rSHm3fE0WzIAqGujDpCbDosRUyjV4+sl39EknWqQGxOrmUbFm/e7Bjbdah
         50nvZcUxIoPnnHeiYbatiSM7AQBKqZwM1uZY1NPdNqvE9xkxORfdLSvPAtcSo4zTeaBr
         F2RrFmiwz3Z83XpXyRe+nu0YC3BQ1JGWb03in0z3NfMgEv5bxL16u9eknesXeHwe6j9R
         CcHFDjOmacX84uQSznBdJmaWZaoKqJy40pxRFpo4IOyk9Xzi/7oMRVsvP9xGjdqp+tSS
         7Nbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=LXj+1LJvJ4aryYLDaTo87RCFqKKNLmqaNVv5w7Uxwjc=;
        b=NPWCHNO46iFBzH7jeoD6JckDKXAUSaHoF/xkE3MUfkdC6XDau/CzWMI+aLHVCdrc9T
         x5krb/RenhEyKMNy7f0K0mp/xKyVRV+eSfzys3252Pxu/vpWG4Dp0w/LxmnhAddr2q1w
         NHuoFR5i3T8CjptAjMVSFu9qOlcBrdIduwBnP+Bv8Kbn/MjfvMkbe2bV2rZetqkafznb
         sE/XXr6Tm2Rs0cuRCp2+A7nl9qAEk9jW22Nm0vF5TA8K00iUu9bWwj+YXQYliKG1LQ5y
         GCPdJtpsChO6dFRcf89OeHW+t8QihagNY73y38XFT7Ldr8uBNbZbIwP7qf2nqJ3avTEU
         BVBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y1si710854lfe.1.2019.03.23.12.11.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 12:11:29 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,256,1549926000"; 
   d="scan'208";a="300494672"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Mar 2019 20:11:28 +0100
Date: Sat, 23 Mar 2019 20:11:28 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Vatsala Narang <vatsalanarang@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v2 2/2] staging: rtl8723bs: include:
 Eliminate p
In-Reply-To: <f926567f-8df4-4812-a8ce-6383a32307d2@googlegroups.com>
Message-ID: <alpine.DEB.2.21.1903232011120.5660@hadrien>
References: <20190323174121.5857-1-vatsalanarang@gmail.com> <alpine.DEB.2.21.1903231905310.5660@hadrien> <f926567f-8df4-4812-a8ce-6383a32307d2@googlegroups.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-520471458-1553368288=:5660"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-520471458-1553368288=:5660
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sat, 23 Mar 2019, Vatsala Narang wrote:

>
>       >          u8 *pbuf;
>
>       You missed one.
>
>  
>       > -        u8 *pallocated_buf;
>       > +        u8 *allocated_buf;
>       >
>       >          u8 *pbuf;
>
>       And another one.
>
>       These are all structure fields.  Are they never used?  Did you
>       compile the
>       driver?
>
>       julia
>
>        
>
>
> yes, I  have compiled the driver and these structure fields are used in the
> code.
> I missed *pbuf as it was used more than 150 times in the code so patch size
> will become too long, I will make appropriate changes if you suggest me to
> do so.

You can make one patch for each field.

julia

> thanks in advance,
> Vatsala
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/f926567f-8df4-4812-a8ce-
> 6383a32307d2%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-520471458-1553368288=:5660--

