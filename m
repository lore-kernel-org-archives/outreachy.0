X-GM-THRID: 6473105457256857600
X-Received: by 10.25.32.198 with SMTP id g189mr474078lfg.43.1508340003899;
        Wed, 18 Oct 2017 08:20:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.99.220 with SMTP id s89ls663777lje.14.gmail; Wed, 18 Oct
 2017 08:20:03 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+TTz/cxetTXrjkLKP8vTRpFshq9801Uj2qR5AkuOERm9t8dfVdGIC5jMSRZ8wkw3UrtbcsK
X-Received: by 10.46.3.1 with SMTP id 1mr197558ljd.6.1508340003155;
        Wed, 18 Oct 2017 08:20:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508340003; cv=none;
        d=google.com; s=arc-20160816;
        b=FGU+j93amsvMkyzjpW7HM4J0COFD6uebwclom6Xfgpvm70qygH+k9+C2i1Y/qYwY8P
         Yh+fBdk++CRNKdTw3A4W+lelozUAsvCtuOvQdKBh83UhBwq5XtkvEA4E8kZbcsCauk5w
         PLmjnXjIiqUWGm4ir5CffdBaWCgiasisoGdvzcYc2sqlWVjV+smlskYF2WkKNziLRj5j
         EOk7iKDZYlMR8hXlnPS5CN/57D7H5TM6mA1ksVOU+DvSkYy1EQ6RCgRzi09IlE/Uc9UZ
         /VfPTdYPmAFcygBC8WD/KxHuip+IJmm7on9FM1vjM0c0eDx889enUQ/WIH8HFqPqCfiG
         zH3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=93QyuiXMCOk6LKJm7VmCwKijQvlsiDNikMhkIzIXRk4=;
        b=Qud76rK8DxPSQQzwtl6FLok8KImZGoT84T4SVvJkvzmFsSl6t/dFPBSd97qcpoBfI6
         Y4Tuxt53ol4hWIdWvDVR16TNWRV/14mZ68N5uqCUmKY7Kd9MNQx5DAfebWNB2ycDpkBf
         2VyaMWTr7YlFbZSPk9daQerFz9AbKXUAgbfE/X1nBxe1p27ZhM8Lxxfjridpt3zHKQ3X
         Ghko9JFfJJ/o9/rOk6xZg3+MsL+LeO1SMRgl6cvYS4M88o4n4sWPE/fIcm/BVD0K+r0g
         dulAplpHy5fAnKiid8Bz1ivI5KMswL/IQAlpr5S/bmwiafBprmVUczI0Tf9pKzBfrwJ7
         bQEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c23si523162ljf.4.2017.10.18.08.20.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 08:20:03 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.43,397,1503352800"; 
   d="scan'208";a="296826781"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Oct 2017 17:20:02 +0200
Date: Wed, 18 Oct 2017 17:19:58 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Srishti Sharma <srishtishar@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    Linux kernel mailing list <linux-kernel@vger.kernel.org>
Subject: Re: [Outreachy kernel] Re: [PATCH v2] Staging: rtl8188eu: core:
 rtw_ap: Use list_for_each_entry_safe
In-Reply-To: <CAB3L5ow53Tp4nucKeRiZSTMoaBocSTbpfa20TqOURV76X75YqQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1710181719000.15834@hadrien>
References: <1507196802-4143-1-git-send-email-srishtishar@gmail.com> <20171018123117.GA11890@kroah.com> <CAB3L5ozhby6izgNjoBZS6BwzOgpVcoH1fErt8PN3JhptFv0FGA@mail.gmail.com> <alpine.DEB.2.20.1710181658000.15834@hadrien>
 <CAB3L5ow53Tp4nucKeRiZSTMoaBocSTbpfa20TqOURV76X75YqQ@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-437997084-1508339998=:15834"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-437997084-1508339998=:15834
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: 8BIT



On Wed, 18 Oct 2017, Srishti Sharma wrote:

>
>
> On Wed, Oct 18, 2017 at 8:29 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>       On Wed, 18 Oct 2017, Srishti Sharma wrote:
>
>       >
>       >
>       > On Wed, Oct 18, 2017 at 6:01 PM, Greg KH
>       <gregkh@linuxfoundation.org> wrote:
>       >� � � �On Thu, Oct 05, 2017 at 03:16:42PM +0530, Srishti Sharma
>       wrote:
>       >� � � �> This is a cleanup patch and doesn't change runtime
>       behavior.
>       >� � � �It
>       >� � � �> changes an open coded list traversal to use
>       >� � � �list_for_each_entry_safe.
>       >� � � �> Done using the following semantic patch by coccinelle.
>       >
>       >� � � �You have sent me two different patches, with this same
>       subject.
>       >
>       >� � � �And you have sent me lots of different patches for this
>       same
>       >� � � �driver, I
>       >� � � �don't have any idea which order to apply them in.�
>       Please resend
>       >� � � �them
>       >� � � �all, in an ordered patch series, properly numbered, so I
>       know
>       >� � � �what to do
>       >� � � �here.
>       >
>       >
>       > I had sent them individually because in a patch series they
>       would have the
>       > same subject, as all of them are making similar changes in
>       different files
>       > of the driver. One patch for all files would probably be too
>       long, What do
>       > you suggest I do in this situation ?
>
>       I don't have the specific change handy, but maybe you can
>       incorporate
>       more information about the affected file or about the change
>       itself in teh
>       subject line.� All subject lines need to be unique.
>
>
> I think if I add the file name for every file in the subject, even after
> saying use list_for_each_entry_safe for all of them, that should make them
> unique , right ? As this is what we did last time to make it unique, but I
> should have then sent them as �a patch set.

A patch set is essential when there are multiple changes to the same file,
because one change ight affect how the others apply.

All commits should have unique subject lines, patch series or not.

julia

>
> Regards,
> Srishti
>
> �
>       �
>
>       julia
>
>
>       >
>       > Regards,�
>       > Srishti�
>       >
>       >� � � �thanks,
>       >
>       >� � � �greg k-h
>       >
>       >
> > --
> > You received this message because you are subscribed to the Google
> Groups
> > "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it,
> send an
> > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to
> outreachy-kernel@googlegroups.com.
> > To view this discussion on the webvisithttps://groups.google.com/d/msgid/outreachy-kernel/CAB3L5ozhby6izgNjoB
> ZS6Bw
> > zOgpVcoH1fErt8PN3JhptFv0FGA%40mail.gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> >
>
>
>
>
--8323329-437997084-1508339998=:15834--

